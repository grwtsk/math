# HasAffineProperty.affineAnd_isStableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d02f353760d42938ab9c1881c571d6c52e0cd42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c47b1395-cfa7-0bca-10c7-26ba348a0eca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfa69ce7-ad63-58ba-3782-24fc335da5b1",
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
  "slug": "hasaffineproperty-affineand-isstableundercomposition--a3e7c954ac428e7379abcfbc",
  "source": {
    "blob": "6d02f353760d42938ab9c1881c571d6c52e0cd42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 186,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e7c954ac428e7379abcfbc9acb8e90610101c23e63ad004395e999d1e3e721",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfa69ce7-ad63-58ba-3782-24fc335da5b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–204.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d02f353760d42938ab9c1881c571d6c52e0cd42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
