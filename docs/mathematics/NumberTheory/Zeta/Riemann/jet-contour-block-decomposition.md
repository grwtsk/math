# Exact contiguous blocks for the fixed height-fifteen contour computation

Owner #135; numerical supplier #194; canonical/prime consumer #261.
Parent `04b940fb41e6552f82e4d789c1f74d791053e189`, tree
`a5444720f03b42c6506c8c61fe8d9f39f6e29ce5`.
Mathlib remains `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** All new and inherited Lean
scripts remain unelaborated. NONE of the 38 large local equality obligations is
proved here. The independent model calculation is not a kernel proof of them.
This increment decomposes the SAME finite acceptance equality; it does not
redefine Success or replace it by an external success flag.

## 1. Reconcile the current candidate before extending it

The inspected branch already contains the published 2,379-cell candidate at
`Checks.HeightFifteenJetCandidate`, blob
`e136351169c1e027d2b4846156355194758529de`. It is not the earlier local-only
1,429-cell alternative. This increment preserves the published candidate and
does not apply the older patch over its adapter or introduce another zero list.

The sixteen original geometric blocks, 2,380 marks, all plans, every generated
source value, shared image expression, target geometry and numerical parameters
are unchanged. The existing expression is

    result = JetRectangleCount.evaluate 15 edges marks plans image,
    Success := result = some 1.

The mathematical target remains the canonical regional analytic-multiplicity
count. There is no change to F(1)=1, any local zero candidate, the old image
radius, the strict gate or the signed polygon-index convention.

## 2. Split finite predicates and signed sums without losing indices

For a fixed predicate test(i) and signed contribution term(i), let

    A(s,m) = AND_(0<=j<m) test(s+j),
    Q(s,m) = SUM_(0<=j<m) term(s+j).

The generic module derives the exact finite identities

    A(s,a+b) = A(s,a) AND A(s+a,b),
    Q(s,a+b) = Q(s,a) + Q(s+a,b).

A local chunk returns some Q(s,m) only when A(s,m) passes. Otherwise it returns
none. A zero contribution is not failure. Its integer can be negative: an open
chain of cells is NOT a closed loop and its contribution is not its winding.

Block starts are derived cumulatively from a list of widths. They cannot be
supplied as arbitrary offsets or duplicated labels. The independent partition
guard requires positive total and cap, a nonempty width list, positive widths
at most the cap, and exact total width n. It therefore excludes zero-width
verification blocks, omitted suffixes and oversized blocks. This restriction on
verification blocks does not remove geometric zero-width cells: those remain
ordinary positions requiring the unchanged cell tests.

`verify` checks every actual local predicate and compares every computed local
sum with the corresponding claimed integer. Exact claim-list length is checked
recursively. Merely having the correct final sum is insufficient: forged local
claims can cancel. `verify_sound` derives complete range acceptance AND the full
signed sum. `totals` constructs the actual local sums, and `exists_pieces_iff`
shows that the decomposition is complete, not just a one-way sufficient shortcut.

`Pieces` is a nested conjunction of actual local equalities

    chunk test term start width = some expected_integer.

It is a proposition requiring proofs, not a data structure of success flags.
The Boolean verifier recomputes the equalities. A report containing the word
PASS does not inhabit this proposition.

## 3. Refine the unchanged contour computation

`JetContourBlocks.cellTest` combines the full old JetPoleContour.EdgeValid with
the full old RationalPolygonIndex.EdgeValid. All source/derivative/curvature
construction, strict margins, both domain endpoints and BOTH image endpoints
remain. The integer term is exactly the old negative-ray branch increment.

Every block uses GLOBAL vertices y_i and y_(i+1), and the original plan p_i.
No artificial closing edge is added at a block boundary. The final global edge
still consumes the closing vertex y_n=y_0. Adjacent blocks therefore use the same
shared vertex in both incident disks, even though their local checks can be
proved separately. Decomposing the computation does not partition the analytic
source or change which disk contains an edge.

A separate Header retains positive n, n+1 domain/image vertices, exactly n plans
and BOTH exact global closure equations. `old_evaluate_iff` decomposes the old
finite result into Header, all cell tests and the signed sum. `evaluate_refines`
then identifies every accepted block calculation with the SAME old finite
result. Conversely, for any admitted partition, `exists_claims_iff` derives
computed summaries for every old accepted result.

The rectangle adapter retains the old strict box and mesh guard. Its accepted
output feeds the unchanged canonical count theorem. Neither analytic input nor
an integer/count equality is inserted as a new premise. This is source-level
refinement, not compiler, parser or runtime qualification.

## 4. The literal remaining computation has 38 local equality obligations

The new proof-decomposition widths are

    [64 repeated 37 times, 11],   sum = 2379.

These are NOT the sixteen original geometric mesh blocks. A verification block
may cross a corner or an original mesh-block seam because every cell still
uses its global endpoints and its own original side-admissibility check.

The proposed contribution vector is

    [0,0,0,0,1,0,...,0]  (38 entries).

Both the length and sum-one statement are tiny source decision candidates.
The actual 38 block results remain UNPROVED Lean obligations. In the independent
rational model, block index 4 covers cells [256,320) and contributes +1; the only
nonzero branch increment is cell 275. The final block covers [2368,2379) and
contributes zero. All other blocks contribute zero. These indices are zero-based.
The branch crossing is bookkeeping for this surrogate and this ray; it is NOT
a localization of a zeta zero or the winding of that open subchain.

Direct indexed test/term expressions are connected by proof candidates to the
old list accessors. Every consumed index is bounded first. The last image is
the same explicit imageAt(0), and cyclic neighboring plans used to propose the
images are retained. The header's lengths and closure are proved from list
construction and the inherited mesh theorem without deliberately reducing every
source value. No separate cached approximation table is accepted.

`success_iff_exists_blocks` targets an EXACT equivalence with the old Success:

    Success iff exists local integers,
      Pieces(directTest,directTerm,0,widths,integers) AND sum(integers)=1.

`BlockObligations` specializes this to the proposed vector. `success_of_blocks`,
`count_one_of_blocks` and `complete_pair_of_blocks` are conditional consumers.
`verifyExpected` is a computation definition, not a proof of its output.

The cap bounds the number of cell predicates per local equality, NOT its runtime,
memory, reduction depth or number of source evaluations. Shared image endpoints
can require neighboring plans, and the inherited nested finite expressions can
still be expensive. No 38-way speedup, successful parallel replay, execution
schedule or worker request is claimed. Separate kernel proofs may use these
local goals; none was obtained in this source-only increment.

## 5. Evidence and controls

A fresh independent model reconstructed the published source candidate from an
exact-byte snapshot matching its inspected Git blob. Both normal and optimized
Python runs reconstructed every source/derivative ball, image, cell guard and
local total; the reports are byte-identical. No stored success bit or value
inventory determined acceptance.

34,382 explicit exact assertions passed per run. They include 8,190 small finite
predicate/signed-sum models, 19 directed controls, all 2,379 target cell/chart
checks, all 38 local equalities, direct plan/successor comparisons and injected
failure at EVERY individual target position. All 38 cyclic/internal block seams
reject a zero image vertex in BOTH incident image disks. A forged block vector
with the same total one is rejected. Inputs are reused across properties; these
are not independent analytic proof or certified-zero counts.

The reconstructed target retains the previously reported model quantities:
minimum strict image slack about 3.444082255924e-4, maximum full source-value
radius about 7.192815581364e-7, signed total +1, and a separate determinant
ray-crossing total +1. No improved mesh, analytic bound or numerical precision
is claimed. No new floating-point/transcendental/zeta-library comparison, root
finder or external zero database is used.

Seventeen small Lean controls cover invalid partitions, missing/extra claims,
wrong local cancellations, changed widths, absolute cursor semantics and a failed
last cell despite a passing prefix. Those Lean decisions also remain unexecuted.
The full-source Python formulas and diagnostic parser have no formal runtime
refinement or authentication status; the Lean acceptance premises must still be
proved for the exact literal inputs. Equal outputs do not authenticate inputs.

Static source/hash/import/name/manifest checks and sparse patch application do
not establish Lean parsing, exact types, kernel reduction or transitive trust.
The complete predecessor target, every generated declaration, full import/axiom/
native dependencies and all previous large finite reductions remain acceptance
obligations. The local data cap is not permission to execute anything.

Next acceptance work: elaborate/repair the new and inherited source at the pinned
stack, prove each of the SAME 38 local equalities (including the final 11 cells),
and apply the existing composition. The numerical witness is available at model
scope, but accepted K(15)=1, exact finite-head completeness and bounded-line
conclusions are not announced. Higher-height coverage, omitted-divisor tails,
external input binding and strict every-interval prime margins remain separate.
No Lean/Lake invocation, installation, worker/build/replay request, execution-hold
release, merge or issue disposition change is represented by this increment.
