# The rectangle lift index and the exact canonical analytic divisor

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `5e6577f3af825f1b825525facd748c6af51b3691`, tree
`0e8d0e87db70f55fb5ad4c37630c47291119c455`. Mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** Every new and inherited Lean
proof script remains unelaborated. The construction is a lift-index argument
principle at the precise rectangle scope below. It is not an executed count,
an arbitrary meromorphic contour-integral theorem, or a proof-acceptance receipt.
No existing file, dependency pin, target, public-root import or literal local
zero candidate changes. No complete target-contour trace is supplied.

## 1. Keep the old invariant and fix the traversal

`ClosedCurveFactorIndex.index` is literally the old `ExponentialLoopIndex.winding`
applied to a complex-valued curve lifted into the nonzero subtype. Closure and
nonvanishing are explicit proofs. It is not a second invariant chosen to agree
with a desired divisor count. The old free-homotopy theorem and multiplication
law give signed finite-product and natural-power laws:

    index(g*h)=index(g)+index(h),
    index(g^m)=m*index(g),
    index(product_i g_i)=sum_i index(g_i).

Multiplicities are natural exponents but the resulting index is an INTEGER.
Reversal changes its sign; repeated traversal is not replaced by a set of edges.

A rectangle has exact real bounds l<r and b<t. Its corners are bottom-left,
bottom-right, top-right, top-left, then bottom-left. The boundary curve is the
EXISTING `PolygonFreeHomotopy.polygonMap`, with its complete ordered dyadic
schedule and initial pause. It is not an integral quadrature parameterization.
The new geometric source proves that the entire curve lies on the closed box's
boundary, including every corner and the final edge. Degenerate bounds are
excluded by the Rectangle structure's strict inequalities.

## 2. Each interior linear factor contributes exactly +1

For ANY complex a strictly inside the rectangle D, not merely a rational point,
consider the loop gamma_D-a. On the bottom edge its imaginary coordinate is
strictly negative, on the right its real coordinate is strictly positive, on
the top its imaginary coordinate is strictly positive, and on the left its
real coordinate is strictly negative.

The corresponding edge of the rational unit square [-1,1] x [-1,1] has the SAME
strict coordinate sign. Therefore the straight deformation between these two
edges avoids zero for EVERY edge parameter and deformation parameter. The
existing finite concatenation/free-homotopy constructor glues all four cells
using the same schedule. No rational approximation to a is used.

The old rational polygon evaluator returns `some 1` for that positively oriented
unit square, and its existing logarithmic refinement identifies that result
with the old winding. The new source consequently derives

    index(gamma_D-a)=1, for a in interior(D).

This establishes the sign and traversal normalization. The reversed curve has
index -1; replacing the integer by its absolute value would invalidate the
subsequent count theorem. A root on the boundary is outside this theorem's
hypotheses and would make the corresponding boundary factor vanish.

## 3. A zero-free remainder contributes zero only with an interior extension

If q is continuous and NONZERO on the WHOLE closed box, the explicit homotopy

    H(lambda,u)=q((1-lambda)*gamma_D(u)+lambda*center(D))

contracts its boundary image to a nonzero constant. Convexity keeps every
argument in the box. Free-homotopy invariance and the constant-loop calculation
give index(q o gamma_D)=0. No selected logarithm of q is assumed.

Nonzero boundary values alone cannot establish this: q(z)=z on the unit-square
boundary is nonzero and has index one while q(0)=0. The synthetic source control
retains this obstruction. The quotient constructed below really is nonzero on
the entire box, not only on its perimeter.

## 4. Construct the analytic quotient from exact local orders

For a finite type of DISTINCT complex locations a_i with positive exponents m_i,
write P(z)=product_i (z-a_i)^m_i. Given the exact source germs

    f(z)=(z-a_i)^m_i A_i(z), A_i analytic and A_i(a_i)!=0,

isolate the same factor of P:

    P(z)=(z-a_i)^m_i d_i(z), d_i analytic and d_i(a_i)!=0.

Injectivity of full locations is essential to the nonzero d_i value. Equal
imaginary heights at different points are permitted; duplicate location labels
cannot substitute for combined analytic multiplicity.

The raw f/P is derived meromorphic from the actual analytic numerator and the
finite entire denominator. Define ONE function

    q=toMeromorphicNFOn (fun z => f(z)/P(z)) U.

The pinned normal-form construction does not automatically make it analytic or
nonzero. At each selected root, the exact matching powers cancel ONLY on a
punctured neighborhood, identifying raw f/P with analytic nonzero A_i/d_i.
Pinned normal-form uniqueness extends the SAME q to that germ on a full
neighborhood. Away from the selected locations, ordinary division is analytic
and agrees with the same q. This proves neighborhood analyticity throughout U,
including any boundary points of U.

Complete coverage of every source zero in U then proves q nonzero everywhere
in U. The exact identity f=qP holds on all of U, treating a selected zero as
f=P=0 instead of dividing by P there. Off the selected divisor q equals f/P.
The raw totalized quotient at a removable zero can be zero while its analytic
extension is nonzero. Under-removal leaves a zero; over-removal leaves a pole.
Neither operation yields the required zero-free analytic extension.

The construction is classical and noncomputable. It does not enumerate the
canonical zeros or supply finite numerical coordinates.

This ordinary-linear-factor construction is analogous to the inspected
`FiniteBlaschkeRemoval` source from #300 (head
`d652dd779a4d7ecc3d03149033dfcdf55c4cd8b7`), but uses arbitrary regions and ordinary
factors rather than its radius-three Blaschke denominators. No disk-specific
source is imported, copied into this branch or modified. The shared underlying
normal-form theorem is the pinned Mathlib owner, not an invented quotient API.

## 5. Specialize to the SAME complete canonical regional source

The maintained region is unchanged:

    Omega_T={s:1/4<Re(s)<5/4, 0<Im(s)<T+1/4}, T+1/4>0.

The source is the existing pole-normalized F, with its actual removable value
F(1)=1. Let RegionalPoint T be the subtype of the existing
`MirrorCountingRectangle.head T`, and m_i its EXISTING canonical analytic
multiplicity. The source already supplies finiteness, positive finite orders,
the exact nontrivial-zero predicate and equality of normalized-source and zeta
orders. These supply the required local germs; no simplicity assumption or
external zero database is used.

Assume actual F!=0 on the entire geometric boundary. Every F-zero in the closed
box has positive real part, hence the maintained exact nontrivial-zero predicate.
The boundary exclusion puts it in the open interior, so the exact canonical
membership theorem puts it in RegionalPoint T. This establishes CLOSED-box
coverage. All horizontal coordinates and all regional zeros are retained.

`exists_source_quotient` then constructs the whole-box analytic nonzero q and
full factorization. Its caller supplies neither q nor a factorization, logarithm,
zero-free-remainder statement, divisor equality or upper count. The only new
analytic premise in `index_eq_count` is actual whole-boundary nonvanishing.

Combine the linear-factor index +1, full analytic exponents, finite product law
and the constructed remainder's zero index, then reindex the exact subtype sum:

    index(F o gamma_T) = sum_(rho in head(T)) multiplicity(rho) = K(T).

This is an equality in Z with the NATURAL count cast explicitly. It is a source
candidate for the rectangle-specific lift-index argument principle, not an
identification with a contour-integral definition or an arbitrary path API.
The removed pole lies on the bottom at one, has F(1)=1 and order zero, and is
not added as a zero or as a meromorphic pole correction to this entire source.

## 6. Numerical contours still need exact oriented alignment

The fixed four-edge curve is proved to use the same maintained rational corner
list. A finer externally evaluated polygon is not automatically the same curve.
The new adapter requires a continuous r:[0,1]->[0,1] with r(0)=0,r(1)=1 and the
literal parameterized equality

    gamma_external(u)=gamma_T(r(u)) for EVERY u.

The old reparameterization theorem then transports the old signed source index.
A shared carrier, nonzero signed area, equal endpoints or a drawing does not
supply this hypothesis. Reversal and doubled traversal must not masquerade as
one counterclockwise traversal. This is not a change-of-variables theorem for
numerical integration.

`count_eq_of_evaluate` combines the exact parameterization, actual boundary
exclusion, genuine source Enclosures and the UNCHANGED composite rational
polygon evaluation `some k` to obtain K(T)=k. It has no free `imageIndex=k` or
argument-principle equality premise. The separate boundary premise is retained;
this increment does not derive it automatically from an arbitrary refined
contour's coverage and a proved surjectivity/range comparison.

At fifteen, a successful result `some 1` under those same premises would supply
the previous regional upper count and exact both-sign head equality with the
old isolated simple line pair. NO such large-contour evaluation, its source
Enclosures, full boundary proof or refinement alignment is provided here.
The upper bound K(15)<=1 is therefore still NOT established numerically or
unconditionally, and no bounded-RH certificate, Legendre theorem or RH follows.

## 7. Evidence and acceptance

Seven new Lean files contain 885 source lines, 70 theorem commands, seventeen
definitions, one abbreviation and one structure: 89 explicit source names, not
accepted-proof counts. The isolated target selects seventeen modules, twenty
control specifications and three pinned upstream source identities, retaining
the entire predecessor chain and all generated/inferred declarations.

4,326 exact-rational assertions passed in EACH of normal and optimized Python
modes, with identical reports and explicit exceptions active under optimization.
They include 36 linear-factor geometry models, 24 expanded polynomial source
models, independently recovered root orders by exact polynomial division,
constructed quotient identities, and eighteen directed controls. All models
are synthetic; test inputs are reused across properties.

The polynomial-source tests constructed 780 full source cells and 116 remainder
cells. Each cell's variation allowance comes from the ENTIRE finite Taylor
polynomial at its exact midpoint: sum_(j>=1) mag(c_j) R^j, not sampled derivatives.
Its strictly positive margin and endpoint balls are checked rationally. All
four corners, consecutive seams and closure are retained. The image index is
compared with an independent determinant ray test and the recovered multiplicity
sum. Reversed and doubled images retain negative and double counts. Three
complete example tube inventories are packaged with the diagnostics.

These are independent finite polynomial calculations, not execution/refinement
of the Lean checker, generic analytic proof, or qualified actual-zeta evaluator.
No floating or transcendental arithmetic, zeta evaluation, root finder, actual
zero inventory or target-contour data was used. Boundary-only nonzero remainders,
wrong exponents, missing roots, duplicate locations, raw 0/0 and traversal errors
remain explicit controls. All diagnostic code stays outside the math repository.

Static source/hash/import/TOML checks and sparse patch application do not replace
Lean elaboration or transitive trust review. Every previous target, large finite
reduction, exact public type, generated declaration and import/axiom/native
obligation remains. No installation, Lean/Lake invocation, worker/replay request,
execution-hold release, merge or issue closure occurs in this increment.

Next: pinned elaboration/repairs and independent trust review; actual complete
large-contour source enclosures, checked image data and exact refinement/traversal
alignment. The argument-principle bridge is now expressed at source-draft scope;
the numerical count supplier is still missing. Global arithmetic-source identities,
omitted-zero tails and sufficiently strong prime margins remain separate.
