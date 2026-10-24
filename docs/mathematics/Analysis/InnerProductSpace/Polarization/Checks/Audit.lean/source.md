# Complete source: GRWTSK.Analysis.InnerProductSpace.Polarization.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41a46e9366d82e143b5203b21b8fafee0ef7b2d8` · SHA-256 `89246ca5262300596b6ac65154c46bb210d6c89abf6d93287ddfbcb12572a712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Polarization
import Lean
open GRWTSK.Analysis.Polarization Lean Elab Command
open scoped InnerProductSpace
namespace GRWTSK.Analysis.Polarization.Checks
theorem generic_inner_consumer {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 :=
  real_inner_eq_signed_norm_square x y
theorem no_lower_bound_consumer : ¬ ∃ C : ℝ, ∀ x y : ℝ,
    -C ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 :=
  signed_difference_has_no_universal_lower_bound
end GRWTSK.Analysis.Polarization.Checks
elab "#audit_polarization" : command => liftTermElabM do
  let env ← getEnv
  let roots := #[`GRWTSK.Analysis.Polarization.real_inner_eq_signed_norm_square,
    `GRWTSK.Analysis.Polarization.nonnegative_sectors_negative_difference,
    `GRWTSK.Analysis.Polarization.signed_difference_has_no_universal_lower_bound]
  for n in roots do
    let some info := env.find? n | throwError "missing polarization theorem"
    if info.isUnsafe then throwError "unsafe polarization theorem"
    unless info matches .thmInfo _ do throwError "unexpected polarization declaration kind"
    let some proof := info.value? true | throwError "missing polarization proof"
    Meta.checkWithKernel proof
    unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do
      throwError "polarization proof type mismatch"
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved polarization axiom"
    logInfo m!"POLARIZATION_DECL::{n}"
  let some original := env.find? roots[2]! | throwError "missing original consequence proof"
  let some proof := original.value? true | throwError "missing original consequence body"
  unless proof.getUsedConstants.contains roots[0]! do throwError "missing original canonical proof dependency"
  logInfo "POLARIZATION_ORIGINAL_REUSE::no_universal_lower_bound"
  for (consumer,target) in
      #[(`GRWTSK.Analysis.Polarization.Checks.generic_inner_consumer, roots[0]!),
        (`GRWTSK.Analysis.Polarization.Checks.no_lower_bound_consumer, roots[2]!)] do
    let some info := env.find? consumer | throwError "missing synthetic consumer"
    let some proof := info.value? true | throwError "missing synthetic proof"
    unless proof.getUsedConstants.contains target do throwError "missing synthetic canonical dependency"
    for ax in (← collectAxioms consumer) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved synthetic consumer axiom"
    logInfo m!"POLARIZATION_SYNTHETIC_REUSE::{consumer}"
#audit_polarization
```
