# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.NegativeExamples.Variant0779bbb06ae5b5ab77ac723c54ab1c71816b46a75c694912705b8857b7dfacbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `632f7dc194336a85b2851b807220858f42f52108` · SHA-256 `583ace9761652918bec8d14f3419b1dcd3273697b509f4ba33ab1f7fe6a6d9c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BitsOfNat3.Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BitsOfNat3.Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2","mathematical_subject":"Analysis.Integration","original_sha256":"65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/WorldModelPrototype/NegativeExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.WorldModelPrototype.ExactPermutationMatrix
import DAF.Integration.WorldModelPrototype.SupportGraphAbstraction
import BitMatrix.Dynamics.DynamicalZeta
import Mathlib.GroupTheory.Perm.Sign

/-!
# Machine-queryable finite negative examples

These examples prevent the five-model prototype from strengthening a relation
merely because two representations share a finite invariant.  Concrete finite
computation is used only to discharge the displayed examples; no general
theorem is replaced by `native_decide`.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BitsOfNat3.Variant65ec7942b8b49c7cd91f7508c8e1bc71fd1d3168593f9c229ba7fbf8a79712e2

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Algebra.Symmetry
open BitMatrix.Dynamics.DynamicalZeta

namespace DAF.Integration.WorldModelPrototype

/-- Little-endian three-bit encoding used only by the concrete examples. -/
def bitsOfNat3 (value : Nat) : Bits 3 :=
  fun i => decide ((value / (2 ^ i.val)) % 2 = 1)

/-- A transposition of the states encoded by six and seven. -/
def stateSwap67 : BitPerm 3 :=
  Equiv.swap (bitsOfNat3 6) (bitsOfNat3 7)

/-- A transposition of the states encoded by five and six. -/
def stateSwap56 : BitPerm 3 :=
  Equiv.swap (bitsOfNat3 5) (bitsOfNat3 6)

/-- The two state permutations have identical primitive cycle data. -/
theorem stateSwaps_same_cycle_data :
    cycleEulerFactorData stateSwap67 =
      cycleEulerFactorData stateSwap56 := by
  native_decide

/-- Their SAC statistics nevertheless differ. -/
theorem stateSwaps_different_sac :
    sacScore stateSwap67 ≠ sacScore stateSwap56 := by
  native_decide

/-- Same complete cycle data does not determine avalanche behavior. -/
theorem cycle_data_does_not_determine_sac :
    ∃ left right : BitPerm 3,
      cycleEulerFactorData left = cycleEulerFactorData right ∧
      sacScore left ≠ sacScore right :=
  ⟨stateSwap67, stateSwap56,
    stateSwaps_same_cycle_data,
    stateSwaps_different_sac⟩

/-- The identity permutation on two coordinates. -/
def identityFin2 : Equiv.Perm (Fin 2) :=
  1

/-- The odd coordinate transposition on two coordinates. -/
def swapFin2 : Equiv.Perm (Fin 2) :=
  Equiv.swap 0 1

/-- Reduction modulo two makes the two permutation determinants equal. -/
theorem zmod2_determinants_equal :
    (permutationMatrix identityFin2).det =
      (permutationMatrix swapFin2).det := by
  native_decide

/-- Their integral permutation signs are different. -/
theorem integral_signs_different :
    identityFin2.sign ≠ swapFin2.sign := by
  native_decide

/-- A `ZMod 2` determinant cannot recover integral permutation parity. -/
theorem zmod2_determinant_does_not_determine_integral_parity :
    ∃ even odd : Equiv.Perm (Fin 2),
      (permutationMatrix even).det = (permutationMatrix odd).det ∧
      even.sign ≠ odd.sign :=
  ⟨identityFin2, swapFin2,
    zmod2_determinants_equal,
    integral_signs_different⟩

end DAF.Integration.WorldModelPrototype
```
