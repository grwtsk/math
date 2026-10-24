# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SupplierOriginalReturn.Variantd42fe7dedcdf3270ac88be5399c6e804656a4ead4f7d067a31ffee232743ef9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80e42f796ec511c393976c0d8c58feddd8662911` · SHA-256 `d42fe7dedcdf3270ac88be5399c6e804656a4ead4f7d067a31ffee232743ef9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.SupplierOriginalAdapters
import FormalResearch.RiemannHypothesis.Conversation.SupplierMertensDecayAdapter
import FormalResearch.RiemannHypothesis.Conversation.SupplierInitialTransform

/-!
# Current formal return from the original supplier

The supplier itself remains the original open arithmetic assertion. The
classical Mertens decay is an explicit input, not an additional axiom.
The original pickup initial transform is proved by `SupplierInitialTransform`.
The source, both meter polarities,
closed cutoffs, moving reset, and all-real quantifiers are fixed upstream.
In particular no converse to the paper's one-way RH implication is asserted.

Source history: Batch 38, commit
`f7dfdcce5d993c18efa4ecc1b9343927306c6a27`,
[terminal-implication.md](https://github.com/grwtsk/formal-research/blob/f7dfdcce5d993c18efa4ecc1b9343927306c6a27/docs/research/riemann-hypothesis/openai-direction-validation-20261008/batch-38-terminal-supplier-rh-implication/terminal-implication.md).
Classical analytic source: Lee--Leong, arXiv:2208.06141v4, Theorem 1.1;
the classical input is not a proved declaration in this implementation.
Human research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.SupplierOriginalReturn

open OriginalSignedSupplier SupplierOriginalAdapters SupplierMertensDecayAdapter
open GRWTSK.RiemannHypothesis.Conversation.SupplierLandauReturn

/-- The direct initial transform bridge is discharged on the actual pickup,
using the source-bound Dirichlet, Mellin, and absolutely integrable Fubini return. -/
theorem directPickupInitialIdentity : DirectPickupInitialIdentity := by
  intro z hz
  exact SupplierInitialTransform.pickup_laplace (by linarith)

/-- The actual arithmetic decay pays for the exact weighted tail, with no
discarded signal or additional vanishing-tail hypothesis. -/
theorem criticalPickupTail_of_classicalDecay (hM : ClassicalMertensDecay) :
    CriticalPickupTail :=
  criticalPickupTail_of_classicalMertensDecay hM

/-- The first arrow of the paper's chain, on the actual positive envelope and
with exactly `max p 1`, for any witnessed original supplier constants. -/
theorem polynomialEnvelope_of_supplier_constants_and_classical_decay
    {K D p R : ℝ} (hK : 0 ≤ K) (hD : 0 ≤ D) (hp : 0 ≤ p)
    (hR : max 1 (4 * K) ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → signedMeter A ≤ (supplierAllowance K D p A : EReal))
    (hM : ClassicalMertensDecay) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T → positiveEnvelope T ≤ C * (1 + T) ^ max p 1 :=
  polynomialEnvelope_of_originalSupplier_and_tail hK hD hp hR hS
    (criticalPickupTail_of_classicalDecay hM)

/-- Conditional formal consumer of the original fixed-data supplier. The
remaining classical input and original initial identity are visible in its
type; neither the supplier nor either input is postulated as an axiom. -/
theorem original_supplier_rh_of_classical_decay_and_direct_identity
    (hS : SupplierEstimate) (hM : ClassicalMertensDecay)
    (hidentity : DirectPickupInitialIdentity) : _root_.RiemannHypothesis :=
  riemann_hypothesis_of_supplier_and_analytic_bridges hS
    (criticalPickupTail_of_classicalDecay hM) hidentity

/-- Current formal endpoint: the exact original supplier implies literal RH
given the separately named classical Mertens decay theorem. There is no
remaining source, weighted-tail, initial-transform, or Landau premise. The
classical theorem is not yet proved as a Lean declaration in this development. -/
theorem original_supplier_rh_of_classical_decay
    (hS : SupplierEstimate) (hM : ClassicalMertensDecay) : _root_.RiemannHypothesis :=
  original_supplier_rh_of_classical_decay_and_direct_identity hS hM directPickupInitialIdentity

end FormalResearch.RiemannHypothesis.Conversation.SupplierOriginalReturn
```
