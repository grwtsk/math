# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SAT.Variantc0a79e5704ae64b3f910ba5132508905301a4447d0671d3895ae8ec71b3e5a63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2721b618711b2a367dfa9615c2b4ab5bcf70ecc3` · SHA-256 `b43205e5bba21ede1ae7a22903541f2ee1aaf723d5728df4c099c500acba7e2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitNot1.Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BitNot1.Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/SAT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Reduction.SAT
import Mathlib.Tactic.FinCases

/-!
# Tests for the SAT reduction development
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitNot1.Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002

namespace BitMatrix.Tests.SAT

open BitMatrix.Reduction.SAT

private def σ000 : Assignment
  | 0 => false
  | 1 => false
  | 2 => false
  | _ => false

private def σ011 : Assignment
  | 0 => false
  | 1 => true
  | 2 => true
  | _ => false

example : CNF.Holds σ000 (encodeGate 2 (.xor 0 1)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, encodeGate, σ000]

example : CNF.Holds σ011 (encodeGate 2 (.xor 0 1)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, encodeGate, σ011]

example : ¬ CNF.Holds σ000 (encodeGate 2 (.const true)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, Literal.forBit,
    encodeGate, σ000]

example (σ : Assignment) :
    CNF.Holds σ (encodeGate 2 (.conj 0 1)) ↔
      σ 2 = (σ 0 && σ 1) := by
  simpa [Gate.eval] using encodeGate_correct σ 2 (.conj 0 1)

example (σ : Assignment) :
    CNF.Holds σ (encodeGate 2 (.xor 0 1)) ↔
      σ 2 = (σ 0 != σ 1) := by
  simpa [Gate.eval] using encodeGate_correct σ 2 (.xor 0 1)

example (gates : List Gate) :
    (encodeFrom 7 gates).length ≤ 4 * gates.length :=
  encodeFrom_length_le_four_mul 7 gates

private def bitNot1 : Bits 1 → Bits 1 :=
  fun x _ => !(x 0)

example (target : Bits 1) :
    CNF.Satisfiable (truthTableCNF bitNot1 target) ↔
      ∃ input, bitNot1 input = target :=
  every_fixed_width_function_reduces_to_sat bitNot1 target

private def identity1 : Bits 1 → Bits 1 := id

private theorem identity1_bijective : Function.Bijective identity1 := by
  constructor
  · intro a b h
    simpa [identity1] using h
  · intro y
    exact ⟨y, rfl⟩

example (target : Bits 1) :
    ∃! input, identity1 input = target :=
  bijective_has_unique_preimage identity1 identity1_bijective target


private def identityCircuit1 : Circuit 1 1 where
  gates := []
  outputs := fun _ => ⟨0, by decide⟩

private theorem identityCircuit1_implements :
    identityCircuit1.Implements identity1 := by
  constructor
  · intro σ _
    funext i
    fin_cases i
    rfl
  · intro input
    exact ⟨inputAssignment input, readInput_inputAssignment input, trivial⟩

example (target : Bits 1) :
    CNF.Satisfiable (identityCircuit1.toCNF target) ↔
      ∃ input, identity1 input = target :=
  identityCircuit1.satisfiable_toCNF_iff_preimage
    identity1 identityCircuit1_implements target

example (target : Bits 1) :
    ∃! input, identityCircuit1.InputWitness target input :=
  bijective_circuit_has_unique_sat_input
    identityCircuit1 identity1 identityCircuit1_implements
    identity1_bijective target

end BitMatrix.Tests.SAT
```
