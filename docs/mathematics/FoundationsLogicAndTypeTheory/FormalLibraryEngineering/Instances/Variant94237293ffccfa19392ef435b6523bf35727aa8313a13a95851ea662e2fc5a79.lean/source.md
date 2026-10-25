# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Instances.Variant94237293ffccfa19392ef435b6523bf35727aa8313a13a95851ea662e2fc5a79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d6ed9b43133f84998216d126b64ce8f602a7d27` · SHA-256 `05cec098384870aea8f008b1ec8d4c93d10a6b88847f409cdb61bb5e965f6c6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant4bd37966dad64e89b16ee1be88b5eafcb8edc2c07b9f7d3eb58077ea21710617","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bd37966dad64e89b16ee1be88b5eafcb8edc2c07b9f7d3eb58077ea21710617","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.A.Variant4bd37966dad64e89b16ee1be88b5eafcb8edc2c07b9f7d3eb58077ea21710617","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4bd37966dad64e89b16ee1be88b5eafcb8edc2c07b9f7d3eb58077ea21710617","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Instances
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Variant4bd37966dad64e89b16ee1be88b5eafcb8edc2c07b9f7d3eb58077ea21710617

set_option linter.missingDocs false

/--
error: type class instance expected
  Fin 1
-/
#guard_msgs in
#instances Fin 1

/--
info: 1 instance:

instAddNat : Add Nat
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
