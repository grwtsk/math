# Exponential-lift winding and the checked contour's free homotopy

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `948f6b9032bf477f522b64ff63e7e9f43e367a88`, tree
`2eb76891c9e9b835985e30bada3da80a23202c8f`. Mathlib stays at
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All new and inherited Lean
scripts remain unelaborated. This source constructs a mathematical signed
integer invariant and derives its free-homotopy invariance. It does NOT execute
a polygon-index algorithm, prove an argument principle, evaluate the large
contour, or supply the regional upper count. Prior functions, error budgets,
constants, targets, dependency pins and public-root imports remain unchanged.

## 1. Choose an available pinned invariant, not an unavailable API

The maintained parent already constructs a standard globally continuous
`HomotopyWith` of closed curves in the actual subtype `{z : C // z != 0}`.
It identifies its endpoints with the actual normalized-source image and the
rational surrogate polygon. The basepoint may move. This increment consumes
that object; it does not require a new supplied homotopy or invariance field.

A quotient-circle presentation is unnecessary for this chosen construction.
The exact pinned sources provide `Complex.isCoveringMap_exp`, path lifting,
homotopy lifting, uniqueness of lifts, and the integer period of exp. These
APIs were inspected at the actual pin, not taken from the newer default-branch
`FundamentalGroupCircle` interface. No package update is made.

The chosen definition is the standard logarithmic-lift index of a continuous
nonzero closed curve. Its identification with a complex contour integral or
any other existing winding-number definition remains a separate theorem.

## 2. Construct a continuous logarithm along the entire curve

For a continuous curve g:[0,1]->C\{0}, lift it along the actual covering map

    exp : C -> C\{0}.

The initial value is the principal log of g(0); `exp_log` supplies that ONE
starting value. `IsCoveringMap.liftPath` constructs a continuous L with

    exp(L(t))=g(t), for every t in [0,1].

Subsequent values are NOT independently reset to principal logarithms. Such
resets can jump at a branch cut and discard completed turns. The path-lifting
existence theorem is used, rather than an unproved supplied lift or a default
zero for paths with no known lift.

When g(0)=g(1), the pinned exponential-period theorem gives an integer k with

    L(1)-L(0)=k*(2*pi*i).

The period is nonzero, so k is unique. `winding` chooses this proved integer.
Its type is Z, NOT N: negative orientation is preserved rather than converted
by truncated natural coercion. The definition is noncomputable and does not
claim a finite rational algorithm or operational resource bound.

The generic `difference_const` lemma compares TWO continuous logarithms with
identical exponentials on the whole interval. It shifts one lift to agree with
the other at a selected point, then uses covering-space uniqueness. Their
difference is constant, so their endpoint jumps agree. In particular:

    any continuous lift with jump k*(2*pi*i) computes the same winding k.

The initial logarithm need not be principal, and distinct starting branches
are allowed. A discontinuous integer-valued branch change does not meet the
continuity hypothesis, even if its exponentials agree at every point.

## 3. Free homotopy invariance without falsely fixing the basepoint

Let H(lambda,t) be the EXISTING punctured free-loop homotopy. Lift the entire
continuous square through exp, starting from the constructed logarithm of
H(0,t). Pinned `liftHomotopy` supplies a continuous complex function Lhat with

    exp(Lhat(lambda,t))=H(lambda,t),
    Lhat(0,t)=L_0(t).

Closedness of EVERY intermediate curve says H(lambda,1)=H(lambda,0). Therefore
A(lambda)=Lhat(lambda,1) and B(lambda)=Lhat(lambda,0) have the same exponential
at every lambda. Applying `difference_const` to those two continuous paths gives

    Lhat(lambda,1)-Lhat(lambda,0)=L_0(1)-L_0(0).

Neither A nor B is assumed constant. Both may follow the moving basepoint.
The lambda=1 slice is a continuous log of the final curve, so lift-independence
identifies its jump with the same uniquely defined integer. Thus the source
candidate `winding_homotopy` derives

    winding(H(0,-))=winding(H(1,-)).

This uses a standard FREE-loop `HomotopyWith`, not a fixed-endpoint Path.Homotopy.
No branch-cut continuity assumption, quotient-circle conversion, numerical
argument unwrapping or user-supplied invariance equation is hidden in the proof.

## 4. Sign and normalization are tested by exact mathematical loops

For each integer k, the exact synthetic loop

    t |-> exp(2*pi*i*k*t)

has the explicitly constructed log 2*pi*i*k*t, hence index k. Source controls
retain +1, -1 and +2. Both endpoint principal logs are zero in all three cases;
subtracting them is NOT a winding computation.

A nonzero-turn loop cannot have a closed continuous logarithm. It also cannot
be deformed to the zero-turn loop through closed nonzero curves, by the derived
invariance. These are source statements about actual exponential functions,
not numerical samples of an abstract integer field.

Additional source candidates derive:

    winding(time reversal of g) = -winding(g),
    winding(g*h) = winding(g)+winding(h),
    winding(g o r) = winding(g) when r(0)=0 and r(1)=1.

The multiplication is POINTWISE multiplication of nonzero curves, not pointwise
addition. The last result requires continuous r but not uniform speed; pauses
or backtracking do not change the endpoint jump. It is not a regularity theorem
or change-of-variables result for quadrature or contour integration. Reversal
has swapped endpoints and correctly receives the separate negative sign.

An open exponential path can have a nonintegral or nonimaginary log increment;
loop closure is not optional. A straight interpolation between nonzero values
one and minus one hits zero. Nonvanishing at the endpoint curves does not
establish the nonvanishing required of the WHOLE homotopy.

## 5. The existing checked analytic image and polygon now have equal indices

`PoleContourWinding` reuses the exact endpoint maps and the previous
`PoleContourHomotopy.puncturedHomotopy`. It binds the original domain/image
vertices, edge records, source enclosures, closures and full dyadic traversal.
The source candidate `sourceIndex_eq_imageIndex` derives

    winding(F o gamma_domain)=winding(gamma_image).

F remains the same pole-normalized zeta function with its sourced removable
value F(1)=1. Its finite evaluator, whole-disk bounds, canonical zeros and their
analytic multiplicities are not redefined. Actual `Enclosures` and all upstream
finite gates remain necessary. The inherited false-value fixture still lacks
those enclosures even though its scalar check can pass.

The image integer is a mathematical index of the literal rational polygon,
NOT a checked rational crossing sum. `sourceIndex_eq_of_image` only transports
a proposed k AFTER a proof of `imageIndex=k` for that same polygon. It does not
accept a numeric label or Python report as such a proof.

The unchanged small-square fixture around one already has a constant-one
surrogate and actual source enclosures. Its constant logarithm has jump zero.
The new source therefore derives zero winding of that actual complete source
image, with no new evaluation or index premise. Its inherited finite reductions
and every new Lean proof remain unexecuted. This is the SMALL square, not the
large counting rectangle, and no interior count is claimed from it here.

## 6. The counting boundary remains explicit

The maintained regional target remains

    Omega_15={s : 1/4<Re(s)<5/4, 0<Im(s)<61/4},
    K(15)<=1.

No successful complete evaluation of that large contour or actual regional
upper bound is supplied. The new signed invariant alone is not a divisor count.
The future argument-principle application must establish the exact contour,
orientation and traversal, source holomorphy, boundary exclusions, analytic
multiplicities and equality with the chosen exponential-lift index. The existing
source/divisor normalization does not automatically prove this global equality.

Next numerical/topological work is a verified finite polygon-index computation
or a finite log-increment construction with proved total jump, together with
actual large-contour enclosures. The real-integration Bernoulli remainder is
still not the omitted-zero divisor tail needed by the prime consumer. Full
arithmetic identities, complete inventory and strict prime margins remain
independent; no Legendre, bounded-RH certificate or RH conclusion is claimed.

## 7. Evidence and acceptance

Five new Lean files contain 594 lines, 60 theorem commands, 19 definitions and
one abbreviation: 80 explicit source names, NOT accepted-proof counts. The
isolated target selects sixteen modules, seventeen control specifications and
five pinned upstream sources; it retains the full predecessor declaration,
type, control, large-reduction and transitive import/axiom/native-dependency
obligations. The selected catalog is not the complete closure.

2,390 independent exact-rational diagnostic assertions passed in each of normal
and optimized Python modes, with byte-identical reports. Explicit exceptions
remain enabled under optimization. Models comprise 108 two-parameter polynomial
logarithms, branch shifts, signed products/reversal and nonlinear timing; 36
synthetic rational square polygons; and fourteen directed controls. Polynomial
coefficient identities check all parameters FOR THESE MODELS. They do not prove
general analytic path-lifting, homotopy-lifting or a refinement of the Lean code.
540 additional endpoint specializations are included in the total; inputs are
reused across properties, not counted as independent zeros.

The diagnostic polygon crossing routine is deliberately unqualified: it is not
proved equal to the new index. No pi/exp/log/zeta computation, floating arithmetic,
root finder, actual zero inventory or target-contour computation was performed.
The scalar pole-square check does not manufacture its analytic source value.

Static reconciliation and sparse additive-patch byte checks are not Lean parsing
or trust acceptance. Direct source download failed at name resolution; connector
reads succeeded. No full exact-parent checkout, installation, Lean/Lake invocation,
executed Lean fixture, worker request, execution-hold release, merge or issue
closure occurred. Pinned elaboration, possible proof-script repairs and independent
exact-type/transitive-axiom review remain mandatory.
