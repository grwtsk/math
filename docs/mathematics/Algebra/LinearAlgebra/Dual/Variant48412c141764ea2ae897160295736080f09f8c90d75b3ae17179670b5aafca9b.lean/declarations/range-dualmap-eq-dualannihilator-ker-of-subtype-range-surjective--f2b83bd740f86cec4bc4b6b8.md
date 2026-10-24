# range_dualMap_eq_dualAnnihilator_ker_of_subtype_range_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:138143eb-dc72-44e1-7adc-57ac3790af4c",
  "kind": "theorem",
  "lexical_name": "range_dualMap_eq_dualAnnihilator_ker_of_subtype_range_surjective",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "range-dualmap-eq-dualannihilator-ker-of-subtype-range-surjective--f2b83bd740f86cec4bc4b6b8",
  "source": {
    "blob": "dd807fa9e8b679edb68bc14f586a9f79f282f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1396,
    "line": 1367,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b83bd740f86cec4bc4b6b8f2fb198a3cf395dca83da9b8dd129f049d2eb5ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:138143eb-dc72-44e1-7adc-57ac3790af4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1367–1396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_dualMap_eq_dualAnnihilator_ker_of_subtype_range_surjective (f : M →ₗ[R] M')
    (hf : Function.Surjective f.range.subtype.dualMap) :
    LinearMap.range f.dualMap = f.ker.dualAnnihilator := by
  have rr_surj : Function.Surjective f.rangeRestrict := by
    rw [← LinearMap.range_eq_top, LinearMap.range_rangeRestrict]
  have := range_dualMap_eq_dualAnnihilator_ker_of_surjective f.rangeRestrict rr_surj
  convert this using 1
  -- Porting note: broken dot notation lean4#1910
  · change LinearMap.range
      ((Submodule.subtype <| LinearMap.range f).comp f.rangeRestrict).dualMap = _
    rw [← LinearMap.dualMap_comp_dualMap, LinearMap.range_comp_of_range_eq_top]
    rwa [LinearMap.range_eq_top]
  · apply congr_arg
    exact (LinearMap.ker_rangeRestrict f).symm
#align linear_map.range_dual_map_eq_dual_annihilator_ker_of_subtype_range_surjective LinearMap.range_dualMap_eq_dualAnnihilator_ker_of_subtype_range_surjective

end LinearMap

end CommRing

section VectorSpace

-- Porting note: adding `uK` to avoid timeouts in `dualPairing_eq`
universe uK uV₁ uV₂
variable {K : Type uK} [Field K] {V₁ : Type uV₁} {V₂ : Type uV₂}

variable [AddCommGroup V₁] [Module K V₁] [AddCommGroup V₂] [Module K V₂]

namespace LinearMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean#L1367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd807fa9e8b679edb68bc14f586a9f79f282f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
