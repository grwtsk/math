# actualUnitTiltEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c0c68060172cddb61b38b1503a74a1510d7a7659f67cf6ee47c6dfc9ab9cb1a",
  "kind": "def",
  "lexical_name": "actualUnitTiltEnergy",
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
  "slug": "actualunittiltenergy--6a31bbcfd84119983150a058",
  "source": {
    "blob": "a31dc0f484562b4891fb9516a8e92201de24ad7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a31bbcfd84119983150a058ddb7505db12af6b7c95a4d3b8f41374bf4dd74fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c0c68060172cddb61b38b1503a74a1510d7a7659f67cf6ee47c6dfc9ab9cb1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualUnitTiltEnergy (A : ℝ) : ℝ :=
  ∫ x in -A..A, actualUnitTilt A x ^ 2

/-- The actual tilted square has a genuine whole-line integrability proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31dc0f484562b4891fb9516a8e92201de24ad7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
