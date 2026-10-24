# SuccessfulDescent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:883c4e651f57d977560c539c2976d6e94f321abe1900897f4aba3c01d3e28b05",
  "kind": "def",
  "lexical_name": "SuccessfulDescent",
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
  "slug": "successfuldescent--24debfff5cb5c2f2c61c96e0",
  "source": {
    "blob": "2ed7036abf383125bdefb8bd323a5cc7b384d22e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24debfff5cb5c2f2c61c96e085833e4f0d13d2c0a47ffcf2adb8d6ef37be61e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:883c4e651f57d977560c539c2976d6e94f321abe1900897f4aba3c01d3e28b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SuccessfulDescent {Certificate : Type*} (jurisdiction : LocalJurisdiction Certificate)
    (result : LocalReplayResult Certificate) : Prop :=
  result.translation.localTargetIdentity = jurisdiction.targetIdentity ∧
    result.checkerAccepted = jurisdiction.accepts result.translation.certificate ∧
    result.checkerAccepted = true ∧ result.translation.liveDependencies = ∅

/-- The only object statement produced here comes from a locally sound checking function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ed7036abf383125bdefb8bd323a5cc7b384d22e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
