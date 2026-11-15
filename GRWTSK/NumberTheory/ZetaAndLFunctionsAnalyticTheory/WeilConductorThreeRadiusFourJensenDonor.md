# A wider donor from Jensen bounds on positive cells

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with exact rational arithmetic checks. Lean elaboration, kernel replay and transitive axiom audit are NOT_RUN. External independent review is UNASSESSED.

The [pinned radius-four source](https://github.com/grwtsk/math/blob/cc83ade57982faab1c40b02b6b5516461cb5fe2c/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourLegendreSchurReduction.md) has blob 72848bace2af0f427c9e9fae16806f1b31ee064f and bytes SHA-256 2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5. Use its 57-enclosure comparison and its subsequent directed sign proof through detuning 622.96. Keep the original primitive nonprincipal odd character modulo three, the full parity-one gamma term, all 458 signed prime powers, zero principal-pole term, original masks and physical projection. The physical space is the complex odd subspace of $L^2([-4,4],dt)$ with zero extension. After folding to positive frequencies, the odd restriction has kernel $\sin(\nu t)$ up to a constant unit phase and measure $d\nu/\pi$. Write $K$ for this restriction, suppressing the constant phase in quadratic forms.

## Exact local form and available input

Write $c_1=99653682.92983$. Let $Y$ and $E$ be the unions of the respective positive slabs $c_1+[571.50,580.62]$ and $c_1+[574.16,574.58]$ with their reflections. The original signed multiplier $m$ has positive and negative parts $m_+,m_-$. Write $\mathcal P_Y=K^*1_Ym_+K$ and $N_E=\sqrt{m_-}1_E K$, interpreting each restriction in the folded measure where used. The pinned sign proof shows that the negative part on $Y$ is supported in $E$ and gives strict positivity on the complement of the two unpaid enclosures through detuning 622.96. The next enclosure starts at 580.66 and lies outside $Y$. The last earlier direct reservation $X_{26}$ ends at 571.50, so the overlap is a null endpoint. The earlier direct and tagged positive resources are disjoint from $Y$ up to null sets.

On the actual physical space the bound is
$$
 N_E^*N_E\preceq \tfrac{19}{20}\mathcal P_Y +(5\cdot10^{-9}+\delta)I,
 \qquad 0\le\delta<2.356\cdot10^{-16}.
$$

Make positive-frequency bins $I_j$ of width $h=0.02$ in $Y$. Use the smallest directed raw lower price among the eight width-$0.0025$ cells of each bin, including the original factor $w\ge1-3\cdot10^{-10}$ and Binet bracket $17.6779<A_1<17.6780$. Round down at $10^{-10}$. Keep the 437 bins with strictly positive price $p_j$ and let
$$
 b_j(t)=h^{-1}\int_{I_j}\sin(\nu t)\,d\nu,\qquad
 Bf=(\langle b_j,f\rangle)_j,\qquad
 W_{jj}=p_jh/\pi_{\rm upper}.
$$
The binwise Cauchy–Schwarz inequality gives
$$
 p_jh|\langle b_j,f\rangle|^2/\pi_{\rm upper}
 \le \int_{I_j}m_+(\nu)|Kf(\nu)|^2\,d\nu/\pi.
$$
Summing over disjoint bins yields $B^*WB\preceq\mathcal P_Y$. This uses the true averaged sine kernels.

For the short negative enclosure, let $c=c_1+574.36$ and $v_i(t)=(t/4)^i\sin(ct+i\pi/2)$ for $i=0,\ldots,17$. Define $Vf=(\langle v_i,f\rangle)_i$. On the positive part of $E$, directed upper bounds for $P_4$ and the lower bound $A_{\rm lo}$ give
$$
 \frac{m_-(\nu)}{\pi}\le \frac{(P_{4,\rm hi}-A_{\rm lo})_+}{\pi_{\rm lower}}.
$$
Round this upward at $10^{-10}$ to obtain a nonnegative Lebesgue step $\eta$ on all 168 width-$0.0025$ cells, 140 of which have positive upper price. With the exact moment matrix
$$
 M_{ij}=\frac{4^{i+j}}{i!j!}\int_E\eta(\nu)(\nu-c)^{i+j}\,d\nu ,
$$
the degree-17 Taylor form of the weighted restriction is $V^*MV$. Here the integral is over the positive slab only, as throughout the folded calculation. A nonzero polynomial cannot vanish on a positive step cell, so $M$ is positive definite.

The sine remainder is pointwise at most $\varepsilon=(.88)^{18}/18!$ since $|t|\le4$ and $|\nu-c|\le.22$. The Hilbert–Schmidt norms of the exact weighted restriction and its difference from the Taylor restriction are bounded by $(8\int_E\eta)^{1/2}$ and $\varepsilon(8\int_E\eta)^{1/2}$ respectively. Expanding the difference of their squared operators proves
$$
 N_E^*N_E\preceq V^*MV+\delta I,\qquad
 \delta=8\varepsilon(2+\varepsilon)\int_E\eta .
$$
The guard obtains $\delta<2.356\cdot10^{-16}$ from the exact moment input.

## The directed residual

Take $\tau=5\cdot10^{-9}$ and $\alpha=19/20$. The inverse of $S=\tau I+\alpha B^*WB$ exists on the entire physical space. With $A=\tau(\alpha W)^{-1}+BB^*$, Woodbury gives $\tau S^{-1}=I-B^*A^{-1}B$. Thus $V^*MV\preceq S$ is equivalent to positivity of
$$
 R=\tau M^{-1}-VV^*+VB^*A^{-1}BV^*.
$$
For each rational $Z\colon\mathbb C^{18}\to\mathbb C^{437}$, the identity
$$
 R-R_Z=(Z-A^{-1}BV^*)^*A(Z-A^{-1}BV^*)\succeq0,\qquad
 R_Z=\tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)-\tau Z^*(\alpha W)^{-1}Z
$$
reduces the proof to one directed $18\times18$ matrix. A floating Cholesky solve proposes $Z$, then its entries are rounded to multiples of $10^{-20}$. The verified inequalities concern the rounded rational matrix. There is no accuracy premise on the floating solve.

Expand each true average $b_j$ to 120 sine Taylor terms about $c$. The exact averages of $(\nu-c)^n$ determine its coefficients. The omitted Taylor term for each average is bounded pointwise by $(4\max_{\nu\in I_j}|\nu-c|)^{120}/120!$. The guard combines these errors with the $Z$ columns and the $10^{-50}$ rounding in each of the 18 residual carrier polynomials. It bounds each residual-vector $L^2$ error below $1.744\cdot10^{-31}$ and rounds the polynomial Gram using the exact rational nonoscillatory integrals and directed sine and cosine integrals at frequency $8c$. The latter use a Machin enclosure of $\pi$ and the integration-by-parts recurrence for $\int_{-1}^1 x^j e^{8icx}\,dx$. The positive ridge term is also enclosed outward. A symmetric integer midpoint matrix minus the maximum summed row width times the identity is below the actual residual as a quadratic form. Its 18 exact leading pivots are positive. The row width is below $10^{-23}$ and the first pivot is above $3.7551\cdot10^{-8}$. Combining $R_Z\preceq R$, Jensen and the short negative Taylor error proves the stated physical comparison.

The centered width-four obstruction and the continuum obstruction for every eligible width-four donor still hold on their stated carriers and budgets. The recorded wide lower-step failures at widths 9.10 and 14.50 remain finite sufficient-matrix failures. The present derivation uses positive averages on the wider band and upper Taylor moments only on the negative enclosure.

## Return to the signed stage

Before applying the original 23-row comparison, add $\mathcal P_Y$ once to the set of reserved positive forms. Its actual band is disjoint from the original tagged channels and the other reserved bands, so those channels and the physical $\sqrt\beta f$ channel still have sufficient input against the reduced $S_{\rm keep}\succeq\beta I$. Sum the squared disjoint outputs, adding the scalar $5\cdot10^{-9}+\delta$ once via $I\preceq S_{\rm keep}/\beta$. Its positive fraction $19/20$ fits the previous maximal fraction. \[
q_{58}=\max\left\{0.953004+\frac{p_{57}+5\cdot10^{-9}+\delta}{\beta},
                      \frac{19}{20}\right\},
\]
where $p_{57}$ is the physical scalar sum for a selected branch of the pinned 57-enclosure comparison. The guard checks the exact sum for all 48 branches. The resulting $q_{58}$ is strictly below $0.953005$ on every branch and leaves more than $1.713\cdot10^{-9}$ of scalar room on the worst branch.

This pays for the first deeper enclosure and extends contiguous signed coverage through detuning 580.66, the positive left endpoint of the second enclosure. Retain prior detached and remote groups. With $S_{\rm all58}=S_\lambda-W_{\rm all58}^*W_{\rm all58}$, the original comparison gives $S_{\rm all58}\succeq .046995 S_\lambda$ and
$$
 T_+-\lambda\Pi_H=S_{\rm all58}-N_{\rm out}^*N_{\rm out}.
$$
The inequality $\|N_{\rm out}S_{\rm all58}^{-1}N_{\rm out}^*\|\le1$ for the actual unpaid restriction is open. It is required by the seven leading inverses and directional correction before returning to the original conductor-three, radius-four $\mathrm{DirichletStageChain.PrimitiveStageLower}\ \chi\ hp\ hn\ 3$ on every real odd compact $C^2$ admissible test with $L^2$ lift and integrable full gamma correction. The earlier unpaid trace corridor remains outside this local comparison.

Extract the Python guard below and run it with the exact pinned radius-four Markdown path as its single argument. The guard recomputes the directed weights, proposes rational coefficients using the standard library and verifies the whole residual independently of the proposal's numerical accuracy.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

arithmetic_source = Path(sys.argv[1]).read_bytes()
assert sha256(arithmetic_source).hexdigest() == (
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
source = arithmetic_source.decode("utf-8")
blocks = re.findall(r"^~~~python\n(.*?)^~~~$",source,re.M|re.S)
prior = [g for g in blocks if g.startswith("from fractions import Fraction")
         and "PASS actual seven-inverse localized correction" in g]
marker='centre = F("99653682.92983")'
assert len(prior)==1 and prior[0].count(marker)==1
exec(compile(prior[0].split(marker)[0],"source directed arithmetic","exec"))

c0=F("99653682.92983")
start,stop,step=F("571.50"),F("580.62"),F(".0025")
lowarg,higharg=47581000,47582000
raw_cap=55
Alo,Ahi=F("17.6779"),F("17.6780")
left_edge,right_edge=c0+start,c0+stop
assert 30000000<left_edge<right_edge<35*10**24
assert left_edge>F(10**8,3)-1 and right_edge<10**8
assert right_edge<F("1852422754.1662946")-10
assert right_edge<F("3806849122.861433")-F(1,160)
assert lowarg<3*left_edge/(2*pi_upper)
assert 3*right_edge/(2*pi_lower)<higharg
y0=left_edge/2
binet=F(5,9)/y0+F(9,32)/y0**2
assert Alo<log_bounds(lowarg)[0]-binet
assert log_bounds(higharg)[1]+binet<Ahi
atoms=[]
second=F(0)
for p in range(2,2981):
    if p==3 or any(p%j==0 for j in range(2,isqrt(p)+1)):
        continue
    logp=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        weight=scale(2*(1 if n%3==1 else -1),
                     (logp[0]*source_grid/(root+1),logp[1]*source_grid/root))
        atoms.append((weight,lag))
        second+=max(map(abs,weight))*lag[1]**2
        n*=p
assert len(atoms)==458 and second<13504

@cache
def node(x):
    ans=(F(0),F(0))
    for weight,lag in atoms:
        co,_=phase_trig(multiply((c0+x,c0+x),lag))
        ans=add(ans,round_out(*multiply(weight,co),atom_grid))
    return ans


# The source evaluator is reused to anchor each exact rotation.
# Complex arithmetic below uses integer coordinates at scale Q.
Q=10**24
count=int((stop-start)/step)
assert start+count*step==stop
tol=F("1e-11")
turn_bound=F("1e-7")
assert 2*F(1,Q)<=tol/2
assert (2*count+1)*tol<turn_bound<F(1,2)

def anchor(angle):
    co,si=phase_trig(angle)
    re=round(sum(co)*Q/2)
    im=round(sum(si)*Q/2)
    return re,im, max(abs(F(re,Q)-v) for v in co)+max(abs(F(im,Q)-v) for v in si)

acc=[0]*(count+1)
amp_err=F("1e-17")
for wi,lag in atoms:
    re,im,e0=anchor(multiply((c0+start,c0+start),lag))
    twr,twi,et=anchor(multiply((step,step),lag))
    assert e0<tol and et<tol
    aa=round(sum(wi)*Q/2)
    assert max(abs(F(aa,Q)-v) for v in wi)<amp_err
    for k in range(count+1):
        acc[k]+=aa*re
        re,im=(re*twr-im*twi)//Q,(re*twi+im*twr)//Q
absolute=sum(max(abs(v) for v in wi) for wi,_ in atoms)
assert absolute<211
p4err=211*turn_bound+len(atoms)*amp_err*(1+turn_bound)
assert p4err<F(".000022")
p4err=F(".000022")

@cache
def fast_node(x):
    k=(x-start)/step
    if k.denominator==1 and 0<=k<=count:
        f=F(acc[int(k)],Q**2)
        return f-p4err,f+p4err
    return node(x)


def estimate(x,h):
    u,v=fast_node(x),fast_node(x+h)
    er=second*h*h/8
    return min(u[0],v[0])-er,max(u[1],v[1])+er



# Exact positive donor weights and short negative moment input.
assert (start,stop,step)==(F("571.50"),F("580.62"),F(".0025"))
c=c0+F("574.36")
wmin=1-F("3e-10")
rho=[]
pos=[]
for j in range(count//8):
    x=start+j*8*step
    peaks=[estimate(x+i*step,step)[1] for i in range(8)]
    raw=wmin*(Alo-max(peaks))
    w=F((raw*10**10)//1,10**10)
    if w>0:
        pos.append((c0+x-c,8*step,w*8*step/pi_upper))
edge=F("574.16")
for j in range(168):
    x=edge+j*step
    _,upper=estimate(x,step)
    val=max(F(0),(upper-Alo)/pi_lower)
    eta=F(-((-val*10**10)//1),10**10)
    assert eta>=val and eta*pi_upper<55
    if eta:
        rho.append((c0+x-c,c0+x+step-c,eta))
assert len(pos)==437 and len(rho)==140
print("signed original weights exact:",len(pos),len(rho),flush=True)


from math import acos,cos,sin,sqrt,fsum

def gauss(order):
    points=[0.0]*order
    weights=[0.0]*order
    for j in range((order+1)//2):
        x=cos(acos(-1)*(j+.75)/(order+.5))
        for i in range(30):
            p,prev=1.0,0.0
            for n in range(1,order+1):
                prev,p=p,((2*n-1)*x*p-(n-1)*prev)/n
            dp=order*(x*p-prev)/(x*x-1)
            change=p/dp
            x-=change
            if abs(change)<2e-16:
                break
        points[j],points[-j-1]=x,-x
        weights[j]=weights[-j-1]=2/((1-x*x)*dp*dp)
    return points,weights


def proposed_coefficients(pos,c,k,alpha,tau):
    # Floating point proposes Z only. The exact verifier below may reject it.
    s,w=gauss(80)
    n=len(pos)
    h=float(pos[0][1])
    assert all(float(row[1])==h for row in pos)
    t=[4*x for x in s]
    envelope=[sin(h*x/2)/(h*x/2) if x else 1.0 for x in t]
    a=[2*ww*e*e for ww,e in zip(w,envelope)]
    env4=sin(2*h)/(2*h)
    u=[float(x+h0/2) for x,h0,wt in pos]
    tags=[round((x-u[0])/h) for x in u]
    low=[fsum(ww*cos(j*h*tt) for ww,tt in zip(a,t)) for j in range(tags[-1]+1)]
    high=[]
    for j in range(2*tags[-1]+1):
        z=2*(float(c)+u[0])+j*h
        high.append(env4*env4*sin(4*z)/z)
    base=[[low[abs(tags[i]-tags[j])]-high[tags[i]+tags[j]] for j in range(n)]
          for i in range(n)]
    for i,(left,width,weight) in enumerate(pos):
        base[i][i]+=float(tau/(alpha*weight))

    polynomial=[[2*ww*e*x**j for ww,e,x in zip(w,envelope,s)] for j in range(k)]
    rhs=[]
    for u0 in u:
        local_c=[cos(u0*x) for x in t]
        local_s=[sin(u0*x) for x in t]
        z=2*float(c)+u0
        sc=(sin(4*z)*env4/z,cos(4*z)*env4/z)
        rhs.append([(-1)**(j//2)*(fsum(a*b for a,b in zip(polynomial[j],
                    local_c if j%2==0 else local_s))-sc[j%2]) for j in range(k)])

    # Cholesky factorization of the approximate positive matrix.
    L=[]
    for i,row in enumerate(base):
        v=[]
        for j in range(i):
            v.append((row[j]-fsum(a*b for a,b in zip(v,L[j])))/L[j][j])
        v.append(sqrt(row[i]-fsum(x*x for x in v)))
        L.append(v)
    Y=[]
    for i,row in enumerate(rhs):
        Y.append([(v-fsum(L[i][j]*Y[j][r] for j in range(i)))/L[i][i]
                  for r,v in enumerate(row)])
    Z=[None]*n
    for i in reversed(range(n)):
        Z[i]=[(v-fsum(L[j][i]*Z[j][r] for j in range(i+1,n)))/L[i][i]
              for r,v in enumerate(Y[i])]
    return [[round(10**20*x) for x in row] for row in Z]



k=18
K=120
alpha,tau=F(".95"),F("5e-9")
zd=10**20
neg=rho
Z=proposed_coefficients(pos,c,k,alpha,tau)
assert len(Z)==len(pos) and all(len(row)==k for row in Z)
c=F("99653682.92983")+F("574.36")
Eps=F(".88")**k/factorial(k)
delta=8*Eps*(2+Eps)*sum(w*(b-a) for a,b,w in neg)
assert F("2.355e-16")<delta<F("2.356e-16")
assert tau+delta<F("6.713e-9")

# Exact moments and inverse on the short negative enclosure.
mom=[sum(w*(b**(i+1)-a**(i+1))/(i+1) for a,b,w in neg) for i in range(2*k-1)]
scale4=[F(4**i,factorial(i)) for i in range(k)]
M=[[scale4[i]*scale4[j]*mom[i+j] for j in range(k)] for i in range(k)]
aug=[M[i]+[F(i==j) for j in range(k)] for i in range(k)]
for i in range(k):
    piv=aug[i][i]
    assert piv>0
    aug[i]=[x/piv for x in aug[i]]
    for j in range(k):
        if j!=i:
            multiple=aug[j][i]
            aug[j]=[y-multiple*x for x,y in zip(aug[i],aug[j])]
inv=[row[k:] for row in aug]
assert all(inv[i][j]==inv[j][i] for i in range(k) for j in range(k))
print("short negative moment inverse",len(neg),"delta",float(delta),flush=True)

# Integer coefficients represent the k residual physical carriers.
grid=10**50
p=[[0]*K for _ in range(k)]
for n in range(K):
    moments=[]
    cap=100
    for a,h,_ in pos:
        l,r=int(cap*a),int(cap*(a+h))
        assert l==cap*a and r==cap*(a+h) and r-l==2
        moments.append(r**(n+1)-l**(n+1))
    q=F(grid*4**n,zd*2*(n+1)*cap**n*factorial(n))
    for j in range(k):
        coef=F(n==j)*grid - q*sum(Z[b][j]*u for b,u in enumerate(moments))
        p[j][n]=(-1)**(n//2)*round(coef)
eps=[]
huge=[]
donor_eps=[(4*max(abs(a),abs(a+h)))**K/factorial(K) for a,h,w in pos]
assert max(donor_eps)<F("1.03e-31")
for j in range(k):
    col=[abs(row[j]) for row in Z]
    eps.append(3*(F(K,2*grid)+sum(u*v for u,v in zip(col,donor_eps))/zd))
    huge.append(3*(1+F(sum(col),zd))+eps[-1])
assert max(eps)<F("1.744e-31")
print("residual vectors",k,"error",float(max(eps)),"rough norm",float(max(huge)),flush=True)

# Exact polynomials, paired with directed oscillating physical moments.
z=8*c
def atan_sharp(y):
    s=sum((-1)**j*y**(2*j+1)/(2*j+1) for j in range(80))
    return s,s+y**161/161
lo5,hi5=atan_sharp(F(1,5))
lo239,hi239=atan_sharp(F(1,239))
pi_lo_sharp,pi_hi_sharp=round_out(16*lo5-4*hi239,16*hi5-4*lo239,10**90)
assert pi_lower<=pi_lo_sharp<pi_hi_sharp<=pi_upper
turn=(z/pi_lo_sharp+1)//2
angle=z-2*turn*pi_lo_sharp
assert abs(angle)<F(22,7)
co0=sum((-1)**q*angle**(2*q)/factorial(2*q) for q in range(48))
si0=sum((-1)**q*angle**(2*q+1)/factorial(2*q+1) for q in range(48))
err=2*turn*(pi_hi_sharp-pi_lo_sharp)+F(22,7)**96/factorial(96)
assert err<F("1e-80")
co=(co0-err,co0+err)
si=(si0-err,si0+err)
trig_grid=10**70
rec=[round_out(*scale(2/z,si),trig_grid)]
for n in range(1,2*K-1):
    val=(add(scale(2/z,si),scale(-n/z,rec[-1])) if n%2==0 else
         add(scale(-2/z,co),scale(n/z,rec[-1])))
    rec.append(round_out(*val,trig_grid))
small_grid=10**60
modes=[[],[],[]]
for n in range(2*K-1):
    if n%2==0:
        plain=F(4,n+1)
        modes[0].append(round_out(plain-2*rec[n][1],plain-2*rec[n][0],small_grid))
        modes[1].append(round_out(plain+2*rec[n][0],plain+2*rec[n][1],small_grid))
        modes[2].append((F(0),F(0)))
    else:
        modes[0].append((F(0),F(0)))
        modes[1].append((F(0),F(0)))
        modes[2].append(round_out(*scale(2,rec[n]),small_grid))
scaledmodes=[[(int(a*small_grid),int(b*small_grid)) for a,b in mode] for mode in modes]

diagonal=[tau/(alpha*w) for a,h,w in pos]
den=small_grid*grid**2
work_grid=10**30
upper=[[0]*k for _ in range(k)]
lower=[[0]*k for _ in range(k)]
for i in range(k):
    for j in range(i,k):
        a=b=0
        for n, primal in enumerate(p[i]):
            for m, adjoint in enumerate(p[j]):
                coeff=primal*adjoint
                l,r=scaledmodes[0 if n%2==m%2==0 else 1 if n%2==m%2==1 else 2][n+m]
                if coeff<0:
                    l,r=r,l
                a+=l*coeff
                b+=r*coeff
        # Also enclose the exact positive ridge term in the work grid.
        aa=bb=0
        for e,d in enumerate(diagonal):
            val=d*F(Z[e][i]*Z[e][j],zd**2)*work_grid
            aa+=val//1
            bb+=-((-val)//1)
        err=eps[i]*huge[j]+eps[j]*huge[i]+eps[i]*eps[j]
        lo=tau*inv[i][j]-F(b,den)-F(bb,work_grid)-err
        hi=tau*inv[i][j]-F(a,den)-F(aa,work_grid)+err
        l,h=round_out(lo,hi,work_grid)
        lower[i][j]=lower[j][i]=int(work_grid*l)
        upper[i][j]=upper[j][i]=int(work_grid*h)
    if i%4==0:
        print("enclosed rows",i+1,"of",k,flush=True)
assert all(lower[i][j]<=upper[i][j] for i in range(k) for j in range(k))
rounderr=max(sum(upper[i][j]-lower[i][j] for j in range(k)) for i in range(k))
print("directed matrix row uncertainty",float(F(rounderr,work_grid)),flush=True)
assert F(rounderr,work_grid)<F("1e-23")
T=[[(lower[i][j]+upper[i][j])//2-(rounderr if i==j else 0) for j in range(k)] for i in range(k)]

# Exact fraction-free congruence sign.
last=1
for i in range(k):
    p=T[i][i]
    print("pivot",i,float(F(p,last*work_grid)),flush=True)
    assert p>0
    for j in range(i+1,k):
        for l in range(j,k):
            n=p*T[j][l]-T[i][j]*T[i][l]
            q,r=divmod(n,last)
            assert r==0
            T[j][l]=T[l][j]=q
    last=p
assert F(T[0][0],work_grid)>F("3.7551e-8")
beta=F(".124997987")-F(".0001071")
def raw_tail(radius,degree):
    error=F(radius)**degree/factorial(degree)
    return error*(2+error)
e40=F(8)**40/factorial(40)
H=(e40/25)*(2+e40/25)
fixed=F("2.95e-8")+27*raw_tail(8,36)+225*raw_tail(8,40)+30*raw_tail("14.6",64)+70*raw_tail(12,52)+37*H
branches=[]
for a14 in (F("31e-9"),F("40e-9")):
    for t22 in (F("3e-13"),F("5e-13")):
        for t23 in (F("1e-15")+19*H,F("3e-10")+10*H,F("5e-10")+10*H):
            for t24 in (F("1e-16")+22*H,F("1e-10")+11*H):
                for t25 in (F("1e-15"),F("5e-15")):
                    branches.append(fixed+a14+t22+t23+t24+t25)
assert len(branches)==48
old_room=F(".000001")*beta-max(branches)
new_room=old_room-tau-delta
assert new_room>F("1.713e-9")
q58=max(F(".953004")+(max(branches)+tau+delta)/beta,alpha)
assert q58<F(".953005")
assert F("535.60")<F("559.22")<F("563.22")<F("567.50")<=start<stop<F("580.66")
assert all(v<start or stop<u for u,v in [(F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))])
assert F(5085348195,4)*pi_lower-F("5.55")-2>c0+stop
print("PASS exact original wider Jensen donor",float(q58),float(new_room))
~~~


## The second deep enclosure and a lower price for the first

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Use the original signed multiplier, complex odd radius-four carrier,
folded measure $d\nu/\pi$, masks and physical projection from the
[pinned radius-four source](https://github.com/grwtsk/math/blob/af8b54fa3bb245c391c89b28864d5a6e7b568365/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourLegendreSchurReduction.md)
and the exact comparison in the
[published first Jensen donor](https://github.com/grwtsk/math/blob/af8b54fa3bb245c391c89b28864d5a6e7b568365/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md).
The two source blobs at this revision are
72848bace2af0f427c9e9fae16806f1b31ee064f and
4ce9415fba5b3e40263730dd93f5e5a0d35f9fdb respectively.
This is the primitive nonprincipal odd character modulo three with
the full parity-one gamma, all $458$ signed prime powers and zero
principal-pole term. Preserve all prior detached and remote groups.

All intervals below are detunings from $c_1=99653682.92983$ and
include their reflected restrictions. Here are the two checked
local comparisons on the original physical carrier.
$$
 N_{E_j}^*N_{E_j}\preceq \tfrac{19}{20}\mathcal P_{Y_j}
 +(\tau_j+\delta_j)I,\qquad j=4,5 .
$$

| $j$ | Positive donor $Y_j$ | Negative enclosure $E_j$ | $\tau_j$ | Upper bound for $\delta_j$ |
| --- | --- | --- | --- | --- |
| 4 | $[571.50,580.62]$ | $[574.16,574.58]$ | $4.5\cdot10^{-10}$ | $2.356\cdot10^{-16}$ |
| 5 | $[580.62,590.62]$ | $[580.66,580.88]$ | $8\cdot10^{-10}$ | $6.382\cdot10^{-23}$ |

The first row sharpens the published price $5\cdot10^{-9}$ on
the same $Y_4$ and $E_4$ with no change in the positive fraction.
The second row uses a new donor disjoint from $Y_4$ except
at the null endpoint $580.62$ and disjoint from the earlier
direct and tagged reservations. The pinned sign guard through
$622.96$ has positive complement of $E_4\cup E_5$ and a
strict negative point at $580.78$ within $E_5$. Hence the
only negative part on $Y_5$ is its restriction to $E_5$.

Use the binwise Jensen lower form and the actual negative
upper form from the first donor. The $.02$ positive bins
use eight $.0025$ directed source subcells with all arithmetic
signs preserved. For $E_5$, the negative upper step is nonzero
on $62$ of the $88$ cells and there are $491$ nonzero positive
bins for $Y_5$. The first row has the same $437$ positive bins
and $140$ nonzero negative upper cells as in the published
bound. The short negative Taylor expansion uses $18$ terms
at $c_1+574.36$ or $c_1+580.77$. The pointwise remainders are
bounded by $.88^{18}/18!$ or $.44^{18}/18!$, respectively.
For the latter the certified Hilbert–Schmidt price
$8\epsilon(2+\epsilon)\int_{E_5}\eta$ is below the table value.

The exact rational certificate uses the same $18$-dimensional
residual $R_Z$ as the first donor. For $Y_4$ use the true
average carriers through degree $119$ and for the wider
$Y_5$ through degree $179$. The errors in the residual physical vectors
remain below $2.272\cdot10^{-31}$ and $8.310\cdot10^{-42}$
in each respective residual $L^2$ column. The outward Gram and ridge enclosures give directed
residual matrix row widths are below $10^{-23}$. All
eighteen leading pivots of each directed lower matrix are
positive. The initial pivots exceed $3.3482\cdot10^{-9}$
and $8.2920\cdot10^{-8}$, respectively. The double-precision
solve proposes the rational matrix $Z$. All proof inequalities
are checked using directed rational arithmetic after the proposal.

Reserve $\mathcal P_{Y_5}$ separately from $\mathcal P_{Y_4}$
and the previous positive tags. The earlier $q_{23}$ physical
input and genuine tagged components stay within the reduced
positive comparator, which dominates $\beta I$. Stack
$N_{E_5}$ after $W_{\rm all58}$ to form $W_{\rm all59}$
using the disjoint negative outputs. With the original E4
price retained, all $48$ old price branches give cap
$q_{59}<0.953005$ and physical headroom exceeding
$9.137\cdot10^{-10}$. The repriced first donor increases the
least remaining room to more than $5.463\cdot10^{-9}$.
For either certified first price the bound is
$$
 q_{59}=\max\left\{0.953004+
 \frac{p_{57}+\tau_4+\delta_4+\tau_5+\delta_5}{\beta},
 \frac{19}{20}\right\},
$$
with $p_{57}$ the selected exact prior scalar sum. The guard
uses the same upper bound $2.356\cdot10^{-16}$ on the first
Taylor error for both branches. Choose one first price. Each
new scalar is charged once through $I\preceq S_{\rm keep}/\beta$,
where $S_{\rm keep}$ excludes both new positive resources.

The two payments extend contiguous signed coverage through
detuning $622.96$. The source identity is
$$
 T_+-\lambda\Pi_H=S_{\rm all59}-N_{\rm out}^*N_{\rm out},
 \qquad
 S_{\rm all59}=S_\lambda-W_{\rm all59}^*W_{\rm all59}
 \succeq0.046995 S_\lambda .
$$
The actual outside sign remains the bound
$\|N_{\rm out}S_{\rm all59}^{-1}N_{\rm out}^*\|\le1$,
with the original seven leading inverses and directional return.

Extract the following Python block and pass the pinned radius-four
Markdown path and one of the selectors `reprice-first` or `second`.
Use both selectors for the lower-price joint branch.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

arithmetic_source = Path(sys.argv[1]).read_bytes()
assert sha256(arithmetic_source).hexdigest() == (
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
source = arithmetic_source.decode("utf-8")
blocks = re.findall(r"^~~~python\n(.*?)^~~~$",source,re.M|re.S)
prior = [g for g in blocks if g.startswith("from fractions import Fraction")
         and "PASS actual seven-inverse localized correction" in g]
marker='centre = F("99653682.92983")'
assert len(prior)==1 and prior[0].count(marker)==1
exec(compile(prior[0].split(marker)[0],"source directed arithmetic","exec"))

c0=F("99653682.92983")
mode=sys.argv[2]
data={
    "reprice-first":("571.50","580.62","574.16","574.58","574.36","4.5e-10",120,437,140),
    "second":("580.62","590.62","580.66","580.88","580.77","8e-10",180,491,62),
}
assert mode in data
a0,b0,l0,r0,c0_offset,price,nTaylor,nPos,nNeg=data[mode]
start,stop,step=F(a0),F(b0),F(".0025")
lowarg,higharg=47581000,47582000
raw_cap=55
Alo,Ahi=F("17.6779"),F("17.6780")
left_edge,right_edge=c0+start,c0+stop
assert 30000000<left_edge<right_edge<35*10**24
assert left_edge>F(10**8,3)-1 and right_edge<10**8
assert right_edge<F("1852422754.1662946")-10
assert right_edge<F("3806849122.861433")-F(1,160)
assert lowarg<3*left_edge/(2*pi_upper)
assert 3*right_edge/(2*pi_lower)<higharg
y0=left_edge/2
binet=F(5,9)/y0+F(9,32)/y0**2
assert Alo<log_bounds(lowarg)[0]-binet
assert log_bounds(higharg)[1]+binet<Ahi
atoms=[]
second=F(0)
for p in range(2,2981):
    if p==3 or any(p%j==0 for j in range(2,isqrt(p)+1)):
        continue
    logp=log_bounds(p)
    n=p
    while n<=2980:
        lag=log_bounds(n)
        root=isqrt(n*source_grid**2)
        weight=scale(2*(1 if n%3==1 else -1),
                     (logp[0]*source_grid/(root+1),logp[1]*source_grid/root))
        atoms.append((weight,lag))
        second+=max(map(abs,weight))*lag[1]**2
        n*=p
assert len(atoms)==458 and second<13504

@cache
def node(x):
    ans=(F(0),F(0))
    for weight,lag in atoms:
        co,_=phase_trig(multiply((c0+x,c0+x),lag))
        ans=add(ans,round_out(*multiply(weight,co),atom_grid))
    return ans


# The source evaluator is reused to anchor each exact rotation.
# Complex arithmetic below uses integer coordinates at scale Q.
Q=10**24
count=int((stop-start)/step)
assert start+count*step==stop
tol=F("1e-11")
turn_bound=F("1e-7")
assert 2*F(1,Q)<=tol/2
assert (2*count+1)*tol<turn_bound<F(1,2)

def anchor(angle):
    co,si=phase_trig(angle)
    re=round(sum(co)*Q/2)
    im=round(sum(si)*Q/2)
    return re,im, max(abs(F(re,Q)-v) for v in co)+max(abs(F(im,Q)-v) for v in si)

acc=[0]*(count+1)
amp_err=F("1e-17")
for wi,lag in atoms:
    re,im,e0=anchor(multiply((c0+start,c0+start),lag))
    twr,twi,et=anchor(multiply((step,step),lag))
    assert e0<tol and et<tol
    aa=round(sum(wi)*Q/2)
    assert max(abs(F(aa,Q)-v) for v in wi)<amp_err
    for k in range(count+1):
        acc[k]+=aa*re
        re,im=(re*twr-im*twi)//Q,(re*twi+im*twr)//Q
absolute=sum(max(abs(v) for v in wi) for wi,_ in atoms)
assert absolute<211
p4err=211*turn_bound+len(atoms)*amp_err*(1+turn_bound)
assert p4err<F(".000022")
p4err=F(".000022")

@cache
def fast_node(x):
    k=(x-start)/step
    if k.denominator==1 and 0<=k<=count:
        f=F(acc[int(k)],Q**2)
        return f-p4err,f+p4err
    return node(x)


def estimate(x,h):
    u,v=fast_node(x),fast_node(x+h)
    er=second*h*h/8
    return min(u[0],v[0])-er,max(u[1],v[1])+er



# Exact positive donor weights and short negative moment input.
assert count%8==0 and start<=F(l0)<F(r0)<=stop
c=c0+F(c0_offset)
wmin=1-F("3e-10")
rho=[]
pos=[]
for j in range(count//8):
    x=start+j*8*step
    peaks=[estimate(x+i*step,step)[1] for i in range(8)]
    raw=wmin*(Alo-max(peaks))
    w=F((raw*10**10)//1,10**10)
    if w>0:
        pos.append((c0+x-c,8*step,w*8*step/pi_upper))
edge=F(l0)
count_negative=(F(r0)-edge)/step
assert count_negative.denominator==1
for j in range(int(count_negative)):
    x=edge+j*step
    _,upper=estimate(x,step)
    val=max(F(0),(upper-Alo)/pi_lower)
    eta=F(-((-val*10**10)//1),10**10)
    assert eta>=val and eta*pi_upper<55
    if eta:
        rho.append((c0+x-c,c0+x+step-c,eta))
assert len(pos)==nPos and len(rho)==nNeg
print("signed original weights exact:",len(pos),len(rho),flush=True)


from math import acos,cos,sin,sqrt,fsum

def gauss(order):
    points=[0.0]*order
    weights=[0.0]*order
    for j in range((order+1)//2):
        x=cos(acos(-1)*(j+.75)/(order+.5))
        for i in range(30):
            p,prev=1.0,0.0
            for n in range(1,order+1):
                prev,p=p,((2*n-1)*x*p-(n-1)*prev)/n
            dp=order*(x*p-prev)/(x*x-1)
            change=p/dp
            x-=change
            if abs(change)<2e-16:
                break
        points[j],points[-j-1]=x,-x
        weights[j]=weights[-j-1]=2/((1-x*x)*dp*dp)
    return points,weights


def proposed_coefficients(pos,c,k,alpha,tau):
    # Floating point proposes Z only. The exact verifier below may reject it.
    s,w=gauss(80)
    n=len(pos)
    h=float(pos[0][1])
    assert all(float(row[1])==h for row in pos)
    t=[4*x for x in s]
    envelope=[sin(h*x/2)/(h*x/2) if x else 1.0 for x in t]
    a=[2*ww*e*e for ww,e in zip(w,envelope)]
    env4=sin(2*h)/(2*h)
    u=[float(x+h0/2) for x,h0,wt in pos]
    tags=[round((x-u[0])/h) for x in u]
    low=[fsum(ww*cos(j*h*tt) for ww,tt in zip(a,t)) for j in range(tags[-1]+1)]
    high=[]
    for j in range(2*tags[-1]+1):
        z=2*(float(c)+u[0])+j*h
        high.append(env4*env4*sin(4*z)/z)
    base=[[low[abs(tags[i]-tags[j])]-high[tags[i]+tags[j]] for j in range(n)]
          for i in range(n)]
    for i,(left,width,weight) in enumerate(pos):
        base[i][i]+=float(tau/(alpha*weight))

    polynomial=[[2*ww*e*x**j for ww,e,x in zip(w,envelope,s)] for j in range(k)]
    rhs=[]
    for u0 in u:
        local_c=[cos(u0*x) for x in t]
        local_s=[sin(u0*x) for x in t]
        z=2*float(c)+u0
        sc=(sin(4*z)*env4/z,cos(4*z)*env4/z)
        rhs.append([(-1)**(j//2)*(fsum(a*b for a,b in zip(polynomial[j],
                    local_c if j%2==0 else local_s))-sc[j%2]) for j in range(k)])

    # Cholesky factorization of the approximate positive matrix.
    L=[]
    for i,row in enumerate(base):
        v=[]
        for j in range(i):
            v.append((row[j]-fsum(a*b for a,b in zip(v,L[j])))/L[j][j])
        v.append(sqrt(row[i]-fsum(x*x for x in v)))
        L.append(v)
    Y=[]
    for i,row in enumerate(rhs):
        Y.append([(v-fsum(L[i][j]*Y[j][r] for j in range(i)))/L[i][i]
                  for r,v in enumerate(row)])
    Z=[None]*n
    for i in reversed(range(n)):
        Z[i]=[(v-fsum(L[j][i]*Z[j][r] for j in range(i+1,n)))/L[i][i]
              for r,v in enumerate(Y[i])]
    return [[round(10**20*x) for x in row] for row in Z]



k=18
K=nTaylor
alpha,tau=F(".95"),F(price)
zd=10**20
neg=rho
Z=proposed_coefficients(pos,c,k,alpha,tau)
assert len(Z)==len(pos) and all(len(row)==k for row in Z)
c=F("99653682.92983")+F("574.36")
Eps=(4*max(abs(F(l0)-F(c0_offset)),abs(F(r0)-F(c0_offset))))**k/factorial(k)
delta=8*Eps*(2+Eps)*sum(w*(b-a) for a,b,w in neg)
assert F(0)<delta<(F("2.356e-16") if mode=="reprice-first" else F("6.382e-23"))
assert tau+delta<F("6.713e-9")

# Exact moments and inverse on the short negative enclosure.
mom=[sum(w*(b**(i+1)-a**(i+1))/(i+1) for a,b,w in neg) for i in range(2*k-1)]
scale4=[F(4**i,factorial(i)) for i in range(k)]
M=[[scale4[i]*scale4[j]*mom[i+j] for j in range(k)] for i in range(k)]
aug=[M[i]+[F(i==j) for j in range(k)] for i in range(k)]
for i in range(k):
    piv=aug[i][i]
    assert piv>0
    aug[i]=[x/piv for x in aug[i]]
    for j in range(k):
        if j!=i:
            multiple=aug[j][i]
            aug[j]=[y-multiple*x for x,y in zip(aug[i],aug[j])]
inv=[row[k:] for row in aug]
assert all(inv[i][j]==inv[j][i] for i in range(k) for j in range(k))
print("short negative moment inverse",len(neg),"delta",float(delta),flush=True)

# Integer coefficients represent the k residual physical carriers.
grid=10**50
p=[[0]*K for _ in range(k)]
for n in range(K):
    moments=[]
    cap=100
    for a,h,_ in pos:
        l,r=int(cap*a),int(cap*(a+h))
        assert l==cap*a and r==cap*(a+h) and r-l==2
        moments.append(r**(n+1)-l**(n+1))
    q=F(grid*4**n,zd*2*(n+1)*cap**n*factorial(n))
    for j in range(k):
        coef=F(n==j)*grid - q*sum(Z[b][j]*u for b,u in enumerate(moments))
        p[j][n]=(-1)**(n//2)*round(coef)
eps=[]
huge=[]
donor_eps=[(4*max(abs(a),abs(a+h)))**K/factorial(K) for a,h,w in pos]
assert max(donor_eps)<F("1.03e-31")
for j in range(k):
    col=[abs(row[j]) for row in Z]
    eps.append(3*(F(K,2*grid)+sum(u*v for u,v in zip(col,donor_eps))/zd))
    huge.append(3*(1+F(sum(col),zd))+eps[-1])
assert max(eps)<(F("2.272e-31") if mode=="reprice-first" else F("8.310e-42"))
print("residual vectors",k,"error",float(max(eps)),"rough norm",float(max(huge)),flush=True)

# Exact polynomials, paired with directed oscillating physical moments.
z=8*c
def atan_sharp(y):
    s=sum((-1)**j*y**(2*j+1)/(2*j+1) for j in range(80))
    return s,s+y**161/161
lo5,hi5=atan_sharp(F(1,5))
lo239,hi239=atan_sharp(F(1,239))
pi_lo_sharp,pi_hi_sharp=round_out(16*lo5-4*hi239,16*hi5-4*lo239,10**90)
assert pi_lower<=pi_lo_sharp<pi_hi_sharp<=pi_upper
turn=(z/pi_lo_sharp+1)//2
angle=z-2*turn*pi_lo_sharp
assert abs(angle)<F(22,7)
co0=sum((-1)**q*angle**(2*q)/factorial(2*q) for q in range(48))
si0=sum((-1)**q*angle**(2*q+1)/factorial(2*q+1) for q in range(48))
err=2*turn*(pi_hi_sharp-pi_lo_sharp)+F(22,7)**96/factorial(96)
assert err<F("1e-80")
co=(co0-err,co0+err)
si=(si0-err,si0+err)
trig_grid=10**70
rec=[round_out(*scale(2/z,si),trig_grid)]
for n in range(1,2*K-1):
    val=(add(scale(2/z,si),scale(-n/z,rec[-1])) if n%2==0 else
         add(scale(-2/z,co),scale(n/z,rec[-1])))
    rec.append(round_out(*val,trig_grid))
small_grid=10**60
modes=[[],[],[]]
for n in range(2*K-1):
    if n%2==0:
        plain=F(4,n+1)
        modes[0].append(round_out(plain-2*rec[n][1],plain-2*rec[n][0],small_grid))
        modes[1].append(round_out(plain+2*rec[n][0],plain+2*rec[n][1],small_grid))
        modes[2].append((F(0),F(0)))
    else:
        modes[0].append((F(0),F(0)))
        modes[1].append((F(0),F(0)))
        modes[2].append(round_out(*scale(2,rec[n]),small_grid))
scaledmodes=[[(int(a*small_grid),int(b*small_grid)) for a,b in mode] for mode in modes]

diagonal=[tau/(alpha*w) for a,h,w in pos]
den=small_grid*grid**2
work_grid=10**30
upper=[[0]*k for _ in range(k)]
lower=[[0]*k for _ in range(k)]
for i in range(k):
    for j in range(i,k):
        a=b=0
        for n, primal in enumerate(p[i]):
            for m, adjoint in enumerate(p[j]):
                coeff=primal*adjoint
                l,r=scaledmodes[0 if n%2==m%2==0 else 1 if n%2==m%2==1 else 2][n+m]
                if coeff<0:
                    l,r=r,l
                a+=l*coeff
                b+=r*coeff
        # Also enclose the exact positive ridge term in the work grid.
        aa=bb=0
        for e,d in enumerate(diagonal):
            val=d*F(Z[e][i]*Z[e][j],zd**2)*work_grid
            aa+=val//1
            bb+=-((-val)//1)
        err=eps[i]*huge[j]+eps[j]*huge[i]+eps[i]*eps[j]
        lo=tau*inv[i][j]-F(b,den)-F(bb,work_grid)-err
        hi=tau*inv[i][j]-F(a,den)-F(aa,work_grid)+err
        l,h=round_out(lo,hi,work_grid)
        lower[i][j]=lower[j][i]=int(work_grid*l)
        upper[i][j]=upper[j][i]=int(work_grid*h)
    if i%4==0:
        print("enclosed rows",i+1,"of",k,flush=True)
assert all(lower[i][j]<=upper[i][j] for i in range(k) for j in range(k))
rounderr=max(sum(upper[i][j]-lower[i][j] for j in range(k)) for i in range(k))
print("directed matrix row uncertainty",float(F(rounderr,work_grid)),flush=True)
assert F(rounderr,work_grid)<F("1e-23")
T=[[(lower[i][j]+upper[i][j])//2-(rounderr if i==j else 0) for j in range(k)] for i in range(k)]

# Exact fraction-free congruence sign.
last=1
for i in range(k):
    p=T[i][i]
    print("pivot",i,float(F(p,last*work_grid)),flush=True)
    assert p>0
    for j in range(i+1,k):
        for l in range(j,k):
            n=p*T[j][l]-T[i][j]*T[i][l]
            q,r=divmod(n,last)
            assert r==0
            T[j][l]=T[l][j]=q
    last=p
assert F(T[0][0],work_grid)>(F("3.3482e-9") if mode=="reprice-first" else F("8.2920e-8"))
beta=F(".124997987")-F(".0001071")
def raw_tail(radius,degree):
    error=F(radius)**degree/factorial(degree)
    return error*(2+error)
e40=F(8)**40/factorial(40)
H=(e40/25)*(2+e40/25)
fixed=F("2.95e-8")+27*raw_tail(8,36)+225*raw_tail(8,40)+30*raw_tail("14.6",64)+70*raw_tail(12,52)+37*H
branches=[]
for a14 in (F("31e-9"),F("40e-9")):
    for t22 in (F("3e-13"),F("5e-13")):
        for t23 in (F("1e-15")+19*H,F("3e-10")+10*H,F("5e-10")+10*H):
            for t24 in (F("1e-16")+22*H,F("1e-10")+11*H):
                for t25 in (F("1e-15"),F("5e-15")):
                    branches.append(fixed+a14+t22+t23+t24+t25)
assert len(branches)==48

old_room=F(".000001")*beta-max(branches)
assert old_room>F("6.713e-9")
assert F("535.60")<F("559.22")<F("563.22")<F("567.50")<F("571.50")<F("580.62")<F("590.62")<F("622.96")
assert all(v<start or stop<u for u,v in [(F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))])
assert F(5085348195,4)*pi_lower-F("5.55")-2>c0+stop
assert F("574.58")<F("580.62")<F("580.66")<F("580.88")<F("590.62")
if mode=="reprice-first":
    cap=max(F(".953004")+(max(branches)+tau+delta)/beta,alpha)
    room=old_room-tau-delta
    assert cap<F(".953005") and room>F("6.263e-9")
    print("PASS exact revised first signed donor",float(cap),float(room))
else:
    caps=[]
    for first_price in (F("5e-9"),F("4.5e-10")):
        new_price=first_price+F("2.356e-16")+tau+delta
        all_caps=[max(F(".953004")+(old+new_price)/beta,alpha) for old in branches]
        assert len(all_caps)==48 and max(all_caps)<F(".953005")
        caps.append((max(all_caps),old_room-new_price))
    assert caps[0][1]>F("9.137e-10") and caps[1][1]>F("5.463e-9")
    print("PASS exact second signed donor and both 48-branch sums",
          tuple((float(cap),float(room)) for cap,room in caps))
~~~
