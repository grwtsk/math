# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variantf468362b35e66be747e8256584ee90b1495416bea776777e45aebc009e3737a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ec157830eb74cebb3891c54d1c697b0368e5883` · SHA-256 `528b1375ee98ce1b3cdc1975442930d77dd6544e2812804de55ed78f740719bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variantda40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.A.Variantda40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"da40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/.lake/packages/batteries/BatteriesTest/instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Instances


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variantda40d8a7ba3dd82d16e873501e6dd5fa2b09fc9539be875d2d9b9090e9093e74

set_option linter.missingDocs false

/--
error: type class instance expected
  Fin 1
-/
#guard_msgs in
#instances Fin 1

/--
info: 2 instances:

instAddNat : Add Nat
(prio 100) Lean.Grind.CommRing.toAdd.{u} {α : Type u} [self : Lean.Grind.CommRing α] : Add α
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
