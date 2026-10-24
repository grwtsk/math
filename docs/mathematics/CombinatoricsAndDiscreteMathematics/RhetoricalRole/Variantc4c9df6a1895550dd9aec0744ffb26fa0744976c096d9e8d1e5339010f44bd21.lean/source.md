# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RhetoricalRole.Variantc4c9df6a1895550dd9aec0744ffb26fa0744976c096d9e8d1e5339010f44bd21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2da68a04d4d7819451943243c8daa08ed27624d3` · SHA-256 `7ad2ea067b20ac70dd99789599d7aa1ef71e6872bde455a16008b6d80782e705`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RhetoricalRole.Variant8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RhetoricalRole.Variant8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Universe/RhetoricalRole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Id
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.DeriveFintype

/-!
# Transport-level rhetorical role vocabulary

The closed seven-role vocabulary is owned by the lower-level universe layer
because theorem-cell and external-response locators use it without importing
the rhetorical Hilbert implementation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RhetoricalRole.Variant8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2

namespace DAF.Universe

/-- Canonical closed rhetorical-role vocabulary. -/
inductive RhetoricalRole where
  | base
  | premise
  | conclusion
  | positive
  | negative
  | source
  | target
  deriving DecidableEq, Repr, Fintype

/-- Canonical transport tag.  Downstream runtimes may mirror this only as a
checked adapter to a Lean-generated manifest. -/
def RhetoricalRole.tag : RhetoricalRole → Nat
  | .base => 0
  | .premise => 1
  | .conclusion => 2
  | .positive => 3
  | .negative => 4
  | .source => 5
  | .target => 6

/-- Canonical lower-case transport spelling. -/
def RhetoricalRole.name : RhetoricalRole → String
  | .base => "base"
  | .premise => "premise"
  | .conclusion => "conclusion"
  | .positive => "positive"
  | .negative => "negative"
  | .source => "source"
  | .target => "target"

theorem RhetoricalRole.tag_injective : Function.Injective RhetoricalRole.tag := by
  intro left right equality
  cases left <;> cases right <;> simp_all [RhetoricalRole.tag]

end DAF.Universe
```
