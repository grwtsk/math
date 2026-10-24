# image_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66cb4afeae676271592ffb515e0707f44280a402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 684,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d617c5e8-e8b7-2b19-c466-c8bfeebc93e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ab1fe88-0b9a-dbe5-6861-e41e25f4e12b",
  "kind": "theorem",
  "lexical_name": "image_basicOpen",
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
  "slug": "image-basicopen--8eea3f2454d11898a3bd3c29",
  "source": {
    "blob": "66cb4afeae676271592ffb515e0707f44280a402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 684,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eea3f2454d11898a3bd3c2979b696221407dcde5ad42b8d4cbb6a3a26a71cd2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab1fe88-0b9a-dbe5-6861-e41e25f4e12b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_basicOpen {X Y : Scheme} (f : X ⟶ Y) [H : IsOpenImmersion f] {U : Opens X}
    (r : X.presheaf.obj (op U)) :
    f.opensFunctor.obj (X.basicOpen r) = Y.basicOpen (Scheme.Hom.invApp f U r) := by
  have e := Scheme.preimage_basicOpen f (Scheme.Hom.invApp f U r)
  rw [Scheme.Hom.invApp] at e
  -- Porting note : was `rw`
  erw [PresheafedSpace.IsOpenImmersion.invApp_app_apply] at e
  rw [Scheme.basicOpen_res, inf_eq_right.mpr _] at e
  rw [← e]
  ext1
  -- Porting note : this `dsimp` was not necessary
  dsimp [Opens.map]
  refine' Set.image_preimage_eq_inter_range.trans _
  erw [Set.inter_eq_left_iff_subset]
  refine' Set.Subset.trans (Scheme.basicOpen_le _ _) (Set.image_subset_range _ _)
  refine' le_trans (Scheme.basicOpen_le _ _) (le_of_eq _)
  ext1
  exact (Set.preimage_image_eq _ H.base_open.inj).symm
#align algebraic_geometry.Scheme.image_basic_open AlgebraicGeometry.Scheme.image_basicOpen

/-- The image of an open immersion as an open set. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cb4afeae676271592ffb515e0707f44280a402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
