# HasAffineProperty.affineAnd_le_isAffineHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc84dd7d-6f9f-8dd4-2c12-0f67180487c1",
  "kind": "lemma",
  "lexical_name": "HasAffineProperty.affineAnd_le_isAffineHom",
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
  "slug": "hasaffineproperty-affineand-le-isaffinehom--3e6801da3345f625f23e4d24",
  "source": {
    "blob": "5250e2e2a0289c97882a8956b7d5606cce0aa99f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 247,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e6801da3345f625f23e4d24acd45610271806a73830178fd6dad2a4cb8f26c5",
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

Occurrence: `result:fc84dd7d-6f9f-8dd4-2c12-0f67180487c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasAffineProperty.affineAnd_le_isAffineHom (P : MorphismProperty Scheme.{u})
    (hA : HasAffineProperty P (affineAnd Q)) : P ≤ @IsAffineHom := by
  intro X Y f hf
  wlog hY : IsAffine Y
  · rw [IsLocalAtTarget.iff_of_iSup_eq_top (P := @IsAffineHom) _ (iSup_affineOpens_eq_top _)]
    intro U
    exact this P hA _ (IsLocalAtTarget.restrict hf _) U.2
  rw [HasAffineProperty.iff_of_isAffine (P := P) (Q := (affineAnd Q))] at hf
  rw [HasAffineProperty.iff_of_isAffine (P := @IsAffineHom)]
  exact hf.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant57257f388aaec14232952693401e3e8822c112042692d8e5d7cf61383aedef77.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5250e2e2a0289c97882a8956b7d5606cce0aa99f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
