# Complete source: GRWTSK.Algebra.UniversalAlgebra.Support.Variant4c7fd9c91670d757ef56eba950d91fc7441986d02ca905bcd4cfea98f823077f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbc0d48c05c4843b43f74ec18c91e948ca94f44a` · SHA-256 `490bb4754edd54411311e2e9c32b810038c6342fee572451a2abd9094bbbd5c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SupportId.Variante688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SupportId.Variante688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Algebra/Notation/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Notation.Support


namespace GRWTSK.Algebra.UniversalAlgebra.SupportId.Variante688bf925c2130b291c536d3b93b72c20e41ae95d530c90915921d75a6f52504

namespace Function

variable {α : Type*} [Zero α]

theorem support_id : support (id : α → α) = {0}ᶜ := by
  ext; simp

theorem support_id' {α : Type*} [Zero α] : support (fun x : α ↦ x) = {0}ᶜ :=
  support_id

end Function
```
