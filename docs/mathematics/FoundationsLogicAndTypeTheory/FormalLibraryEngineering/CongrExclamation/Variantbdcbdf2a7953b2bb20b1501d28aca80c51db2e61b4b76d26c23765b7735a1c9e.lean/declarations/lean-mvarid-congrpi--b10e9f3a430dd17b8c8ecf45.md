# Lean.MVarId.congrPi?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b8b9aa4c01a18077bf24cca43e5ff75c362887742d27a35934a29494250bd3b",
  "kind": "def",
  "lexical_name": "Lean.MVarId.congrPi?",
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
  "slug": "lean-mvarid-congrpi--b10e9f3a430dd17b8c8ecf45",
  "source": {
    "blob": "43e8ba19f043c5b47163c53387cde93eab4a6123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b10e9f3a430dd17b8c8ecf45ba4a42923fb6b1bd3c5dfeb8a9ccb5aab0cd43fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b8b9aa4c01a18077bf24cca43e5ff75c362887742d27a35934a29494250bd3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.congrPi? (mvarId : MVarId) : MetaM (Option (List MVarId)) :=
  observing? do withReducible <| mvarId.apply (← mkConstWithFreshMVarLevels `pi_congr)

/--
Try to apply `funext`, but only if it is an equality of two functions where at least one is
a lambda expression.

One thing this check prevents is accidentally applying `funext` to a set equality, but also when
doing congruence we don't want to apply `funext` unnecessarily.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e8ba19f043c5b47163c53387cde93eab4a6123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
