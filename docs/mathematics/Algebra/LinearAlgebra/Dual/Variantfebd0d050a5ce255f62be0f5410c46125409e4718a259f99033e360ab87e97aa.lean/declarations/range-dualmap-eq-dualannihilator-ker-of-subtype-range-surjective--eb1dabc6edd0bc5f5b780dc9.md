# range_dualMap_eq_dualAnnihilator_ker_of_subtype_range_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fed0ed3fe2854565134bcbc28e9037c1c1c32d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/febd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83333fe8-91e9-1633-6c06-707a223c4950",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92bf7fc-eb03-58ba-01b2-d53d9eca382a",
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
  "slug": "range-dualmap-eq-dualannihilator-ker-of-subtype-range-surjective--eb1dabc6edd0bc5f5b780dc9",
  "source": {
    "blob": "5fed0ed3fe2854565134bcbc28e9037c1c1c32d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1388,
    "line": 1359,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1dabc6edd0bc5f5b780dc9d595b5de371befb68a40a69b09cbe29ed69ea232",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92bf7fc-eb03-58ba-01b2-d53d9eca382a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1359–1388.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variantfebd0d050a5ce255f62be0f5410c46125409e4718a259f99033e360ab87e97aa.lean#L1359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fed0ed3fe2854565134bcbc28e9037c1c1c32d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
