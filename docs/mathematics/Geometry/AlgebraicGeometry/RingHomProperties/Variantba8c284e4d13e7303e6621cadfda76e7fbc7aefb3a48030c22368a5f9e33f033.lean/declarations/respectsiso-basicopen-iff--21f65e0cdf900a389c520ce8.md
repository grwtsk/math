# RespectsIso.basicOpen_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21901ea8-e9fa-4781-db0f-577ebe9e2c6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1feefe8-3b56-8375-f821-44234f372c63",
  "kind": "theorem",
  "lexical_name": "RespectsIso.basicOpen_iff",
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
  "slug": "respectsiso-basicopen-iff--21f65e0cdf900a389c520ce8",
  "source": {
    "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 47,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f65e0cdf900a389c520ce8f785dc7d986e75db0471d6f325ce325a60d7508a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1feefe8-3b56-8375-f821-44234f372c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RespectsIso.basicOpen_iff (hP : RespectsIso @P) {X Y : Scheme} [IsAffine X] [IsAffine Y]
    (f : X ⟶ Y) (r : Y.presheaf.obj (Opposite.op ⊤)) :
    P (Scheme.Γ.map (f ∣_ Y.basicOpen r).op) ↔
    P (@IsLocalization.Away.map (Y.presheaf.obj (Opposite.op ⊤)) _
      (Y.presheaf.obj (Opposite.op <| Y.basicOpen r)) _ _ (X.presheaf.obj (Opposite.op ⊤)) _
      (X.presheaf.obj (Opposite.op <| X.basicOpen (Scheme.Γ.map f.op r))) _ _
      (Scheme.Γ.map f.op) r _ <| @isLocalization_away_of_isAffine X _ (Scheme.Γ.map f.op r)) := by
  rw [Γ_map_morphismRestrict, hP.cancel_left_isIso, hP.cancel_right_isIso,
    ← hP.cancel_right_isIso (f.val.c.app (Opposite.op (Y.basicOpen r)))
      (X.presheaf.map (eqToHom (Scheme.preimage_basicOpen f r).symm).op), ← eq_iff_iff]
  congr
  delta IsLocalization.Away.map
  refine' IsLocalization.ringHom_ext (Submonoid.powers r) _
  generalize_proofs h1 h2 h3
  haveI i1 := @isLocalization_away_of_isAffine X _ (Scheme.Γ.map f.op r)
  -- Porting note : needs to be very explicit here
  convert
    (@IsLocalization.map_comp (hy := h3) (Y.presheaf.obj <| Opposite.op (Scheme.basicOpen Y r))
    _ _ (isLocalization_away_of_isAffine _) _ _ _ i1).symm using 1
  change Y.presheaf.map _ ≫ _ = _ ≫ X.presheaf.map _
  rw [f.val.c.naturality_assoc]
  erw [← X.presheaf.map_comp]
  congr 1
#align ring_hom.respects_iso.basic_open_iff RingHom.RespectsIso.basicOpen_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
