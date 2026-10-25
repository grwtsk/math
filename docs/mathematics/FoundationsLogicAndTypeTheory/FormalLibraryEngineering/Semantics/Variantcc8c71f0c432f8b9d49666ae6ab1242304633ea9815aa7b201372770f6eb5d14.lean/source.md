# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Variantcc8c71f0c432f8b9d49666ae6ab1242304633ea9815aa7b201372770f6eb5d14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `181bc88dacfa4258a682de3342cb377d3558aa56` · SHA-256 `b9b63ef8a08eaf689b19f5a936e4c6851e553a4cd8a8f2bd4b38e37a6f347355`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variant6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Satisfies.Variant6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","mathematical_subject":"Foundations.Unclassified","original_sha256":"6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Formula/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Formula.Eval


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Satisfies.Variant6d228994c2ab3f56ea6b5b1811867d5a4fba13db76e4cb29e5f26e04fda8c529

namespace Boolean

universe u

namespace Formula

variable {α : Type u}

/-- Satisfaction under a valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- A formula true under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- A formula true under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- A formula false under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Formula

end Boolean
```
