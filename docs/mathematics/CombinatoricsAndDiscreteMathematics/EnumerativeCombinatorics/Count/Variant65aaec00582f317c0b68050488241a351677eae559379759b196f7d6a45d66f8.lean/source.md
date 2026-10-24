# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Count.Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77dc04be734d240e4db13c53fb8e6cc5a7bc60eb` · SHA-256 `e2d6b6dc4d34089489c9f0c5c7fbc8e588ef0800c83956d5308212b3cdfbef03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.Catalan.Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"ffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Catalan/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.Tree
import Mathlib.Combinatorics.Enumerative.Catalan.Basic

/-!
# Folder.Catalan.Count

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.count
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84

namespace Folder
namespace Catalan

abbrev catalan : Nat → Nat :=
  _root_.catalan

@[simp]
theorem catalan_zero :
    catalan 0 = 1 :=
  _root_.catalan_zero

theorem catalan_succ (n : Nat) :
    catalan (n + 1) =
      Finset.sum (Finset.range (n + 1))
        (fun i => catalan i * catalan (n - i)) :=
  by
    simpa [catalan, Finset.sum_range] using _root_.catalan_succ n

/--
The finite enumeration/cardinality theorem for Catalan trees is intentionally
left as a named target rather than asserted. The proved content in this module
is the recurrence that future enumeration proofs should match.
-/
def treesOfInternalCardinalityTarget : Prop :=
  ∃ treesOfInternal : Nat → Finset CTree,
    ∀ n,
      (∀ T : CTree, T ∈ treesOfInternal n ↔ T.internal = n) ∧
      (treesOfInternal n).card = catalan n

end Catalan
end Folder
```
