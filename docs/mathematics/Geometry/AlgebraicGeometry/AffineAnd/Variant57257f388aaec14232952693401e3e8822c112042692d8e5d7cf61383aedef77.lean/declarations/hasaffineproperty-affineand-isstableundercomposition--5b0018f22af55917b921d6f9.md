# HasAffineProperty.affineAnd_isStableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:319ce2a5-1f34-a3b8-3d1b-b66faff0c7a1",
  "kind": "lemma",
  "lexical_name": "HasAffineProperty.affineAnd_isStableUnderComposition",
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
  "slug": "hasaffineproperty-affineand-isstableundercomposition--5b0018f22af55917b921d6f9",
  "source": {
    "blob": "5250e2e2a0289c97882a8956b7d5606cce0aa99f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 194,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b0018f22af55917b921d6f9e5b3fdfeb5658bc6b41a75e4913b5804482bf40a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:319ce2a5-1f34-a3b8-3d1b-b66faff0c7a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasAffineProperty.affineAnd_isStableUnderComposition {P : MorphismProperty Scheme.{u}}
    (hA : HasAffineProperty P (affineAnd Q)) (hQ : RingHom.StableUnderComposition Q) :
    P.IsStableUnderComposition where
  comp_mem {X Y Z} f g hf hg := by
    haveI := hA
    wlog hZ : IsAffine Z
    · rw [IsLocalAtTarget.iff_of_iSup_eq_top (P := P) _ (iSup_affineOpens_eq_top _)]
      intro U
      rw [morphismRestrict_comp]
      exact this hA hQ _ _ (IsLocalAtTarget.restrict hf _) (IsLocalAtTarget.restrict hg _) hA U.2
    rw [HasAffineProperty.iff_of_isAffine (P := P) (Q := (affineAnd Q))] at hg
    obtain ⟨hY, hg⟩ := hg
    rw [HasAffineProperty.iff_of_isAffine (P := P) (Q := (affineAnd Q))] at hf
    obtain ⟨hX, hf⟩ := hf
    rw [HasAffineProperty.iff_of_isAffine (P := P) (Q := (affineAnd Q))]
    exact ⟨hX, hQ _ _ hg hf⟩

/-- If `P` is a morphism property affine locally defined by `affineAnd Q`, `P` is stable under
base change if `Q` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5250e2e2a0289c97882a8956b7d5606cce0aa99f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
