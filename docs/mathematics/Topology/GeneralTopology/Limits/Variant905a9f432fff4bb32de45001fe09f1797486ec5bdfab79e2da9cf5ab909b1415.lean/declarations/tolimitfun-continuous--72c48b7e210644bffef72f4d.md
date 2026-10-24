# toLimitFun_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40fe9556-9979-75ae-4477-98ffba30f9a0",
  "kind": "lemma",
  "lexical_name": "toLimitFun_continuous",
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
  "slug": "tolimitfun-continuous--72c48b7e210644bffef72f4d",
  "source": {
    "blob": "bc23998e6ffceb0d969face419f665964a2a9553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72c48b7e210644bffef72f4d44e96d0ed2232862149f4d5e786117721f21e990",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40fe9556-9979-75ae-4477-98ffba30f9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLimitFun_continuous (P : ProfiniteGrp.{u}) : Continuous (toLimitFun P) := by
  apply continuous_induced_rng.mpr (continuous_pi _)
  intro H
  dsimp only [Functor.comp_obj, CompHausLike.coe_of, Functor.comp_map,
    CompHausLike.toCompHausLike_map, CompHausLike.compHausLikeToTop_map, Set.mem_ofPred_eq,
    toLimitFun, MonoidHom.coe_mk, OneHom.coe_mk, Function.comp_apply]
  apply Continuous.mk
  intro s _
  rw [← (Set.biUnion_preimage_singleton QuotientGroup.mk s)]
  refine isOpen_iUnion (fun i ↦ isOpen_iUnion (fun _ ↦ ?_))
  convert! IsOpen.leftCoset H.toOpenSubgroup.isOpen' (Quotient.out i)
  ext x
  simp only [Set.mem_preimage, Set.mem_singleton_iff]
  nth_rw 1 [← QuotientGroup.out_eq' i, eq_comm, QuotientGroup.eq]
  exact Iff.symm (Set.mem_smul_set_iff_inv_smul_mem)

/-- The morphism in the category of `ProfiniteGrp` from a profinite group `P` to
the projective limit of its quotients by open normal subgroups ordered by inclusion -/
@[to_additive /-- The morphism in the category of `ProfiniteAddGrp` from a profinite additive group
`P` to the projective limit of its quotients by open normal subgroups ordered by inclusion -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc23998e6ffceb0d969face419f665964a2a9553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
