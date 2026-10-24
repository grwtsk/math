# hasWitness_of_keatingSnaithMoments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94dfa578-ccaa-e2fe-4bdf-eaa66df32ec3",
  "kind": "theorem",
  "lexical_name": "hasWitness_of_keatingSnaithMoments",
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
  "slug": "haswitness-of-keatingsnaithmoments--8c73410f9559b05a399311bf",
  "source": {
    "blob": "0f99e8a568f85b6c42f1d3adbe515b7e2c802442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjectureConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c73410f9559b05a399311bf3b3473bb0b207e21d8773c4d711a9831199ada2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleConjectureConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94dfa578-ccaa-e2fe-4bdf-eaa66df32ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasWitness_of_keatingSnaithMoments {N : ℕ}
    (bridge : KeatingSnaithMomentWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Shifted moments reach the witness only through an explicit fixed-contour
upgrade. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleConjectureConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleConjectureConnections.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f99e8a568f85b6c42f1d3adbe515b7e2c802442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
