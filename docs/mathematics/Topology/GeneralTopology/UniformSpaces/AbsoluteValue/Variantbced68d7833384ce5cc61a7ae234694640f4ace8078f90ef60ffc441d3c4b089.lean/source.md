# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.AbsoluteValue.Variantbced68d7833384ce5cc61a7ae234694640f4ace8078f90ef60ffc441d3c4b089

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40fc06374a982d75a13027e1b9ddbffbf8ccf85a` · SHA-256 `f3440658528700b59cb3126425ef821bbe48c601bb991bebbfa0a854cb8a0a9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformSpace.Variant70ef42beb654c8edf114686dc80f495feb508cc52b91a3a78a1274a6dc7ba092","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70ef42beb654c8edf114686dc80f495feb508cc52b91a3a78a1274a6dc7ba092","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.UniformSpace.Variant70ef42beb654c8edf114686dc80f495feb508cc52b91a3a78a1274a6dc7ba092","mathematical_subject":"Topology.UniformSpaces","original_sha256":"70ef42beb654c8edf114686dc80f495feb508cc52b91a3a78a1274a6dc7ba092","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/UniformSpace/AbsoluteValue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
module

public import Mathlib.Algebra.Order.AbsoluteValue.Basic
public import Mathlib.Algebra.Order.Field.Basic
public import Mathlib.Topology.UniformSpace.OfFun

/-!
# Uniform structure induced by an absolute value

We build a uniform space structure on a commutative ring `R` equipped with an absolute value into
a linear ordered field `𝕜`. Of course in the case `R` is `ℚ`, `ℝ` or `ℂ` and
`𝕜 = ℝ`, we get the same thing as the metric space construction, and the general construction
follows exactly the same path.

## References

* [N. Bourbaki, *Topologie générale*][bourbaki1966]

## Tags

absolute value, uniform spaces
-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformSpace.Variant70ef42beb654c8edf114686dc80f495feb508cc52b91a3a78a1274a6dc7ba092

@[expose] public section

open Set Filter

open scoped Uniformity

namespace AbsoluteValue

variable {𝕜 : Type*} [Field 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜]
variable {R : Type*} [CommRing R] (abv : AbsoluteValue R 𝕜)

/-- The uniform structure coming from an absolute value. -/
@[instance_reducible]
def uniformSpace : UniformSpace R :=
  .ofFun (fun x y => abv (y - x)) (by simp) (fun x y => abv.map_sub y x)
    (fun _ _ _ => (abv.sub_le _ _ _).trans_eq (add_comm _ _))
    fun ε ε0 => ⟨ε / 2, half_pos ε0, fun _ h₁ _ h₂ => (add_lt_add h₁ h₂).trans_eq (add_halves ε)⟩

theorem hasBasis_uniformity :
    𝓤[abv.uniformSpace].HasBasis ((0 : 𝕜) < ·) fun ε => { p : R × R | abv (p.2 - p.1) < ε } :=
  UniformSpace.hasBasis_ofFun (exists_gt _) _ _ _ _ _

end AbsoluteValue
```
