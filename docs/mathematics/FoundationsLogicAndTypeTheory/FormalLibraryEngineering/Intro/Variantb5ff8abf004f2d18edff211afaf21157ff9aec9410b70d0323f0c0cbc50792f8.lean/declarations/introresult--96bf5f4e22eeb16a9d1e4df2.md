# IntroResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:938d1cfebc3f6b4378d2854fd1463a22a1bf97dba4ce6c4b02a3a2e6a1374f48",
  "kind": "inductive",
  "lexical_name": "IntroResult",
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
  "slug": "introresult--96bf5f4e22eeb16a9d1e4df2",
  "source": {
    "blob": "85653d8956e3ac9952558d4e6fb74ab4eaa4b09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96bf5f4e22eeb16a9d1e4df28078f255e4c5f09e213bd907ca70c5b4b7fffef8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:938d1cfebc3f6b4378d2854fd1463a22a1bf97dba4ce6c4b02a3a2e6a1374f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private inductive IntroResult where
  | done (goal : Goal)
  | newHyp (fvarId : FVarId) (goal : Goal)
  | newDepHyp (goal : Goal)
  | newLocal (fvarId : FVarId) (goal : Goal)
  deriving Inhabited

/--
Returns `true` if `e` is marked with the `alreadyNorm` gadget.
See `alreadyNorm` documentation for additional details
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85653d8956e3ac9952558d4e6fb74ab4eaa4b09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
