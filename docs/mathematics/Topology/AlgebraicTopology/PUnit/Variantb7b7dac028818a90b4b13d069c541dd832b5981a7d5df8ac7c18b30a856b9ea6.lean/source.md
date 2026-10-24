# Complete source: GRWTSK.Topology.AlgebraicTopology.PUnit.Variantb7b7dac028818a90b4b13d069c541dd832b5981a7d5df8ac7c18b30a856b9ea6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f11becf38b36c481cad708b3807fe7e92e5abe40` · SHA-256 `c86332eeec787096fcb7a411e3b88b7fc991150ce402e6aef5aed5d9f43273cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.PunitEquivDiscretePUnit.Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PunitEquivDiscretePUnit.Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/FundamentalGroupoid/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Praneeth Kolichala. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Praneeth Kolichala
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic

/-!
# Fundamental groupoid of punit

The fundamental groupoid of punit is naturally isomorphic to `CategoryTheory.Discrete PUnit`
-/



namespace GRWTSK.Topology.AlgebraicTopology.PunitEquivDiscretePUnit.Variant79de0c736e0912834671da1a683213c52526dd4b4d8705efd3d21298dac7e4b8

noncomputable section

open CategoryTheory

universe u v

namespace Path

instance : Subsingleton (Path PUnit.unit PUnit.unit) :=
  ⟨fun x y => by ext⟩

end Path

namespace FundamentalGroupoid

instance {x y : FundamentalGroupoid PUnit} : Subsingleton (x ⟶ y) := by
  convert_to Subsingleton (Path.Homotopic.Quotient PUnit.unit PUnit.unit)
  apply Quotient.instSubsingletonQuotient

/-- Equivalence of groupoids between fundamental groupoid of punit and punit -/
@[simps]
def punitEquivDiscretePUnit : FundamentalGroupoid PUnit.{u + 1} ≌ Discrete PUnit.{v + 1} where
  functor := Functor.star _
  inverse := (CategoryTheory.Functor.const _).obj ⟨PUnit.unit⟩
  unitIso := NatIso.ofComponents (fun _ => Iso.refl _)
  counitIso := Iso.refl _

end FundamentalGroupoid
```
