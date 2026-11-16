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

## A shared Jensen map within the 63-enclosure comparison

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Use the [pinned 63-enclosure comparison](https://github.com/grwtsk/math/blob/21797d6a1149a9aca223217b3db8e1d48d1635ab/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $710.86$, blob b6862dcb02af626eba172c32d357707f9e85539a.
Its radius-four arithmetic source has blob
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the complex
odd physical carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, original masks and
physical projection. The primitive nonprincipal odd character
modulo three uses the full parity-one gamma, all $458$ signed
prime powers and zero principal-pole term. All detunings are from
$c_1=99653682.92983$ and include their reflections.

### Original form bound for the two deeper enclosures

Use $Y_4=[571.50,580.62]$, $Y_5=[580.62,590.62]$,
$E_4=[574.16,574.58]$ and $E_5=[580.66,580.88]$.
The corrected first and second Jensen guards supply the genuine
positive average maps $B_i$, positive weights $W_i$,
negative moment maps $V_i$ and positive definite moments $M_i$.
Set $B=(B_4,B_5)$, $W=\operatorname{diag}(W_4,W_5)$,
$V=(V_4,V_5)$ and $M=\operatorname{diag}(M_4,M_5)$.
Both operators have physical domain $\mathcal H=L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$.
There are $928$ disjoint positive bins across the two donor
strips, so $B$ takes values in $\mathbb C^{928}$ and $V$ in
$\mathbb C^{36}$. The existing Jensen and negative Taylor bounds give
$$
 B^*WB\preceq\mathcal P_{Y_4}+\mathcal P_{Y_5},\qquad
 N_{E_4}^*N_{E_4}+N_{E_5}^*N_{E_5}
 \preceq V^*MV+(\delta_4+\delta_5)I .
$$
The $18$-term negative expansions retain the exact physical
centers $99654257.28983$ and $99654263.69983$.
Their directed errors satisfy $\delta_4<2.356\cdot10^{-16}$
and $\delta_5<6.382\cdot10^{-23}$.

Set $\alpha=19/20$ and $\tau=10^{-12}$.
Use one rational $928\times36$ matrix $Z$ whose two column
blocks each use both donor strips. The checked physical
residual is
$$
 R_Z=\tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                -\tau Z^*(\alpha W)^{-1}Z \succ0 .
$$
With $A=\tau(\alpha W)^{-1}+BB^*$, completing the
square in $Z$ gives
$$
 R:=\tau M^{-1}-VV^*+VB^*A^{-1}BV^*,\qquad
 R-R_Z=(Z-A^{-1}BV^*)^*A(Z-A^{-1}BV^*)\succeq0 .
$$
Woodbury identifies $R$ with
$\tau(M^{-1}-V(\tau I+\alpha B^*WB)^{-1}V^*)$.
The Schur complement therefore gives
$V^*MV\preceq\tau I+\alpha B^*WB$. The original physical
inequality is
$$
 N_{E_4}^*N_{E_4}+N_{E_5}^*N_{E_5}
 \preceq \tfrac{19}{20}(\mathcal P_{Y_4}+\mathcal P_{Y_5})
              +(10^{-12}+\delta_4+\delta_5)I .
$$
The sharp published interval for the separate residual factors
uses their fixed $Z_4,Z_5$. The single proposal here changes both
residual blocks and uses the full cross terms of the shared ridge
matrix. The actual disjoint positive operators enter once.

A zero total scalar charge still fails for these actual positive
resources. The folded restriction to the bounded union of the two
positive donor slabs has dense range. An orthogonal vector would
have an entire sine transform vanishing for $-4<t<4$, and
Fourier uniqueness on the odd frequency extension makes that
vector zero. The earlier negative witness at detuning $580.78$
gives an open subinterval of $E_5$ with strictly positive negative
weight and zero positive weight. A frequency test supported
there violates any finite comparison with only the two donor
terms. The two weighted forms are bounded on the donor union, so
dense approximation transfers the violation to the physical
carrier.

### Exact verification on the physical carrier

The floating solve proposes $Z$. The certificate evaluates
the actual residual with rational arithmetic. Each positive
average carrier uses $260$ Taylor terms about the receiving
negative-jet center. The exact angular interval averages of
$(4^n/n!)(\nu-c_i)^n$ determine the directed coefficients.
The omitted remainder and rational coefficient roundings give
directed $L^2$ bounds for each of the $36$ residual columns.

The products of the two real sine and cosine carriers give
sum and difference angular frequencies
$4(c_4+c_5)$ and $4(c_5-c_4)=25.64$. Use directed Machin
enclosures and integration by parts at the sum frequency.
At the difference frequency, use the directed integral of the
rational sine and cosine Taylor approximants. The shared
positive ridge term is enclosed outward including its cross
terms. A symmetric integer midpoint minus the maximal row
width times the identity supplies a true Loewner lower matrix.
All $36$ leading pivots are positive with row width below
$10^{-23}$.

### Return at the same signed frontier

Replace the uniform pair price $7.47626\cdot10^{-10}$ by
$10^{-12}$ and keep both Taylor charges. The uniform-price
reduction is exactly $7.46626\cdot10^{-10}$. The preceding
three $10^{-12}$ prices with total Taylor tails below
$8\cdot10^{-23}$ and the $E_9$ price $10^{-12}+\delta_{E_9}$
with $\delta_{E_9}<9.656\cdot10^{-36}$ remain in the same sum.
All $48$ original price choices give a cap strictly below
$0.953005$ and physical scalar room greater than $6.7087\cdot10^{-9}$.
The negative output stack $W_{\mathrm{all63}}$ uses the
same certified $63$ restrictions through detuning $710.86$.
Reserve the original positive tags and use
$I\preceq S_{\mathrm{keep}}/\beta$ as in the previous return.

The actual identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all63}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all63}}=
 S_\lambda-W_{\mathrm{all63}}^*W_{\mathrm{all63}}
 \succeq0.046995S_\lambda .
$$
The required remaining sign for the original seven leading
inverses and directional return is
$\|N_{\mathrm{out}}S_{\mathrm{all63}}^{-1}N_{\mathrm{out}}^*\|\le1$
over the full actual outside support.

Extract this guard and pass the pinned arithmetic Markdown,
the Jensen donor Markdown containing the pinned predecessor
blocks, and `1e-12`. The Markdown may include this section. The source checker digests bind the corrected
first two centers and the E9 debit to their respective
published guard blocks.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial, cos, sin, sqrt, fsum
from pathlib import Path
import re
import sys

_,source_path,jensen_path,ask=sys.argv
source_digest="2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
assert sha256(Path(source_path).read_bytes()).hexdigest()==source_digest
journal=Path(jensen_path).read_text()
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",journal,re.M|re.S)
previous_digest="5289ea98b2059b23685d3a799da9d5f8b2cbfb344ed0f974bc2478d1cfa53c90"
e9_digest="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
previous=[block for block in blocks if sha256(block.encode()).hexdigest()==previous_digest]
frontier=[block for block in blocks if sha256(block.encode()).hexdigest()==e9_digest]
assert len(previous)==len(frontier)==1
checked=previous[0]
d=[]
for code,mode in ((checked,"reprice-first"),(checked,"second"),(frontier[0],"e9")):
    sys.argv=[__file__,source_path,mode]
    data={"__name__":"__main__"}
    exec(compile(code,jensen_path,"exec"),data)
    d.append(data)
sys.argv=[__file__,source_path,jensen_path,ask]
a,b,front=d
d=[a,b]
assert (front["start"],front["stop"],front["c"])==(F("707.62"),F("709.62"),F("99654391.55983"))
assert front["tau"]==F("1e-12") and front["alpha"]==F(1,4)
assert F(0)<front["delta"]<F("9.656e-36")
assert (a['c'],b['c'])==(F('99654257.28983'),F('99654263.69983'))
assert a['k']==b['k']==18 and a['zd']==b['zd']==10**20
assert a['grid']==b['grid']==10**50
k=18
q=F(ask)
assert q==F("1e-12")
dim=2*k
scale=10**30
gram_scale=10**100

# Use the same actual original positive bins once across both negative blocks.
actual_centers=(a["c"],b["c"])
pos=[(l+u["c"]-a["c"],h,w) for u in d for l,h,w in u["pos"]]
assert len(pos)==928 and all(x[0]+x[1]<=y[0] for x,y in zip(pos,pos[1:]))
alpha=F(".95")
zd=10**20
coeff_grid=10**50
K=260

def proposal():
    # The numeric solve is only a proposal. All tested values below are exact.
    x,w=a["gauss"](128)
    n=len(pos)
    h=float(pos[0][1])
    assert all(float(row[1])==h for row in pos)
    t=[4*v for v in x]
    env=[sin(h*v/2)/(h*v/2) if v else 1.0 for v in t]
    env4=sin(2*h)/(2*h)
    buf=[2*ww*ee*ee for ww,ee in zip(w,env)]
    u=[float(l+h0/2) for l,h0,wt in pos]
    tags=[round((y-u[0])/h) for y in u]
    low=[fsum(ww*cos(j*h*tt) for ww,tt in zip(buf,t)) for j in range(tags[-1]+1)]
    high=[]
    for j in range(2*tags[-1]+1):
        z=2*(float(a["c"])+u[0])+j*h
        high.append(env4*env4*sin(4*z)/z)
    matrix=[[low[abs(tags[i]-tags[j])]-high[tags[i]+tags[j]]
             for j in range(n)] for i in range(n)]
    for i,(_,_,weight) in enumerate(pos):
        matrix[i][i]+=float(q/(alpha*weight))
    poly=[[2*ww*e*s0**j for ww,e,s0 in zip(w,env,x)] for j in range(k)]
    rhs=[]
    for b0 in u:
        row=[]
        for c0 in actual_centers:
            det=b0-float(c0-a["c"])
            local_c=[cos(det*v) for v in t]
            local_s=[sin(det*v) for v in t]
            z=float(a["c"])+float(c0)+b0
            sc=(sin(4*z)*env4/z,cos(4*z)*env4/z)
            row.extend([(-1)**(j//2)*(fsum(e*v for e,v in zip(poly[j],
                       local_c if j%2==0 else local_s))-sc[j%2]) for j in range(k)])
        rhs.append(row)
    L=[]
    for i,row in enumerate(matrix):
        values=[]
        for j in range(i):
            values.append((row[j]-fsum(x*y for x,y in zip(values,L[j])))/L[j][j])
        values.append(sqrt(row[i]-fsum(v*v for v in values)))
        L.append(values)
    Y=[]
    for i,row in enumerate(rhs):
        Y.append([(v-fsum(L[i][j]*Y[j][r] for j in range(i)))/L[i][i]
                  for r,v in enumerate(row)])
    Z=[None]*n
    for i in reversed(range(n)):
        Z[i]=[(v-fsum(L[j][i]*Z[j][r] for j in range(i+1,n)))/L[i][i]
              for r,v in enumerate(Y[i])]
    return [[round(zd*x) for x in row] for row in Z]

Z=proposal()
print("proposed shared positive map",len(Z),len(Z[0]),"shift",ask,flush=True)
for block,u in enumerate(d):
    p=[[0]*K for _ in range(k)]
    bins=[(l+a["c"]-u["c"],h,wt) for l,h,wt in pos]
    loc=[(int(100*l),int(100*(l+h))) for l,h,wt in bins]
    assert all(F(x,100)==l and F(y,100)==l+h and y-x==2
               for (x,y),(l,h,wt) in zip(loc,bins))
    for n in range(K):
        moments=[r**(n+1)-l**(n+1) for l,r in loc]
        mul=F(coeff_grid*4**n,zd*2*(n+1)*100**n*factorial(n))
        for j in range(k):
            coef=F(n==j)*coeff_grid - mul*sum(Z[b][block*k+j]*v for b,v in enumerate(moments))
            p[j][n]=(-1)**(n//2)*round(coef)
    eps=[]
    huge=[]
    donor_eps=[(4*max(abs(l),abs(l+h)))**K/factorial(K) for l,h,wt in bins]
    for j in range(k):
        col=[abs(row[block*k+j]) for row in Z]
        eps.append(3*(F(K,2*coeff_grid)+sum(z*w for z,w in zip(col,donor_eps))/zd))
        huge.append(3*(1+F(sum(col),zd))+eps[-1])
    u["physical_polynomials"]=p
    u.update(eps=eps,huge=huge,K=K,grid=coeff_grid)
    print("pooled actual carrier",u["c"],"residual error",float(max(eps)),flush=True)


def floor_ceil(x):
    return x//1,-((-x)//1)


def arctan_interval(x):
    lo=sum((-1)**j*x**(2*j+1)/(2*j+1) for j in range(110))
    return lo,lo+x**221/221

lo5,hi5=arctan_interval(F(1,5))
lo239,hi239=arctan_interval(F(1,239))
pi_lo,pi_hi=a['round_out'](16*lo5-4*hi239,16*hi5-4*lo239,10**130)

def high_phase(z):
    turn=(z/pi_lo+1)//2
    u=z-2*turn*pi_lo
    assert abs(u)<F(22,7)
    co=sum((-1)**n*u**(2*n)/factorial(2*n) for n in range(68))
    si=sum((-1)**n*u**(2*n+1)/factorial(2*n+1) for n in range(68))
    err=2*turn*(pi_hi-pi_lo)+F(22,7)**136/factorial(136)
    assert err<F('1e-120')
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

def ridge(i,j):
    lo=hi=0
    for (_,_,w),zrow in zip(pos,Z):
        x=q*F(zrow[i]*zrow[j]*scale,zd**2)/(alpha*w)
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
            i0,j0=bi*k+i,bj*k+j
            rl,ru=ridge(i0,j0)
            inv=q*u['inv'][i][j] if bi==bj else F(0)
            lo,hi=inv-gu-ru,inv-gl-rl
            L[i0][j0]=L[j0][i0]=floor_ceil(lo*scale)[0]
            U[i0][j0]=U[j0][i0]=floor_ceil(hi*scale)[1]
    print('enclosed exact block',bi,bj,flush=True)
width=max(sum(v-u for u,v in zip(l,h)) for l,h in zip(L,U))
assert F(width,scale)<F('1e-23')
G=[[(L[i][j]+U[i][j])//2-(width if i==j else 0) for j in range(dim)] for i in range(dim)]
prev=1
for i in range(dim):
    p=G[i][i]
    print('joint pivot',i,float(F(p,scale*prev)),flush=True)
    if p<=0:
        print('FAIL chosen joint sufficient lower matrix',ask,i)
        raise SystemExit(2)
    for j in range(i+1,dim):
        for l in range(j,dim):
            c,r=divmod(p*G[j][l]-G[i][j]*G[i][l],prev)
            assert r==0
            G[j][l]=G[l][j]=c
    prev=p
assert a["branches"]==b["branches"]==front["branches"] and len(a["branches"])==48
beta=a["beta"]
old=max(a["branches"])
tau=q+a["delta"]+b["delta"]
assert tau < q+F("3e-16")
assert tau < F("1.25e-9")
earlier_later_prices=F("3e-12")+F("8e-23")
frontier_price=front["tau"]+front["delta"]
spent=tau+earlier_later_prices+frontier_price
caps=[max(F(".953004")+(branch+spent)/beta,alpha,front["alpha"]) for branch in a["branches"]]
rooms=[F(".000001")*beta-branch-spent for branch in a["branches"]]
assert len(caps)==len(rooms)==48 and max(caps)<F(".953005")
assert min(rooms)>F("6.7087e-9")
sharp_separate=F("7.47626e-10")
assert sharp_separate-q==F("7.46626e-10")
print("PASS exact pooled Jensen residual",ask,"row uncertainty",float(F(width,scale)))
print("PASS all 48 q63 budgets",float(max(caps)),float(min(rooms)),
      "uniform-price reduction",float(sharp_separate-q))
~~~

## The next enclosure through detuning 722.96

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review is
UNASSESSED.

Use the [pinned 63-enclosure comparison](https://github.com/grwtsk/math/blob/40c70ff8c9edd5d0db325492e52216f2605b9488/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $710.86$ with its shared-map price, Jensen blob
aef9095e8b7118b41ca6f4537bfbcf464a6ca319 and radius-four arithmetic
blob 72848bace2af0f427c9e9fae16806f1b31ee064f.
Retain the original complex odd carrier
$L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$, zero extension,
folded measure $d\nu/\pi$, original masks and physical projection.
The primitive nonprincipal odd character modulo three uses the
full parity-one gamma, all $458$ signed prime powers and zero
principal-pole term. Detunings use $c_1=99653682.92983$ and
include their reflections.

The original multiplier is strictly positive on
$[710.86,722.96]$ off $E_{10}=[710.86,711.04]$.
Both endpoints of $E_{10}$ are positive and $710.95$ is negative.
The directed sign proof uses $596$ complement checks with no
bisections. Take the positive donor $Y_{10}=[709.64,712.24]$.
The last preceding donor ends at $709.62$. The exact guard
checks separation from the other earlier direct and tagged
positive resources. The left part $[709.64,710.86]$ of $Y_{10}$ lies in the
preceding strict sign region and avoids the prior enclosure
$[708.60,708.66]$. Thus the actual $m_-$ part on $Y_{10}$
is supported in $E_{10}$ and has disjoint output support
from the previous $63$ negative restrictions.

On the actual physical carrier,
$$
 N_{E_{10}}^*N_{E_{10}}\preceq
 \tfrac14\mathcal P_{Y_{10}}+(10^{-12}+\delta_{E_{10}})I,\qquad
 0<\delta_{E_{10}}<6.501\cdot10^{-25}.
$$
The positive Jensen form $B^*WB$ uses $123$ positive $.02$ bins
with directed prices on eight $.0025$ source cells per bin.
Cauchy–Schwarz for each true average gives
$B^*WB\preceq\mathcal P_{Y_{10}}$.
There are $46$ nonzero upper negative cells. The short negative
map $V$ uses $18$ terms about the exact physical center
$c=c_1+710.95$. The directed upper density $\eta$ and the
sine Taylor remainder $\epsilon=.36^{18}/18!$ give the
physical additive price
$\delta_{E_{10}}=8\epsilon(2+\epsilon)\int_{E_{10}}\eta$.

For $\tau=10^{-12}$ the checked Woodbury residual is
$$
 R_Z=\tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                    -\tau Z^*(\tfrac14W)^{-1}Z \succ0.
$$
For $A=\tau(\tfrac14W)^{-1}+BB^*$, the square completion
from the preceding source bounds the exact Woodbury residual
$\tau M^{-1}-VV^*+VB^*A^{-1}BV^*$ below by $R_Z$. Its
positivity gives $V^*MV\preceq\tau I+\tfrac14 B^*WB$. The $120$-term directed expansion of each true
positive average gives $18$ residual physical columns
with $L^2$ discrepancies below $1.801\cdot10^{-48}$.
The directed Gram uses signed endpoint moments at $8c$ and
asserts the exact physical center immediately before forming
them. Its certified matrix row width is below $10^{-23}$.
All $18$ exact leading pivots are positive, with first
greater than $3.2400\cdot10^{-10}$. The floating solve
proposes $Z$ for this rational check.

The negative witness also rules out zero scalar cost for the
actual $Y_{10}$ donor. The original multiplier is negative on an
open subinterval of $E_{10}$ at detuning $710.95$. A nonzero
frequency function supported there has positive negative energy
and zero positive energy. The dense-range argument for the
bounded folded restriction in the preceding section passes
this violation to the physical carrier for every fixed finite
donor coefficient.

Reserve the additional positive operator
$\mathcal P_{Y_{10}}$ once and use the same earlier positive
tagged inputs and reduced floor $\beta I$. Append the
disjoint negative restriction $N_{E_{10}}$ to form
$W_{\mathrm{all64}}$. Add $(\tau+\delta_{E_{10}})/\beta$
to the scalar branch and include the fraction $\tfrac14$
among the disjoint positive coefficients. Across the $48$
earlier price choices, the cap stays below $0.953005$ for
each of the two separate pair prices, the fixed-factor joint
price and the common-map $10^{-12}$ price. The least physical
room for the common-map branch exceeds $6.7077\cdot10^{-9}$.

Contiguous signed coverage reaches $722.96$. The original
physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all64}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all64}}=
 S_\lambda-W_{\mathrm{all64}}^*W_{\mathrm{all64}}
 \succeq0.046995 S_\lambda.
$$
The required sign is
$\|N_{\mathrm{out}}S_{\mathrm{all64}}^{-1}N_{\mathrm{out}}^*\|\le1$
on the full actual outside support before the original seven
leading inverses and directional return.

Extract the following guard and pass the pinned radius-four
arithmetic Markdown, the Jensen donor Markdown containing the
published 63-enclosure certificate, and `sign` or `e10`.
Both modes are required for the joint result. The guard reuses
the exact E9 checker selected by its digest, with the checked
E10 geometry, center, counts and price sum supplied below.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic_path,jensen_path,mode=sys.argv
assert mode in ("sign","e10")
pinned_e9="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen_path).read_text(),re.M|re.S)
matches=[block for block in blocks if sha256(block.encode()).hexdigest()==pinned_e9]
assert len(matches)==1
code=matches[0]

# These are the new input parameters to the same directed source arithmetic.
changes=(
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     '"e10":("709.64","712.24","710.86","711.04","710.95",".25")'),
    ('("708.60","710.86",".02")','("710.86","722.96",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(596,0)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==123 and len(rho)==46'),
    ('0<delta<F("9.656e-36")','0<delta<F("6.501e-25")'),
    ('assert c==c0+F("708.63")','assert c==c0+F("710.95")'),
    ('F(T[0][0],work_grid)>F("5.9727e-8")','F(T[0][0],work_grid)>F("3.2400e-10")'),
    ('assert F("640.32")<intervals[0][0]','assert F("709.62")<intervals[0][0]'),
)
for earlier,later in changes:
    assert code.count(earlier)==1
    code=code.replace(earlier,later)
marker="base_options = {"
assert code.count(marker)==1
code=code.split(marker)[0]+'''assert F("574.58")<F("580.62")<F("590.62")<F("621.06")<F("625.06")
assert F("625.06")<F("627.98")<F("631.98")<F("636.32")<F("640.32")
assert F("640.32")<F("707.62")<F("709.62")<start<stop<F("722.96")
assert F("708.66")<F(l0)<F(r0)<=stop
pair_options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
caps={}
for label,pair_price in pair_options.items():
    spent=pair_price+F("2.356e-16")+F("6.382e-23")+F("4e-12")+F("8e-23")+F("9.656e-36")+tau+delta
    all_caps=[max(F(".953004")+(quoted+spent)/beta,F(".95"),alpha) for quoted in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps[label]=(max(all_caps),old_room-spent)
assert caps["published-first"][1]>F("9.087e-10")
assert caps["repriced-first"][1]>F("5.4587e-9")
assert caps["joint-residual"][1]>F("5.96109e-9")
assert caps["pooled-map"][1]>F("6.7077e-9")
print("PASS exact signed donor E10 and 48x4 price combinations",
      {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
'''
original_argv=sys.argv
try:
    sys.argv=[__file__,arithmetic_path,mode]
    exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})
finally:
    sys.argv=original_argv
~~~

## The next enclosure through detuning 726.38

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 64-enclosure comparison](https://github.com/grwtsk/math/blob/8c5f0f6c9fd46bb696abbbfdb44850601efdb7e1/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $722.96$, Jensen blob
347cc34b20ac4bd38d3f282b78c5b0bd19e2a3fc, with its four
prices for the first two deep enclosures. Its original
radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the original
complex odd carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, original masks
and physical projection. The primitive nonprincipal odd
character modulo three uses the full parity-one gamma,
all $458$ signed prime powers and zero principal-pole term.
The detunings below are from $c_1=99653682.92983$ and
include their reflections.

The directed sign guard proves the original multiplier
strictly positive on $[722.96,726.38]$ off
$E_{11}=[722.96,723.08]$. Its endpoints are positive
and the interior point $723.02$ is negative. All $165$
complement checks pass without bisection. Use
$Y_{11}=[721.54,724.54]$ for the positive donor.
The preceding donor ends at $712.24$. The exact guard
also checks separation from the older direct and tagged
positive resources. The overlap $[721.54,722.96]$ lies inside
the preceding strict sign interval and is separated from
$E_{10}=[710.86,711.04]$. Thus the actual negative part on
$Y_{11}$ is supported in $E_{11}$ and its output is disjoint
from the previous $64$ negative restrictions.

On the original carrier the checked comparison is
$$
 N_{E_{11}}^*N_{E_{11}}
 \preceq \tfrac14\mathcal P_{Y_{11}}+(10^{-12}+\delta_{E_{11}})I,
 \qquad 0<\delta_{E_{11}}<1.647\cdot10^{-28}.
$$
The positive Jensen form $B^*WB$ uses $145$ positive
$.02$ bins with directed prices from eight $.0025$ source
cells per bin. Binwise Cauchy–Schwarz on the true averages
gives $B^*WB\preceq\mathcal P_{Y_{11}}$. The upper negative density $\eta$ is nonzero
on $33$ of the $.0025$ cells of the enclosure. The negative
moment map $V$ uses $18$ Taylor terms at the exact center
$c=c_1+723.02$. Its bound
$\epsilon=.24^{18}/18!$ gives the physical Taylor charge
$\delta_{E_{11}}=8\epsilon(2+\epsilon)\int_{E_{11}}\eta$.

For $\tau=10^{-12}$ the same Jensen square completion uses
the directed positive residual
$$
 R_Z=\tau M^{-1}
 -(V^*-B^*Z)^*(V^*-B^*Z)
 -\tau Z^*(\tfrac14 W)^{-1}Z\succ0.
$$
The numerical solve proposes $Z$. The rational verification
uses $120$ Taylor terms for each exact positive sine average
to enclose all $18$ physical residual columns. Their $L^2$
errors are below $1.801\cdot10^{-48}$. The phase of the
actual physical Gram is $8c$, with the equality
$c=c_1+723.02$ asserted at that step. The certified
matrix row width is below $10^{-23}$ and all $18$ exact
leading pivots are positive. Its first pivot exceeds
$8.8335\cdot10^{-10}$.

The actual negative witness at $723.02$ rules out zero scalar
cost for this donor. A frequency function supported on a small
negative interval inside $E_{11}$ has positive negative energy and
zero positive energy. The bounded folded restriction to
$Y_{11}$ has dense range by the entire sine transform argument
above. Both weighted forms on that interval are bounded, so the
zero-price failure transfers to the physical carrier.

Reserve $\mathcal P_{Y_{11}}$ separately in the reduced
comparator and append the disjoint $N_{E_{11}}$ to form
$W_{\mathrm{all65}}$. The earlier genuine positive tagged
inputs and physical lower bound $\beta I$ are available.
Add $(10^{-12}+\delta_{E_{11}})/\beta$ to the scalar branch
and include $\tfrac14$ among the disjoint coefficients.
All $48$ original price choices under each of the four
prices for the first deep pair retain the cap below
$0.953005$. In the common-map branch the least physical
room exceeds $6.7067\cdot10^{-9}$.

Contiguous signed coverage reaches $726.38$. For the actual
outside restriction and the original domain,
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all65}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad
 S_{\mathrm{all65}}=S_\lambda-W_{\mathrm{all65}}^*W_{\mathrm{all65}}
 \succeq0.046995 S_\lambda .
$$
The outstanding condition before the original seven leading
inverses and directional return is
$\|N_{\mathrm{out}}S_{\mathrm{all65}}^{-1}N_{\mathrm{out}}^*\|\le1$
on the full actual outside support.

Extract the guard and pass the pinned radius-four arithmetic
Markdown, the Jensen donor Markdown containing the published
E9 and E10 checkers, and `sign` or `e11`. It reuses the exact E9
checker selected by its digest with the E11 parameters,
center, sign counts and price sum below. Both modes are
required for the joint result.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic_path,jensen_path,mode=sys.argv
assert mode in ("sign","e11")
pinned_e9="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen_path).read_text(),re.M|re.S)
matches=[block for block in blocks if sha256(block.encode()).hexdigest()==pinned_e9]
pinned_e10="5b0ca3047d221502a2bff150d0ad453af405cdc5396f55f0d32ca16fa7dc63cb"
assert len(matches)==1
assert sum(sha256(block.encode()).hexdigest()==pinned_e10 for block in blocks)==1
code=matches[0]

# These are the new input parameters to the same directed source arithmetic.
changes=(
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     '"e11":("721.54","724.54","722.96","723.08","723.02",".25")'),
    ('("708.60","710.86",".02")','("722.96","726.38",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(165,0)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==145 and len(rho)==33'),
    ('0<delta<F("9.656e-36")','0<delta<F("1.647e-28")'),
    ('assert c==c0+F("708.63")','assert c==c0+F("723.02")'),
    ('F(T[0][0],work_grid)>F("5.9727e-8")','F(T[0][0],work_grid)>F("8.8335e-10")'),
    ('assert F("640.32")<intervals[0][0]','assert F("712.24")<intervals[0][0]'),
)
for earlier,later in changes:
    assert code.count(earlier)==1
    code=code.replace(earlier,later)
marker="base_options = {"
assert code.count(marker)==1
code=code.split(marker)[0]+'''assert F("574.58")<F("580.62")<F("590.62")<F("621.06")<F("625.06")
assert F("625.06")<F("627.98")<F("631.98")<F("636.32")<F("640.32")
assert F("640.32")<F("707.62")<F("709.62")<F("709.64")<F("712.24")<start<stop<F("726.38")
assert F("711.04")<F(l0)<F(r0)<=stop
pair_options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
caps={}
for label,pair_price in pair_options.items():
    spent=pair_price+F("2.356e-16")+F("6.382e-23")+F("5e-12")+F("8e-23")+F("9.656e-36")+F("6.501e-25")+tau+delta
    all_caps=[max(F(".953004")+(quoted+spent)/beta,F(".95"),alpha) for quoted in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps[label]=(max(all_caps),old_room-spent)
assert caps["published-first"][1]>F("9.077e-10")
assert caps["repriced-first"][1]>F("5.4577e-9")
assert caps["joint-residual"][1]>F("5.96009e-9")
assert caps["pooled-map"][1]>F("6.7067e-9")
print("PASS exact signed donor E11 and 48x4 price combinations",
      {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
'''
original_argv=sys.argv
try:
    sys.argv=[__file__,arithmetic_path,mode]
    exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})
finally:
    sys.argv=original_argv
~~~

## The next enclosure through detuning 729.26

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 65-enclosure comparison](https://github.com/grwtsk/math/blob/66bd9128aa396cce3e579c484759dc485fea264b/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $726.38$, Jensen blob
d35f345112ade6349111b7bfcd6cbd1b7ec05cf9, with four prices for
the first two deep enclosures. The original radius-four
arithmetic blob is 72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the original
complex odd carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, original masks and
physical projection. The primitive nonprincipal odd character
modulo three uses the full parity-one gamma, all $458$ signed
prime powers and zero principal-pole term. The detunings are
from $c_1=99653682.92983$ and include their reflections.

The directed sign guard proves the original multiplier strictly
positive on $[726.38,729.26]$ off $E_{12}=[726.38,726.52]$.
Its endpoints are positive and the interior point $726.45$
is negative. The guard uses $139$ complement checks and
one bisection. The positive donor is $Y_{12}=[725.06,727.66]$.
The preceding donor $Y_{11}=[721.54,724.54]$ ends at $724.54$,
leaving a gap of $0.52$. The exact guard also checks separation
from the other earlier direct and tagged positive resources.
The overlap $[725.06,726.38]$ lies in the preceding
strict sign region and beyond $E_{11}$, which ends at $723.08$.
The actual negative part on $Y_{12}$ is supported in $E_{12}$
and its output is disjoint from the previous $65$ restrictions.

On the original carrier, the checked comparison is
$$
 N_{E_{12}}^*N_{E_{12}}
 \preceq \tfrac14\mathcal P_{Y_{12}}+(10^{-12}+\delta_{E_{12}})I,
 \qquad 0<\delta_{E_{12}}<5.030\cdot10^{-27}.
$$
The positive Jensen form $B^*WB$ uses $123$ positive
$.02$ bins with directed prices on eight $.0025$ source
cells per bin. Binwise Cauchy–Schwarz on the true averages
gives $B^*WB\preceq\mathcal P_{Y_{12}}$. The upper negative density $\eta$ has
$46$ nonzero $.0025$ cells. The moment map $V$ uses $18$
negative Taylor terms at the exact center $c=c_1+726.45$.
The physical tail uses $\epsilon=.28^{18}/18!$ and
$\delta_{E_{12}}=8\epsilon(2+\epsilon)\int_{E_{12}}\eta$.

For $\tau=10^{-12}$, the Jensen square completion uses
the directed positive residual
$$
 R_Z=\tau M^{-1}
 -(V^*-B^*Z)^*(V^*-B^*Z)
 -\tau Z^*(\tfrac14 W)^{-1}Z\succ0 .
$$
The numerical solve proposes $Z$. The rational verification
uses $120$ Taylor terms for each exact positive sine average
to enclose the $18$ physical residual columns, with $L^2$
errors below $1.801\cdot10^{-48}$. The actual physical Gram
uses phase $8c$, with the equality $c=c_1+726.45$ checked
at that step. The matrix row width is below $10^{-23}$
and all $18$ exact leading pivots are positive. The first
pivot exceeds $4.3485\cdot10^{-10}$.

The negative witness at $726.45$ rules out a zero scalar charge
for this donor. Choose a nonzero frequency function supported
where the original multiplier is negative inside $E_{12}$.
It has positive negative energy and zero positive energy.
The folded restriction to the bounded donor interval has
dense range by the entire sine transform and Fourier
uniqueness argument above. The weighted forms are bounded
there, so the failure transfers to the physical carrier.

Reserve $\mathcal P_{Y_{12}}$ separately in the reduced
comparator and append the disjoint $N_{E_{12}}$ to form
$W_{\mathrm{all66}}$. The earlier genuine tagged inputs and
the lower bound $\beta I$ apply in the reduced comparator.
Add $(10^{-12}+\delta_{E_{12}})/\beta$ to the scalar branch and
include $\tfrac14$ among the disjoint positive coefficients.
All $48$ original price choices under each of the four
prices for the first deep pair retain the cap below
$0.953005$. The least physical room with the common-map
price is greater than $6.7057\cdot10^{-9}$.

Contiguous signed coverage reaches $729.26$. The original
physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all66}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad
 S_{\mathrm{all66}}=S_\lambda-W_{\mathrm{all66}}^*W_{\mathrm{all66}}
 \succeq0.046995 S_\lambda .
$$
For the original seven leading inverses and directional
return the remaining sign is
$\|N_{\mathrm{out}}S_{\mathrm{all66}}^{-1}N_{\mathrm{out}}^*\|\le1$
over the full actual outside support.

Extract the following guard and pass the pinned radius-four
arithmetic Markdown, the Jensen donor Markdown with the E9,
E10 and E11 checkers, and `sign` or `e12`.
The E9 checker is selected by its unique digest and supplied
with the checked E12 geometry, center, sign counts and
price sum. Both modes are required for the joint result.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic_path,jensen_path,mode=sys.argv
assert mode in ("sign","e12")
pinned_e9="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen_path).read_text(),re.M|re.S)
matches=[block for block in blocks if sha256(block.encode()).hexdigest()==pinned_e9]
pinned_e10="5b0ca3047d221502a2bff150d0ad453af405cdc5396f55f0d32ca16fa7dc63cb"
assert len(matches)==1
assert sum(sha256(block.encode()).hexdigest()==pinned_e10 for block in blocks)==1
pinned_e11="0defd3b7ba201a25e1983b6f410579b7819d68cf25b980c542d75e760acfdba4"
assert sum(sha256(block.encode()).hexdigest()==pinned_e11 for block in blocks)==1
code=matches[0]

# These are the new input parameters to the same directed source arithmetic.
changes=(
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     '"e12":("725.06","727.66","726.38","726.52","726.45",".25")'),
    ('("708.60","710.86",".02")','("726.38","729.26",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(139,1)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==123 and len(rho)==46'),
    ('0<delta<F("9.656e-36")','0<delta<F("5.030e-27")'),
    ('assert c==c0+F("708.63")','assert c==c0+F("726.45")'),
    ('F(T[0][0],work_grid)>F("5.9727e-8")','F(T[0][0],work_grid)>F("4.3485e-10")'),
    ('assert F("640.32")<intervals[0][0]','assert F("724.54")<intervals[0][0]'),
)
for earlier,later in changes:
    assert code.count(earlier)==1
    code=code.replace(earlier,later)
marker="base_options = {"
assert code.count(marker)==1
code=code.split(marker)[0]+'''assert F("574.58")<F("580.62")<F("590.62")<F("621.06")<F("625.06")
assert F("625.06")<F("627.98")<F("631.98")<F("636.32")<F("640.32")
assert F("640.32")<F("707.62")<F("709.62")<F("709.64")<F("712.24")
assert F("712.24")<F("721.54")<F("724.54")<start<stop<F("729.26")
assert F("723.08")<F(l0)<F(r0)<=stop
pair_options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
caps={}
for label,pair_price in pair_options.items():
    spent=pair_price+F("2.356e-16")+F("6.382e-23")+F("6e-12")+F("8e-23")+F("9.656e-36")+F("6.501e-25")+F("1.647e-28")+tau+delta
    all_caps=[max(F(".953004")+(quoted+spent)/beta,F(".95"),alpha) for quoted in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps[label]=(max(all_caps),old_room-spent)
assert caps["published-first"][1]>F("9.067e-10")
assert caps["repriced-first"][1]>F("5.4567e-9")
assert caps["joint-residual"][1]>F("5.95909e-9")
assert caps["pooled-map"][1]>F("6.7057e-9")
print("PASS exact signed donor E12 and 48x4 price combinations",
      {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
'''
original_argv=sys.argv
try:
    sys.argv=[__file__,arithmetic_path,mode]
    exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})
finally:
    sys.argv=original_argv
~~~

## A fixed-quarter obstruction and half-donor payment through 742.44

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof with
exact rational source checks. Lean elaboration, kernel replay and
transitive axiom audit are NOT_RUN. External independent review
is UNASSESSED.

Use the [pinned 66-enclosure comparison](https://github.com/grwtsk/math/blob/afd276b44e60775ace366390dc532d3d27a6a92a/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $729.26$, Jensen blob afa604306dc565fb20f806e5c359e44a8dde78af.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain its complex
odd carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, masks and physical
projection. The primitive nonprincipal odd character modulo
three keeps the full parity-one gamma, all $458$ signed prime
powers and zero principal-pole term. All detunings use
$c_1=99653682.92983$ and include their reflections.

The original multiplier is strictly positive on
$[729.26,742.44]$ off $E_{13}=[729.26,729.52]$. The two
endpoints are positive and $729.39$ is negative. All $646$
directed complement checks pass without bisection.
Use the positive donor $Y_{13}=[727.68,731.12]$. It is
strictly separated from the preceding donor ending at
$727.66$ and the guard checks separation from all earlier
direct and tagged positive resources. Its left part lies in
the preceding strict sign interval and beyond the previous
negative enclosure ending at $726.52$. Hence the only
negative restriction on $Y_{13}$ is $N_{E_{13}}$, disjoint
from all previously paid outputs.

### A true obstruction for the fixed quarter donor

On the original physical carrier, take $c=c_1+729.40$ and let
$b_j(t)=(t/4)^j\sin(ct+(j\bmod 2)\pi/2)$ on $[-4,4]$, with zero
extension. Every $b_j$ is real odd. The directed guard verifies a
trial $f=\sum_{j=0}^{21}v_jb_j$ with rational coefficients and
strictly positive squared norm. Its normalized form bound is
$$
 \big\langle f,\big(10^{-12}I+\tfrac14\mathcal P_{Y_{13}}
              -N_{E_{13}}^*N_{E_{13}}\big) f\big\rangle
 < -1.515\cdot10^{-10}\|f\|^2.
$$
Consequently, with this fixed donor and $0\le\alpha\le1/4$,
the original positive comparison requires
$\tau>1.525\cdot10^{-10}$.

For the upper guard use $.000625$ source cells and the full
gamma bracket $17.67795407<A_1<17.67795414$. The argument
bounds $47581476<3\nu/(2\pi)<47581478$ on the carrier interval
and the Binet error yield that bracket. For each cell use
the directed lower bound of all signed prime terms to
obtain an upper value $v$ for $A_1-P_4$. Round upwards at
$10^{-7}$ from $\alpha v/\pi_{\rm lower}$ when $v\ge0$,
and from $w_{\rm lower}v/\pi_{\rm upper}$ when $v<0$.
Monotonicity and $w_{\rm lower}\le w\le1$ give a true
upper density for $(\alpha m_+-m_-)/\pi$.

Use $44$ Taylor terms for the sine kernel on the donor
of width $h=3.44$ about $c_1+729.40$. In folded measure,
direct integration of $|ut|^{44}/44!$ gives a
Hilbert–Schmidt error at most
$(2h)^{44}\sqrt{8h/\pi}/(44!\cdot89)$, bounded by
$\varepsilon=(2h)^{44}/(25\cdot44!)$ in the guard.
The full folded Fourier map is isometric on the odd carrier by
Plancherel, so its restriction is contractive. The upper step is
a Lebesgue density $\eta^+$ and the checker bounds the folded
multiplier $\pi\eta^+$ in absolute value by $55$. The physical form error is bounded by
$55\varepsilon(2+\varepsilon)I$. The first negative
leading pivot of the proposal matrix is at zero-based
index $12$. Give its coefficient value one and solve
the preceding exact leading system. The final directed
check uses the actual physical endpoint Gram,
a strictly positive squared norm, and the full
operator error. This yields the strict normalized
upper bound above for the true form. The strict inequality
also persists for a smooth compactly supported odd test by
density and boundedness of the localized original operators.

### A half-donor comparison at the small scalar price

On the same original carrier the positive comparison is
$$
 N_{E_{13}}^*N_{E_{13}}
 \preceq \tfrac12\mathcal P_{Y_{13}}+(10^{-12}+\delta_{E_{13}})I,
 \qquad 0<\delta_{E_{13}}<2.466\cdot10^{-21}.
$$
The positive Jensen form uses $160$ positive $.02$ bins
with $.0025$ directed cells. The upper negative step has
$87$ nonzero cells. The negative Taylor center is
$c_1+729.39$ and the $18$-term kernel error uses
$\epsilon=.52^{18}/18!$, giving physical charge
$\delta_{E_{13}}=8\epsilon(2+\epsilon)\int_{E_{13}}\eta$.

At $\alpha=1/2$ and $\tau=10^{-12}$ the exact Woodbury
lower residual
$$
 \tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
 -\tau Z^*(\tfrac12W)^{-1}Z
$$
has $18$ positive leading pivots, with first above
$5.6261\cdot10^{-11}$. The directed Gram uses the actual
center, the exact averaged carriers and their Taylor errors. The floating solve supplies a rational
proposal $Z$. The final comparison uses the checked
rational inequalities.

Reserve $\mathcal P_{Y_{13}}$ once and append the disjoint
$N_{E_{13}}$ to form $W_{\mathrm{all67}}$.
The earlier original positive tagged inputs and physical
floor $\beta I$ continue to be available in the reduced
comparator. Add $(10^{-12}+\delta_{E_{13}})/\beta$ to the
scalar branch and include the disjoint fraction $\tfrac12$.
All $48$ original price choices under each of the four
prices for the first deep pair stay below $0.953005$.
The least scalar room for the common-map branch
exceeds $6.7047\cdot10^{-9}$.

Contiguous signed coverage reaches $742.44$. The original
physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all67}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad
 S_{\mathrm{all67}}=S_\lambda-W_{\mathrm{all67}}^*W_{\mathrm{all67}}
 \succeq0.046995 S_\lambda .
$$
The required sign for the original seven leading inverses
and directional return is
$\|N_{\mathrm{out}}S_{\mathrm{all67}}^{-1}N_{\mathrm{out}}^*\|\le1$
over the full actual outside support.

Extract the guard and pass the pinned arithmetic Markdown,
the Jensen donor Markdown containing its E9 through E12
checks, and one of `sign`, `quarter` or `half`.
The same donor and enclosure are used in all three modes.
The sign check identifies the negative restriction in both
comparisons. The input checker digests are matched uniquely.

~~~python
from hashlib import sha256
from pathlib import Path
from textwrap import dedent
import re
import sys

_,arithmetic_path,jensen_path,mode=sys.argv
assert mode in ("sign","half","quarter")
pinned_e9="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen_path).read_text(),re.M|re.S)
matches=[block for block in blocks if sha256(block.encode()).hexdigest()==pinned_e9]
pinned_e10="5b0ca3047d221502a2bff150d0ad453af405cdc5396f55f0d32ca16fa7dc63cb"
assert len(matches)==1
assert sum(sha256(block.encode()).hexdigest()==pinned_e10 for block in blocks)==1
pinned_e11="0defd3b7ba201a25e1983b6f410579b7819d68cf25b980c542d75e760acfdba4"
assert sum(sha256(block.encode()).hexdigest()==pinned_e11 for block in blocks)==1
pinned_e12="aa7978301c7da97eca9bddfe7ba39c4684b9ae7eac3f50afe95e3ef05d6e5930"
assert sum(sha256(block.encode()).hexdigest()==pinned_e12 for block in blocks)==1
donor=("727.68","731.12")
enclosure=("729.26","729.52")
negative_center="729.39"
trial_center="729.40"
source_bytes=Path(arithmetic_path).read_bytes()
assert sha256(source_bytes).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)

if mode=="quarter":
    source=source_bytes.decode("utf-8")
    blocks = re.findall(r"^~~~python\n(.*?)^~~~$",source,re.M|re.S)
    prior = [g for g in blocks if g.startswith("from fractions import Fraction")
             and "PASS actual seven-inverse localized correction" in g]
    marker='centre = F("99653682.92983")'
    assert len(prior)==1 and prior[0].count(marker)==1
    exec(compile(prior[0].split(marker)[0],"source directed arithmetic","exec"))

    c0=F("99653682.92983")
    start,stop=map(F,donor)
    assert start<F(enclosure[0])<F(enclosure[1])<stop
    alpha,tau,step=F(1,4),F("1e-12"),F(".000625")
    degree,lowarg,higharg=44,47581476,47581478
    raw_cap=55
    Alo,Ahi=F("17.67795407"),F("17.67795414")
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
    tol=F("1e-12")
    turn_bound=F("2e-8")
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
    assert p4err<F(".0000043")
    p4err=F(".0000043")

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



    c=c0+(start+stop)/2
    assert c==c0+F(trial_center)
    offset=(start+stop)/2
    wmin=1-F("3e-10")
    rho=[]
    for j in range(count):
        x=start+j*step
        lo,_=estimate(x,step)
        raw=Ahi-lo
        upper=alpha*raw/pi_lower if raw>=0 else wmin*raw/pi_upper
        upper=F(-((-upper*10**7)//1),10**7)
        assert pi_upper*abs(upper)<raw_cap
        if upper:
            rho.append((x-offset,x+step-offset,upper))
    k,n=degree,22
    coeff=[(-1)**(i//2)*F(4**i,factorial(i)) for i in range(k)]
    mom=[sum(w*(b**(j+1)-a**(j+1))/(j+1) for a,b,w in rho) for j in range(2*k-1)]
    M=[[coeff[i]*coeff[j]*mom[i+j] for j in range(k)] for i in range(k)]
    z=8*c
    co,si=phase_trig((z,z))
    rec=[scale(2/z,si)]
    for j in range(1,k+n-1):
        rec.append(add(scale(2/z,si),scale(-j/z,rec[-1])) if j%2==0 else
                   add(scale(-2/z,co),scale(j/z,rec[-1])))
    def physical_gram(i,j):
        q=i+j
        base=F(4,q+1) if q%2==0 else F(0)
        sign=-2 if i%2==0 and j%2==0 else 2
        return add((base,base),scale(sign,rec[q]))
    G_bounds=[[physical_gram(i,j) for j in range(n)] for i in range(k)]
    rounding=10**30
    G=[[F(round(rounding*sum(G_bounds[i][j])/2),rounding) for j in range(n)] for i in range(k)]
    assert 8*(stop-start)/pi_lower<F(2*k+1,25)**2
    eps=(2*(stop-start))**k/factorial(k)/25
    delta=raw_cap*eps*(2+eps)
    shift=tau+delta
    MG=[[sum(M[i][j]*G[j][r] for j in range(k)) for r in range(n)] for i in range(k)]
    C=[[shift*G[i][j]+sum(G[k0][i]*MG[k0][j] for k0 in range(k)) for j in range(n)] for i in range(n)]
    assert all(C[i][j]==C[j][i] for i in range(n) for j in range(n))
    S=[row[:] for row in C]
    bad=None
    for j in range(n):
        pivot=S[j][j]
        if pivot<=0:
            assert pivot<0
            bad=j
            print("diagnostic approximate Gram, upper step finite pivot",bad,float(pivot),flush=True)
            break
        for i in range(j+1,n):
            for r in range(j+1,n):
                S[i][r]-=S[i][j]*S[j][r]/pivot
    assert bad==12
    aug=[C[i][:bad]+[-C[i][bad]] for i in range(bad)]
    for j in range(bad):
        den=aug[j][j]
        assert den!=0
        aug[j]=[x/den for x in aug[j]]
        for i in range(bad):
            if i!=j:
                factor=aug[i][j]
                aug[i]=[x-factor*y for x,y in zip(aug[i],aug[j])]
    v=[row[-1] for row in aug]+[F(1)]+[F(0)]*(n-bad-1)

    def sum_intervals(items):
        result=(F(0),F(0))
        for item in items:
            result=add(result,item)
        return result

    y=[sum_intervals(scale(v[j],G_bounds[i][j]) for j in range(n) if v[j])
       for i in range(k)]
    norm_sq=sum_intervals(scale(v[j],y[j]) for j in range(n) if v[j])
    true_q=scale(shift,norm_sq)
    for i in range(k):
        for j in range(k):
            true_q=add(true_q,scale(M[i][j],multiply(y[i],y[j])))
    print("exact trial inequality upper",float(true_q[1]),"norm:",float(norm_sq[0]),float(norm_sq[1]),flush=True)
    assert norm_sq[0]>0 and true_q[1]<0
    bound=-true_q[1]/norm_sq[1]
    assert F("4.1242e-7") < norm_sq[0] <= norm_sq[1] < F("4.1243e-7")
    assert bound>F("1.515e-10")
    assert tau+bound>F("1.525e-10")
    print("exact normalized negative margin",float(bound),flush=True)

    print("PASS actual fixed quarter-donor E13 failure",str(start),str(stop),str(alpha),str(tau),str(step))


else:
    code=matches[0]

    # Reuse the directed arithmetic on this same donor and enclosure.
    row=f'"e13":{(*donor,*enclosure,negative_center,".50")!r}'
    changes=(
        ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',row),
        ('("708.60","710.86",".02")',f'("{enclosure[0]}","742.44",".02")'),
        ('(checks,splits)==(112,1)','(checks,splits)==(646,0)'),
        ('len(pos)==98 and len(rho)==9','len(pos)==160 and len(rho)==87'),
        ('0<delta<F("9.656e-36")','0<delta<F("2.466e-21")'),
        ('assert c==c0+F("708.63")',f'assert c==c0+F("{negative_center}")'),
        ('F(T[0][0],work_grid)>F("5.9727e-8")','F(T[0][0],work_grid)>F("5.6261e-11")'),
        ('assert F("640.32")<intervals[0][0]','assert F("727.66")<intervals[0][0]'),
    )
    for earlier,later in changes:
        assert code.count(earlier)==1
        code=code.replace(earlier,later)
    marker="base_options = {"
    assert code.count(marker)==1
    code=code.split(marker)[0]+dedent('''
    assert F("574.58")<F("580.62")<F("590.62")<F("621.06")<F("625.06")
    assert F("625.06")<F("627.98")<F("631.98")<F("636.32")<F("640.32")
    assert F("640.32")<F("707.62")<F("709.62")<F("709.64")<F("712.24")
    assert F("712.24")<F("721.54")<F("724.54")<F("725.06")<F("727.66")<start<stop<F("742.44")
    assert F("726.52")<F(l0)<F(r0)<=stop
    pair_options={
        "published-first":F("5e-9")+F("8e-10"),
        "repriced-first":F("4.5e-10")+F("8e-10"),
        "joint-residual":F("7.47626e-10"),
        "pooled-map":F("1e-12"),
    }
    caps={}
    for label,pair_price in pair_options.items():
        spent=pair_price+F("2.356e-16")+F("6.382e-23")+F("7e-12")+F("8e-23")+F("9.656e-36")+F("6.501e-25")+F("1.647e-28")+F("5.030e-27")+tau+delta
        all_caps=[max(F(".953004")+(quoted+spent)/beta,F(".95"),alpha) for quoted in branches]
        assert len(all_caps)==48 and max(all_caps)<F(".953005")
        caps[label]=(max(all_caps),old_room-spent)
    assert caps["published-first"][1]>F("9.057e-10")
    assert caps["repriced-first"][1]>F("5.4557e-9")
    assert caps["joint-residual"][1]>F("5.95809e-9")
    assert caps["pooled-map"][1]>F("6.7047e-9")
    print("PASS exact signed donor E13 and 48x4 price combinations",
          {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
    ''')
    original_argv=sys.argv
    try:
        sys.argv=[__file__,arithmetic_path,"sign" if mode=="sign" else "e13"]
        exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})
    finally:
        sys.argv=original_argv
~~~

## The next enclosure through detuning 765.22

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 67-enclosure comparison](https://github.com/grwtsk/math/blob/6aa678059900b882160f501811f0f290267e83c8/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $742.44$, Jensen blob
905c0b769ea460844da30de7133f289a079803fd, with four prices
for the first two deep enclosures. Its original radius-four
arithmetic blob is 72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the original
complex odd carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, masks and physical
projection. The primitive nonprincipal odd character modulo
three uses the full parity-one gamma, all $458$ signed prime
powers and zero principal-pole term. All detunings use
$c_1=99653682.92983$ and include their reflections.

The directed sign guard proves strict positivity on
$[742.44,765.22]$ off $E_{14}=[742.46,742.66]$. Both
endpoints of $E_{14}$ are positive and $742.56$ is negative.
There are $1145$ complement checks and eight bisections.
Use the positive donor $Y_{14}=[741.06,744.06]$.
The preceding donor $Y_{13}$ ends at $731.12$, leaving
a gap of $9.94$. The overlap $[741.06,742.44]$ lies in the preceding strict sign region and beyond
$E_{13}$, which ends at $729.52$. The exact guard checks
separation from the other earlier direct and tagged positive
resources. The actual negative part on $Y_{14}$ is supported
in $E_{14}$, with output disjoint from all $67$ prior
negative restrictions.

On the original carrier the checked comparison is
$$
 N_{E_{14}}^*N_{E_{14}}
 \preceq \tfrac14\mathcal P_{Y_{14}}+(10^{-12}+\delta_{E_{14}})I,
 \qquad 0<\delta_{E_{14}}<1.269\cdot10^{-23}.
$$
The positive Jensen form $B^*WB$ uses $141$ positive
$.02$ bins, with directed prices on eight $.0025$ source
cells per bin. Binwise Cauchy–Schwarz for the true sine averages
gives $B^*WB\preceq\mathcal P_{Y_{14}}$. The upper negative density $\eta$ has
$68$ nonzero $.0025$ cells. The moment map $V$ uses $18$
negative Taylor terms at the exact center $c=c_1+742.56$.
The physical kernel error uses
$\epsilon=.40^{18}/18!$ and
$\delta_{E_{14}}=8\epsilon(2+\epsilon)\int_{E_{14}}\eta$.

At $\tau=10^{-12}$ the exact Woodbury lower residual
$$
 \tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                  -\tau Z^*(\tfrac14W)^{-1}Z
$$
has $18$ positive leading pivots, with first greater
than $9.9038\cdot10^{-11}$. The directed Gram uses phase
$8c$ with the actual center asserted before forming the
endpoint moments. Enclose the exact positive sine averages
using $120$ Taylor terms for each of the $18$ physical
residual columns. The $L^2$ errors are below
$1.801\cdot10^{-48}$ and the matrix row width is below
$10^{-23}$. The floating solve proposes $Z$ for the
subsequent checked rational inequalities.

The witness at $742.56$ rules out a zero scalar price for this
donor. A frequency function supported on a negative subinterval
inside $E_{14}$ has positive negative energy and zero positive
energy. The bounded folded restriction to $Y_{14}$ has dense
range by the entire sine transform and Fourier uniqueness
argument above, and both weighted forms on this band are
bounded. Thus a zero-price comparison fails on the physical
carrier.

Reserve $\mathcal P_{Y_{14}}$ once and append the disjoint
$N_{E_{14}}$ to form $W_{\mathrm{all68}}$.
The genuine tagged inputs and lower bound $\beta I$
apply in the reduced comparator. Add
$(10^{-12}+\delta_{E_{14}})/\beta$ to the scalar branch and
include the disjoint fraction $\tfrac14$. All $48$
original price choices under each of the four prices
for the first deep pair retain cap below $0.953005$.
The least physical room in the common-map branch exceeds
$6.7037\cdot10^{-9}$.

Contiguous signed coverage reaches $765.22$. The original
physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all68}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all68}}=
 S_\lambda-W_{\mathrm{all68}}^*W_{\mathrm{all68}}
 \succeq0.046995S_\lambda .
$$
The remaining sign before the original seven leading
inverses and directional return is
$\|N_{\mathrm{out}}S_{\mathrm{all68}}^{-1}N_{\mathrm{out}}^*\|\le1$
over the full actual outside support.

Extract the guard and pass the pinned arithmetic Markdown,
the Jensen donor Markdown with the E9 through E13 checkers,
and `sign` or `e14`. The E9 checker is selected by its
unique digest and supplied with the E14 geometry, center,
sign counts and price sum. Both modes are required for
the joint comparison.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic_path,jensen_path,mode=sys.argv
assert mode in ("sign","e14")
pinned_e9="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen_path).read_text(),re.M|re.S)
matches=[block for block in blocks if sha256(block.encode()).hexdigest()==pinned_e9]
pinned_e10="5b0ca3047d221502a2bff150d0ad453af405cdc5396f55f0d32ca16fa7dc63cb"
assert len(matches)==1
assert sum(sha256(block.encode()).hexdigest()==pinned_e10 for block in blocks)==1
pinned_e11="0defd3b7ba201a25e1983b6f410579b7819d68cf25b980c542d75e760acfdba4"
assert sum(sha256(block.encode()).hexdigest()==pinned_e11 for block in blocks)==1
pinned_e12="aa7978301c7da97eca9bddfe7ba39c4684b9ae7eac3f50afe95e3ef05d6e5930"
assert sum(sha256(block.encode()).hexdigest()==pinned_e12 for block in blocks)==1
pinned_e13="815b961db261ba5e5672096cf83e8c4670cdeb5e6b2882e1373490cdc0b7e18b"
assert sum(sha256(block.encode()).hexdigest()==pinned_e13 for block in blocks)==1
code=matches[0]

# These are the new input parameters to the same directed source arithmetic.
changes=(
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     '"e14":("741.06","744.06","742.46","742.66","742.56",".25")'),
    ('("708.60","710.86",".02")','("742.44","765.22",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(1145,8)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==141 and len(rho)==68'),
    ('0<delta<F("9.656e-36")','0<delta<F("1.269e-23")'),
    ('assert c==c0+F("708.63")','assert c==c0+F("742.56")'),
    ('F(T[0][0],work_grid)>F("5.9727e-8")','F(T[0][0],work_grid)>F("9.9038e-11")'),
    ('assert F("640.32")<intervals[0][0]','assert F("731.12")<intervals[0][0]'),
)
for earlier,later in changes:
    assert code.count(earlier)==1
    code=code.replace(earlier,later)
marker="base_options = {"
assert code.count(marker)==1
code=code.split(marker)[0]+'''assert F("574.58")<F("580.62")<F("590.62")<F("621.06")<F("625.06")
assert F("625.06")<F("627.98")<F("631.98")<F("636.32")<F("640.32")
assert F("640.32")<F("707.62")<F("709.62")<F("709.64")<F("712.24")
assert F("712.24")<F("721.54")<F("724.54")<F("725.06")<F("727.66")
assert F("727.66")<F("727.68")<F("731.12")<start<stop<F("765.22")
assert F("729.52")<F(l0)<F(r0)<=stop
pair_options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
caps={}
for label,pair_price in pair_options.items():
    spent=pair_price+F("2.356e-16")+F("6.382e-23")+F("8e-12")+F("8e-23")+F("9.656e-36")+F("6.501e-25")+F("1.647e-28")+F("5.030e-27")+F("2.466e-21")+tau+delta
    all_caps=[max(F(".953004")+(quoted+spent)/beta,F(".95"),alpha) for quoted in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps[label]=(max(all_caps),old_room-spent)
assert caps["published-first"][1]>F("9.047e-10")
assert caps["repriced-first"][1]>F("5.4547e-9")
assert caps["joint-residual"][1]>F("5.95709e-9")
assert caps["pooled-map"][1]>F("6.7037e-9")
print("PASS exact signed donor E14 and 48x4 price combinations",
      {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
'''
original_argv=sys.argv
try:
    sys.argv=[__file__,arithmetic_path,mode]
    exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})
finally:
    sys.argv=original_argv
~~~

## The next enclosure through detuning 784.80

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 68-enclosure comparison](https://github.com/grwtsk/math/blob/e8b850e0d3356224b5f1704ab1d783ae250491e9/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $765.22$, Jensen blob
0d24d3ef7f5cce0614139f94d73853b9e3b5f86b, with four prices
for the first two deep enclosures. Its original radius-four
arithmetic blob is 72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the original
complex odd carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, masks and physical
projection. The primitive nonprincipal odd character modulo
three uses the full parity-one gamma, all $458$ signed prime
powers and zero principal-pole term. All detunings use
$c_1=99653682.92983$ and include their reflections.

The directed sign guard proves strict positivity on
$[765.22,784.80]$ off $E_{15}=[765.22,765.44]$. Both
endpoints are positive and $765.33$ is negative. There
are $974$ complement checks and three bisections.
Take $Y_{15}=[763.33,767.33]$ as the positive donor.
The preceding donor $Y_{14}$ ends at $744.06$, leaving
a gap of $19.27$. The overlap $[763.33,765.22]$ lies in the preceding strict sign region and beyond
$E_{14}$, which ends at $742.66$. The guard checks
separation from all earlier direct and tagged positive
resources. The actual negative restriction in $Y_{15}$
is supported in $E_{15}$ and its output is disjoint
from the $68$ previously paid restrictions.

On the original carrier the checked comparison is
$$
 N_{E_{15}}^*N_{E_{15}}
 \preceq \tfrac14\mathcal P_{Y_{15}}+(10^{-12}+\delta_{E_{15}})I,
 \qquad 0<\delta_{E_{15}}<1.132\cdot10^{-22}.
$$
The positive Jensen form $B^*WB$ uses $190$ positive
$.02$ bins, with directed prices on eight $.0025$ source
cells per bin. Binwise Cauchy–Schwarz for the true sine averages
gives $B^*WB\preceq\mathcal P_{Y_{15}}$. The upper negative density $\eta$ has
$72$ nonzero $.0025$ cells. The moment map $V$ uses $18$
negative Taylor terms at the exact center $c=c_1+765.33$.
The physical kernel error uses $\epsilon=.44^{18}/18!$
and $\delta_{E_{15}}=8\epsilon(2+\epsilon)\int_{E_{15}}\eta$.

At $\tau=10^{-12}$ the exact Woodbury lower residual
$$
 \tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                  -\tau Z^*(\tfrac14W)^{-1}Z
$$
has $18$ positive leading pivots, with first greater
than $6.0479\cdot10^{-11}$. The directed Gram uses phase
$8c$ and asserts the exact center before forming the
endpoint moments. Enclose the exact positive sine averages
using $120$ Taylor terms for each of the $18$ physical
residual columns. The $L^2$ errors are below
$1.801\cdot10^{-48}$ and the matrix row width is below
$10^{-23}$. The floating solve proposes $Z$ for the
checked rational inequalities.

At $765.33$ the exact negative witness also rules out zero scalar
cost for this donor. A nonzero frequency function supported in
a small negative interval inside $E_{15}$ has positive negative
energy and zero positive energy. The bounded folded restriction
to $Y_{15}$ has dense range by the entire sine transform and
Fourier uniqueness argument above. Boundedness of both forms
on the interval passes the violation to the physical carrier.

Reserve $\mathcal P_{Y_{15}}$ once and append the disjoint
$N_{E_{15}}$ to form $W_{\mathrm{all69}}$.
The genuine tagged inputs and lower bound $\beta I$
apply in the reduced comparator. Add
$(10^{-12}+\delta_{E_{15}})/\beta$ to the scalar branch and
include the disjoint fraction $\tfrac14$. All $48$
original price choices under each of the four prices for
the first deep pair retain cap below $0.953005$. The
least physical room with the common-map price exceeds
$6.7027\cdot10^{-9}$.

Contiguous signed coverage reaches $784.80$. The original
physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all69}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad
 S_{\mathrm{all69}}=
 S_\lambda-W_{\mathrm{all69}}^*W_{\mathrm{all69}}
 \succeq0.046995S_\lambda .
$$
Before the original seven leading inverses and directional
return the remaining sign is
$\|N_{\mathrm{out}}S_{\mathrm{all69}}^{-1}N_{\mathrm{out}}^*\|\le1$
over the full actual outside support.

Extract the guard and pass the pinned arithmetic Markdown,
the Jensen donor Markdown with the E9 through E14 checkers,
and `sign` or `e15`. The E9 checker is selected by its
unique digest and supplied with the E15 geometry, center,
sign counts and price sum. Both modes are required for
the joint comparison.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic_path,jensen_path,mode=sys.argv
assert mode in ("sign","e15")
pinned_e9="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen_path).read_text(),re.M|re.S)
matches=[block for block in blocks if sha256(block.encode()).hexdigest()==pinned_e9]
pinned_e10="5b0ca3047d221502a2bff150d0ad453af405cdc5396f55f0d32ca16fa7dc63cb"
assert len(matches)==1
assert sum(sha256(block.encode()).hexdigest()==pinned_e10 for block in blocks)==1
pinned_e11="0defd3b7ba201a25e1983b6f410579b7819d68cf25b980c542d75e760acfdba4"
assert sum(sha256(block.encode()).hexdigest()==pinned_e11 for block in blocks)==1
pinned_e12="aa7978301c7da97eca9bddfe7ba39c4684b9ae7eac3f50afe95e3ef05d6e5930"
assert sum(sha256(block.encode()).hexdigest()==pinned_e12 for block in blocks)==1
pinned_e13="815b961db261ba5e5672096cf83e8c4670cdeb5e6b2882e1373490cdc0b7e18b"
assert sum(sha256(block.encode()).hexdigest()==pinned_e13 for block in blocks)==1
pinned_e14="25e3ee9bd56ed22881ed169544d59751f3ec926c9599fc629402c5548b9836ed"
assert sum(sha256(block.encode()).hexdigest()==pinned_e14 for block in blocks)==1
code=matches[0]

# These are the new input parameters to the same directed source arithmetic.
changes=(
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     '"e15":("763.33","767.33","765.22","765.44","765.33",".25")'),
    ('("708.60","710.86",".02")','("765.22","784.80",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(974,3)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==190 and len(rho)==72'),
    ('0<delta<F("9.656e-36")','0<delta<F("1.132e-22")'),
    ('assert c==c0+F("708.63")','assert c==c0+F("765.33")'),
    ('F(T[0][0],work_grid)>F("5.9727e-8")','F(T[0][0],work_grid)>F("6.0479e-11")'),
    ('assert F("640.32")<intervals[0][0]','assert F("744.06")<intervals[0][0]'),
)
for earlier,later in changes:
    assert code.count(earlier)==1
    code=code.replace(earlier,later)
marker="base_options = {"
assert code.count(marker)==1
code=code.split(marker)[0]+'''assert F("574.58")<F("580.62")<F("590.62")<F("621.06")<F("625.06")
assert F("625.06")<F("627.98")<F("631.98")<F("636.32")<F("640.32")
assert F("640.32")<F("707.62")<F("709.62")<F("709.64")<F("712.24")
assert F("712.24")<F("721.54")<F("724.54")<F("725.06")<F("727.66")
assert F("727.66")<F("727.68")<F("731.12")<F("741.06")<F("744.06")
assert F("744.06")<start<stop<F("784.80")
assert F("742.66")<F(l0)<F(r0)<=stop
pair_options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
caps={}
for label,pair_price in pair_options.items():
    spent=pair_price+F("2.356e-16")+F("6.382e-23")+F("9e-12")+F("8e-23")+F("9.656e-36")+F("6.501e-25")+F("1.647e-28")+F("5.030e-27")+F("2.466e-21")+F("1.269e-23")+tau+delta
    all_caps=[max(F(".953004")+(quoted+spent)/beta,F(".95"),alpha) for quoted in branches]
    assert len(all_caps)==48 and max(all_caps)<F(".953005")
    caps[label]=(max(all_caps),old_room-spent)
assert caps["published-first"][1]>F("9.037e-10")
assert caps["repriced-first"][1]>F("5.4537e-9")
assert caps["joint-residual"][1]>F("5.95609e-9")
assert caps["pooled-map"][1]>F("6.7027e-9")
print("PASS exact signed donor E15 and 48x4 price combinations",
      {label:(float(cap),float(room)) for label,(cap,room) in caps.items()})
'''
original_argv=sys.argv
try:
    sys.argv=[__file__,arithmetic_path,mode]
    exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})
finally:
    sys.argv=original_argv
~~~

## One derivative charge for two detached enclosures

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 69-enclosure comparison](https://github.com/grwtsk/math/blob/2172745cfe47af47bfed16913e8a74293f3d8217/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $784.80$, Jensen blob fa6212efd168e50eb55fdc70a1a8f2e7438b6d0e.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the
original complex odd physical carrier, zero extension,
full parity-one gamma, all $458$ signed prime powers,
zero principal-pole term, original masks and projection
for the primitive nonprincipal odd character modulo three.
The angular measure after folding is $d\nu/\pi$.
The actual signed checks identify $E_{14}=[742.46,742.66]$
and $E_{15}=[765.22,765.44]$ as the negative restrictions
on the disjoint donors $Y_{14}=[741.06,744.06]$ and
$Y_{15}=[763.33,767.33]$, respectively. The displayed
intervals are detunings from $c_1=99653682.92983$.

### Polynomial comparisons with local derivatives

Let $F(\nu)$ be the full odd sine amplitude before the
frequency masks are applied. Its measured restrictions
on $Y_j$ are those of the original physical form. Write
$P_j(G)=\int_{Y_j}m_+|G|^2\,d\nu/\pi$ and
$N_j(G)=\int_{E_j}m_-|G|^2\,d\nu/\pi$.
Use the exact directed positive lower density $\ell_j$
and negative upper density $\eta_j$ from each donor.
If $U$ is the largest of the eight directed upper prime
values in a $.02$ donor bin, its positive price is the
nonnegative part of $w_{\min}(A_{\rm lo}-U)$ rounded
down at $10^{-10}$. Divide it by $\pi_{\rm hi}$ for
$\ell_j$. On each $.0025$ cell of $E_j$ use the
directed upper prime value $U$ to form
$\max(0,(U-A_{\rm lo})/\pi_{\rm lo})$, rounded up at
$10^{-10}$, for $\eta_j$. All $458$ arithmetic terms
remain signed in the directed prime values. The original
filter and Binet bounds give $\ell_j\le m_+/\pi$ and
$\eta_j\ge m_-/\pi$ on the donor. For $\eta_j$ off
$E_j$ use zero by the directed sign checks. The guard
replays the E13, E14 and E15 sign checks, reconstructs
these data and checks that their normalized values
equal those of the existing source guards.

Set $\alpha_0=9/10$, $\mu=10^{-15}$, $k=16$ and $r=40$.
For each $j\in\{14,15\}$, the guard proves positive
definiteness on the complex polynomials of degree less than
$r$ of the exact quadratic form
$$
 Q_j(p)=\int_{Y_j}(\alpha_0\ell_j-\eta_j)|p|^2\,d\nu
     +\frac{\mu}{4^{2k}\pi_{\rm hi}}\int_{Y_j}|p^{(k)}|^2\,d\nu .
$$
The matrix in ordinary monomials about the respective
centers uses only rational integrals of step densities
and monomial derivatives. Its $40$ leading pivots are
positive in both donors. This implies
$$
 N_j(p)\le\alpha_0 P_j(p)+\frac{\mu}{4^{2k}}\|p^{(k)}\|_{Y_j,\pi}^2,
$$
where $\|\,\cdot\,\|_{Y_j,\pi}$ denotes the unweighted
$L^2$ norm in folded angular measure.

### Transfer on the actual carrier

Let $p$ be the Taylor polynomial of $F$ of degree $r-1$
at the midpoint of $Y_j$. For each $0\le m<r$,
the integral Taylor remainder and Cauchy–Schwarz give
$$
 \|F^{(m)}-p^{(m)}\|_{Y_j,\pi}^2
 \le C_{r-m}\|F^{(r)}\|_{Y_j,\pi}^2,\qquad
 C_a=\frac{2^{2a}}{2a(2a-1)((a-1)!)^2}.
$$
Indeed, $p^{(m)}$ is the degree-$(r-m-1)$ Taylor
polynomial of $F^{(m)}$. If $u$ is displacement from
the midpoint, the integral remainder uses the segment
between the midpoint and $u$. In Cauchy–Schwarz use the
norm of $F^{(r)}$ on that half of the donor interval.
The pointwise factor is $|u|^{2a-1}/((2a-1)((a-1)!)^2)$.
Integrating on each half bounds the error there by
$C_a$ times the squared derivative norm on the same
half. Summing the two half norms yields the displayed
constant for donor radius at most $2$.

Apply the forward Young inequality to $N_j(F)$ and the
reverse Young inequality to $P_j(F)$, each with parameter
$s=t=1/1600$. Use the source bound $m_\pm\le272$ on the
remainder: on these donor strips the original filter
is between zero and one, the parity-one term has
$|A_1|<17.6780$, and the $458$ absolute prime amplitudes
sum to less than $211$. Thus $|m|<228.678<272$ on both
donors. Set $\alpha=(1+s)\alpha_0/(1-t)=4803/5330$.
In the derivative term apply Young to $p^{(k)}$ with
parameter $u=1/256$. The resulting inequality is
$$
 N_j(F)\le
 \alpha P_j(F)+\frac{d_k}{4^{2k}}\|F^{(k)}\|_{Y_j,\pi}^2
              +\frac{d_r}{4^{2r}}\|F^{(r)}\|_{Y_j,\pi}^2 ,
$$
where
$$
 \begin{aligned}
 d_k&=(1+s)(1+u)\mu,\\
 d_r&=4^{2r}\left(
  272\big[(1+1/s)+\alpha(1/t-1)\big]C_r
  +(1+s)(1+1/u)\frac{\mu}{4^{2k}}C_{r-k}
 \right).
 \end{aligned}
$$
These rates satisfy $d_k=1.00453369140625\cdot10^{-15}$ and
$d_r<4.360\cdot10^{-18}$.

For every finite family of disjoint donor intervals satisfying
the same local weighted polynomial inequality, mask and sign
conditions, and radius at most $2$, the two derivative
charges sum over the intervals with the same rates.
Indeed on the unmasked odd carrier, Fourier Plancherel gives
$$
 \int_0^\infty |F^{(m)}(\nu)|^2\,d\nu/\pi
  =\|t^m f\|_{L^2([-4,4])}^2\le4^{2m}\|f\|^2 .
$$
The derivative orders use the same physical carrier
and the same folded normalization. For the two tested
donors this gives the actual comparison
$$
 N_{E_{14}}^*N_{E_{14}}+N_{E_{15}}^*N_{E_{15}}
 \preceq \tfrac{4803}{5330}(\mathcal P_{Y_{14}}+\mathcal P_{Y_{15}})
            +(1.009\cdot10^{-15})I .
$$
The single bound uses the actual derivative remainder
charges and uses both positive donor forms once. Its
scalar term is independent of the number of disjoint
donors satisfying the stated local conditions.

### Return at the signed frontier

Use this single uniform scalar price for the two
restrictions in place of their two separate prices
$10^{-12}+\delta_{14}$ and $10^{-12}+\delta_{15}$.
The fraction $4803/5330$ fits below the previous
$19/20$ maximum. All $48$ original price choices under
each of the four first-pair prices retain cap below
$0.953005$. The least physical room with the common-map
price exceeds $6.7047\cdot10^{-9}$. The signed support
remains the $69$ restrictions through detuning $784.80$.
The original seven leading inverses and directional
return still require the full outside-support sign.
With the actual paid stack $W_{\rm all69}$ and
$S_{\rm all69}=S_\lambda-W_{\rm all69}^*W_{\rm all69}
\succeq.046995S_\lambda$, the first open inequality is
$\|N_{\rm out} S_{\rm all69}^{-1}N_{\rm out}^*\|\le1$.
The consumer is DirichletStageChain.PrimitiveStageLower
with stage index $3$ for the primitive nonprincipal odd
character modulo three. It requires the original inequality
for every admissible real odd compact $C^2$ test with $L^2$
lift, pointwise support on $[-4,4]$, and integrable full
gamma correction. The localized bound leaves the original
consumer conditional.

Extract the guard and pass the pinned arithmetic Markdown
and the Jensen donor Markdown with its E13 through E15
checkers. The three input blocks are selected by their
unique digests. The proof replays the directed sign and
density arithmetic and uses rational integration and pivots
for the local polynomial bounds.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial, lcm
from pathlib import Path
import re
import sys

_,arithmetic,jensen=sys.argv
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)
digests={
    "e13":"815b961db261ba5e5672096cf83e8c4670cdeb5e6b2882e1373490cdc0b7e18b",
    "e14":"25e3ee9bd56ed22881ed169544d59751f3ec926c9599fc629402c5548b9836ed",
    "e15":"76204e7c93cd454e2949ff24d43411f52ec64f05857899c9c4c0e54987922e9c",
}

def generated_code(donor,mode):
    found=[block for block in blocks if sha256(block.encode()).hexdigest()==digests[donor]]
    assert len(found)==1
    call='exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})'
    assert found[0].count(call)==1
    state={"__name__":"__main__","__file__":__file__}
    original=sys.argv
    try:
        sys.argv=[__file__,arithmetic,jensen,mode]
        exec(compile(found[0].replace(call,"generated=code"),jensen,"exec"),state)
    finally:
        sys.argv=original
    return state["generated"]

# E13 covers the left part of Y14, and E14 covers the left part of Y15.
for donor in ("e13","e14","e15"):
    source=generated_code(donor,"sign")
    original=sys.argv
    try:
        sys.argv=[__file__,arithmetic,"sign"]
        exec(compile(source,jensen,"exec"),{"__name__":"__main__"})
    except SystemExit as exc:
        assert exc.code in (None,0)
    else:
        raise AssertionError("directed sign guard did not complete through its stated endpoint")
    finally:
        sys.argv=original

r,k=40,16
price,mu=F(".9"),F("1e-15")
statistics={
    "e14":("741.06","744.06","742.46","742.66","742.56",141,68),
    "e15":("763.33","767.33","765.22","765.44","765.33",190,72),
}

def pivots(matrix):
    assert len(matrix)==r and all(len(row)==r for row in matrix)
    assert all(matrix[i][j]==matrix[j][i] for i in range(r) for j in range(r))
    scale=lcm(*(value.denominator for row in matrix for value in row))
    integer=[[int(scale*value) for value in row] for row in matrix]
    previous=1
    result=[]
    for z in range(r):
        pivot=integer[z][z]
        assert pivot>0,(z,F(pivot,scale*previous))
        result.append(F(pivot,scale*previous))
        for i in range(z+1,r):
            for j in range(i,r):
                value,error=divmod(pivot*integer[i][j]-integer[z][i]*integer[z][j],previous)
                assert error==0
                integer[i][j]=integer[j][i]=value
        previous=pivot
    return result

branches=[]
for donor,(a0,b0,l0,r0,offset,npos,nneg) in statistics.items():
    source=generated_code(donor,donor)
    cut="\nfrom math import acos,cos,sin,sqrt,fsum\n"
    assert source.count(cut)==1
    accounting_start='beta=F(".124997987")-F(".0001071")'
    accounting_end='old_room=F(".000001")*beta-max(branches)'
    assert source.count(accounting_start)==source.count(accounting_end)==1
    accounting=source[source.index(accounting_start):source.index(accounting_end)]
    data={"__name__":"__main__"}
    original=sys.argv
    try:
        sys.argv=[__file__,arithmetic,donor]
        exec(compile(source.split(cut)[0],jensen,"exec"),data)
        exec(compile(accounting,jensen,"exec"),data)
    finally:
        sys.argv=original
    c0,c=data["c0"],data["c"]
    start,stop=map(F,(a0,b0))
    box_left,box_right=map(F,(l0,r0))
    assert (data["start"],data["stop"])==(start,stop)
    assert (F(data["l0"]),F(data["r0"]))==(box_left,box_right)
    assert c==c0+F(offset)==c0+(start+stop)/2
    assert start<box_left<box_right<stop
    step=data["step"]
    assert step==F(".0025")
    pi_hi,pi_lo=data["pi_upper"],data["pi_lower"]
    estimate=data["estimate"]
    alo,ahi=data["Alo"],data["Ahi"]
    wmin=data["wmin"]
    assert (alo,ahi,wmin)==(F("17.6779"),F("17.6780"),1-F("3e-10"))
    assert ahi+211<272 and 211-alo<272

    # Verify the normalization and rounding in the exact directed densities.
    pos=[]
    for j in range(int((stop-start)/(8*step))):
        left=start+8*j*step
        peaks=[estimate(left+i*step,step)[1] for i in range(8)]
        raw=wmin*(alo-max(peaks))
        w=F((raw*10**10)//1,10**10)
        if w>0:
            assert w<=raw
            pos.append((c0+left-c,8*step,w*8*step/pi_hi))
    neg=[]
    for j in range(int((box_right-box_left)/step)):
        left=box_left+j*step
        upper=estimate(left,step)[1]
        raw=max(F(0),(upper-alo)/pi_lo)
        eta=F(-((-raw*10**10)//1),10**10)
        assert eta>=raw
        if eta:
            neg.append((c0+left-c,c0+left+step-c,eta))
    assert pos==data["pos"] and neg==data["rho"]
    assert (len(pos),len(neg))==(npos,nneg)
    left,right=c0+start-c,c0+stop-c
    assert -2<=left<0<right<=2
    densities=[(a,a+h,price*weight/h) for a,h,weight in pos]
    densities.extend((a,b,-weight) for a,b,weight in neg)
    moments=[sum(weight*(b**(j+1)-a**(j+1))/(j+1)
                 for a,b,weight in densities) for j in range(2*r-1)]
    matrix=[[moments[i+j] for j in range(r)] for i in range(r)]
    for i in range(k,r):
        for j in range(k,r):
            n=i+j-2*k
            derivative=F(factorial(i)*factorial(j),factorial(i-k)*factorial(j-k))
            derivative*=(right**(n+1)-left**(n+1))/((n+1)*4**(2*k)*pi_hi)
            matrix[i][j]+=mu*derivative
    values=pivots(matrix)
    assert len(values)==40
    print("PASS exact directed polynomial Gram",donor,npos,nneg,float(min(values)))
    branches.append((data["branches"],data["beta"]))

assert F(statistics["e14"][1])<F(statistics["e15"][0])
assert branches[0]==branches[1]
old,beta=branches[0]
assert len(old)==48 and beta==F(".124890887")

# Half-interval Taylor remainder and uniform physical accounting.
s=t=F(1,1600)
u=F(1,256)
alpha=(1+s)*price/(1-t)
assert alpha==F(4803,5330) and alpha<F(".95")

def half_remainder(order):
    return F(2**(2*order),2*order*(2*order-1)*factorial(order-1)**2)

cost16=(1+s)*(1+u)*mu
cost40=(272*((1+1/s)+alpha*(1/t-1))*half_remainder(r)
        +((1+s)*(1+1/u)*mu/4**(2*k))*half_remainder(r-k))*4**(2*r)
cost=cost16+cost40
assert cost16==F("1.00453369140625e-15")
assert cost40<F("4.360e-18") and cost<F("1.009e-15")<F("2e-12")
print("PASS exact normalized derivative rates",str(alpha),float(cost16),float(cost40),float(cost))

options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
tail=F("2.356e-16")+F("6.382e-23")+F("8e-12")+F("8e-23")+F("9.656e-36")
tail+=F("6.501e-25")+F("1.647e-28")+F("5.030e-27")+F("2.466e-21")+cost
for label,pair_price in options.items():
    caps=[max(F(".953004")+(q+pair_price+tail)/beta,F(".95"),alpha) for q in old]
    rooms=[F(".000001")*beta-q-pair_price-tail for q in old]
    assert len(caps)==len(rooms)==48 and max(caps)<F(".953005")
    if label=="pooled-map":
        assert min(rooms)>F("6.7047e-9")
    print("PASS original q69 price branches",label,float(max(caps)),float(min(rooms)))
~~~

## One more enclosure under the shared derivative bound

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned shared derivative comparison](https://github.com/grwtsk/math/blob/9f8dc8d1c8952035537c9ee25e63f91ed1826b5a/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
at the 69-enclosure frontier through detuning $784.80$,
Jensen blob 51f975283d44da30b3a8e60f76576f157dd95ccd.
Retain the original radius-four arithmetic blob
72848bace2af0f427c9e9fae16806f1b31ee064f, complex odd
physical carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, original masks
and physical projection. The primitive nonprincipal odd
character modulo three uses the full parity-one gamma,
all $458$ signed prime powers and zero principal-pole term.
All detunings use $c_1=99653682.92983$ and include their
reflected restrictions.

The original multiplier is strictly positive on
$[784.80,786.68]$ off $E_{16}=[784.80,784.88]$.
The two endpoints of $E_{16}$ are positive and $784.84$
is negative. The directed sign guard uses $92$ complement
checks and one bisection. Use $Y_{16}=[783.84,785.84]$
as the positive donor, with midpoint $c_1+784.84$ and
radius one. The two existing derivative donors
$Y_{14}=[741.06,744.06]$ and $Y_{15}=[763.33,767.33]$
are disjoint from this donor. The gap after $Y_{15}$
is $16.51$. The left portion of $Y_{16}$ lies in the
preceding strict sign region beyond the preceding negative
enclosure. The new sign guard covers its right portion.
The consecutive sign regions meet at their positive endpoint
$784.80$. The donor intervals are strictly separated.
The only negative restriction on $Y_{16}$ is accordingly
$N_{E_{16}}$, with output disjoint from the earlier paid
restrictions. The exact guard checks the original masks and separation
from the earlier direct and tagged positive resources.
The actual strip is within the original filter window, so the
same parity-one bracket and the sum of absolute prime amplitudes
give the unscaled bound $|m|<228.678<272$ on this donor.

A zero scalar price with any fixed finite positive coefficient
fails on this donor alone. The negative witness at $784.84$
lies inside a strictly negative open subinterval by continuity.
A nonzero frequency function supported there has positive
negative energy and zero positive energy. On a bounded donor,
the sine restriction from the odd physical carrier is dense:
orthogonality would make the entire sine transform of the
orthogonal function vanish for $t$ in $(-4,4)$, and odd Fourier
extension and uniqueness then give the zero function. Both
weights are bounded, so the strict violation persists for
some actual physical input. This rules out zero scalar price
for the single donor; the shared derivative charge is positive.

The new directed positive lower density $\ell_{16}$
has $96$ positive $.02$ bins, with $.0025$ cells used
for its directed prices. The directed negative upper
density $\eta_{16}$ has $21$ nonzero $.0025$ cells.
These are reconstructed with the same normalized
folded densities, with $\ell_{16}\le m_+/\pi$ and
$\eta_{16}\ge m_-/\pi$. On complex polynomials of
degree less than $40$ about the actual midpoint,
the checked form is
$$
 p\longmapsto
 \int_{Y_{16}}\bigl(\tfrac9{10}\ell_{16}-\eta_{16}\bigr)|p|^2\,d\nu
 +\frac{10^{-15}}{4^{32}\pi_{\rm hi}}
       \int_{Y_{16}} |p^{(16)}|^2\,d\nu .
$$
Its $40$ rational leading pivots are strictly positive.
The other two donors retain their exact local polynomial
comparisons with these same parameters.

Apply the shared local Taylor and Young estimates with
$\alpha_0=9/10$, $k=16$, $r=40$, $\mu=10^{-15}$,
$s=t=1/1600$ and $u=1/256$. All three donor radii
are at most two. The two normalized derivative rates
are $d_k=1.00453369140625\cdot10^{-15}$ and
$d_r<4.360\cdot10^{-18}$. Summing local derivative
norms on these disjoint intervals and applying Plancherel
on the unmasked physical carrier gives the actual bound
$$
 \sum_{j=14}^{16}N_{E_j}^*N_{E_j}
 \preceq \tfrac{4803}{5330}\sum_{j=14}^{16}\mathcal P_{Y_j}
             +(1.009\cdot10^{-15})I .
$$
The same scalar covers all three restrictions. The
positive intervals are reserved once, and their fraction
fits the previous $19/20$ maximum. The genuine earlier
tagged inputs and $\beta I$ remain available in the
reduced comparator. All $48$ original price choices
under each of the four prices for the first deep pair
retain cap below $0.953005$. The least common-map
branch room exceeds $6.7047\cdot10^{-9}$.

Append the disjoint $N_{E_{16}}$ to form $W_{\mathrm{all70}}$.
Contiguous signed coverage reaches $786.68$. The original
physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all70}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad
 S_{\mathrm{all70}}=S_\lambda-W_{\mathrm{all70}}^*W_{\mathrm{all70}}
 \succeq0.046995 S_\lambda .
$$
The outstanding sign before the original seven leading
inverses and directional return is
$\|N_{\mathrm{out}}S_{\mathrm{all70}}^{-1}N_{\mathrm{out}}^*\|\le1$
on the full actual outside support.

Extract the guard and pass the pinned arithmetic Markdown
and the Jensen donor Markdown containing its shared derivative
checker. The existing derivative and directed density checker
blocks are selected by their unique digests. The guard supplies
the third donor geometry, reruns the directed signs, and checks
the three local matrices and the common scalar price.

~~~python
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic,jensen=sys.argv
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)
pinned_derivative="fb06ddc22892ae6f573f0dc659a5e60c9b156ba327344f8f043d3ad06f2bfbb9"
pinned_density="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"

def block_at(digest):
    hits=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
    assert len(hits)==1
    return hits[0]

source=block_at(pinned_derivative)
directed=block_at(pinned_density)
for earlier,later in (
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     '"e16":("783.84","785.84","784.80","784.88","784.84",".90")'),
    ('("708.60","710.86",".02")','("784.80","786.68",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(92,1)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==96 and len(rho)==21'),
):
    assert directed.count(earlier)==1
    directed=directed.replace(earlier,later)

for old,new in (
    ('def generated_code(donor,mode):\n',
     'def generated_code(donor,mode):\n    if donor=="e16":\n        return e16_directed\n'),
    ('for donor in ("e13","e14","e15"):','for donor in ("e13","e14","e15","e16"):'),
    ('    "e15":("763.33","767.33","765.22","765.44","765.33",190,72),',
     '    "e15":("763.33","767.33","765.22","765.44","765.33",190,72),\n'
     '    "e16":("783.84","785.84","784.80","784.88","784.84",96,21),'),
    ('assert F(statistics["e14"][1])<F(statistics["e15"][0])',
     'assert F(statistics["e14"][1])<F(statistics["e15"][0])\n'
     'assert F(statistics["e15"][1])<F(statistics["e16"][0])\n'
     'assert F(statistics["e16"][1])<F("786.68")\n'
     'new_left,new_right=map(F,statistics["e16"][:2])\n'
     'assert all(b<new_left or new_right<a for a,b in ((F("-16.64"),F(405)),(F(408),F(414)),\n'
     '    (F("436.94"),F("440.94")),(F("5311.55"),F("5315.55")),(F(20345),F(20410))))\n'
     'assert F(5085348195,4)*data["pi_lower"]-F("5.55")-2>data["c0"]+new_right'),
    ('assert branches[0]==branches[1]','assert len(branches)==3 and branches[0]==branches[1]==branches[2]'),
    ('PASS original q69 price branches','PASS original q70 price branches'),
):
    assert source.count(old)==1
    source=source.replace(old,new)
assert "r,k=40,16" in source and 'price,mu=F(".9"),F("1e-15")' in source
exec(compile(source,jensen,"exec"),
     {"__name__":"__main__","__file__":__file__,"e16_directed":directed})
~~~

## A width-four donor obstruction at E17

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 70-enclosure comparison](https://github.com/grwtsk/math/blob/bf73c2207c50f65a93a92e49a05ae2c4a1d5291d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md)
through detuning $786.68$, Jensen blob
709a4faf8c17253cf9fe4217824fcc1e6104739e. Its original
radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f.
Retain the original complex odd carrier
$L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$, zero extension,
folded measure $d\nu/\pi$, original masks and physical
projection. The primitive nonprincipal odd character
modulo three uses the full parity-one gamma, all $458$
signed prime powers and zero principal-pole term.
All displayed intervals use detunings from $c_1=99653682.92983$,
with their reflected restrictions included.

The next enclosure is $E_{17}=[786.68,787.06]$. The
directed guard proves strict positivity on $[786.68,796.12]$
off $E_{17}$, including positivity at the enclosure endpoints
and at $796.12$. Both $786.70$ and $786.86$ are strictly
negative. There are $453$ complement checks and no bisections.
The preceding signed comparison covers through $786.68$ and
reserves the positive donor $Y_{16}=[783.84,785.84]$.
Its multiplier is strictly positive near its right endpoint.

### The physical obstruction for the width-four family

Consider donors $Y=[a,a+4]$ carrying all actual negative
mass in $E_{17}$, with the positive reservation disjoint
from the existing $Y_{16}$ up to sets of zero
$m_+\,d\nu$ measure. The strictly negative witness at
$786.70$ gives $a\le786.70$ by continuity. A start below
$785.84$ would overlap the positive region of $Y_{16}$
next to its right endpoint, since the donor reaches the
negative mass around $786.70$. It follows that
$$
 a\in[785.84,786.70],\qquad
 Y\subset U=[785.84,790.70].
$$
The guards on the preceding and new sign regions show
that the only negative restriction on $U$ is $N_{E_{17}}$.
Hence $N_Y^*N_Y=N_{E_{17}}^*N_{E_{17}}$, and
$\alpha\mathcal P_Y\preceq\mathcal P_U$ for every
$0\le\alpha\le1$.

On the original physical carrier the guard verifies a
nonzero trial $f$ with rational coefficients for $U$, with
$$
 \big\langle f,\big(1.7\cdot10^{-8}I+
             \mathcal P_U-N_{E_{17}}^*N_{E_{17}}\big) f\big\rangle
 <-4.775\cdot10^{-10}\|f\|^2 .
$$
For the entire stated width-four family and every
$0\le\alpha\le1$, a positive comparison therefore requires
$\tau>1.74775\cdot10^{-8}$. The $48$ earlier base price sums
give maximum scalar room strictly less than $1.7\cdot10^{-8}$
before subtracting any later nonnegative charges. Thus all
four retained prices for the first deep pair, together with
their earlier choices, remain below the required room.

The particular donor $Y_*=[785.86,789.86]$ separately admits
a stronger exact physical witness. At $\alpha=1$ and the
same $\tau=1.7\cdot10^{-8}$ its normalized decrease exceeds
$5.729\cdot10^{-8}$, so this particular donor and any
$0\le\alpha\le1$ require $\tau>7.429\cdot10^{-8}$.

### The degree-twelve obstruction on the fixed donor

On $Y_*$ the guard supplies an exact degree-$12$ real
polynomial $p$ with
$$
 \int_{Y_*} (m_+-m_-)|p|^2\,d\nu/\pi
 <-0.11062\int_{Y_*}|p|^2\,d\nu .
$$
The angular variable of this polynomial is displacement
from the midpoint $c_1+787.86$. Its $16$th derivative
vanishes. Thus the local polynomial premise with only
a $16$th-derivative penalty fails on this donor for every
$0\le\alpha_0\le1$, even with the true signed density.
The degree-$12$ trial tests that polynomial premise. The
physical necessity above uses separate physical trials.

### Exact verification of the three trials

Use the original directed $.0025$ source cells and Binet
bracket $17.6779<A_1<17.6780$. In each cell take the
directed upper value $v=A_{\rm hi}-P_{4,\rm lo}$. For
$v\ge0$ use $v/\pi_{\rm lo}$ and for $v<0$ use
$w_{\min}v/\pi_{\rm hi}$, rounded upward. Because
$w_{\min}\le w\le1$, this bounds the true signed folded
density $(m_+-m_-)/\pi$ from above. The guard binds all
signed prime powers, exact masks and source gamma bounds
through the directed source code.

The polynomial guard integrates its exact stated rational
coefficients against the directed signed upper step.
For the physical trials, put $x=t/4$ and take $x^j\sin(ct)$
in even degree and $x^j\cos(ct)$ in odd degree. The fixed
donor midpoint is $c=c_1+787.86$ and the envelope midpoint
is $c=c_1+788.27$. The integer coefficient arrays and their
denominators are in the guard. It verifies their true
endpoint-moment Gram enclosures and the signed forms
directly.

For a donor of width $h$ and $k$ Taylor terms, the sine
kernel remainder has folded Hilbert–Schmidt bound
$(2h)^k\sqrt{8h/\pi}/(k!(2k+1))$. The exact width and
degree checks bound this by $\epsilon=(2h)^k/(25k!)$.
The exact restriction is contractive and the upper step
has folded multiplier absolute bound $55$. The operator
error is therefore at most $55\epsilon(2+\epsilon)I$.
The guards use $44$ terms for the fixed donor and $48$ for
the envelope and include that error. Each physical trial
has strictly positive squared norm and strictly negative
upper form with the stated normalized margin. The strict
witness inequality remains valid on smooth compactly
supported odd tests by density and boundedness.

This holds for the stated disjoint width-four family and
the retained prices. The E17 negative enclosure remains
unpaid. Contiguous signed coverage of the paid comparison
ends at $786.68$. With the actual paid stack $W_{
m all70}$, the original
comparison still requires
$|N_{
m out} S_{
m all70}^{-1}N_{
m out}^*|le1$, where
$S_{
m all70}=S_lambda-W_{
m all70}^*W_{
m all70}$.
This is the norm on the actual unpaid negative support.
The seven leading inverses and the directional return to
DirichletStageChain.PrimitiveStageLower at index $3$ retain
the original projection, masks and admissible test class.

Extract the guard and pass the pinned arithmetic Markdown,
the Jensen donor Markdown with its E16 checker, and a mode
`sign`, `polynomial`, `fixed` or `envelope`.
The exact coefficient arrays are used as given, with no
numerical proposal step in this checker.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial
from pathlib import Path
import re
import sys

_,arithmetic,jensen,mode=sys.argv
assert mode in ("sign","polynomial","fixed","envelope")
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)
hashes=[sha256(block.encode()).hexdigest() for block in blocks]
density_digest="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"
prior_digest="8318ff01cda70c82cf38af6ed3aa38f689a41f77153d903cb6e73064fb2571c1"
assert hashes.count(density_digest)==hashes.count(prior_digest)==1
code=blocks[hashes.index(density_digest)]
accounting_start='beta=F(".124997987")-F(".0001071")'
accounting_stop='old_room=F(".000001")*beta-max(branches)'
assert code.count(accounting_start)==code.count(accounting_stop)==1
budgets={"F":F,"factorial":factorial}
exec(compile(code[code.index(accounting_start):code.index(accounting_stop)],jensen,"exec"),budgets)
assert len(budgets["branches"])==48
room=F(".000001")*budgets["beta"]-min(budgets["branches"])
assert room<F("1.7e-8")
print("PASS exact upper room before nonnegative later charges",float(room))

donor=("785.84","790.70","788.27") if mode=="envelope" else ("785.86","789.86","787.86")
left,right,midpoint=donor
for old,new in (
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',
     f'"e17":("{left}","{right}","786.68","787.06","{midpoint}","1")'),
    ('("708.60","710.86",".02")','("786.68","796.12",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(453,0)'),
    ('assert all(node(F(row[4]))[0]>Ahi for row in rows.values())',
     'assert all(node(F(x))[0]>Ahi for x in ("786.70","786.86"))'),
):
    assert code.count(old)==1
    code=code.replace(old,new)

cut="# Exact positive donor weights and short negative moment input."
assert code.count(cut)==1
data={"__name__":"__main__"}
sys.argv=[__file__,arithmetic,"sign" if mode=="sign" else "e17"]
exec(compile(code.split(cut)[0],jensen,"exec"),data)
assert mode!="sign"
start,stop=data["start"],data["stop"]
c=data["c0"]+F(midpoint)
mid=F(midpoint)
step=data["step"]
pi_lo,pi_hi=data["pi_lower"],data["pi_upper"]
assert start==F(left) and stop==F(right) and 2*mid==start+stop
assert start<=F("786.68")<F("787.06")<=stop
assert step==F(".0025")
wmin=1-F("3e-10")
scale=10**10 if mode=="polynomial" else 10**7
rho=[]
for j in range(data["count"]):
    x=start+j*step
    lo,_=data["estimate"](x,step)
    value=data["Ahi"]-lo
    raw=value/pi_lo if value>=0 else wmin*value/pi_hi
    upper=F(-((-raw*scale)//1),scale)
    assert upper>=raw and pi_hi*abs(upper)<55
    if upper:
        rho.append((x-mid,x+step-mid,upper))

def signed_moment(i):
    return sum(w*(b**(i+1)-a**(i+1))/(i+1) for a,b,w in rho)

if mode=="polynomial":
    integers=(
        124074277,1883269828,-2249964034,-10616934944,12083017208,11636957350,
        -13693797045,-5173603508,6307985276,1031574190,-1301317219,-76700626,100000000,
    )
    p=[F(v,10**8) for v in integers]
    assert len(p)==13 and p[-1]==1
    moments=[signed_moment(i) for i in range(2*len(p)-1)]
    upper=sum(p[i]*p[j]*moments[i+j] for i in range(len(p)) for j in range(len(p)))
    norm=sum(p[i]*p[j]*((stop-mid)**(i+j+1)-(start-mid)**(i+j+1))/(i+j+1)
             for i in range(len(p)) for j in range(len(p)))
    assert norm>0 and upper<-F(".11062")*norm
    print("PASS actual signed degree-12 polynomial trial",float(-upper/norm))
    raise SystemExit

if mode=="fixed":
    integers=(
        4445484779299,-62223301138121,-283667532650477,1457011373040590,2732527652792670,
        -9243155311147449,-8874992761009911,23407503809708624,11461529826047823,
        -25523071704104401,-5082483331664997,10000000000000000,
    )
    denominator,degree,margin=10**16,44,F("5.729e-8")
    norm_lo,norm_hi=F("3.4114e-6"),F("3.4115e-6")
else:
    integers=(
        -40399931603714,436660462298528,5131554550683929,-14988216212500714,
        -101143581383563014,141766984294551311,720350988527216629,-559304883230416010,
        -2376526979796916951,1050694505826075931,3940984233154183203,-932296904195066143,
        -3187965254721725648,314131826258649963,1000000000000000000,
    )
    denominator,degree,margin=10**18,48,F("4.775e-10")
    norm_lo,norm_hi=F("4.9521e-8"),F("4.9523e-8")
v=[F(n,denominator) for n in integers]
assert v[-1]==1 and c==data["c0"]+(start+stop)/2
n=len(v)
add,scale_interval,multiply=data["add"],data["scale"],data["multiply"]
z=8*c
co,si=data["phase_trig"]((z,z))
rec=[scale_interval(2/z,si)]
for j in range(1,degree+n-1):
    rec.append(add(scale_interval(2/z,si),scale_interval(-j/z,rec[-1])) if j%2==0 else
               add(scale_interval(-2/z,co),scale_interval(j/z,rec[-1])))

def inner_product(i,j):
    q=i+j
    base=F(4,q+1) if q%2==0 else F(0)
    signed=-2 if i%2==0 and j%2==0 else 2
    return add((base,base),scale_interval(signed,rec[q]))

def sum_intervals(items):
    result=(F(0),F(0))
    for item in items:
        result=add(result,item)
    return result

coordinates=[sum_intervals(scale_interval(v[j],inner_product(i,j)) for j in range(n))
             for i in range(degree)]
norm2=sum_intervals(scale_interval(v[j],coordinates[j]) for j in range(n))
assert norm_lo<norm2[0]<=norm2[1]<norm_hi
moments=[signed_moment(i) for i in range(2*degree-1)]
coefficient=[(-1)**(i//2)*F(4**i,factorial(i)) for i in range(degree)]
width=stop-start
assert 8*width/pi_lo<F(2*degree+1,25)**2
epsilon=(2*width)**degree/factorial(degree)/25
delta=55*epsilon*(2+epsilon)
tau=F("1.7e-8")
upper=scale_interval(tau+delta,norm2)
for i in range(degree):
    for j in range(degree):
        mij=coefficient[i]*coefficient[j]*moments[i+j]
        upper=add(upper,scale_interval(mij,multiply(coordinates[i],coordinates[j])))
assert upper[1]<-margin*norm2[1]
print("PASS exact physical trial",mode,"norm²",float(norm2[0]),float(norm2[1]),
      "normalized decrease",float(-upper[1]/norm2[1]),
      "required scalar larger than",float(tau+margin))
~~~

## A common positive donor for E16 and E17

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 70-enclosure comparison](https://github.com/grwtsk/math/blob/bf73c2207c50f65a93a92e49a05ae2c4a1d5291d/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob 709a4faf8c17253cf9fe4217824fcc1e6104739e,
and the [pinned E17 sign and obstruction source](https://github.com/grwtsk/math/blob/307f0d3821dabd6dd3d4d65c87d8fb98affecd83/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob 8b60fd64edf6f5cf5194ddad6e0f938d1d0f2afe.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the
complex odd physical carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
zero extension, folded measure $d\nu/\pi$, original masks
and physical projection. The primitive nonprincipal odd
character modulo three uses the full parity-one gamma,
all $458$ signed prime powers and zero principal-pole term.
The displayed detunings use $c_1=99653682.92983$ and
include the reflected restrictions.

Set $Y_*=[782.86,790.86]$. Its negative restrictions are
$E_{16}=[784.80,784.88]$ and $E_{17}=[786.68,787.06]$.
The guard replays the three directed sign regions
$[765.22,784.80]$, $[784.80,786.68]$ and
$[786.68,796.12]$ off their respective enclosures.
The adjoining endpoints $784.80$ and $786.68$ are
strictly positive. The left endpoint of $Y_*$ is past
the preceding negative enclosure ending at $765.44$.
Thus the only negative restrictions on $Y_*$ are
$E_{16}$ and $E_{17}$.

The common donor contains $Y_{16}=[783.84,785.84]$,
and begins $15.53$ after $Y_{15}$ ends at $767.33$.
The exact endpoints also separate it from the remote
tagged intervals of the original comparator. The
directed arithmetic checks both substrips against the
original angular masks and Binet window. Reassign the
positive tag $Y_{16}$ to this common donor once.
Use the independently established shared derivative
comparison for E14 and E15 on their own two tags and
their original scalar bound.

### Exact local form

Split the data generation for $Y_*$ at $785.86$.
The two parts share a single null endpoint and their
directed positive bins are disjoint. The respective
bin counts are $146$ and $232$, with $21$ and $138$
nonzero negative upper cells. This gives one shared
positive map $B$ with $378$ true sine averages and
rational diagonal weights $W\succ0$. Its bound is
$B^*WB\preceq\mathcal P_{Y_*}$. The negative Taylor maps
$V_{16}$ and $V_{17}$ use $18$ terms respectively at
$99654467.76983$ and $99654469.78983$. Their block
matrix $M=\operatorname{diag}(M_{16},M_{17})$ is positive
definite. With $V=(V_{16},V_{17})$ the directed upper
densities give
$$
 N_{E_{16}}^*N_{E_{16}}+N_{E_{17}}^*N_{E_{17}}
 \preceq V^*MV+(\delta_{16}+\delta_{17})I.
$$
The short Taylor kernel errors use
$\epsilon_{16}=.16^{18}/18!$ and
$\epsilon_{17}=.80^{18}/18!$, with
$\delta_j=8\epsilon_j(2+\epsilon_j)\int_{E_j}\eta_j$.

The exact Woodbury lower residual at $\alpha=19/20$,
$\tau=10^{-12}$ is
$$
 R_Z=\tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                 -\tau Z^*(\alpha W)^{-1}Z\succ0 .
$$
The proposal $Z$ uses both strips of true positive averages
for both blocks and the directed guard retains the cross
terms in the physical Gram and positive ridge matrix. It
uses $160$ Taylor terms for the averaged sine carrier.
The carrier products give endpoint integrals at the sum
frequency and at the exact difference $8.08$. The exact
row width is below $10^{-23}$ and its directed lower
matrix has all $36$ positive pivots.

Let $S=\tau I+\alpha B^*WB$ on the physical carrier and
$A=BB^*+\tau(\alpha W)^{-1}$ on the finite space of
positive averages. Both are strictly positive. Woodbury
gives $\tau S^{-1}=I-B^*A^{-1}B$. The difference between
$\tau(M^{-1}-VS^{-1}V^*)$ and $R_Z$ is
$$
 (Z-A^{-1}BV^*)^*A(Z-A^{-1}BV^*)\succeq0.
$$
Positivity of $R_Z$ therefore gives $V^*MV\preceq S$ by
the equivalent finite-output Schur comparison. The
directed positive and negative bounds give
$$
 N_{E_{16}}^*N_{E_{16}}+N_{E_{17}}^*N_{E_{17}}
 \preceq \tfrac{19}{20}\mathcal P_{Y_*}+(1.001\cdot10^{-12})I ,
$$
using the strictly smaller exact price
$\tau+\delta_{16}+\delta_{17}$ in the guard.

### Return to the original comparison

Use the E14 and E15 common derivative debit at their
disjoint tags and reserve $\mathcal P_{Y_*}$ once.
The genuine earlier tagged channels and $\beta I$ fit
the reduced comparator. E16 enters the common pair output
once, and E17 supplies one new negative output. Add the
common scalar price divided by $\beta$ to the retained
scalar branch and include the fraction $19/20$. All $48$
original price choices under each of the four prices
for the first deep pair retain the cap below $0.953005$.
The least common-map room exceeds $6.7037\cdot10^{-9}$.
The width-four obstruction above retains the original
$Y_{16}$ positive reservation. The present comparison
uses the wider joint donor in place of that reservation.

The resulting $71$ negative restrictions give contiguous
signed coverage through $796.12$. With
$S_{\mathrm{all71}}=S_\lambda-W_{\mathrm{all71}}^*W_{\mathrm{all71}}$
the actual identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all71}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all71}}\succeq0.046995S_\lambda .
$$
The original seven leading inverses and directional return
still require $\|N_{\mathrm{out}}S_{\mathrm{all71}}^{-1}
N_{\mathrm{out}}^*\|\le1$ on the full actual outside support.

Extract the guard and pass the pinned arithmetic Markdown,
the Jensen donor Markdown containing its E15, E16, E17
and derivative checkers, and `1e-12`.

~~~python

from fractions import Fraction as F
from hashlib import sha256
from math import factorial, cos, sin, sqrt, fsum,acos
from pathlib import Path
import re
import sys

_,source_path,jensen_path,ask=sys.argv
assert sha256(Path(source_path).read_bytes()).hexdigest()=="2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
journal=Path(jensen_path).read_text()
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",journal,re.M|re.S)
cores=[b for b in blocks if sha256(b.encode()).hexdigest()=="a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654"]
assert len(cores)==1
core=cores[0]
assert sum(sha256(b.encode()).hexdigest()=="8318ff01cda70c82cf38af6ed3aa38f689a41f77153d903cb6e73064fb2571c1" for b in blocks)==1
assert sum(sha256(b.encode()).hexdigest()=="fb06ddc22892ae6f573f0dc659a5e60c9b156ba327344f8f043d3ad06f2bfbb9" for b in blocks)==1
def checker(digest):
    found=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
    assert len(found)==1
    return found[0]

def execute(code,args):
    state={"__name__":"__main__","__file__":__file__}
    original=sys.argv
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen_path,"exec"),state)
    finally:
        sys.argv=original
    return state

def sign_state(code,args):
    state={"__name__":"__main__","__file__":__file__}
    original=sys.argv
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen_path,"exec"),state)
    except SystemExit as exc:
        assert exc.code in (None,0)
    else:
        raise AssertionError("the directed sign proof did not complete")
    finally:
        sys.argv=original
    return state

e15=checker("76204e7c93cd454e2949ff24d43411f52ec64f05857899c9c4c0e54987922e9c")
call15='exec(compile(code,jensen_path,"exec"),{"__name__":"__main__"})'
assert e15.count(call15)==1
flight15=execute(e15.replace(call15,"generated=code"),
                 [source_path,jensen_path,"sign"])
first=sign_state(flight15["generated"],[source_path,"sign"])

e16=checker("8318ff01cda70c82cf38af6ed3aa38f689a41f77153d903cb6e73064fb2571c1")
call16=('exec(compile(source,jensen,"exec"),\n'
        '     {"__name__":"__main__","__file__":__file__,"e16_directed":directed})')
assert e16.count(call16)==1
flight16=execute(e16.replace(call16,"generated=directed"),[source_path,jensen_path])
second=sign_state(flight16["generated"],[source_path,"sign"])

e17=checker("7cd9585534f24846f18274bc5c614e509815981bea795306eb17de6a2fce5ba8")
third=sign_state(e17,[source_path,jensen_path,"sign"])["data"]
assert (first["start"],first["stop"])==tuple(map(F,("765.22","784.80")))
assert (second["start"],second["stop"])==tuple(map(F,("784.80","786.68")))
assert (third["start"],third["stop"])==tuple(map(F,("786.68","796.12")))
assert first["boxes"]==[tuple(map(F,("765.22","765.44")))]
assert second["boxes"]==[tuple(map(F,("784.80","784.88")))]
assert third["boxes"]==[tuple(map(F,("786.68","787.06")))]
assert first["node"](first["stop"])[1]<first["Alo"]
assert second["node"](second["stop"])[1]<second["Alo"]
print("PASS exact joined sign scopes at 784.80 and 786.68")
k=18
d=[]
for mode,left,right,l0,r0,center in (
    ("e16","782.86","785.86","784.80","784.88","784.84"),
    ("e17","785.86","790.86","786.68","787.06","786.86"),
):
    row='"'+mode+'":'+(left,right,l0,r0,center,".95").__repr__()
    code=core.replace('"e9":("707.62","709.62","708.60","708.66","708.63",".25")',row)
    code=code.replace('len(pos)==98 and len(rho)==9','len(pos)>0 and len(rho)>0')
    cut="\nfrom math import acos,cos,sin,sqrt,fsum\n"
    assert code.count(cut)==1
    data={"__name__":"__main__","acos":acos,"cos":cos,"sin":sin,"sqrt":sqrt,"fsum":fsum}
    sys.argv=[__file__,source_path,mode]
    exec(compile(code.split(cut)[0],jensen_path,"exec"),data)
    c0,c=data["c0"],data["c"]
    assert c==c0+F(center) and (data["start"],data["stop"])==tuple(map(F,(left,right)))
    assert (F(data["l0"]),F(data["r0"]))==tuple(map(F,(l0,r0)))
    assert (len(data["pos"]),len(data["rho"]))==((146,21) if mode=="e16" else (232,138))
    bounds=(F(l0)-F(center),F(r0)-F(center))
    eps=(4*max(map(abs,bounds)))**k/factorial(k)
    neg=data["rho"]
    data["delta"]=8*eps*(2+eps)*sum(w*(b-a) for a,b,w in neg)
    moments=[sum(w*(b**(j+1)-a**(j+1))/(j+1) for a,b,w in neg) for j in range(2*k-1)]
    coef=[F(4**i,factorial(i)) for i in range(k)]
    M=[[coef[i]*coef[j]*moments[i+j] for j in range(k)] for i in range(k)]
    aug=[M[i]+[F(i==j) for j in range(k)] for i in range(k)]
    for i in range(k):
        p=aug[i][i]
        assert p>0
        aug[i]=[x/p for x in aug[i]]
        for j in range(k):
            if i!=j:
                r=aug[j][i]
                aug[j]=[u-r*v for u,v in zip(aug[j],aug[i])]
    data["inv"]=[row[k:] for row in aug]
    begin=code.index("def gauss(order):")
    end=code.index("def proposed_coefficients",begin)
    exec(compile(code[begin:end],jensen_path,"exec"),data)
    d.append(data)
sys.argv=[__file__,source_path,jensen_path,ask]
a,b=d
assert a["c"]==a["c0"]+F("784.84") and b["c"]==b["c0"]+F("786.86")
assert a["stop"]==b["start"]==F("785.86")
assert F("767.33")<a["start"]==F("782.86")<=F("783.84")<F("785.84")<=b["stop"]==F("790.86")<third["stop"]
assert a["start"]-F("767.33")==F("15.53")
assert first["boxes"][0][1]<a["start"]<first["stop"]==second["start"]
assert second["boxes"][0][1]<a["stop"]==b["start"]<third["boxes"][0][0]
assert third["boxes"][0][1]<b["stop"]<third["stop"]
assert all(v<a["start"] or b["stop"]<u for u,v in (
    (F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))))
assert F(5085348195,4)*b["pi_lower"]-F("5.55")-2>b["c0"]+b["stop"]
q=F(ask)
assert q==F("1e-12")
dim=2*k
scale=10**30
gram_scale=10**100

# Use the same actual original positive bins once across both negative blocks.
actual_centers=(a["c"],b["c"])
pos=[(l+u["c"]-a["c"],h,w) for u in d for l,h,w in u["pos"]]
assert len(pos)==378 and all(x[0]+x[1]<=y[0] for x,y in zip(pos,pos[1:]))
alpha=F(".95")
zd=10**20
coeff_grid=10**50
K=160

def proposal():
    # The numeric solve is only a proposal. All tested values below are exact.
    x,w=a["gauss"](128)
    n=len(pos)
    h=float(pos[0][1])
    assert all(float(row[1])==h for row in pos)
    t=[4*v for v in x]
    env=[sin(h*v/2)/(h*v/2) if v else 1.0 for v in t]
    env4=sin(2*h)/(2*h)
    buf=[2*ww*ee*ee for ww,ee in zip(w,env)]
    u=[float(l+h0/2) for l,h0,wt in pos]
    tags=[round((y-u[0])/h) for y in u]
    low=[fsum(ww*cos(j*h*tt) for ww,tt in zip(buf,t)) for j in range(tags[-1]+1)]
    high=[]
    for j in range(2*tags[-1]+1):
        z=2*(float(a["c"])+u[0])+j*h
        high.append(env4*env4*sin(4*z)/z)
    matrix=[[low[abs(tags[i]-tags[j])]-high[tags[i]+tags[j]]
             for j in range(n)] for i in range(n)]
    for i,(_,_,weight) in enumerate(pos):
        matrix[i][i]+=float(q/(alpha*weight))
    poly=[[2*ww*e*s0**j for ww,e,s0 in zip(w,env,x)] for j in range(k)]
    rhs=[]
    for b0 in u:
        row=[]
        for c0 in actual_centers:
            det=b0-float(c0-a["c"])
            local_c=[cos(det*v) for v in t]
            local_s=[sin(det*v) for v in t]
            z=float(a["c"])+float(c0)+b0
            sc=(sin(4*z)*env4/z,cos(4*z)*env4/z)
            row.extend([(-1)**(j//2)*(fsum(e*v for e,v in zip(poly[j],
                       local_c if j%2==0 else local_s))-sc[j%2]) for j in range(k)])
        rhs.append(row)
    L=[]
    for i,row in enumerate(matrix):
        values=[]
        for j in range(i):
            values.append((row[j]-fsum(x*y for x,y in zip(values,L[j])))/L[j][j])
        values.append(sqrt(row[i]-fsum(v*v for v in values)))
        L.append(values)
    Y=[]
    for i,row in enumerate(rhs):
        Y.append([(v-fsum(L[i][j]*Y[j][r] for j in range(i)))/L[i][i]
                  for r,v in enumerate(row)])
    Z=[None]*n
    for i in reversed(range(n)):
        Z[i]=[(v-fsum(L[j][i]*Z[j][r] for j in range(i+1,n)))/L[i][i]
              for r,v in enumerate(Y[i])]
    return [[round(zd*x) for x in row] for row in Z]

Z=proposal()
print("proposed shared positive map",len(Z),len(Z[0]),"shift",ask,flush=True)
for block,u in enumerate(d):
    p=[[0]*K for _ in range(k)]
    bins=[(l+a["c"]-u["c"],h,wt) for l,h,wt in pos]
    loc=[(int(100*l),int(100*(l+h))) for l,h,wt in bins]
    assert all(F(x,100)==l and F(y,100)==l+h and y-x==2
               for (x,y),(l,h,wt) in zip(loc,bins))
    for n in range(K):
        moments=[r**(n+1)-l**(n+1) for l,r in loc]
        mul=F(coeff_grid*4**n,zd*2*(n+1)*100**n*factorial(n))
        for j in range(k):
            coef=F(n==j)*coeff_grid - mul*sum(Z[b][block*k+j]*v for b,v in enumerate(moments))
            p[j][n]=(-1)**(n//2)*round(coef)
    eps=[]
    huge=[]
    donor_eps=[(4*max(abs(l),abs(l+h)))**K/factorial(K) for l,h,wt in bins]
    for j in range(k):
        col=[abs(row[block*k+j]) for row in Z]
        eps.append(3*(F(K,2*coeff_grid)+sum(z*w for z,w in zip(col,donor_eps))/zd))
        huge.append(3*(1+F(sum(col),zd))+eps[-1])
    u["physical_polynomials"]=p
    u.update(eps=eps,huge=huge,K=K,grid=coeff_grid)
    print("pooled actual carrier",u["c"],"residual error",float(max(eps)),flush=True)


def floor_ceil(x):
    return x//1,-((-x)//1)


def arctan_interval(x):
    lo=sum((-1)**j*x**(2*j+1)/(2*j+1) for j in range(110))
    return lo,lo+x**221/221

lo5,hi5=arctan_interval(F(1,5))
lo239,hi239=arctan_interval(F(1,239))
pi_lo,pi_hi=a['round_out'](16*lo5-4*hi239,16*hi5-4*lo239,10**130)

def high_phase(z):
    turn=(z/pi_lo+1)//2
    u=z-2*turn*pi_lo
    assert abs(u)<F(22,7)
    co=sum((-1)**n*u**(2*n)/factorial(2*n) for n in range(68))
    si=sum((-1)**n*u**(2*n+1)/factorial(2*n+1) for n in range(68))
    err=2*turn*(pi_hi-pi_lo)+F(22,7)**136/factorial(136)
    assert err<F('1e-120')
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
    assert z==F('8.08')
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

def ridge(i,j):
    lo=hi=0
    for (_,_,w),zrow in zip(pos,Z):
        x=q*F(zrow[i]*zrow[j]*scale,zd**2)/(alpha*w)
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
            i0,j0=bi*k+i,bj*k+j
            rl,ru=ridge(i0,j0)
            inv=q*u['inv'][i][j] if bi==bj else F(0)
            lo,hi=inv-gu-ru,inv-gl-rl
            L[i0][j0]=L[j0][i0]=floor_ceil(lo*scale)[0]
            U[i0][j0]=U[j0][i0]=floor_ceil(hi*scale)[1]
    print('enclosed exact block',bi,bj,flush=True)
width=max(sum(v-u for u,v in zip(l,h)) for l,h in zip(L,U))
assert F(width,scale)<F('1e-23')
G=[[(L[i][j]+U[i][j])//2-(width if i==j else 0) for j in range(dim)] for i in range(dim)]
prev=1
for i in range(dim):
    p=G[i][i]
    print('joint pivot',i,float(F(p,scale*prev)),flush=True)
    if p<=0:
        print('FAIL chosen joint sufficient lower matrix',ask,i)
        raise SystemExit(2)
    for j in range(i+1,dim):
        for l in range(j,dim):
            c,r=divmod(p*G[j][l]-G[i][j]*G[i][l],prev)
            assert r==0
            G[j][l]=G[l][j]=c
    prev=p

tau=q+a["delta"]+b["delta"]
assert tau<F("1.001e-12")
print("PASS actual E16/E17 common donor",str(a["start"]),str(b["stop"]),len(pos),
      "scalar",float(tau),"directed row width",float(F(width,scale)))

account_start='beta=F(".124997987")-F(".0001071")'
account_stop='old_room=F(".000001")*beta-max(branches)'
assert core.count(account_start)==core.count(account_stop)==1
budget={"F":F,"factorial":factorial}
exec(compile(core[core.index(account_start):core.index(account_stop)],jensen_path,"exec"),budget)
beta=budget["beta"]
old=budget["branches"]
assert len(old)==48 and beta==F(".124890887")
options={
    "published-first":F("5e-9")+F("8e-10"),
    "repriced-first":F("4.5e-10")+F("8e-10"),
    "joint-residual":F("7.47626e-10"),
    "pooled-map":F("1e-12"),
}
tail=F("2.356e-16")+F("6.382e-23")+F("8e-12")+F("8e-23")+F("9.656e-36")
tail+=F("6.501e-25")+F("1.647e-28")+F("5.030e-27")+F("2.466e-21")+F("1.009e-15")+tau
for label,pair_price in options.items():
    caps=[max(F(".953004")+(x+pair_price+tail)/beta,F(".95"),F(4803,5330)) for x in old]
    room=[F(".000001")*beta-x-pair_price-tail for x in old]
    assert len(caps)==len(room)==48 and max(caps)<F(".953005")
    if label=="pooled-map":
        assert min(room)>F("6.7037e-9")
    print("PASS original q71 price branches",label,float(max(caps)),float(min(room)))
~~~

## Two detached pockets under the existing derivative charge

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 71-enclosure comparison](https://github.com/grwtsk/math/blob/3decc2804f74c714de89ad47af1806d6309139a2/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob 3cfe782ecc2946e39202a748b43a6f04825b3b2b.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the
complex odd physical carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
its zero extension, folded measure $d\nu/\pi$, the original
masks and the physical projection. For the primitive
nonprincipal odd character modulo three, use the full
parity-one gamma, all $458$ signed prime powers and zero
principal-pole term. The displayed detunings use
$c_1=99653682.92983$ and include the reflected restrictions.

The original multiplier is strictly positive on the
complement of
$E_{18}=[796.12,796.30]$ and $E_{19}=[802.92,803.02]$
in $[796.12,810.64]$. The positive sign at all four
box endpoints is checked directly, and $796.22$ and
$802.97$ are strictly negative. The directed sign check
uses $712$ complement cells with no bisections. It
joins the preceding sign interval at the positive
endpoint $796.12$.

Use $Y_{18}=[794.22,798.22]$ and $Y_{19}=[800.97,804.97]$,
with respective midpoints $c_1+796.22$ and $c_1+802.97$.
The donors have radius two. Their mutual gap is $2.75$,
and $Y_{18}$ starts $3.36$ after the E16/E17 common donor
ends at $790.86$. The preceding sign interval covers the
left part of $Y_{18}$. It follows that $Y_{18}$ contains
only the negative restriction $E_{18}$ and $Y_{19}$
contains only $E_{19}$. Both positive tags are
disjoint from the retained tags. The guard checks the
original masks and the remote resource separations.
On each donor the same parity-one bracket and absolute
prime amplitude budget as in the preceding derivative
comparison give the unscaled bound $|m|<228.678<272$.

Each new fixed donor also fails at zero scalar charge
and any finite positive coefficient. Its strictly negative
witness lies in an open subinterval with zero positive
weight. The odd sine restriction to the bounded donor
has dense range by Fourier uniqueness for the odd extension
of a function orthogonal to its range. Boundedness of both
weights transfers a strict frequency-space violation on
that negative subinterval to a physical input.

Use the published directed prices $\ell_j\le m_+/\pi$
and $\eta_j\ge m_-/\pi$ on the donors. The positive
$.02$ bin and nonzero negative $.0025$ cell counts
are $(193,53)$ and $(196,18)$, respectively. For each new
donor, the guard proves positive definiteness on complex
polynomials of degree less than $40$ of
$$
 p\longmapsto
 \int_{Y_j}\bigl(\tfrac9{10}\ell_j-\eta_j\bigr)|p|^2\,d\nu
 +\frac{10^{-15}}{4^{32}\pi_{\rm hi}}
        \int_{Y_j}|p^{(16)}|^2\,d\nu .
$$
This is the same local comparison as for $Y_{14}$ and
$Y_{15}$. All $40$ leading rational pivots in each
new directed matrix are strictly positive.

Apply the established Taylor–Young transfer at orders
$16$ and $40$. All four disjoint derivative donors use
the same coefficients, so one Plancherel estimate on
each order of the unmasked odd sine amplitude gives
$$
 \sum_{j\in\{14,15,18,19\}}N_{E_j}^*N_{E_j}
 \preceq \tfrac{4803}{5330}
           \sum_{j\in\{14,15,18,19\}}\mathcal P_{Y_j}
          +(1.009\cdot10^{-15})I.
$$
This is the same scalar upper debit as for E14 and E15.
Both new tags are reserved once, and their fraction
fits the existing $19/20$ maximum. The E16/E17 common
donor retains its separate positive reservation and
scalar bound. The genuine preceding positive tags
and $\beta I$ fit the reduced comparator. All $48$
price choices under each of the four first-pair prices
retain cap below $0.953005$. The least common-map room
exceeds $6.7037\cdot10^{-9}$.

Append the disjoint $N_{E_{18}}$ and $N_{E_{19}}$ to
$W_{\mathrm{all71}}$ to form $W_{\mathrm{all73}}$.
The contiguous signed coverage reaches $810.64$.
The actual original physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all73}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all73}}
 =S_\lambda-W_{\mathrm{all73}}^*W_{\mathrm{all73}}
 \succeq0.046995S_\lambda.
$$
The full remaining outside-support norm
$\|N_{\mathrm{out}}S_{\mathrm{all73}}^{-1}N_{\mathrm{out}}^*\|\le1$
is required for the original seven leading inverses
and directional return.

Extract the guard and pass the pinned radius-four
arithmetic Markdown and the Jensen donor Markdown
containing the derivative and the joint E16/E17 checkers.
The guard selects existing blocks by unique digests.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic,jensen=sys.argv
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)

def checker(digest):
    matches=[code for code in blocks if sha256(code.encode()).hexdigest()==digest]
    assert len(matches)==1
    return matches[0]

def execute(code,args,**extras):
    original=sys.argv
    state={"__name__":"__main__","__file__":__file__,**extras}
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen,"exec"),state)
    finally:
        sys.argv=original
    return state

common=checker("c35c6b54ed082ad0ef3352039c393b7707e68d38fec0c54dc7357d862da06713")
paid=execute(common,[arithmetic,jensen,"1e-12"])
assert paid["tau"]<F("1.001e-12")
assert (paid["a"]["start"],paid["b"]["stop"])==tuple(map(F,("782.86","790.86")))
assert paid["third"]["stop"]==F("796.12")
assert paid["third"]["boxes"]==[tuple(map(F,("786.68","787.06")))]
assert paid["third"]["node"](F("796.12"))[1]<paid["third"]["Alo"]

core=checker("a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654")
source=checker("fb06ddc22892ae6f573f0dc659a5e60c9b156ba327344f8f043d3ad06f2bfbb9")
statistics={
    "e18":("794.22","798.22","796.12","796.30","796.22",193,53),
    "e19":("800.97","804.97","802.92","803.02","802.97",196,18),
}
prices={tag:vals[:5]+(".9",) for tag,vals in statistics.items()}

def replace(text,old,new):
    assert text.count(old)==1
    return text.replace(old,new)

directed=replace(core,
    '"e9":("707.62","709.62","708.60","708.66","708.63",".25"),',
    "\n    ".join(repr(tag)+":"+repr(row)+"," for tag,row in prices.items()))
for old,new in (
    ('("708.60","710.86",".02")','("796.12","810.64",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(712,0)'),
    ('len(pos)==98 and len(rho)==9',
     '(len(pos),len(rho))=={"e18":(193,53),"e19":(196,18)}[mode]'),
):
    directed=replace(directed,old,new)

try:
    execute(directed,[arithmetic,"sign"])
except SystemExit as exc:
    assert exc.code in (None,0)
else:
    raise AssertionError("the complete two-pocket sign guard did not return")

# Every new donor starts after the common E16/E17 positive resources.
y18l,y18r,e18l,e18r,_=map(F,statistics["e18"][:5])
y19l,y19r,e19l,e19r,_=map(F,statistics["e19"][:5])
assert F("767.33")<paid["a"]["start"]<paid["b"]["stop"]<y18l<e18l<e18r<y18r
assert y18r<y19l<e19l<e19r<y19r<F("810.64")
assert e18l==paid["third"]["stop"] and paid["third"]["boxes"][0][1]<y18l
assert y18l-paid["b"]["stop"]==F("3.36") and y19l-y18r==F("2.75")
assert all(v<y18l or y19r<u for u,v in (
    (F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))))
assert F(5085348195,4)*paid["b"]["pi_lower"]-F("5.55")-2>paid["b"]["c0"]+y19r

for old,new in (
    ('def generated_code(donor,mode):\n',
     'def generated_code(donor,mode):\n    if donor in ("e18","e19"):\n        return next_directed\n'),
    ('    "e15":("763.33","767.33","765.22","765.44","765.33",190,72),',
     '    "e15":("763.33","767.33","765.22","765.44","765.33",190,72),\n    **next_statistics,'),
    ('assert branches[0]==branches[1]',
     'assert len(branches)==4 and all(row==branches[0] for row in branches)'),
    ('+F("2.466e-21")+cost','+F("2.466e-21")+cost+common_price'),
    ('F("6.7047e-9")','F("6.7037e-9")'),
    ('PASS original q69 price branches','PASS original q73 price branches'),
):
    source=replace(source,old,new)
assert "r,k=40,16" in source and 'price,mu=F(".9"),F("1e-15")' in source
updated=execute(source,[arithmetic,jensen],next_directed=directed,
                next_statistics=statistics,common_price=paid["tau"])
assert updated["beta"]==paid["beta"] and updated["old"]==paid["old"]
assert updated["options"]==paid["options"] and updated["tail"]<=paid["tail"]
print("PASS derivative pool reused once for E14/E15/E18/E19 at q73")
~~~

## Separate Jensen donors for E20 and E21

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 73-enclosure comparison](https://github.com/grwtsk/math/blob/dba0dbc8fdb58ee09bd527b252738ef786f23555/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob a937880501c2b7c2b0583266a49133ab40d0db9c.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the
complex odd physical carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
its zero extension, folded measure $d\nu/\pi$, original masks and
physical projection. For the primitive nonprincipal odd character
modulo three, use the full parity-one gamma, all $458$ signed
prime powers and zero principal-pole term. The displayed detunings
use $c_1=99653682.92983$ and include the reflected restrictions.

The original multiplier is strictly positive on the complement
of $E_{20}=[810.64,810.90]$ and $E_{21}=[864.86,865.10]$
in $[810.64,888.66]$. Its four box endpoints and the right
frontier are strictly positive. The points $810.77$ and $865.00$
are strictly negative. The directed sign guard checks $3876$
complement cells with no bisections. The sign interval joins the
preceding sign interval at the positive point $810.64$.

Use the radius-two donors
$Y_{20}=[808.77,812.77]$ and $Y_{21}=[863.00,867.00]$,
with respective centers $c_1+810.77$ and $c_1+865.00$.
The local arithmetic checks their original masks. The only
actual negative restriction on each donor is its own $N_{E_j}$.
The previous sign interval covers the portion of $Y_{20}$ left
of $810.64$. The gap from the right edge of $Y_{19}$ to the
start of $Y_{20}$ is $3.80$ and the gap between the new donors
is $50.23$. The original remote positive reservations are
separate from both new donors.

### Scoped failure of the earlier sufficient polynomial form

With the same $40$-dimensional directed polynomial construction
used for E18/E19, set $r=40$, $k=16$, $\alpha_0=9/10$
and $\mu=10^{-15}$. On the two specified donors the first
nonpositive normalized elimination pivots occur at zero-based
indices $20$ and $30$. Their exact rational values lie in
$(-19.95,-19.94)$ and $(-398224595,-398224594)$.
Positive exact earlier pivots and the two strictly negative
ones make those directed sufficient matrices indefinite.
The directed inputs are lower positive and upper negative
step densities. This diagnostic concerns those fixed sufficient
forms and parameters. A separate physical comparison on the
same donors follows.

### Two exact physical comparisons

Use $18$ terms for each negative Taylor map and the true positive
sine averages on the $.02$ bins. The positive weights and nonzero
negative $.0025$ cell counts are $(188,91)$ and $(189,80)$.
Write $M_j$ for the positive definite moment matrix, $V_j$ for
the Taylor map, $B_j$ for the true positive averaging map, and
$W_j\succ0$ for its directed positive diagonal weights.
Thus $B_j^*W_jB_j\preceq\mathcal P_{Y_j}$. The negative Taylor
remainders give
$$
 N_{E_j}^*N_{E_j}\preceq V_j^*M_jV_j+\delta_j I,
 \qquad
 \delta_j=8\epsilon_j(2+\epsilon_j)\int_{E_j}\eta_j,
$$
where $\epsilon_{20}=.52^{18}/18!$ and
$\epsilon_{21}=.56^{18}/18!$.
Use $\tau=10^{-12}$ and $\alpha=19/20$. For each donor the
directed physical Woodbury residual
$$
 \tau M_j^{-1}
 -(V_j^*-B_j^*Z_j)^*(V_j^*-B_j^*Z_j)
 -\tau Z_j^*(\alpha W_j)^{-1}Z_j
$$
has all $18$ rational lower-matrix pivots strictly positive.
The source guard uses $120$ Taylor terms for its true averaged
sine carriers, with the same directed carrier error and exact
Gram enclosures as the earlier Jensen comparison. Floating
point proposes only $Z_j$. Put $S_j=\tau I+\alpha B_j^*W_jB_j$
and $A_j=B_jB_j^*+\tau(\alpha W_j)^{-1}$. Woodbury gives
$\tau S_j^{-1}=I-B_j^*A_j^{-1}B_j$. The difference between
$\tau(M_j^{-1}-V_jS_j^{-1}V_j^*)$ and the tested residual is
the positive square
$(Z_j-A_j^{-1}B_jV_j^*)^*A_j(Z_j-A_j^{-1}B_jV_j^*)$.
The finite Schur comparison gives $V_j^*M_jV_j\preceq S_j$.
The directed positive bound and negative Taylor error then give
$$
 N_{E_j}^*N_{E_j}\preceq \tfrac{19}{20}\mathcal P_{Y_j}
                         +(\tau+\delta_j)I .
$$
The two exact scalar prices total less than $2.001\cdot10^{-12}$.

### Return to the original comparison

Reserve each new positive donor once and add the two disjoint
negative outputs to $W_{\mathrm{all73}}$ to form $W_{\mathrm{all75}}$.
Preserve the existing scalar and resource prices, including the
one derivative price for E14/E15/E18/E19 and the E16/E17 shared
Jensen price. After reserving the two disjoint new positive tags,
the reduced comparator retains the original $\beta I$ and old
tagged resources. Add the exact two new scalar prices divided
by $\beta$ to the retained scalar branch. Each reserved positive
form contributes its own $19/20$ fraction in the maximum. All $48$ original price choices under each of the four
first-pair prices retain cap below $0.953005$. The least physical
room across all branches exceeds $9.0272\cdot10^{-10}$, and with
the pooled-map price it exceeds $6.7017\cdot10^{-9}$.

Contiguous signed coverage reaches $888.66$. The actual identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all75}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all75}}
 =S_\lambda-W_{\mathrm{all75}}^*W_{\mathrm{all75}}
 \succeq0.046995S_\lambda.
$$
The full remaining outside-support norm
$\|N_{\mathrm{out}}S_{\mathrm{all75}}^{-1}N_{\mathrm{out}}^*\|\le1$
is required for the original seven leading inverses and directional
return.

Extract the guard and pass the pinned original arithmetic Markdown
and the Jensen donor Markdown containing its q73, original directed
Jensen and derivative checkers. All prior source blocks are selected
by unique digests.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial, lcm
from pathlib import Path
from textwrap import dedent
import re
import sys

_,arithmetic,jensen=sys.argv
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
body=Path(jensen).read_text()
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",body,re.M|re.S)

def checker(digest):
    matches=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
    assert len(matches)==1
    return matches[0]

def execute(code,args,state=None):
    current=sys.argv
    if state is None:
        state={"__name__":"__main__","__file__":__file__}
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen,"exec"),state)
    finally:
        sys.argv=current
    return state

def replace(code,old,new):
    assert code.count(old)==1,old
    return code.replace(old,new)

q73=checker("54d8cfd9b49e363f8cb85d96e46983668bd16eeb3243e2f22b35f40e5662fc47")
parent=execute(q73,[arithmetic,jensen])
ledger=parent["updated"]
core=checker("a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654")
derivative=checker("fb06ddc22892ae6f573f0dc659a5e60c9b156ba327344f8f043d3ad06f2bfbb9")

geometry={
    "e20":("808.77","812.77","810.64","810.90","810.77",".95"),
    "e21":("863.00","867.00","864.86","865.10","865.00",".95"),
}
starter='    "e9":("707.62","709.62","708.60","708.66","708.63",".25"),'
common=replace(core,starter,
               "\n".join("    "+repr(key)+":"+repr(row)+"," for key,row in geometry.items()))
common=replace(common,'("708.60","710.86",".02")','("810.64","888.66",".02")')
common=replace(common,'(checks,splits)==(112,1)','(checks,splits)==(3876,0)')
sign_state={"__name__":"__main__","__file__":__file__}
try:
    execute(common,[arithmetic,"sign"],sign_state)
except SystemExit as exc:
    assert exc.code in (None,0)
else:
    raise AssertionError("the full E20/E21 sign check did not return")
assert (sign_state["start"],sign_state["stop"])==tuple(map(F,("810.64","888.66")))
assert sign_state["boxes"]==[tuple(map(F,row[2:4])) for row in geometry.values()]

y20l,y20r,e20l,e20r=map(F,geometry["e20"][:4])
y21l,y21r,e21l,e21r=map(F,geometry["e21"][:4])
assert parent["e19r"]<parent["y19r"]<y20l<e20l<e20r<y20r
assert y20r<y21l<e21l<e21r<y21r<sign_state["stop"]
assert y20l-parent["y19r"]==F("3.80") and y21l-y20r==F("50.23")
assert e20l==sign_state["start"]==F("810.64")
assert parent["paid"]["b"]["stop"]<parent["y18l"]<parent["y19r"]<y20l
assert all(v<y20l or y21r<u for u,v in (
    (F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))))
assert F(5085348195,4)*sign_state["pi_lower"]-F("5.55")-2>sign_state["c0"]+y21r

def computed_failure(data,expected,lo,hi):
    # This is the directed sufficient polynomial form of the prior lemma.
    # Its failure does not assert a negative physical vector.
    start,stop=data["start"],data["stop"]
    c0,c=data["c0"],data["c"]
    step=data["step"]
    alo=data["Alo"]
    wmin=data["wmin"]
    box_left,box_right=F(data["l0"]),F(data["r0"])
    pi_hi,pi_lo=data["pi_upper"],data["pi_lower"]
    estimate=data["estimate"]
    r,k=40,16
    price,mu=F(".9"),F("1e-15")
    # Reuse the published exact directed construction and pivot routine.
    begin=derivative.index("    # Verify the normalization")
    end=derivative.index("    values=pivots(matrix)",begin)
    fragment=dedent(derivative[begin:end])
    fragment=replace(fragment,'assert (len(pos),len(neg))==(npos,nneg)',
                     'assert len(pos)>0 and len(neg)>0')
    local={**locals(),"F":F,"factorial":factorial}
    exec(compile(fragment,jensen,"exec"),local)
    begin=derivative.index("def pivots(matrix):")
    end=derivative.index("branches=[]",begin)
    fragment=replace(derivative[begin:end],'assert pivot>0,(z,F(pivot,scale*previous))',
                     'if pivot<=0:\n            return z,F(pivot,scale*previous)')
    local.update(lcm=lcm)
    exec(compile(fragment,jensen,"exec"),local)
    index,pivot=local["pivots"](local["matrix"])
    assert index==expected and lo<pivot<hi<0
    print("PASS scoped derivative-form obstruction",data["mode"],index,float(pivot))

prices=[]
for mode,row in geometry.items():
    left,right,l0,r0,mid,fraction=row
    npos,nneg,index,lo,hi=(188,91,20,"-19.95","-19.94") if mode=="e20" else (
        189,80,30,"-398224595","-398224594")
    local=replace(common,'len(pos)==98 and len(rho)==9',
                  f'len(pos)=={npos} and len(rho)=={nneg}')
    local=replace(local,'F("9.656e-36")','F("1e-20")')
    local=replace(local,'assert c==c0+F("708.63")',f'assert c==c0+F("{mid}")')
    end='assert F(T[0][0],work_grid)>F("5.9727e-8")'
    assert local.count(end)==1
    physical=execute(local.split(end)[0],[arithmetic,mode])
    assert physical["k"]==18 and physical["alpha"]==F(".95")
    assert physical["c"]==physical["c0"]+F(mid)
    assert (physical["start"],physical["stop"])==tuple(map(F,(left,right)))
    assert (physical["l0"],physical["r0"])==(l0,r0)
    assert physical["tau"]==F("1e-12")
    price=physical["tau"]+physical["delta"]
    assert price<F("1.00000001e-12")
    prices.append(price)
    print("PASS directed physical Jensen comparison",mode,float(price))
    computed_failure(physical,index,F(lo),F(hi))

assert len(prices)==2 and sum(prices)<F("2.001e-12")
beta,old,options=ledger["beta"],ledger["old"],ledger["options"]
tail=ledger["tail"]+sum(prices)
assert beta==F(".124890887") and len(old)==48 and len(options)==4
for name,base in options.items():
    caps=[max(F(".953004")+(p+base+tail)/beta,F(".95"),F(4803,5330)) for p in old]
    room=[F(".000001")*beta-p-base-tail for p in old]
    assert max(caps)<F(".953005") and min(room)>F("9.0272e-10")
    if name=="pooled-map":
        assert min(room)>F("6.7017e-9")
    print("PASS original q75 price branches",name,float(max(caps)),float(min(room)))
print("PASS two disjoint capped Jensen debits through 888.66",float(sum(prices)))
~~~

## A detached Jensen donor for E22

2026-11-15, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 75-enclosure comparison](https://github.com/grwtsk/math/blob/746ea6d964b72b641eb3efe46e3f3570f3b103ff/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob 5031f3f3a3329d1b3a1112c73691382698aa11f1.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain
the complex odd physical carrier
$L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$, its zero extension,
folded measure $d\nu/\pi$, the original masks and the physical
projection. Use the full parity-one gamma, all $458$ signed
prime powers and zero principal-pole term for the primitive
nonprincipal odd character modulo three. The detunings
use $c_1=99653682.92983$ and include the reflected restrictions.

The original multiplier is strictly positive on the complement
of $E_{22}=[888.66,888.92]$ in $[888.66,897.06]$.
Both box endpoints and the right frontier are strictly positive.
The point $888.79$ is strictly negative. The sign guard uses
$407$ complement cells with no bisections and checks the joint
positive endpoint $888.66$ with the preceding interval.

Use the radius-two donor $Y_{22}=[886.79,890.79]$ with center
$c_1+888.79$. Its left endpoint lies in the preceding sign
region past the end of E21. The gap from $Y_{21}$ to $Y_{22}$
is $19.79$. The source enclosures check that the new donor
satisfies the original masks and is disjoint from the earlier
positive reservations. Thus its only negative restriction is
$N_{E_{22}}$.

Use the $18$-term negative Taylor map $V$ and the true positive
sine-averaging map $B$. The directed positive $.02$ bin and
nonzero negative $.0025$ cell counts are $(188,89)$.
With $M$ the positive negative-moment matrix and $W\succ0$
the positive diagonal weights, the earlier exact Jensen
construction gives
$$
 B^*WB\preceq\mathcal P_{Y_{22}},\qquad
 N_{E_{22}}^*N_{E_{22}}\preceq V^*MV+\delta I,
 \qquad
 \delta=8\epsilon(2+\epsilon)\int_{E_{22}}\eta,
 \quad\epsilon=.52^{18}/18!.
$$
At $\alpha=19/20$ and $\tau=10^{-12}$ the directed residual
$$
 \tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                 -\tau Z^*(\alpha W)^{-1}Z
$$
has all $18$ positive rational lower-matrix pivots. Its row
uncertainty is below $10^{-23}$. The calculation uses the
original carrier Gram enclosures and $120$ Taylor terms for
the true averaged sine carriers. Floating point supplies
only the proposed $Z$. The exact physical comparison is
$$
 N_{E_{22}}^*N_{E_{22}}\preceq
       \tfrac{19}{20}\mathcal P_{Y_{22}}+(\tau+\delta)I,
 \qquad \tau+\delta<1.000000005\cdot10^{-12}.
$$

The guard also evaluates the previous directed polynomial
lower matrix on this fixed donor with
$(r,k,\alpha_0,\mu)=(40,16,9/10,10^{-15})$.
Its first nonpositive normalized pivot occurs at zero-based
index $22$ and lies in $(-264409,-264408)$. This exact failure
concerns that directed sufficient matrix. The actual physical
comparison above uses the separate Jensen construction.

Reserve the new tag $\mathcal P_{Y_{22}}$ once and append
$N_{E_{22}}$ to $W_{\mathrm{all75}}$. The genuine earlier
tags, unchanged scalar prices and $\beta I$ remain in the
reduced comparator. Adding the exact new scalar price divided
by $\beta$ to each retained branch preserves cap below $0.953005$
across all $48$ old prices and the four first-pair choices.
The least physical room exceeds $9.0172\cdot10^{-10}$, and
with the pooled-map price it exceeds $6.7007\cdot10^{-9}$.

Contiguous signed coverage of the $76$ restrictions reaches
$897.06$. The actual identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all76}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all76}}
 =S_\lambda-W_{\mathrm{all76}}^*W_{\mathrm{all76}}
 \succeq0.046995S_\lambda.
$$
The full remaining outside-support norm
$\|N_{\mathrm{out}}S_{\mathrm{all76}}^{-1}N_{\mathrm{out}}^*\|\le1$
is required for the original seven leading inverses and
directional return.

Extract the guard and pass the pinned original arithmetic
Markdown and the Jensen donor Markdown containing the q75
and original directed Jensen checkers. Prior checker blocks
are selected by unique digests.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from pathlib import Path
import re
import sys

_,arithmetic,jensen=sys.argv
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)

def checker(digest):
    hits=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
    assert len(hits)==1
    return hits[0]

def execute(code,args,state=None):
    original=sys.argv
    if state is None:
        state={"__name__":"__main__","__file__":__file__}
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen,"exec"),state)
    finally:
        sys.argv=original
    return state

prior=execute(checker("a68c45a0366fe017bb2e1c228128280ca87db2d91d3e33ca49935ce2877a0543"),
              [arithmetic,jensen])
core=checker("a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654")
for old,new in (
    ('"e9":("707.62","709.62","708.60","708.66","708.63",".25"),',
     '"e22":("886.79","890.79","888.66","888.92","888.79",".95"),'),
    ('("708.60","710.86",".02")','("888.66","897.06",".02")'),
    ('(checks,splits)==(112,1)','(checks,splits)==(407,0)'),
    ('len(pos)==98 and len(rho)==9','len(pos)==188 and len(rho)==89'),
    ('F("9.656e-36")','F("1e-20")'),
    ('assert c==c0+F("708.63")','assert c==c0+F("888.79")'),
):
    assert core.count(old)==1
    core=core.replace(old,new)

sign={"__name__":"__main__","__file__":__file__}
try:
    execute(core,[arithmetic,"sign"],sign)
except SystemExit as exc:
    assert exc.code in (None,0)
else:
    raise AssertionError("the complete directed E22 sign check did not return")

before=prior["sign_state"]
a,b=map(F,("886.79","890.79"))
left,right=map(F,("888.66","888.92"))
assert before["boxes"][-1][1]<prior["y21r"]<a<before["stop"]==sign["start"]==left<right<b<sign["stop"]
assert a-prior["y21r"]==F("19.79")
assert (sign["boxes"],sign["stop"])==([(left,right)],F("897.06"))
assert before["node"](before["stop"])[1]<before["Alo"]
assert all(y<a or b<x for x,y in (
    (F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))))
assert F(5085348195,4)*sign["pi_lower"]-F("5.55")-2>sign["c0"]+b

end='assert F(T[0][0],work_grid)>F("5.9727e-8")'
assert core.count(end)==1
local=execute(core.split(end)[0],[arithmetic,"e22"])
assert (local["start"],local["stop"])==(a,b)
assert (F(local["l0"]),F(local["r0"]))==(left,right)
assert local["c"]==local["c0"]+(a+b)/2==local["c0"]+F("888.79")
assert local["k"]==18 and local["alpha"]==F(".95") and local["tau"]==F("1e-12")
charge=local["tau"]+local["delta"]
assert charge<F("1.000000005e-12")
print("PASS directed E22 physical Jensen comparison",float(charge))
prior["computed_failure"](local,22,F("-264409"),F("-264408"))

beta,old,options=prior["beta"],prior["old"],prior["options"]
tail=prior["tail"]+charge
assert beta==F(".124890887") and len(old)==48 and len(options)==4
for name,base in options.items():
    caps=[max(F(".953004")+(p+base+tail)/beta,F(".95"),F(4803,5330)) for p in old]
    room=[F(".000001")*beta-p-base-tail for p in old]
    assert max(caps)<F(".953005") and min(room)>F("9.0172e-10")
    if name=="pooled-map":
        assert min(room)>F("6.7007e-9")
    print("PASS original q76 price branches",name,float(max(caps)),float(min(room)))
print("PASS original E22 comparison through 897.06")
~~~

## Three detached pockets under the existing derivative charge

2026-11-15, grwtsk contributors, AI-assisted. Analytic
proof with exact rational source checks. Lean elaboration,
kernel replay and transitive axiom audit are NOT_RUN.
External independent review is UNASSESSED.

Use the [pinned 76-enclosure comparison](https://github.com/grwtsk/math/blob/88a508eb06338ff4a6f22be08ef7ca05c46272b9/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob dc7851ef2fa593114f563c17ac777a1c5612981a.
The original radius-four arithmetic blob is
72848bace2af0f427c9e9fae16806f1b31ee064f. Retain the
complex odd physical carrier $L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$,
its zero extension, folded measure $d\nu/\pi$, original
masks and physical projection. The primitive nonprincipal
odd character modulo three uses the full parity-one gamma,
all $458$ signed prime powers and zero principal-pole term.
The displayed detunings are from $c_1=99653682.92983$
and include the reflected restrictions.

The original multiplier is strictly positive on the
complement of $E_{23}=[897.06,897.22]$, $E_{24}=[902.10,902.28]$,
and $E_{25}=[920.96,921.18]$ in $[897.06,993.68]$.
The six box endpoints and the right frontier are strictly
positive. The points $897.14$, $902.19$, and $921.07$ are
strictly negative. The directed sign check has $4803$
complement cells and zero bisections. It joins the E22
sign interval at the positive point $897.06$.

Use $Y_{23}=[895.14,899.14]$, $Y_{24}=[900.19,904.19]$,
and $Y_{25}=[919.07,923.07]$, with centers at the three
displayed negative points. The radii are two. The gap after
$Y_{22}$ is $4.35$, and the two gaps between the new donors
are $1.05$ and $14.88$. The earlier sign interval covers
the part of $Y_{23}$ to the left of $897.06$ past the right
edge of E22. Each new donor contains only its own negative
restriction. Their positive tags are disjoint from the
earlier ones, including the remote tags. The exact
arithmetic checks the original masks on each donor.

Use the established positive lower density
$\ell_j\le m_+/\pi$ and negative upper density
$\eta_j\ge m_-/\pi$ on those donors. The counts of
positive $.02$ bins and nonzero negative $.0025$ cells
are $(192,55)$, $(194,48)$, and $(190,70)$. For each
donor, the guard proves positive definiteness on the
complex polynomials of degree less than $40$ of
$$
 p\longmapsto
 \int_{Y_j}\bigl(\tfrac9{10}\ell_j-\eta_j\bigr)|p|^2\,d\nu
 +\frac{10^{-15}}{4^{32}\pi_{\rm hi}}
        \int_{Y_j}|p^{(16)}|^2\,d\nu .
$$
All $40$ rational leading pivots in each new comparison
are positive. This is the same local comparison used
for E14, E15, E18 and E19.

Apply the established Taylor–Young transfer of derivative
orders $16$ and $40$ with coefficients
$d_{16}=1.00453369140625\cdot10^{-15}$ and
$d_{40}<4.360\cdot10^{-18}$. The seven derivative donors
are disjoint and each radius is at most two. At each of
the two orders, sum the local squared derivative norms
and apply Plancherel once to the unmasked physical carrier.
For $J=\{14,15,18,19,23,24,25\}$ this gives
$$
 \sum_{j\in J}N_{E_j}^*N_{E_j}
 \preceq \tfrac{4803}{5330}\sum_{j\in J}\mathcal P_{Y_j}
              +(1.009\cdot10^{-15})I .
$$
All seven restrictions use one existing derivative scalar
debit. The new donors are reserved once and their fraction
fits the existing $19/20$ maximum. Retain the separate
E16/E17, E20, E21 and E22 reservations and charges.
After removing the reserved positive forms, the reduced
comparator retains the genuine earlier tags and $\beta I$.
Each reserved form enters separately at its stated fraction.
All $48$ original price
choices under each of the four first-pair choices retain cap
below $0.953005$. The least physical room exceeds
$9.0172\cdot10^{-10}$, and in the pooled-map branch it exceeds
$6.7007\cdot10^{-9}$.

Append the three disjoint negative outputs to
$W_{\mathrm{all76}}$ to form $W_{\mathrm{all79}}$. Contiguous
signed coverage reaches $993.68$. The actual identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all79}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all79}}
 =S_\lambda-W_{\mathrm{all79}}^*W_{\mathrm{all79}}
 \succeq0.046995S_\lambda.
$$
The full remaining outside-support norm
$\|N_{\mathrm{out}}S_{\mathrm{all79}}^{-1}N_{\mathrm{out}}^*\|\le1$
is required for the original seven leading inverses and
directional return.

Extract the guard and pass the pinned original arithmetic
Markdown and the Jensen donor Markdown containing the
E22 comparison, directed Jensen and derivative checkers.
Prior checker blocks are selected by unique digests.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial, lcm
from pathlib import Path
from textwrap import dedent
import re
import sys

_,arithmetic,jensen=sys.argv
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)

def checker(digest):
    found=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
    assert len(found)==1
    return found[0]

def execute(code,args,state=None):
    original=sys.argv
    if state is None:
        state={"__name__":"__main__","__file__":__file__}
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen,"exec"),state)
    finally:
        sys.argv=original
    return state

def replace(code,old,new):
    assert code.count(old)==1,old
    return code.replace(old,new)

prior=execute(checker("339b3c135cb07ac4d38c38e8f4830459cbcd7e28c6f03609a384142782ac0edf"),
              [arithmetic,jensen])
core=checker("a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654")
derivative=checker("fb06ddc22892ae6f573f0dc659a5e60c9b156ba327344f8f043d3ad06f2bfbb9")
geometry={
    "e23":("895.14","899.14","897.06","897.22","897.14",192,55),
    "e24":("900.19","904.19","902.10","902.28","902.19",194,48),
    "e25":("919.07","923.07","920.96","921.18","921.07",190,70),
}
rows={tag:row[:5]+(".9",) for tag,row in geometry.items()}
directed=replace(core,
    '"e9":("707.62","709.62","708.60","708.66","708.63",".25"),',
    "\n    ".join(repr(tag)+":"+repr(row)+"," for tag,row in rows.items()))
directed=replace(directed,'("708.60","710.86",".02")','("897.06","993.68",".02")')
directed=replace(directed,'(checks,splits)==(112,1)','(checks,splits)==(4803,0)')
expected={key:row[-2:] for key,row in geometry.items()}
directed=replace(directed,'len(pos)==98 and len(rho)==9',
                 '(len(pos),len(rho))=='+repr(expected)+'[mode]')

new_sign={"__name__":"__main__","__file__":__file__}
try:
    execute(directed,[arithmetic,"sign"],new_sign)
except SystemExit as exc:
    assert exc.code in (None,0)
else:
    raise AssertionError("the complete directed E23/E24/E25 sign check did not return")

prev_sign=prior["sign"]
assert prev_sign["stop"]==new_sign["start"]==F("897.06")
assert prev_sign["node"](prev_sign["stop"])[1]<prev_sign["Alo"]
assert new_sign["stop"]==F("993.68")
assert new_sign["boxes"]==[tuple(map(F,row[2:4])) for row in geometry.values()]
previous_right=prior["b"]
assert previous_right==F("890.79")
gaps=[]
for left,right,e,f,center,*_ in geometry.values():
    a,b,l,h,c=map(F,(left,right,e,f,center))
    assert previous_right<a<l<h<b<new_sign["stop"]
    assert (a+b)/2==c and (b-a)/2==2
    assert all(v<a or b<u for u,v in new_sign["boxes"] if (u,v)!=(l,h))
    gaps.append(a-previous_right)
    previous_right=b
assert gaps==list(map(F,("4.35","1.05","14.88")))
left,right=F("895.14"),F("923.07")
assert prev_sign["boxes"][-1][1]<left<new_sign["start"]<right
assert all(v<left or right<u for u,v in (
    (F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))))
assert F(5085348195,4)*new_sign["pi_lower"]-F("5.55")-2>new_sign["c0"]+right

# The same local polynomial comparison feeds the existing physical
# derivative transfer, with all donors disjoint for each derivative order.
r,k=40,16
price,mu=F(".9"),F("1e-15")
begin=derivative.index("def pivots(matrix):")
end=derivative.index("branches=[]",begin)
exec(compile(derivative[begin:end],jensen,"exec"))
begin=derivative.index("    # Verify the normalization")
end=derivative.index("    values=pivots(matrix)",begin)
comparison=dedent(derivative[begin:end])
cut="\nfrom math import acos,cos,sin,sqrt,fsum\n"
assert directed.count(cut)==1
for mode,(a,b,left,right,center,npos,nneg) in geometry.items():
    data=execute(directed.split(cut)[0],[arithmetic,mode])
    start,stop=data["start"],data["stop"]
    c0,c=data["c0"],data["c"]
    step=data["step"]
    pi_hi,pi_lo=data["pi_upper"],data["pi_lower"]
    estimate=data["estimate"]
    alo,ahi=data["Alo"],data["Ahi"]
    wmin=data["wmin"]
    box_left,box_right=map(F,(left,right))
    assert (start,stop)==tuple(map(F,(a,b)))
    assert (F(data["l0"]),F(data["r0"]))==(box_left,box_right)
    assert c==c0+F(center)==c0+(start+stop)/2
    assert step==F(".0025") and (alo,ahi,wmin)==(F("17.6779"),F("17.6780"),1-F("3e-10"))
    assert ahi+211<272 and 211-alo<272
    state=dict(globals())
    exec(compile(comparison,jensen,"exec"),state)
    values=pivots(state["matrix"])
    assert len(values)==40 and min(values)>F(18)
    print("PASS original directed polynomial Gram",mode,npos,nneg,float(min(values)))

old_pool=prior["prior"]["parent"]["updated"]
assert tuple(old_pool["statistics"])==("e14","e15","e18","e19")
assert (old_pool["r"],old_pool["k"],old_pool["price"],old_pool["mu"])==(r,k,price,mu)
alpha=F(4803,5330)
assert old_pool["alpha"]==alpha<F(".95")
assert old_pool["cost"]<F("1.009e-15")
assert old_pool["cost16"]==F("1.00453369140625e-15")
assert old_pool["cost40"]<F("4.360e-18")
assert old_pool["tail"]+sum(prior["prior"]["prices"])+prior["charge"]==prior["tail"]
beta,old,options,tail=prior["beta"],prior["old"],prior["options"],prior["tail"]
assert beta==F(".124890887") and len(old)==48 and len(options)==4
for name,base in options.items():
    caps=[max(F(".953004")+(p+base+tail)/beta,F(".95"),alpha) for p in old]
    room=[F(".000001")*beta-p-base-tail for p in old]
    assert max(caps)<F(".953005") and min(room)>F("9.0172e-10")
    if name=="pooled-map":
        assert min(room)>F("6.7007e-9")
    print("PASS original q79 retained price branches",name,float(max(caps)),float(min(room)))
print("PASS single derivative debit on seven disjoint donors through 993.68")
~~~

## A derivative donor for E26 and a wider Jensen donor for E27

2026-11-16, grwtsk contributors, AI-assisted. Analytic proof
with exact rational source checks. Lean elaboration, kernel
replay and transitive axiom audit are NOT_RUN. External
independent review is UNASSESSED.

Use the [pinned 79-enclosure comparison](https://github.com/grwtsk/math/blob/098a82f0f3906ce18e87ff59432730f3b1326ccc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeRadiusFourJensenDonor.md),
Jensen blob 19e02ff02107188d9dd71eea4db787d6beb4a814. The original radius-four arithmetic
blob is 72848bace2af0f427c9e9fae16806f1b31ee064f.
Retain the complex odd physical carrier
$L^2_{\mathrm{odd}}([-4,4],dt;\mathbb C)$, its zero
extension, folded measure $d\nu/\pi$, the original masks
and the physical projection. For the primitive nonprincipal
odd character modulo three, use full parity-one gamma, all
$458$ signed prime powers and zero principal-pole term.
All intervals use detunings from $c_1=99653682.92983$
and include the reflected restrictions.

The original multiplier is strictly positive on the complement
of $E_{26}=[993.68,993.84]$ and $E_{27}=[1000.64,1001.00]$
in $[993.68,1009.58]$. Each of the four box endpoints and
the right frontier are strictly positive, while $993.76$
and $1000.82$ are strictly negative. The directed sign check
uses $769$ complement cells with no bisections. The preceding
interval and this one meet at the positive point $993.68$.

Use $Y_{26}=[991.76,995.76]$ and $Y_{27}=[996.00,1008.00]$.
The first donor starts $68.69$ after $Y_{25}$ and overlaps
the preceding positive sign interval on its left. The two
new donors are separated by $.24$. The right edge of
$Y_{27}$ is $1.58$ before the end of the new sign region.
Each contains only its respective negative restriction.
The guarded original masks and all earlier positive
reservations, including the remote reservations, permit
both new tags.

### E26 under the existing derivative estimate

The $192$ positive $.02$ bins and $52$ nonzero negative
$.0025$ cells satisfy the existing directed polynomial
comparison on $Y_{26}$ at the center $c_1+993.76$, with
$(r,k,\alpha_0,\mu)=(40,16,9/10,10^{-15})$.
In detail, all $40$ leading rational pivots are positive for
$$
 p\longmapsto
 \int_{Y_{26}}\bigl(\tfrac9{10}\ell_{26}-\eta_{26}\bigr)|p|^2\,d\nu
 +\frac{10^{-15}}{4^{32}\pi_{\rm hi}}
      \int_{Y_{26}}|p^{(16)}|^2\,d\nu
$$
on complex polynomials of degree less than $40$.
The radius of this donor is two. The original derivative
transfer and Plancherel on the unmasked physical carrier
allow $J=\{14,15,18,19,23,24,25,26\}$ to share the existing
bound
$$
 \sum_{j\in J}N_{E_j}^*N_{E_j}
 \preceq \tfrac{4803}{5330}\sum_{j\in J}\mathcal P_{Y_j}
 +(1.009\cdot10^{-15})I .
$$
The eight donor intervals are disjoint. The same two
derivative estimates account for the whole sum.

### Scoped failures for narrower E27 choices

On the radius-two candidate $[998.82,1002.82]$, the same
directed derivative matrix at $(40,16,9/10,10^{-15})$
has its first nonpositive normalized pivot at zero-based
index $12$, in $(-69.89,-69.88)$. For the directed
physical Jensen sufficient residual on this candidate at
$\alpha=19/20$ and $\tau=10^{-12}$ the first nonpositive
normalized pivot is at index $4$, in $(-.008,-.007)$.
On the radius-three candidate $[997.82,1003.82]$ at
$\alpha=19/20$ and $\tau=10^{-10}$ it is at index $12$,
in $(-4.232\cdot10^{17},-4.231\cdot10^{17})$.
These statements concern precisely the chosen directed
sufficient matrices. The physical comparison below
uses the wider source donor.

### The wider E27 physical comparison

The wider donor has $583$ positive $.02$ bins and the same
$133$ nonzero negative $.0025$ cells. Use the exact source
true sine averages $B$ and the short $18$-term negative Taylor
map $V$ at $c_1+1000.82$. With the positive diagonal weights
$W$ and positive definite negative-moment matrix $M$,
$$
 B^*WB\preceq\mathcal P_{Y_{27}},\qquad
 N_{E_{27}}^*N_{E_{27}}\preceq V^*MV+\delta I,
 \qquad
 \delta=8\epsilon(2+\epsilon)\int_{E_{27}}\eta_{27},
 \quad\epsilon=.72^{18}/18!.
$$
Use $\alpha=19/20$ and $\tau=10^{-12}$. The directed
guard for the physical Woodbury residual
$$
 \tau M^{-1}-(V^*-B^*Z)^*(V^*-B^*Z)
                 -\tau Z^*(\alpha W)^{-1}Z
$$
uses $180$ Taylor terms for the true averaged carriers and
checks the exact carrier Gram and diagonal ridge enclosures.
Floating point only proposes $Z$. The exact row uncertainty
is below $10^{-23}$, and all $18$ rational lower-matrix pivots
are positive. The established Jensen square completion gives
$$
 N_{E_{27}}^*N_{E_{27}}\preceq
            \tfrac{19}{20}\mathcal P_{Y_{27}}+(\tau+\delta)I,
 \qquad \tau+\delta<1.000006\cdot10^{-12}.
$$

### Return to the original comparison

Reserve both new tags once. Keep every earlier separately
charged tag, the prior single derivative price and $\beta I$.
E26 fits the existing derivative price, and E27 contributes
its exact scalar price divided by $\beta$ to each retained
branch. Each donor fraction fits $19/20$. All $48$ original
prices under each of the four first-pair choices retain cap
below $0.953005$. The least physical room across all branches
exceeds $9.0072\cdot10^{-10}$, and in the pooled-map branch
it exceeds $6.6997\cdot10^{-9}$.

Append the disjoint $N_{E_{26}}$ and $N_{E_{27}}$ to form
$W_{\mathrm{all81}}$. The contiguous signed frontier is
$1009.58$. The original physical identity is
$$
 T_+-\lambda\Pi_H=S_{\mathrm{all81}}-N_{\mathrm{out}}^*N_{\mathrm{out}},
 \qquad S_{\mathrm{all81}}
 =S_\lambda-W_{\mathrm{all81}}^*W_{\mathrm{all81}}
 \succeq0.046995S_\lambda.
$$
The remaining full outside-support norm
$\|N_{\mathrm{out}}S_{\mathrm{all81}}^{-1}N_{\mathrm{out}}^*\|\le1$
is required for the original seven leading inverses and
directional return.

Extract the guard and pass the pinned original arithmetic
Markdown and the Jensen donor Markdown containing the
E23/E24/E25 comparison, original directed Jensen and
derivative checkers. Prior blocks are selected by unique
digests.

~~~python
from fractions import Fraction as F
from hashlib import sha256
from math import factorial, lcm
from pathlib import Path
from textwrap import dedent
import re
import sys

_,arithmetic,jensen=sys.argv
assert sha256(Path(arithmetic).read_bytes()).hexdigest()==(
    "2cfa24493535cf3d064b12d646d4ba7772066b12c2f0cac6d2bb83803bbf65a5"
)
blocks=re.findall(r"^~~~python\n(.*?)^~~~$",Path(jensen).read_text(),re.M|re.S)

def checker(digest):
    hits=[block for block in blocks if sha256(block.encode()).hexdigest()==digest]
    assert len(hits)==1
    return hits[0]

def execute(code,args,state=None):
    original=sys.argv
    if state is None:
        state={"__name__":"__main__","__file__":__file__}
    try:
        sys.argv=[__file__,*args]
        exec(compile(code,jensen,"exec"),state)
    finally:
        sys.argv=original
    return state

def replace(code,old,new):
    assert code.count(old)==1,old
    return code.replace(old,new)

parent=execute(checker("b8f6f9cd6b13d235a4d085993751a7cf4f8d4616eefc088620b3227ae54e56c7"),
               [arithmetic,jensen])
core=checker("a406727b9e220e81ae4aee859c11fb9eaed3a2445d4e89c73cc0d1c9cbd3e654")
geometry={
    "e26":("991.76","995.76","993.68","993.84","993.76",".90"),
    "e27":("996.00","1008.00","1000.64","1001.00","1000.82",".95"),
}
holder='"e9":("707.62","709.62","708.60","708.66","708.63",".25"),'
directed=replace(core,holder,
    "\n    ".join(repr(tag)+":"+repr(row)+"," for tag,row in geometry.items()))
directed=replace(directed,'("708.60","710.86",".02")','("993.68","1009.58",".02")')
directed=replace(directed,'(checks,splits)==(112,1)','(checks,splits)==(769,0)')
directed=replace(directed,'len(pos)==98 and len(rho)==9',
                 '(len(pos),len(rho))=={"e26":(192,52),"e27":(583,133)}[mode]')

sign={"__name__":"__main__","__file__":__file__}
try:
    execute(directed,[arithmetic,"sign"],sign)
except SystemExit as exc:
    assert exc.code in (None,0)
else:
    raise AssertionError("the complete directed E26/E27 sign check did not return")
previous=parent["new_sign"]
y26l,y26r,e26l,e26r,c26=map(F,geometry["e26"][:5])
y27l,y27r,e27l,e27r,c27=map(F,geometry["e27"][:5])
assert (sign["start"],sign["stop"])==(F("993.68"),F("1009.58"))
assert sign["boxes"]==[(e26l,e26r),(e27l,e27r)]
assert previous["boxes"][-1][1]<F("923.07")<y26l<previous["stop"]==sign["start"]==e26l
assert previous["node"](previous["stop"])[1]<previous["Alo"]
assert e26l<e26r<y26r<y27l<e27l<e27r<y27r<sign["stop"]
assert y26l-F("923.07")==F("68.69")
assert y27l-y26r==F(".24") and sign["stop"]-y27r==F("1.58")
assert 2*c26==y26l+y26r and (y26r-y26l)/2==2
assert all(v<y26l or y27r<u for u,v in (
    (F("-16.64"),F(405)),(F(408),F(414)),(F("436.94"),F("440.94")),
    (F("5311.55"),F("5315.55")),(F(20345),F(20410))))
assert F(5085348195,4)*sign["pi_lower"]-F("5.55")-2>sign["c0"]+y27r

# E26 satisfies the same local derivative form as the seven prior donors.
derivative=checker("fb06ddc22892ae6f573f0dc659a5e60c9b156ba327344f8f043d3ad06f2bfbb9")
r,k=40,16
price,mu=F(".9"),F("1e-15")
cut="\nfrom math import acos,cos,sin,sqrt,fsum\n"
assert directed.count(cut)==1
data=execute(directed.split(cut)[0],[arithmetic,"e26"])
start,stop=data["start"],data["stop"]
c0,c=data["c0"],data["c"]
step=data["step"]
pi_hi,pi_lo=data["pi_upper"],data["pi_lower"]
estimate=data["estimate"]
alo,ahi=data["Alo"],data["Ahi"]
wmin=data["wmin"]
box_left,box_right=e26l,e26r
npos,nneg=192,52
assert (start,stop)==(y26l,y26r) and c==c0+c26
assert (F(data["l0"]),F(data["r0"]))==(e26l,e26r)
assert step==F(".0025") and (alo,ahi,wmin)==(F("17.6779"),F("17.6780"),1-F("3e-10"))
assert ahi+211<272 and 211-alo<272
begin=derivative.index("def pivots(matrix):")
end=derivative.index("branches=[]",begin)
pivot_routine=derivative[begin:end]
exec(compile(pivot_routine,jensen,"exec"))
begin=derivative.index("    # Verify the normalization")
end=derivative.index("    values=pivots(matrix)",begin)
comparison=dedent(derivative[begin:end])
state=dict(globals())
exec(compile(comparison,jensen,"exec"),state)
values=pivots(state["matrix"])
assert len(values)==40 and min(values)>19
print("PASS E26 original directed polynomial Gram",npos,nneg,float(min(values)))

# E27's failed narrow approximations have precisely specified inputs.
def jensen_code(left,right,npos,shift,terms):
    row=(left,right,"1000.64","1001.00","1000.82",".95")
    code=replace(core,holder,repr("e27")+":"+repr(row)+",")
    if terms==180:
        code=replace(code,"K=120","K=180")
        code=replace(code,'F("1.801e-48")','F("2.701e-48")')
    else:
        assert terms==120
    for old,new in (
        ('len(pos)==98 and len(rho)==9',f'len(pos)=={npos} and len(rho)==133'),
        ('F("9.656e-36")','F("6e-18")'),
        ('alpha,tau=F(fraction),F("1e-12")',f'alpha,tau=F(fraction),F("{shift}")'),
        ('assert c==c0+F("708.63")','assert c==c0+F("1000.82")'),
    ):
        code=replace(code,old,new)
    end='assert F(T[0][0],work_grid)>F("5.9727e-8")'
    assert code.count(end)==1
    return code.split(end)[0]

for left,right,n,shift,index,low,high in (
    ("998.82","1002.82",183,"1e-12",4,"-.008","-.007"),
    ("997.82","1003.82",283,"1e-10",12,"-4.232e17","-4.231e17"),
):
    code=jensen_code(left,right,n,shift,120)
    code=replace(code,"    assert p>0\n    for j in range(i+1,k):",
                 "    if p<=0:\n        failed=i,F(p,last*work_grid)\n        break\n    for j in range(i+1,k):")
    narrow=execute(code,[arithmetic,"e27"])
    i,failed=narrow["failed"]
    assert i==index and F(low)<failed<F(high)<0
    print("PASS scoped sufficient Jensen failure",left,right,shift,i,float(failed))
    if index==4:
        parent["prior"]["prior"]["computed_failure"](narrow,12,F("-69.89"),F("-69.88"))

wide=execute(jensen_code("996.00","1008.00",583,"1e-12",180),[arithmetic,"e27"])
assert (wide["start"],wide["stop"],wide["c"])==(y27l,y27r,wide["c0"]+c27)
assert (F(wide["l0"]),F(wide["r0"]))==(e27l,e27r)
assert wide["alpha"]==F(".95") and wide["tau"]==F("1e-12")
assert wide["Eps"]==F(".72")**18/factorial(18)
eta=wide["tau"]+wide["delta"]
assert eta<F("1.000006e-12")
print("PASS directed wide E27 physical Jensen comparison",float(eta))

old_pool=parent["old_pool"]
assert (old_pool["r"],old_pool["k"],old_pool["price"],old_pool["mu"])==(r,k,price,mu)
alpha=F(4803,5330)
assert old_pool["alpha"]==alpha<F(".95") and old_pool["cost"]<F("1.009e-15")
beta,old,options=parent["beta"],parent["old"],parent["options"]
tail=parent["tail"]+eta
assert beta==F(".124890887") and len(old)==48 and len(options)==4
for name,base in options.items():
    caps=[max(F(".953004")+(p+base+tail)/beta,F(".95"),alpha) for p in old]
    room=[F(".000001")*beta-p-base-tail for p in old]
    assert max(caps)<F(".953005") and min(room)>F("9.0072e-10")
    if name=="pooled-map":
        assert min(room)>F("6.6997e-9")
    print("PASS original q81 price branches",name,float(max(caps)),float(min(room)))
print("PASS original E26/E27 comparison through 1009.58")
~~~
