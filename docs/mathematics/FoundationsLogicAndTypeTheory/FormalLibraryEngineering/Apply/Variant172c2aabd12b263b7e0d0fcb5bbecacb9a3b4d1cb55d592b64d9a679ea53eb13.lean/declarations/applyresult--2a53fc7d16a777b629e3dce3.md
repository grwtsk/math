# ApplyResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f20858ab06f197530176c093d8069671e3ea1721df3f60ce06a62b992361637c",
  "kind": "inductive",
  "lexical_name": "ApplyResult",
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
  "slug": "applyresult--2a53fc7d16a777b629e3dce3",
  "source": {
    "blob": "6e4977e3c94688ae798172bd31419464d7a324d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a53fc7d16a777b629e3dce375621ae69c1b96bd8878c0eaa24e8695e31cd1cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f20858ab06f197530176c093d8069671e3ea1721df3f60ce06a62b992361637c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive ApplyResult where
  | failed
  | goals (mvarIds : List MVarId)

/--
Applies a backward rule to a goal, returning new subgoals.

1. Unifies the goal type with the rule's pattern
2. Assigns the goal metavariable to the theorem application
3. Returns new goals for unassigned arguments (per `resultPos`)

Returns `.failed` if unification fails, or if an instance argument could not be synthesized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e4977e3c94688ae798172bd31419464d7a324d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
