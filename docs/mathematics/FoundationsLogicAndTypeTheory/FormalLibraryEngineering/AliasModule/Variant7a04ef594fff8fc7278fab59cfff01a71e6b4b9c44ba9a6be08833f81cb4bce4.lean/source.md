# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AliasModule.Variant7a04ef594fff8fc7278fab59cfff01a71e6b4b9c44ba9a6be08833f81cb4bce4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c6f43bcbcd1e7ef48849f3dd0fd2e6cc3e75a7e` · SHA-256 `ed29402436ceecd4d9f96607264bada5376664bff92fa409d659a75e45e3a8ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrivThm.Variantf1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PrivThm.Variantf1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/alias_module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module
public import Batteries.Tactic.Alias


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrivThm.Variantf1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474

set_option linter.missingDocs false

theorem priv_thm : 1 + 1 = 2 := rfl

theorem priv_iff : True ↔ True := Iff.rfl

def priv_def : Nat := 5

-- A public alias of a private theorem is allowed: theorem proofs are not exported,
-- so the alias's value referring to the private name does not leak anything.
public alias thm_alias := priv_thm

-- The iff-direction form works for private iff theorems too.
public alias ⟨mp_alias, mpr_alias⟩ := priv_iff

-- A private alias of a private definition is fine.
alias priv_def_alias := priv_def

-- A private alias of a private theorem also works.
alias priv_thm_alias := priv_thm

-- A public alias of a private *definition* must still be rejected, because the
-- definition's value would leak the private implementation.
/-- error: Unknown constant `priv_def` -/
#guard_msgs in
public alias def_alias := priv_def
```
