# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Tree.Variant6edc46f342855698e487a0159ac2ad35eff0e2817981c60552dddf9d08339a1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5aa1a55c83dd0560cc38a479656295fc8692d949` · SHA-256 `7cd77c9d14b964522bf8ae508d49c50ea8c18cb0b655c8d6cc34c592cf0ae0ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CTree.Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CTree.Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Catalan/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Catalan.Tree

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.ctree
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CTree.Variant4a5a71f37b0f76ff04cf0e649caedb9437e6dca293ca6f4445aaf28460db26cc

namespace Folder
namespace Catalan

inductive CTree where
  | leaf : CTree
  | node : CTree → CTree → CTree
deriving DecidableEq, Repr

namespace CTree

def internal : CTree → Nat
  | leaf => 0
  | node l r => internal l + internal r + 1

def leaves : CTree → Nat
  | leaf => 1
  | node l r => leaves l + leaves r

def depth : CTree → Nat
  | leaf => 0
  | node l r => Nat.succ (max (depth l) (depth r))

def mirror : CTree → CTree
  | leaf => leaf
  | node l r => node (mirror r) (mirror l)

@[simp]
theorem leaves_eq_internal_add_one :
    ∀ T : CTree, T.leaves = T.internal + 1 := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [leaves, internal, ihl, ihr]
      omega

@[simp]
theorem mirror_mirror :
    ∀ T : CTree, T.mirror.mirror = T := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [mirror, ihl, ihr]

@[simp]
theorem internal_mirror :
    ∀ T : CTree, T.mirror.internal = T.internal := by
  intro T
  induction T with
  | leaf => rfl
  | node l r ihl ihr =>
      simp [mirror, internal, ihl, ihr]
      omega

@[simp]
theorem leaves_mirror :
    ∀ T : CTree, T.mirror.leaves = T.leaves := by
  intro T
  rw [leaves_eq_internal_add_one, internal_mirror, leaves_eq_internal_add_one]

end CTree
end Catalan
end Folder
```
