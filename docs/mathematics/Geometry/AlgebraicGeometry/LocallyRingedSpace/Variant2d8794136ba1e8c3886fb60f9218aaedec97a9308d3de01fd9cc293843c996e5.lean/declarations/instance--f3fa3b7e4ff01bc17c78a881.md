# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1b755a994e0064c57fa5af6197c77bd18242cf51c605d4800ae83658a8d2992",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f3fa3b7e4ff01bc17c78a881",
  "source": {
    "blob": "097aa0ba2b2672384041a6fa65040b9d5c5c1524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 202,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3fa3b7e4ff01bc17c78a881f9c56323c399f84d2431376b13d133a32d7ba7ba",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1b755a994e0064c57fa5af6197c77bd18242cf51c605d4800ae83658a8d2992`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (U : Opens M) :
    LocallyRingedSpace.IsOpenImmersion
      (ChartedSpace.locallyRingedSpaceMap _ (contMDiff_subtype_val (I := IM) (U := U))) where
  base_open := U.isOpenEmbedding'
  c_iso V := by
    rw [ConcreteCategory.isIso_iff_bijective]
    refine ⟨fun a b hab ↦ Subtype.ext ?_, fun ⟨g, hg⟩ ↦ ?_⟩
    · ext ⟨x, y, hy, rfl⟩
      exact congr($(hab).1 ⟨y, ⟨y, hy, rfl⟩⟩)
    · let a : TopCat.of U ⟶ TopCat.of M := TopCat.ofHom ⟨Subtype.val, continuous_subtype_val⟩
      have ha : IsOpenEmbedding a.hom := U.isOpenEmbedding'
      let V' : Opens U := (Opens.map a).obj (ha.isOpenMap.functor.obj V)
      let b : V' ≃ₜ ha.isOpenMap.functor.obj V :=
        U.isOpenEmbedding'.homeomorphOfSubsetRange <| Set.image_subset_range _ V.1
      refine ⟨⟨g ∘ b.symm, ContMDiff.comp hg ?_⟩, Subtype.ext <| funext fun _ ↦ ?_⟩
      · refine (ContMDiff.subtypeVal_comp_iff V' _).mp ?_
        rw [← ContMDiff.subtypeVal_comp_iff]
        convert! contMDiff_subtype_val
        ext x
        exact congr($(b.apply_symm_apply x).1)
      · change g _ = _
        congr
        apply b.symm_apply_apply

/-- Viewing a manifold as a locally ringed space commutes with restriction to open subsets. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097aa0ba2b2672384041a6fa65040b9d5c5c1524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
