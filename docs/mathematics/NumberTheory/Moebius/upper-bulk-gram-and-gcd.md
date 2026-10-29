# Uniform upper-bulk Gram control and a paid high-gcd family

Local mathematical attribution: grwtsk contributors.

Written mathematical derivation; no new Lean declarations. Compilation, fresh
kernel replay and transitive axiom audit: NOT_RUN. Source chat
`6ae172dd-a538-83e8-8008-ebad9b4c2295`, message
`94143ad4-a0ae-4f4e-a5cd-1a6939c4491a`, rendered-text SHA-256
`ff4e7380bd1abeec7048743d9dbfde8459a4fe292e13c40a0890148493dbe842`.

Fix j>=3, N=2^j, T=log N, L=floor(sqrt N), P={primes<=j}, and the
original rough coefficient a(n)=mu(n)1_(no prime in P divides n).
The block K and Gram G retain this frozen P,N,T. Let
h=2^floor(3j/4), b=min(floor(N/2),2^floor(15j/16)), and define the band

    B_j={(m,n): N/4<m<=N/2, N/2<n<=N-b, n-m>h}.

This band is only part of the unpaid far bulk. It excludes the terminal strip
and near-gap region. Empty rows are retained; their exact upper endpoint is
Y_n=min(N/2,n-h-1), and a row is empty if Y_n<=N/4.

## The original response gives a stage-independent bound

Write r_v(u)=2(v^(-1/2)-exp(-u/2))1_(log v<=u). Because 2,3 belong to P,
for m>N/4 and 0<=u<=T the surviving subset multipliers are precisely 1,2,3:

    K(m,u)=r_m(u)-r_(2m)(u)-1_(3m<=N)r_(3m)(u),
    K(n,u)=r_n(u), n>N/2.

Let c2=1-1/sqrt(2), c3=1-1/sqrt(2)-1/sqrt(3), and x=exp(u)/m<4.
The quantity sqrt(m) K(m,u)/2 has the consecutive pieces

    0                         (x<1),
    1-x^(-1/2)                (1<=x<=2),
    c2                        (2<=x<=3),
    c3+x^(-1/2)               (3<=x<4).

Their boundary values agree. The last piece is positive and at most c2;
therefore 0<=K(m,u)<=2c2/sqrt(m). For u>=log n,
0<=r_n(u)<= (u-log n)/sqrt(n). Integrating on its actual support proves

    0<=G(m,n)<=c2 log(N/n)^2/sqrt(mn)<=C0/N,
    C0=2(sqrt(2)-1)(log 2)^2<0.399.                       (1)

All birth and top corrections are combined in this integration. In particular,
the three-term Gram is zero at a top birth; its separate algebraic pieces
cannot be discarded as if each were zero. At 2m=n or 3m=n, a(n)=0 since
2,3 are selected, while the adjacent Gram formulas still agree.

## Keep the retained-prime fraction and the exact gcd partition

Let Q_f={primes p:j<p<=N}, w(n)=#{p in Q_f:p|n}, and

    theta(m,n)=#{p in Q_f:p|n, p<=L or p does not divide m}/w(n),

with division by zero interpreted as zero. Always 0<=theta<=1.
On nonzero arithmetic support in B_j, w(n)>0 and

    theta(m,n)=1-lambda_L(gcd(m,n))/w(n),
    lambda_L(d)=#{p in Q_f:p>L,p|d}.                      (2)

Replacing theta by 1 globally would introduce an explicit shared-prime
allocation. It is not permissible to forget that allocation or charge it twice.

Put D_j=2^ceil(j/8), so N^(1/8)<=D_j<=L. The exact-gcd partition gives

    #{(m,n) in B_j:gcd(m,n)>D_j}
      <=sum_(d>D_j) floor(N/(2d)) floor(N/d)
      <=N^2/(2D_j).

The last step uses the finite reciprocal-square tail <=1/D_j. Applying (1)
and the actual bounds |a|<=1, 0<=theta<=1 now pays this retained family:

    |2 sum_(B_j,gcd(m,n)>D_j) theta(m,n)a(m)a(n)G(m,n)|
      <=C0 N/D_j<=C0 N^(7/8).                           (3)

This is an absolute estimate for a genuine proper family, not a signed
cancellation theorem for the whole bulk. On the complement gcd(m,n)<=D_j,
equation (2) justifies theta a(m)a(n)=a(m)a(n) exactly. That small-gcd
weighted Möbius correlation remains unbounded at the desired rate.

## What can be transported from the complete harmonic-tail theorem

For j>=5 put M=N/4 and S_M(y)=sum_(M<m<=y) a(m), M<y<=2M.
The frozen rough Type I/II and floor expansion separates

    S_M(y)=-L_M(y;B)-T_M(y;B),

where L_M keeps the Type I term, real mean, integer-endpoint corrections,
and the two different endpoint inventories through frequency hZ/(rDE)<=B.
The remainder T_M is the COMPLETE reciprocal-phase endpoint-box tail.
The exact inventories are U=floor(M^(1/3)), V_y=floor(y/(U+1)),
I_y=(U,V_y], I_M={u in I_y:uU<=M}; all selected divisors of the original
Q=product_(p<=j)p and both endpoint frequencies are retained.
More explicitly, put C_Q(t)=sum_(r|Q)mu(r)floor(t/r), and

    I0=sum_(u,d<=U) a(u)a(d)[C_Q(y/(ud))-C_Q(M/(ud))].

For Z=y,M and each clipped box set k_Z(r)=floor(rDEB/Z)+1 and q=rud.
Define F_Z^low by summing, with coefficient mu(r)a(u)a(d),

    Z/q-1/2+(1/2)1_(q|Z)-floor(U/(rd))
      +(1/pi)sum_(1<=ell<k_Z(r))sin(2pi ell Z/q)/ell

over r|Q, d<=U and u in I_Z, with their original boxes. Then
L_M=I0+F_y^low-F_M^low. T_M is the difference of the corresponding
complete tails starting at k_Z(r). This is an explicit finite observation,
not an assumed arithmetic supplier.
The written harmonic-tail proof at source57dcde579924afa5e3a0af90f63b23576863fc3e,
note blob4e36912a7e49690daf6eee617c4d438c85dc484f, supplies

    sup_(M<y<=2M)|T_M(y;B)|<=C_epsilon M^(1+epsilon)/B.  (4)

The infinite sine-series interpretation is justified here by convergence at
each rational argument and finiteness of the outer inventories, followed by
the tail estimate uniform in its finite upper harmonic cutoff. No arbitrary
frequency subset is substituted.

For g_n(m)=G(m,n), finite Abel summation against S_M uses the coefficient norm
|g_n(Y_n)|+sum_(M<z<Y_n)|g_n(z)-g_n(z+1)|. Each bare Gram
g_N(km,n), k=1,2,3, is decreasing and nonnegative, extended by zero past
km=N. The three-term reduction therefore bounds that norm by C_W/N for an
absolute C_W: sum the three initial bare Gram values, each <=
2sqrt(2)(log 2)^2/(sqrt(k)N). At most N/2 rows and their factor 2 then show
that the UNMASKED band tail costs O_epsilon(M^(1+epsilon)/B).
B=M^(1/6), epsilon=1/48 gives exponent41/48.

For the retained band, subtraction of the exact shared-prime allocation from
(2) must remain with the low/middle observation. For a further gcd mask, the
Abel norm can grow: the crude total norm is O(N/D_j), not O(1). Thus (4)
cannot be transported through that mask at the same cutoff without repricing
it. In particular, (3) and the unmasked tail estimate are not two interchangeable
credits for a small-gcd masked tail.

The remaining Type-I/zero/low-middle signed observation, the small-gcd part of
this band, and the rest of the original far bulk remain unresolved. No full
N^(7/8) energy bound or every-positive-rate RH estimate is obtained.
