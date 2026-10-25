# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant32a998f0a78a0e44d7b5af987385803ed0af039af492e2a1f12b277a2500ac5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4be857e21c7a97f27e44d8c99759c6f952ee8415` · SHA-256 `9500935fed45b9e16706ac00391d1ea263e226d259c50504740bc0968c0dad1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.A.Variant9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Instances


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant9985dc7cf967a0ebd30ef9b0741a1b12726d10b841b7acd55d1740f8f1c94d91

set_option linter.missingDocs false

/--
error: type class instance expected
  Fin 1
-/
#guard_msgs in
#instances Fin 1

/--
info: 3 instances:

instAddNat : Add Nat
(prio 100) Lean.Grind.Semiring.toAdd.{u} {α : Type u} [self : Lean.Grind.Semiring α] : Add α
(prio 100) Lean.Grind.AddCommMonoid.toAdd.{u} {M : Type u} [self : Lean.Grind.AddCommMonoid M] : Add M
-/
#guard_msgs in
#instances Add Nat

namespace Testing
class A (α : Type)

/-- info: No instances -/
#guard_msgs in
#instances A

instance (priority := high) : A Nat := ⟨⟩
instance : A Int := ⟨⟩
instance : A Bool := ⟨⟩

/--
info: 3 instances:

(prio 10000) Testing.instANat : A Nat
Testing.instABool : A Bool
Testing.instAInt : A Int
-/
#guard_msgs in
#instances A _

/--
info: 3 instances:

(prio 10000) Testing.instANat : A Nat
Testing.instABool : A Bool
Testing.instAInt : A Int
-/
#guard_msgs in
#instances A

/-- info: No instances -/
#guard_msgs in
#instances (α : Type) → A α

instance : A α := ⟨⟩

/--
info: 5 instances:
(local) inst✝ : A β
(prio 10000) Testing.instANat : A Nat
Testing.instABool : A Bool
Testing.instAInt : A Int
Testing.instA {α : Type} : A α
-/
#guard_msgs in
#instances [A β] : A

/--
info: 1 instance:

Testing.instA {α : Type} : A α
-/
#guard_msgs in
#instances (α : Type) → A α

end Testing
```
