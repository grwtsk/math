# baseChange_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f860d1d3-321c-6b25-3df2-94e6ed969deb",
  "kind": "lemma",
  "lexical_name": "baseChange_add",
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
  "slug": "basechange-add--ac1359d907ae9268c1b07a77",
  "source": {
    "blob": "06a27b54a2082b64f7fce12256f36508edcdbd5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 622,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant3e51d6e5dd2e54051901a7dccee8bc791b8f9e0f0fb7c4da7eeddac311cbe904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac1359d907ae9268c1b07a773a8257719f93acb1f4c68aff1f5dca7d4670fb0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant3e51d6e5dd2e54051901a7dccee8bc791b8f9e0f0fb7c4da7eeddac311cbe904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f860d1d3-321c-6b25-3df2-94e6ed969deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_add [Algebra R S] [Algebra R F] [Algebra S F] [IsScalarTower R S F] [Algebra R K]
    [Algebra S K] [IsScalarTower R S K] (f : F →ₐ[S] K) {P Q : Fin 3 → F}
    (hP : (W'.baseChange F).toJacobian.Nonsingular P)
    (hQ : (W'.baseChange F).toJacobian.Nonsingular Q) :
    (W'.baseChange K).toJacobian.add (f ∘ P) (f ∘ Q) =
      f ∘ (W'.baseChange F).toJacobian.add P Q := by
  rw [← RingHom.coe_coe, ← WeierstrassCurve.Jacobian.map_add _ hP hQ, map_baseChange]

end Jacobian

/-- An abbreviation for `WeierstrassCurve.Jacobian.Point.fromAffine` for dot notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant3e51d6e5dd2e54051901a7dccee8bc791b8f9e0f0fb7c4da7eeddac311cbe904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant3e51d6e5dd2e54051901a7dccee8bc791b8f9e0f0fb7c4da7eeddac311cbe904.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a27b54a2082b64f7fce12256f36508edcdbd5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
