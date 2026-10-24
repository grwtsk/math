# map_fixingSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e293b0be-b6e1-e5a6-9f76-1a8c0b84ad74",
  "kind": "theorem",
  "lexical_name": "map_fixingSubgroup",
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
  "slug": "map-fixingsubgroup--0e1694cc5253915470b35be6",
  "source": {
    "blob": "44c31058cd1ce88476d70fd5eb494caab8b7fa64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 401,
    "path": "GRWTSK/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1694cc5253915470b35be62957f59870a5409f3d75908c0116d22a98014247",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e293b0be-b6e1-e5a6-9f76-1a8c0b84ad74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_fixingSubgroup (σ : L ≃ₐ[K] L) :
    (E.map σ).fixingSubgroup = (MulAut.conj σ) • E.fixingSubgroup := by
  ext τ
  simp only [coe_map, AlgHom.coe_coe, Set.mem_image, SetLike.mem_coe, AlgEquiv.smul_def,
    forall_exists_index, and_imp, forall_apply_eq_imp_iff₂, Subtype.forall,
    Subgroup.mem_pointwise_smul_iff_inv_smul_mem, ← symm_apply_eq,
    IntermediateField.fixingSubgroup, mem_fixingSubgroup_iff]
  rfl

/-- Let `E` be an intermediateField of a Galois extension `L / K`. If `E / K` is
Galois extension, then `E.fixingSubgroup` is a normal subgroup of `Gal(L / K)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c31058cd1ce88476d70fd5eb494caab8b7fa64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
