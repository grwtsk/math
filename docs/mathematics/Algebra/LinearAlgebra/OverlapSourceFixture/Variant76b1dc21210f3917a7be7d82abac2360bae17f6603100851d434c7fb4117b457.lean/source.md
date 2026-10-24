# Complete source: GRWTSK.Algebra.LinearAlgebra.OverlapSourceFixture.Variant76b1dc21210f3917a7be7d82abac2360bae17f6603100851d434c7fb4117b457

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `683af1f1f94ce32b3248af6efc50d10babfb0eaa` · SHA-256 `76b1dc21210f3917a7be7d82abac2360bae17f6603100851d434c7fb4117b457`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceOverlapTransport

/-!
A controlled actual-L2 fixture for the competing claim that identical retained
labels transport the source state unchanged. The inventory {1} is this fixture's
declared carrier; it is not a replacement for either actual long arithmetic
inventory. The existing literal source-scale obstruction supplies non-equality.
Direction: grwtsk contributors; construction: OpenAI Codex.
-/

noncomputable section
namespace FormalResearch.MutationGame.OverlapSourceFixture
open Matrix SourceRefinement SourceOverlapTransport
open FormalResearch.RiemannHypothesis
open SourceArithmeticOrbit SourceOrbitCoordinates SourceReflectionDuality
open SourcePureRotationObstruction

/-- A single unshifted original channel synthesizes precisely its source. -/
theorem singleton_original_profile (q : ComplexL2) :
    finiteProfile q {1} false false (fun _ => (1 : ℂ)) = q := by
  simp [finiteProfile, orbitAtom, signedLog, SourceMangoldtInteraction.translation_zero]

/-- Identical labels preserve coefficient coordinates, while a changed source
remains an exact separate ambient term. -/
theorem same_labels_source_increment (qB qA : ComplexL2) :
    synthesis qB {1} (retentionMatrix {1} {1} *ᵥ
        embedChannel {1} false false (fun _ => (1 : ℂ))) -
      synthesis qA {1} (embedChannel {1} false false (fun _ => (1 : ℂ))) =
      qB - qA := by
  rw [retentionMatrix_self, Matrix.one_mulVec, synthesis_embedChannel,
    synthesis_embedChannel, singleton_original_profile, singleton_original_profile]

/-- The actual normalized sources at scales two and one give nonzero retained
source work even with exactly the same coordinate labels. This refutes dropping
that term; it does not refute an arithmetic estimate or assert a norm budget. -/
theorem actual_same_labels_increment_ne_zero :
    synthesis (originalSourceL2 2 (by norm_num)) {1}
        (retentionMatrix {1} {1} *ᵥ embedChannel {1} false false (fun _ => (1 : ℂ))) -
      synthesis (originalSourceL2 1 (by norm_num)) {1}
        (embedChannel {1} false false (fun _ => (1 : ℂ))) ≠ 0 := by
  rw [same_labels_source_increment]
  exact sub_ne_zero.mpr originalSourceL2_two_ne_one

end FormalResearch.MutationGame.OverlapSourceFixture
```
