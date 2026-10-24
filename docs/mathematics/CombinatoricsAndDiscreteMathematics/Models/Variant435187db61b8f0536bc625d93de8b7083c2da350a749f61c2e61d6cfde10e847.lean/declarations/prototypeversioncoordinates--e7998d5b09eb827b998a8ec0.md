# prototypeVersionCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbdde5107157d2daa993cf83fee7663f65c35f47d740ca655d1ca37ef2258669",
  "kind": "def",
  "lexical_name": "prototypeVersionCoordinates",
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
  "slug": "prototypeversioncoordinates--e7998d5b09eb827b998a8ec0",
  "source": {
    "blob": "7029e9d44c77b559d13a989d7a8f52d45ffe2818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7998d5b09eb827b998a8ec042c874c7c83fa7c336729f9498d5be4bf54d9965",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbdde5107157d2daa993cf83fee7663f65c35f47d740ca655d1ca37ef2258669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeVersionCoordinates (model : PrototypeModel) : VersionCoordinates where
  semantic := prototypeSemanticVersion model
  representation :=
    if model = .booleanQuantizedMatrices ∨ model = .hammingGroupActions then
      ⟨0, 2, 0⟩
    else
      ⟨0, 1, 0⟩
  implementation := ⟨0, 1, 0⟩
  checker := ⟨4, 32, 0⟩
  registry := ⟨0, 1, 0⟩

/-- Live source digest of the model-defining module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7029e9d44c77b559d13a989d7a8f52d45ffe2818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
