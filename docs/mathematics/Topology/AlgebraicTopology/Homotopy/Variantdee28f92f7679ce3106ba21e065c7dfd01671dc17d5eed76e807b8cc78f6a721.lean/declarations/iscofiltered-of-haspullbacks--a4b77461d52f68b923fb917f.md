# isCofiltered_of_hasPullbacks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fa55e96517ed81b383581d4325e41907fff165a01728df8793efd84d12d05e1",
  "kind": "instance",
  "lexical_name": "isCofiltered_of_hasPullbacks",
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
  "slug": "iscofiltered-of-haspullbacks--a4b77461d52f68b923fb917f",
  "source": {
    "blob": "e3a1a1458883e1e8722ecefcbda6610a65933dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 307,
    "path": "GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4b77461d52f68b923fb917f2f7de812dce717e4099f622abb870969bfaab5c5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fa55e96517ed81b383581d4325e41907fff165a01728df8793efd84d12d05e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCofiltered_of_hasPullbacks [HasPullbacks C] : IsCofiltered (J.HOneHypercover S) where
  cone_objs {E F} :=
    ⟨⟨E.1.inter F.1⟩, Quot.mk _ (PreOneHypercover.interFst _ _),
      Quot.mk _ (PreOneHypercover.interSnd _ _), ⟨⟩⟩
  cone_maps {X Y} f g := by
    obtain ⟨(f : X.1 ⟶ Y.1), rfl⟩ := (toHOneHypercover J S).map_surjective f
    obtain ⟨(g : X.1 ⟶ Y.1), rfl⟩ := (toHOneHypercover J S).map_surjective g
    obtain ⟨W, h, ⟨H⟩⟩ := OneHypercover.exists_nonempty_homotopy f g
    use (toHOneHypercover J S).obj W, (toHOneHypercover J S).map h
    rw [← Functor.map_comp, ← Functor.map_comp]
    exact H.map_eq_map

end HOneHypercover

end GrothendieckTopology

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Homotopy/Variantdee28f92f7679ce3106ba21e065c7dfd01671dc17d5eed76e807b8cc78f6a721.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3a1a1458883e1e8722ecefcbda6610a65933dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
