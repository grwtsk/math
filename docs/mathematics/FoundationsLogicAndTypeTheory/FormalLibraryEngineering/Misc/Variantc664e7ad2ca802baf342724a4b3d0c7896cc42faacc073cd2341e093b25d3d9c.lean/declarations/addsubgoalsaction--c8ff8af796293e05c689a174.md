# addSubgoalsAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afd89b3d556d6673abb1daec5209366a0f6cfe7985e98f5a4f17e8b51a3c5583",
  "kind": "def",
  "lexical_name": "addSubgoalsAction",
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
  "slug": "addsubgoalsaction--c8ff8af796293e05c689a174",
  "source": {
    "blob": "62050408732ce4dbc7901666dd94ccca99bb38cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 473,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8ff8af796293e05c689a174fe5fc0a7dd5d9478437d1807811ca4890c75fe63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afd89b3d556d6673abb1daec5209366a0f6cfe7985e98f5a4f17e8b51a3c5583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addSubgoalsAction : TacticCodeAction := fun params _ _ stk node => do
  let (_ :: (seq, i) :: stk@(_ :: t :: _), .node (.ofTacticInfo info) _) := (stk, node) | return #[]
  unless t.1.getKind == ``Parser.Tactic.tacticSeq do return #[]
  addSubgoalsActionCore params (i/2) ((seq, 0) :: stk) info.goalsBefore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62050408732ce4dbc7901666dd94ccca99bb38cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
