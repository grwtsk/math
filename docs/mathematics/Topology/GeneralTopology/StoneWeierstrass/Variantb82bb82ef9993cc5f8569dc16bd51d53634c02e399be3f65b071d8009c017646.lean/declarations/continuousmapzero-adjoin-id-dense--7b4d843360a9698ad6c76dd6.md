# ContinuousMapZero.adjoin_id_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a28ba83-7c8e-9f01-5e90-dc66888de3da",
  "kind": "lemma",
  "lexical_name": "ContinuousMapZero.adjoin_id_dense",
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
  "slug": "continuousmapzero-adjoin-id-dense--7b4d843360a9698ad6c76dd6",
  "source": {
    "blob": "9b73e58fe46e3815e64fd69235c49ca3e651237e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 624,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b4d843360a9698ad6c76dd607124fc5849032dc93530f12e16b5174c4eebe29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a28ba83-7c8e-9f01-5e90-dc66888de3da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousMapZero.adjoin_id_dense {s : Set 𝕜} [Zero s] (h0 : ((0 : s) : 𝕜) = 0)
    [CompactSpace s] : Dense (adjoin 𝕜 {(.id h0 : C(s, 𝕜)₀)} : Set C(s, 𝕜)₀) := by
  have h0' : 0 ∈ s := h0 ▸ (0 : s).property
  rw [dense_iff_closure_eq,
    ← isClosedEmbedding_toContinuousMap.injective.preimage_image (closure _),
    ← isClosedEmbedding_toContinuousMap.closure_image_eq, ← coe_toContinuousMapHom,
    ← NonUnitalStarSubalgebra.coe_map, NonUnitalStarAlgHom.map_adjoin_singleton,
    toContinuousMapHom_apply, toContinuousMap_id h0,
    ← ContinuousMap.ker_evalStarAlgHom_eq_closure_adjoin_id s h0']
  apply Set.eq_univ_of_forall fun f ↦ ?_
  simp only [Set.mem_preimage, toContinuousMapHom_apply, SetLike.mem_coe, RingHom.mem_ker,
    ContinuousMap.evalStarAlgHom_apply, ContinuousMap.coe_coe]
  rw [show ⟨0, h0'⟩ = (0 : s) by ext; exact h0.symm, map_zero f]

/-- An induction principle for `C(s, 𝕜)₀`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b73e58fe46e3815e64fd69235c49ca3e651237e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
