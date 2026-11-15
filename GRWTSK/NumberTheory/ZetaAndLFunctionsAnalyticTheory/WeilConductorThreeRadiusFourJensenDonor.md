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
assert c==c0+F(c0_offset)
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

## Correction to the second-donor checker

The combined checker in blob `23411556ff31f213c5ddc5c42c5d6b7b1e76af2f`
reset the physical Gram center to $c_1+574.36$ after selecting
$c_1+580.77$ in mode `second`. Its residual Gram consequently
did not certify the second donor at the stated center. The checker
above now asserts the selected center before computing the physical
Gram at frequency $8c$. Both `reprice-first` and `second` pass
with this binding and the original arithmetic source. The standalone
first-donor checker uses $c_1+574.36$ throughout.

## Three detached enclosures through detuning 708.60

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Continue the original radius-four signed comparison, with the
second-donor checker corrected above, from the
[pinned 59-enclosure result](https://github.com/grwtsk/math/blob/9c64374c21220d2b4688525bf47cc0e6eab16944/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $622.96$.
At that revision the
[radius-four arithmetic source](https://github.com/grwtsk/math/blob/9c64374c21220d2b4688525bf47cc0e6eab16944/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourLegendreSchurReduction.md)
has blob 72848bace2af0f427c9e9fae16806f1b31ee064f and bytes SHA-256
2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5.
Retain the complex odd carrier $L^2([-4,4],dt)$ with zero
extension, the folded restriction with measure $d\nu/\pi$,
the original masks and projection $\Pi_H$. The primitive
nonprincipal odd character modulo three uses the full parity-one
gamma, all $458$ signed prime powers and zero principal-pole term.
All detunings are from $c_1=99653682.92983$ and every displayed
restriction includes its reflection.

On $[622.96,708.60]$ the original multiplier $m$ is strictly
positive off the following three enclosures. Both endpoints of
every enclosure are positive. The interior detunings $623.05$,
$629.98$ and $638.31$ are negative in their respective enclosures.
The directed guard uses the original filters and the Binet bound
$17.6779<A_1<17.6780$ with the complete signed prime sum.
It takes $4264$ complement checks with six bisections and
proves strict positivity at $708.60$.

| $j$ | Positive donor $Y_j$ | Negative enclosure $E_j$ | Positive bins | Nonzero negative upper cells | Upper bound for $\delta_j$ |
| --- | --- | --- | --- | --- | --- |
| 6 | $[621.06,625.06]$ | $[622.96,623.14]$ | 192 | 56 | $1.023\cdot10^{-24}$ |
| 7 | $[627.98,631.98]$ | $[629.88,630.08]$ | 190 | 69 | $7.780\cdot10^{-24}$ |
| 8 | $[636.32,640.32]$ | $[638.20,638.42]$ | 190 | 74 | $7.021\cdot10^{-23}$ |

The sign through $622.96$ already covers the left portion of
$Y_6$. The new guard and that prior sign show
$N_{Y_j}^*N_{Y_j}=N_{E_j}^*N_{E_j}$ for each row. These
negative outputs are pairwise disjoint and avoid the earlier
negative outputs. The positive tags $Y_6,Y_7,Y_8$ are
pairwise disjoint, are entirely to the right of the previously
reserved $Y_5$ ending at $590.62$, and avoid the original
detached and remote resource tags.

On the actual physical space each comparison is
$$
 N_{E_j}^*N_{E_j}\preceq \tfrac14\mathcal P_{Y_j}
                   +(10^{-12}+\delta_j)I .
$$
Use the true sine averages on positive $.02$ bins with Jensen
lower bounds computed from $.0025$ directed source cells.
The negative upper step uses the same $.0025$ grid and the
full gamma lower bracket. Negative Taylor expansion at each
enclosure center uses $18$ terms. Its pointwise error is
respectively bounded by $.36^{18}/18!$, $.40^{18}/18!$ or
$.44^{18}/18!$. For each row use its actual upper step
$\eta_j$ in the Taylor price
$\delta_j=8\epsilon_j(2+\epsilon_j)\int_{E_j}\eta_j$.
The price sum is strictly below $8\cdot10^{-23}$.

As in the first Jensen donor, write $V$ for the short negative
Taylor moment map, $M$ for its positive rational moment matrix,
and $B^*WB$ for the positive Jensen lower form. Put
$X=V^*-B^*Z$ for the exact rational proposal matrix $Z$.
For $\alpha=\tfrac14$ and $\tau=10^{-12}$ the directed
test is
$$
 R_Z=\tau M^{-1}-X^*X-\tau Z^*(\alpha W)^{-1}Z\succ0 .
$$
The Woodbury square completion from the first Jensen donor
then gives $V^*MV\preceq\tau I+\alpha B^*WB$.
The positive sine averages use $120$ Taylor terms solely to
enclose the $18$ physical columns of $X$. Their directed
$L^2$ discrepancies are below $1.801\cdot10^{-48}$ and
the matrix row widths are below $10^{-23}$.
Exact fraction-free congruence verifies that all $18$ pivots
are positive in each row, with initial pivots greater than
$1.0122\cdot10^{-10}$. The floating solve proposes $Z$.
The directed residual arithmetic verifies the form on the
original carrier independently of the accuracy of that solve.

Reserve the positive donor operators $\mathcal P_{Y_j}$
separately in $S_\lambda$. The same preceding genuine tagged
inputs and the reduced scalar floor $\beta I$ remain available.
Stack the three disjoint negative restrictions once to form
$W_{\rm all62}$. Add the three scalar prices divided by $\beta$
to the previous scalar branch and include the three fractions
$\tfrac14$ among the already disjoint positive coefficients.
The exact guard checks all $48$ previous price combinations
under each of the two prices for the first Jensen donor.
The joint cap is below $0.953005$ in every case. The scalar
room exceeds $9.107\cdot10^{-10}$ when retaining the
first price $5\cdot10^{-9}$, and exceeds $5.460\cdot10^{-9}$
when using its checked lower price $4.5\cdot10^{-10}$.

Contiguous signed coverage reaches $708.60$. The remaining
source condition for the original seven leading inverses
and directional return is
$$
 \|N_{\rm out}S_{\rm all62}^{-1}N_{\rm out}^*\|\le1,\qquad
 T_+-\lambda\Pi_H=S_{\rm all62}-N_{\rm out}^*N_{\rm out},
 \qquad
 S_{\rm all62}:=S_\lambda-W_{\rm all62}^*W_{\rm all62}
 \succeq0.046995 S_\lambda .
$$
Here $N_{\rm out}$ is the true negative restriction on the
remaining original outside support.

Extract the following Python block and pass the pinned
radius-four Markdown path. Use selector `sign` for the
source sign guard and `e6`, `e7`, `e8` for the three local forms.
All four runs are needed for the joint comparison.

~~~python
from pathlib import Path
from hashlib import sha256
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
rows={
    "e6":("621.06","625.06","622.96","623.14","623.05",192,56,"1.023e-24"),
    "e7":("627.98","631.98","629.88","630.08","629.98",190,69,"7.780e-24"),
    "e8":("636.32","640.32","638.20","638.42","638.31",190,74,"7.021e-23"),
}
assert mode in ("sign",*rows)
if mode=="sign":
    start,stop,step=map(F,("622.96","708.60",".02"))
else:
    a0,b0,l0,r0,c0_offset,nPos,nNeg,max_delta=rows[mode]
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



if mode=="sign":
    boxes=[(F(row[2]),F(row[3])) for row in rows.values()]
    assert all(node(x)[1]<Alo for interval in boxes for x in interval)
    assert all(node(F(row[4]))[0]>Ahi for row in rows.values())
    assert node(stop)[1]<Alo
    checks=splits=0
    def positive(l,h):
        global checks,splits
        checks+=1
        lo,hi=estimate(l,h)
        if hi<Alo:
            return
        assert lo<Ahi and h>F(".000625"),(l,h,lo,hi)
        splits+=1
        positive(l,h/2)
        positive(l+h/2,h/2)

    for l,r in zip([start]+[b for a,b in boxes],[a for a,b in boxes]+[stop]):
        assert ((r-l)/step).denominator==1
        for j in range(int((r-l)/step)):
            positive(l+j*step,step)
    assert (checks,splits)==(4264,6)
    print("PASS actual signed complement through",str(stop),checks,splits)
    raise SystemExit

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
K=120
alpha,tau=F(".25"),F("1e-12")
zd=10**20
neg=rho
Z=proposed_coefficients(pos,c,k,alpha,tau)
assert len(Z)==len(pos) and all(len(row)==k for row in Z)
Eps=(4*max(abs(F(l0)-F(c0_offset)),abs(F(r0)-F(c0_offset))))**k/factorial(k)
delta=8*Eps*(2+Eps)*sum(w*(b-a) for a,b,w in neg)
assert 0<delta<F(max_delta)
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
assert max(eps)<F("1.801e-48")
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
assert F(T[0][0],work_grid)>F("1.0122e-10")
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
intervals=[(F(row[0]),F(row[1])) for row in rows.values()]
boxes=[(F(row[2]),F(row[3])) for row in rows.values()]
assert F("590.62")<intervals[0][0]
assert all(right<left for (left0,right),(left,right0) in zip(intervals,intervals[1:]))
assert all(a<=u<v<=b for (a,b),(u,v) in zip(intervals,boxes))
assert all(v<start or stop<u for u,v in [(F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))])
assert F(5085348195,4)*pi_lower-F("5.55")-2>c0+stop
tails=sum(F(row[7]) for row in rows.values())
assert tails<F("8e-23")
caps=[]
for first_price in (F("5e-9"),F("4.5e-10")):
    new_price=first_price+F("2.356e-16")+F("8e-10")+F("6.382e-23")+3*tau+tails
    all_caps=[max(F(".953004")+(old+new_price)/beta,F(".95"),alpha) for old in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps.append((max(all_caps),old_room-new_price))
assert caps[0][1]>F("9.107e-10") and caps[1][1]>F("5.460e-9")
print("PASS exact signed local donor",mode,"and both 48-branch sums",
      tuple((float(cap),float(room)) for cap,room in caps))
~~~

## A joint finite-rank price for the two Jensen residuals

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review
is UNASSESSED.

Use the actual first two deeper enclosures and their disjoint
positive donors from the 59-enclosure comparison. Keep the
original complex odd radius-four carrier, angular fold
$d\nu/\pi$, full parity-one gamma, all $458$ signed prime powers,
zero principal-pole term, masks and physical projection.
Use the corrected modes `reprice-first` and `second` to obtain
the true sine maps $B_i,V_i$, positive rational matrices $W_i,M_i$
and rational coefficients $Z_i$ at the original centers
$c_4=c_1+574.36$ and $c_5=c_1+580.77$. Their positive
fractions are $\alpha_i=19/20$. The preceding source bounds are
$$
 \mathcal P_{Y_i}\succeq B_i^*W_iB_i,\qquad
 N_{E_i}^*N_{E_i}\preceq V_i^*M_i V_i+\delta_i I .
$$

Put
$$
 X_i=V_i^*-B_i^*Z_i,\qquad
 T_i=M_i^{-1}-Z_i^*(\alpha_iW_i)^{-1}Z_i .
$$
The verified separate residual certificate
$\tau_iT_i-X_i^*X_i\succ0$ gives $T_i\succ0$ since
$\tau_i>0$. Write $D_i=\operatorname{diag}(\alpha_iW_i,T_i^{-1})$
on the direct sum of the two finite input spaces and
$L_i=(Z_i^*,I)$. The definitions give
$L_iD_i^{-1}L_i^*=M_i^{-1}$, so
$M_i^{1/2}L_iD_i^{-1/2}$ is a coisometry.
Apply its contraction inequality to
$D_i^{1/2}(B_if,X_i^*f)$. The identity
$L_i(B_if,X_i^*f)=V_if$ identifies the output.
This proves
$$
 V_i^*M_iV_i\preceq
 B_i^*(\alpha_iW_i)B_i+X_iT_i^{-1}X_i^* .
$$
The second term is an actual positive physical operator of
rank at most $18$. Keep the negative Taylor remainder $\delta_i I$
as a separate scalar term.

Let $X=(X_4,X_5)$ and $T=\operatorname{diag}(T_4,T_5)$.
The full $36$-dimensional Gram retains the cross terms between
the two residuals. The directed guard verifies
$$
 (7.47626\cdot10^{-10})T-X^*X\succ0.
$$
The guard also checks $8\cdot10^{-10}$ and the planned price
$9\cdot10^{-10}$. At $7.47625\cdot10^{-10}$ the directed upper
matrix has $35$ positive leading pivots and a negative final pivot.
Thus the true residual at that price has a negative direction for
these fixed coefficients. This threshold concerns the residual with
the chosen $Z_4,Z_5$. The donor inequality has its own optimum.
Congruence by $T^{-1/2}$ and the equality of the two squared
operator norms give $XT^{-1}X^*\preceq7.47626\cdot10^{-10}I$.
The joint inequality is therefore
$$
 N_{E_4}^*N_{E_4}+N_{E_5}^*N_{E_5}
 \preceq
 \tfrac{19}{20}(\mathcal P_{Y_4}+\mathcal P_{Y_5})
 +(7.47626\cdot10^{-10}+\delta_4+\delta_5)I .
$$
The two donor operators remain disjoint and are reserved once.
The joint uniform charge saves $5.02374\cdot10^{-10}$ against the
separate repriced charge with the same Taylor errors.

The directed cross Gram uses the actual $18$ residual columns
per donor, with respectively $120$ and $180$ averaged-sine
Taylor terms and both certified $L^2$ discrepancies.
The products of the two carriers give endpoint moments at
frequencies $4(c_4+c_5)$ and $4(c_5-c_4)=25.64$. At the high
frequency use the same Machin and integration-by-parts
enclosures. At the fixed difference frequency use $260$
Taylor terms with a directed remainder for the sine and
cosine moment of each physical monomial. Using the actual
cross terms, the maximal interval row width is below $10^{-23}$.
The integer midpoint matrix minus its maximal row width times
the identity has all $36$ exact leading pivots positive.

Reserve both donors and the original tagged and disjoint positive
inputs as in the 62-enclosure comparison. In every one of the $48$
original branches the joint charge leaves more than
$5.966\cdot10^{-9}$ physical room before the three later comparisons
and more than $5.96309\cdot10^{-9}$ after their three prices and Taylor
remainders. This uses $I\preceq S_{\mathrm{keep}}/\beta$ on the same
retained input. For the actual paid restriction $W_{\rm all62}$,
$S_{\rm all62}=S_\lambda-W_{\rm all62}^*W_{\rm all62}\succeq
0.046995 S_\lambda$. The outstanding condition on the actual
unpaid restriction is
$\|N_{\rm out}S_{\rm all62}^{-1}N_{\rm out}^*\|\le1$.

Extract the following Python guard and pass the pinned
radius-four Markdown followed by the corrected Jensen donor
Markdown, then the price selector `7.47626e-10`, `8e-10` or
`9e-10`. The selector `7.47625e-10` verifies the negative
direction by the upper matrix. The second extracted block is
byte-pinned and uses the verified physical center of each enclosure.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial
from pathlib import Path
import re
import sys

_,source_path,jensen_path,ask=sys.argv
assert ask in ("7.47625e-10","7.47626e-10","8e-10","9e-10")
check_negative=ask=="7.47625e-10"
journal=Path(jensen_path).read_text()
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",journal,re.M|re.S)
digest="5289ea98b2059b23685d3a799da9d5f8b2cbfb344ed0f974bc2478d1cfa53c90"
prior=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
assert len(prior)==1
marker="# Exact fraction-free congruence sign."
assert prior[0].count(marker)==1
checked=prior[0].replace(marker,"physical_polynomials=p\n\n"+marker)
d=[]
for mode in ("reprice-first","second"):
    sys.argv=[__file__,source_path,mode]
    data={"__name__":"__main__"}
    exec(compile(checked,jensen_path,"exec"),data)
    d.append(data)
sys.argv=[__file__,source_path,jensen_path]
a,b=d
assert (a['c'],b['c'])==(F('99654257.28983'),F('99654263.69983'))
assert a['k']==b['k']==18 and a['zd']==b['zd']==10**20
assert a['grid']==b['grid']==10**50
assert (a['K'],b['K'])==(120,180)
assert (a['alpha'],b['alpha'])==(F("0.95"),F("0.95"))
assert (a['tau'],b['tau'])==(F("4.5e-10"),F("8e-10"))
k=18
q=F(ask)
dim=2*k
scale=10**30
gram_scale=10**80

def floor_ceil(x):
    return x//1,-((-x)//1)


# The same high-precision pi enclosure is valid for every fixed phase.
pi_lo,pi_hi=a['pi_lo_sharp'],a['pi_hi_sharp']
def high_phase(z):
    turn=(z/pi_lo+1)//2
    u=z-2*turn*pi_lo
    assert abs(u)<F(22,7)
    co=sum((-1)**n*u**(2*n)/factorial(2*n) for n in range(48))
    si=sum((-1)**n*u**(2*n+1)/factorial(2*n+1) for n in range(48))
    err=2*turn*(pi_hi-pi_lo)+F(22,7)**96/factorial(96)
    assert err<F('1e-80')
    return (co-err,co+err),(si-err,si+err)

def high_integrals(z,terms):
    co,si=high_phase(z)
    result=[a['round_out'](*a['scale'](2/z,si),gram_scale)]
    for j in range(1,terms):
        val=(a['add'](a['scale'](2/z,si),a['scale'](-j/z,result[-1])) if j%2==0 else
             a['add'](a['scale'](-2/z,co),a['scale'](j/z,result[-1])))
        result.append(a['round_out'](*val,gram_scale))
    return result

def low_integrals(z,terms):
    assert z==F('25.64')
    nt=130
    c=[F((-1)**(n//2))*z**n/factorial(n) for n in range(2*nt)]
    err=z**(2*nt)/factorial(2*nt)
    assert err<F('1e-120')
    result=[]
    for j in range(terms):
        lo=hi=0
        for n in range(j%2,2*nt,2):
            l,r=floor_ceil(c[n]*F(2*gram_scale,n+j+1))
            lo+=l
            hi+=r
        result.append((F(lo-1,gram_scale),F(hi+1,gram_scale)))
    return result

def mode_gram(u,v):
    # Indexed by the parity of the left and right monomials.
    ksum=u['K']+v['K']-1
    high=high_integrals(4*(u['c']+v['c']),ksum)
    low=None if u is v else low_integrals(4*(v['c']-u['c']),ksum)
    modes=[[],[],[],[]]
    for j in range(ksum):
        if low is None:
            baseline=(F(2,j+1),F(2,j+1)) if j%2==0 else (F(0),F(0))
        else:
            baseline=low[j]
        for z in range(4):
            lpar,rpar=divmod(z,2)
            if j%2!=(lpar+rpar)%2:
                val=(F(0),F(0))
            elif lpar==rpar:
                val=a['scale'](2,a['add'](baseline,a['scale'](1 if lpar else -1,high[j])))
            else:
                val=a['scale'](2,a['add'](high[j],a['scale'](1 if lpar else -1,baseline)))
            modes[z].append((floor_ceil(val[0]*gram_scale)[0],floor_ceil(val[1]*gram_scale)[1]))
    return modes

def physical_g(u,v,modes,i,j):
    lower=upper=0
    for n,c in enumerate(u['physical_polynomials'][i]):
        for m,d in enumerate(v['physical_polynomials'][j]):
            p=c*d
            lo,hi=modes[2*(n%2)+m%2][n+m]
            if p<0:
                lo,hi=hi,lo
            lower+=p*lo
            upper+=p*hi
    den=gram_scale*u['grid']*v['grid']
    er=u['eps'][i]*v['huge'][j]+v['eps'][j]*u['huge'][i]+u['eps'][i]*v['eps'][j]
    return F(lower,den)-er,F(upper,den)+er

def ridge(u,i,j):
    # Recompute the exact proposed positive input price, directed onto scale.
    lo=hi=0
    for (aa,hh,w),zrow in zip(u['pos'],u['Z']):
        x=q*F(zrow[i]*zrow[j]*scale,u['zd']**2)/(u['alpha']*w)
        l,r=floor_ceil(x)
        lo+=l
        hi+=r
    return F(lo,scale),F(hi,scale)

L=[[0]*dim for _ in range(dim)]
U=[[0]*dim for _ in range(dim)]
for bi,bj in ((0,0),(0,1),(1,1)):
    u,v=d[bi],d[bj]
    modes=mode_gram(u,v)
    for i in range(k):
        for j in range(i if bi==bj else 0,k):
            gl,gu=physical_g(u,v,modes,i,j)
            if bi==bj:
                rl,ru=ridge(u,i,j)
                inv=q*u['inv'][i][j]
                lo,hi=inv-gu-ru,inv-gl-rl
            else:
                lo,hi=-gu,-gl
            i0,j0=bi*k+i,bj*k+j
            L[i0][j0]=L[j0][i0]=floor_ceil(lo*scale)[0]
            U[i0][j0]=U[j0][i0]=floor_ceil(hi*scale)[1]
    print('enclosed exact block',bi,bj,flush=True)
width=max(sum(v-u for u,v in zip(l,h)) for l,h in zip(L,U))
assert F(width,scale)<F('1e-23')
shift=width if check_negative else -width
G=[[(L[i][j]+U[i][j])//2+(shift if i==j else 0) for j in range(dim)] for i in range(dim)]
prev=1
for i in range(dim):
    p=G[i][i]
    print('joint pivot',i,float(F(p,scale*prev)),flush=True)
    if check_negative and i==dim-1:
        assert p<0
        print('PASS negative last pivot of directed upper fixed residual',ask,i)
        raise SystemExit(0)
    assert p>0
    for j in range(i+1,dim):
        for l in range(j,dim):
            c,r=divmod(p*G[j][l]-G[i][j]*G[i][l],prev)
            assert r==0
            G[j][l]=G[l][j]=c
    prev=p
assert a["branches"]==b["branches"] and len(a["branches"])==48
beta=a["beta"]
old=max(a["branches"])
tau=q+a["delta"]+b["delta"]
assert tau < q+F("2.356e-16")+F("6.382e-23")
assert tau < F("1.25e-9")
worst59=max(F(".953004")+(old+tau)/beta,F(".95"))
worst62=max(F(".953004")+(old+tau+F("3e-12")+F("8e-23"))/beta,F(".95"))
room59=F(".000001")*beta-old-tau
room62=room59-F("3e-12")-F("8e-23")
assert worst59<worst62<F(".953005")
if ask=="7.47626e-10":
    assert room59>F("5.966e-9") and room62>F("5.96309e-9")
elif ask=="8e-10":
    assert room59>F("5.913e-9") and room62>F("5.910e-9")
else:
    assert room59>F("5.813e-9") and room62>F("5.810e-9")
print('PASS exact joint physical residual',ask,'row uncertainty',float(F(width,scale)))
print('PASS original 48 budgets',float(worst59),float(room59),float(worst62),float(room62))
~~~

## One narrow enclosure through detuning 710.86

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Use the original radius-four signed comparison and the
[pinned 62-enclosure source](https://github.com/grwtsk/math/blob/056c3ddbbe4952908031251ac2b1bc81d1a7b065/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $708.60$. At that revision the Jensen donor
blob is a4cb4962750d48cbc8a298cdf2a8649f3074c8be and the
radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f.
All detunings use $c_1=99653682.92983$, with the reflected
restriction included. Retain the complex odd carrier
$L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$ with zero extension,
the folded measure $d\nu/\pi$, original masks and physical
projection. The primitive nonprincipal odd character modulo
three keeps the full parity-one gamma, all $458$ signed prime
powers and zero principal-pole term.

The signed guard proves the original multiplier strictly
positive on $[708.60,710.86]$ off $E_9=[708.60,708.66]$.
Both endpoints of $E_9$ are positive and $708.63$ is negative.
The directed complement proof uses $112$ checks and one
bisection. Put $Y_9=[707.62,709.62]$. The overlap $[707.62,708.60]$
with the prior signed coverage is strictly positive, including the
shared endpoint.
Its positive energy is disjoint from all prior direct and
tagged reservations, including the latest donor ending at
$640.32$. The actual negative part on $Y_9$ is supported in
$E_9$, and $N_{E_9}$ has output support disjoint from the
paid 62 enclosures.

The original quadratic comparison is
$$
 N_{E_9}^*N_{E_9}\preceq\tfrac14\mathcal P_{Y_9}
                       +(10^{-12}+\delta_{E_9})I,\qquad
 0<\delta_{E_9}<9.656\cdot10^{-36}.
$$
Use true sine averages on the $.02$ donor bins and exact
$.0025$ source cells. The $458$-term signed sum, Binet
bracket and filter keep $98$ positive Jensen bins and nine
nonzero upper negative cells. With the exact physical
center $c=c_1+708.63$, use $18$ Taylor terms for the short
negative enclosure. The kernel remainder bound is
$\epsilon=.12^{18}/18!$ and
$\delta_{E_9}=8\epsilon(2+\epsilon)\int_{E_9}\eta$, using the
directed negative upper density $\eta$ in folded coordinates.
The negative restriction upper form is
$V^*MV+\delta_{E_9}I$. The positive Jensen form $B^*WB$ is a lower
bound for $\mathcal P_{Y_9}$ by Cauchy–Schwarz on each bin.

The same Woodbury square completion as in the earlier
Jensen donors reduces the comparison to the sufficient
residual matrix
$$
 R_Z=10^{-12}M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
      -10^{-12}Z^*(\tfrac14 W)^{-1}Z\succ0 .
$$
Use the true positive sine averages with $120$ Taylor terms
to enclose the $18$ residual physical columns. Their
directed $L^2$ discrepancies are below $1.801\cdot10^{-48}$.
The exact physical Gram uses the signed endpoint moments at
frequency $8c$, with an explicit center equality immediately
before these moments are formed. The directed matrix row
width is below $10^{-23}$. Its certified symmetric lower
matrix has all $18$ positive exact pivots, with first above
$5.9727\cdot10^{-8}$. The floating solve proposes $Z$. The rational
lower matrix checks the comparison for that proposal.

The zero scalar price fails for these actual restrictions. The
folded sine restriction to the bounded positive slab of $Y_9$
has dense range in $L^2(Y_9^+,d\nu/\pi)$. A vector orthogonal
to this range has an entire sine transform that vanishes almost
everywhere for $-4<t<4$. The identity theorem and Fourier
uniqueness for its odd frequency extension make the vector
zero. By the negative witness and continuity on this interval,
a nonzero bounded frequency test supported in a small
neighborhood of $708.63$ inside $E_9$ has positive negative
energy and zero positive energy. If the comparison with zero
scalar price held on the physical carrier, boundedness of the
multipliers on $Y_9^+$ and dense range would pass the
comparison to this frequency test, a contradiction.

Reserve $\mathcal P_{Y_9}$ once in the reduced positive
comparator. The older positive tags and the $\beta I$ floor
remain available. The new scalar charge uses $I\preceq
S_{\rm keep}/\beta$ and the positive fraction enters the
maximum as $\tfrac14$. Append $N_{E_9}$ to the disjoint
outputs to form $W_{\rm all63}$. The strict cap $0.953005$
holds for all $48$ original price combinations with each
of the two separate first-donor prices and the joint
$7.47626\cdot10^{-10}$ residual price, where the latter is used
in place of the two separately summed prices. The least
physical room in those three branches exceeds respectively
$9.097\cdot10^{-10}$, $5.4597\cdot10^{-9}$ and $5.96209\cdot10^{-9}$.

Contiguous signed coverage reaches $710.86$. With
$S_{\rm all63}=S_\lambda-W_{\rm all63}^*W_{\rm all63}$
the source identity is
$$
 T_+-\lambda\Pi_H=S_{\rm all63}-N_{\rm out}^*N_{\rm out},
 \qquad S_{\rm all63}\succeq0.046995S_\lambda .
$$
The true outside-support bound
$\|N_{\rm out}S_{\rm all63}^{-1}N_{\rm out}^*\|\le1$
remains the required sign before the original seven leading
inverses and directional return.

Extract the guard and pass the pinned radius-four Markdown
and selector `sign` or `e9`. Use both modes for the joint result.

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
rows={
    "e9":("707.62","709.62","708.60","708.66","708.63",".25"),
}
assert mode in ("sign",*rows)
if mode=="sign":
    start,stop,step=map(F,("708.60","710.86",".02"))
else:
    a0,b0,l0,r0,c0_offset,fraction=rows[mode]
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



if mode=="sign":
    boxes=[(F(row[2]),F(row[3])) for row in rows.values()]
    assert all(node(x)[1]<Alo for interval in boxes for x in interval)
    assert all(node(F(row[4]))[0]>Ahi for row in rows.values())
    assert node(stop)[1]<Alo
    checks=splits=0
    def positive(l,h):
        global checks,splits
        checks+=1
        lo,hi=estimate(l,h)
        if hi<Alo:
            return
        assert lo<Ahi and h>F(".000625"),(l,h,lo,hi)
        splits+=1
        positive(l,h/2)
        positive(l+h/2,h/2)

    for l,r in zip([start]+[b for a,b in boxes],[a for a,b in boxes]+[stop]):
        assert ((r-l)/step).denominator==1
        for j in range(int((r-l)/step)):
            positive(l+j*step,step)
    assert (checks,splits)==(112,1)
    print("PASS actual signed complement through",str(stop),checks,splits)
    raise SystemExit

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
assert len(pos)==98 and len(rho)==9
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
alpha,tau=F(fraction),F("1e-12")
zd=10**20
neg=rho
Z=proposed_coefficients(pos,c,k,alpha,tau)
assert len(Z)==len(pos) and all(len(row)==k for row in Z)
Eps=(4*max(abs(F(l0)-F(c0_offset)),abs(F(r0)-F(c0_offset))))**k/factorial(k)
delta=8*Eps*(2+Eps)*sum(w*(b-a) for a,b,w in neg)
assert 0<delta<F("9.656e-36")
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
assert max(eps)<F("1.801e-48")
print("residual vectors",k,"error",float(max(eps)),"rough norm",float(max(huge)),flush=True)

# Exact polynomials, paired with directed oscillating physical moments.
assert c==c0+F("708.63")
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
assert F(T[0][0],work_grid)>F("5.9727e-8")
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
intervals=[(F(row[0]),F(row[1])) for row in rows.values()]
boxes=[(F(row[2]),F(row[3])) for row in rows.values()]
assert F("640.32")<intervals[0][0]
assert all(right<left for (left0,right),(left,right0) in zip(intervals,intervals[1:]))
assert all(a<=u<v<=b for (a,b),(u,v) in zip(intervals,boxes))
assert all(v<start or stop<u for u,v in [(F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))])
assert F(5085348195,4)*pi_lower-F("5.55")-2>c0+stop
base_options = {
    "published-first": F("5e-9") + F("8e-10"),
    "repriced-first": F("4.5e-10") + F("8e-10"),
    "joint-residual": F("7.47626e-10"),
}
caps = {}
for label,pair_price in base_options.items():
    spent=pair_price+F("2.356e-16")+F("6.382e-23")+4*tau+F("8e-23")+delta
    all_caps=[max(F(".953004")+(old+spent)/beta,F(".95"),alpha) for old in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps[label]=max(all_caps),old_room-spent
assert caps["published-first"][1]>F("9.097e-10")
assert caps["repriced-first"][1]>F("5.4597e-9")
assert caps["joint-residual"][1]>F("5.96209e-9")
print("PASS exact signed donor E9 and all 48x3 price combinations",
      {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
~~~
