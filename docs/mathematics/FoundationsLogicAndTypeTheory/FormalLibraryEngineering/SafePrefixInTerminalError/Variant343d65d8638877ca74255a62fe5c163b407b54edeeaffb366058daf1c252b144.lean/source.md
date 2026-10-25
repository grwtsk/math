# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafePrefixInTerminalError.Variant343d65d8638877ca74255a62fe5c163b407b54edeeaffb366058daf1c252b144

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a69dac7c1a951f33c6143ea60323d946eb2efe65` · SHA-256 `68e7715e16268ff5a3adb04396bb315716b86c918836cc4730542d48b16e1212`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/SafePrefixInTerminalError.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ ∀ (a b : Nat), a + b = b + 2 * a
Remaining goals after safe rules:
  a b : Nat
  ⊢ a + b = b + 2 * a
-/
#guard_msgs in
example : ∀ (a b : Nat), a + b = b + 2 * a := by
  aesop (config := { terminal := true })
```
