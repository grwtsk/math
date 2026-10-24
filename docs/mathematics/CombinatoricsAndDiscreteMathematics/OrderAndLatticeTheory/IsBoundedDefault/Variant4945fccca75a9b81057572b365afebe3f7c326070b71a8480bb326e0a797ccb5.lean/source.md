# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsBoundedDefault.Variant4945fccca75a9b81057572b365afebe3f7c326070b71a8480bb326e0a797ccb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66a5a136c4d945abf91526fb136b3f11814f399d` · SHA-256 `7f1daf1171bc3998c56e4300214405d8ba4c8cad1f805a3283cddf2723ae7895`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EReal.Variant74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.EReal.Variant74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294","mathematical_subject":"Algebra.OrderTheory","original_sha256":"74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/IsBoundedDefault.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.EReal.Basic
import Mathlib.Order.LiminfLimsup


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EReal.Variant74c4863b5aab398ba26f7b06483d820a808dca8196587d6daa7578ecb491f294

open Filter

variable {α : Type*} {f : Filter α} {u v : α → EReal} (h : u ≤ᶠ[f] v)
-- proof term
example : limsup u f ≤ limsup v f := limsup_le_limsup h

-- exact
example : limsup u f ≤ limsup v f := by exact limsup_le_limsup h

-- apply
example : limsup u f ≤ limsup v f := by apply limsup_le_limsup h
```
