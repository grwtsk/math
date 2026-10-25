# ControlInfo.sequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:653452f0de657f425ef4dc74180a08abade781d806527abd88625053c0e140d9",
  "kind": "def",
  "lexical_name": "ControlInfo.sequence",
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
  "slug": "controlinfo-sequence--9585dfc653875d12d1e0cb7d",
  "source": {
    "blob": "2d06dbca32b3b707b65279072f738744e0e907c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9585dfc653875d12d1e0cb7d435e7ca937cec148296ead17cca5c0a9439494de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:653452f0de657f425ef4dc74180a08abade781d806527abd88625053c0e140d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlInfo.sequence (a b : ControlInfo) : ControlInfo := {
    -- Syntactic fields aggregate unconditionally; the elaborator keeps visiting `b` unless `a` is
    -- a syntactically-terminal element (only top-level `return`/`break`/`continue` are, via
    -- `elabAsSyntacticallyDeadCode`).
    breaks := a.breaks || b.breaks,
    continues := a.continues || b.continues,
    returnsEarly := a.returnsEarly || b.returnsEarly,
    reassigns := a.reassigns ++ b.reassigns,
    numRegularExits := b.numRegularExits,
    -- Semantic: the sequence is dead if either part is dead.
    noFallthrough := a.noFallthrough || b.noFallthrough,
  }

/--
The `ControlInfo` of branches `a | b`: effect flags are unioned, the regular exits are summed, and
the alternative falls through iff at least one branch falls through.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d06dbca32b3b707b65279072f738744e0e907c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
