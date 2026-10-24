# canonicalMap_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:409d440a-2ff4-5f7a-20f2-02c87f099de2",
  "kind": "theorem",
  "lexical_name": "canonicalMap_of",
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
  "slug": "canonicalmap-of--81c08c61a34329fbd400a7f0",
  "source": {
    "blob": "2f13d91be2af9c9251c524b813d923d60bd3aa22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 184,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81c08c61a34329fbd400a7f0369ed9a4ad913310e68387f6dff6e01bf24202b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:409d440a-2ff4-5f7a-20f2-02c87f099de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalMap_of (f : R →+* S) (a b r : R) (c : Coordinate a b) :
    canonicalMap f a b r (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b) c) =
      AdicCompletion.of (curveSectionIdeal (f a) (f b) (f r)) (Coordinate (f a) (f b))
        (coordinateBaseChange f a b c) := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection (f a) (f b) (f r) n
      (canonicalMap f a b r (AdicCompletion.of _ _ c)) =
    AdicCompletion.evalₐ (curveSectionIdeal (f a) (f b) (f r)) n
      (AdicCompletion.of _ _ (coordinateBaseChange f a b c))
  rw [canonicalMap_projection]
  change powerMap f a b r n (AdicCompletion.evalₐ (curveSectionIdeal a b r) n
      (AdicCompletion.of _ _ c)) = _
  rw [AdicCompletion.evalₐ_of, AdicCompletion.evalₐ_of, powerMap_mk]

/-- Across different coefficient rings, scalars follow f rather than remaining fixed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f13d91be2af9c9251c524b813d923d60bd3aa22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
