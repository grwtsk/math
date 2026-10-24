# range_mapAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba868ecae0992f2d4099fbdf3717bdfa4bff64d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:809578b8-5716-0301-abbd-baf40dc7ae0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2e8a54e-7d1e-84ba-eaf8-999cd2f23c4a",
  "kind": "lemma",
  "lexical_name": "range_mapAlgHom",
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
  "slug": "range-mapalghom--d4f5368770b45a49167c70d2",
  "source": {
    "blob": "ba868ecae0992f2d4099fbdf3717bdfa4bff64d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 559,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4f5368770b45a49167c70d27811c61749cfe1b578fe3f83f0aecce0cf5ec75f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2e8a54e-7d1e-84ba-eaf8-999cd2f23c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_mapAlgHom [CommSemiring S₂] [Algebra R S₁] [Algebra R S₂] (f : S₁ →ₐ[R] S₂) :
    (mapAlgHom f).range.toSubmodule = coeffsIn σ f.range.toSubmodule := by
  ext
  rw [Subalgebra.mem_toSubmodule, ← SetLike.mem_coe, AlgHom.coe_range, mapAlgHom, AlgHom.coe_mk,
    mem_range_map_iff_coeffs_subset, mem_coeffsIn_iff_coeffs_subset]
  simp [Algebra.ofId_apply, Set.subset_def]

end Map

section Aeval

/-! ### The algebra of multivariate polynomials -/


variable [Algebra R S₁] [CommSemiring S₂]
variable (f : σ → S₁)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant5e413732477a8940ae826e42aa49ca902be81d09da93b0d441c8dd5386e56adf.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba868ecae0992f2d4099fbdf3717bdfa4bff64d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
