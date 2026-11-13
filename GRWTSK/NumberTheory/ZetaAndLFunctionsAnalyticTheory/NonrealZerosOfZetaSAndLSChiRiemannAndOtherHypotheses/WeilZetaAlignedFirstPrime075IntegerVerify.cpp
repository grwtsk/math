// Copyright (c) 2026 grwtsk contributors. MIT.
// Exact integer 8192-cell signed first-prime matrix certificate.
// Reads compact O(N) exact coefficient ledger emitted by the companion
// Python Fraction source generator; reconstructs every matrix coefficient.
#include <cassert>
#ifdef NDEBUG
#error "NDEBUG disables mandatory certificate assertions"
#endif
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
using i128 = __int128_t;
using i64 = std::int64_t;
static i128 abs128(i128 x) {return x<0 ? -x:x;}
static i64 floor_div(i128 a,i64 b){
 assert(b>0);i128 q=a/b;
 if(a<0 && a%b!=0)--q;
 assert(q>=INT64_MIN && q<=INT64_MAX);
 return static_cast<i64>(q);
}
static i64 isqrt128(i128 x){
 assert(x>=0);
 std::uint64_t lo=0,hi=1ULL<<60;
 while(lo+1<hi){const std::uint64_t m=lo+(hi-lo)/2;
  if(static_cast<i128>(m)*m<=x)lo=m;else hi=m;
 }
 assert(static_cast<i128>(lo)*lo<=x);
 assert(static_cast<i128>(lo+1)*(lo+1)>x);
 return static_cast<i64>(lo);
}
int main(int argc,char**argv){
 if(argc!=2){std::cerr<<"usage: verifier <exact_signed_coefficient_ledger>\n";return 2;}
 std::ifstream in(argv[1]);if(!in){std::cerr<<"missing ledger\n";return 3;}
 i64 N,S,SB,OFFSET,NE,NM;
 in>>N>>S>>SB>>OFFSET>>NE>>NM;
 if(!(N==8192 && S==(1LL<<30) && SB==(1LL<<30) && OFFSET==225000
      && NE==621 && NM==6950 && N==2*NE+NM)){
  std::cerr<<"incorrect ledger header\n";return 4;
 }
 const i64 factor=(SB*SB)/S;
 assert(factor==(1LL<<30));
 std::vector<i64> diag(N),off00(N),off01(N),off11(N);
 for(auto* a:{&diag,&off00,&off01,&off11}){
  for(auto& v:*a){if(!(in>>v)){std::cerr<<"truncated ledger\n";return 5;}
   if(abs128(static_cast<i128>(v))>=(static_cast<i128>(1)<<45)){
    std::cerr<<"ledger coefficient exceeds checked envelope\n";return 11;}}
 }
 i64 pair;
 if(!(in>>pair)){std::cerr<<"missing prime pairing\n";return 5;}
 if(abs128(static_cast<i128>(pair))>=(static_cast<i128>(1)<<45))return 11;
 std::string extra;if(in>>extra){std::cerr<<"extra ledger data\n";return 6;}
 if(!(off00[0]==0 && off01[0]==0 && off11[0]==0 && pair<0)){
  std::cerr<<"invalid signed structure\n";return 12;}
 auto group=[&](i64 i){return (i<NE||i>=NE+NM)?0:1;};
 auto at=[&](i64 i,i64 j)->i64{
  if(i==j)return diag[i];
  if((i<NE&&j==i+NE+NM)||(j<NE&&i==j+NE+NM))return pair;
  int x=group(i),y=group(j);
  i64 d=std::llabs(i-j);
  if(x==0&&y==0)return off00[d];
  if(x==1&&y==1)return off11[d];
  return off01[d];
 };
 // One lower triangular B; D is rebuilt from the verified ledger on demand.
 // N<=8192, coefficient and factor bounds above imply all <=N product
 // inner sums are below 2^104 << maximum signed __int128 magnitude 2^127.
 std::vector<i64> B(static_cast<std::size_t>(N)*N,0);
 for(i64 i=0;i<N;i++){
  i128 pivot=static_cast<i128>(at(i,i))*factor;
  for(i64 k=0;k<i;k++)pivot-=static_cast<i128>(B[i*N+k])*B[i*N+k];
  if(pivot<=0){std::cerr<<"nonpositive pivot "<<i<<"\n";return 8;}
  B[i*N+i]=isqrt128(pivot);
  if(B[i*N+i]==0)return 9;
  for(i64 j=i+1;j<N;j++){
   i128 v=static_cast<i128>(at(j,i))*factor;
   for(i64 k=0;k<i;k++)v-=static_cast<i128>(B[j*N+k])*B[i*N+k];
   B[j*N+i]=floor_div(v,B[i*N+i]);
   if(abs128(static_cast<i128>(B[j*N+i]))>=(static_cast<i128>(1)<<45)){
    std::cerr<<"Cholesky envelope failure\n";return 13;}
  }
  if((i+1)%512==0)std::cerr<<"Cholesky rows "<<i+1<<"/"<<N<<"\n";
 }
 std::vector<i128> rows(N,0);
 for(i64 i=0;i<N;i++){
  for(i64 j=0;j<=i;j++){
   i128 e=static_cast<i128>(at(i,j))*factor;
   for(i64 k=0;k<=j;k++)e-=static_cast<i128>(B[i*N+k])*B[j*N+k];
   i128 mag=abs128(e);rows[i]+=mag;if(i!=j)rows[j]+=mag;
  }
  if((i+1)%512==0)std::cerr<<"Residual rows "<<i+1<<"/"<<N<<"\n";
 }
 i128 worst=0;for(auto x:rows)if(x>worst)worst=x;
 const i128 denominator=static_cast<i128>(SB)*SB;
 const i128 numerator=static_cast<i128>(OFFSET-2*N)*factor-worst;
 std::cerr<<"residual="<<static_cast<long double>(worst)/static_cast<long double>(denominator)
          <<" margin="<<static_cast<long double>(numerator)/static_cast<long double>(denominator)<<"\n";
 if(!(worst<denominator/50000 && 2*N*50000LL<S && numerator*6000000>denominator*1001)){
  std::cerr<<"FAIL certified residual or weighted margin\n";return 10;
 }
 std::cout<<"PASS: exact 8192-cell signed-prime Cholesky and ALL residual entries\n";
 std::cout<<"PASS: residual<1/50000, rounding row<1/50000, weighted margin>(1001/1000)/6000\n";
 std::cout<<"diagnostic residual "<<static_cast<long double>(worst)/static_cast<long double>(denominator)<<"\n";
 std::cout<<"diagnostic mean margin "<<static_cast<long double>(numerator)/static_cast<long double>(denominator)<<"\n";
 std::cout<<"All sign decisions used integers, never floating point\n";
}
