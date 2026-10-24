# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Architecture.Variant8269ae47ef20e4bd59b1110483ff7f4980c06acbbdb9691629657246721995b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3cfd6b853082a2187423ff87d65c06c08dbaf7e` · SHA-256 `ba6a17b192cf53dd9450feca53b49e7c45c41d45fbe5b67c1fe2a40a0358ee3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpistemicReceipt.Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EpistemicReceipt.Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/residue/legacy-framework-shaped/src-lib-rendering-shader/retained/core/lean/Think/Epistemology/Adjunction/Architecture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Logic.Mathlib.FiveLayer


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpistemicReceipt.Variant8b99319fd0a8e142e95d094af568c5ee770ea0c5af28f0ececf397f9acf9ad0c

open CategoryTheory

universe u v

namespace Think.Epistemology.Adjunction

structure EpistemicReceipt
    (Log Inf : Type u) [Category.{v} Log] [Category.{v} Inf] where
  L : Log ⥤ Inf
  E : Inf ⥤ Log
  adjunction : L ⊣ E
  unitReceiptHash : String
  counitReceiptHash : String
  triangleReceiptHash : String
  evaluationHash : String
  receiptHash : String
  claimBearing : Bool

def EpistemicReceipt.accepted
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) : Prop :=
  R.claimBearing = false

def EpistemicReceipt.has_adjunction
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) :
    R.L ⊣ R.E :=
by
  exact R.adjunction

theorem EpistemicReceipt.not_claim_bearing_if_accepted
    {Log Inf : Type u} [Category.{v} Log] [Category.{v} Inf]
    (R : EpistemicReceipt Log Inf) :
    R.accepted → R.claimBearing = false :=
by
  intro h
  exact h

end Think.Epistemology.Adjunction
```
