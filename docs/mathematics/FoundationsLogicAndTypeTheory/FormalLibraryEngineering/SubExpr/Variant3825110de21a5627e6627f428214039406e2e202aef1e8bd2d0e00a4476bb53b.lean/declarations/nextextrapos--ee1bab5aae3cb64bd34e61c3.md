# nextExtraPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ae26d872865447559975709d17510870fa6895a6a0ebb0c30be1875c28dcbcc",
  "kind": "def",
  "lexical_name": "nextExtraPos",
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
  "slug": "nextextrapos--ee1bab5aae3cb64bd34e61c3",
  "source": {
    "blob": "de1a6ac60c4b2019b2129a4ab8b03dfafbe14b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variant3825110de21a5627e6627f428214039406e2e202aef1e8bd2d0e00a4476bb53b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee1bab5aae3cb64bd34e61c3c841c391d82ecb7fa9d90b6fdd9767d19081d4f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variant3825110de21a5627e6627f428214039406e2e202aef1e8bd2d0e00a4476bb53b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ae26d872865447559975709d17510870fa6895a6a0ebb0c30be1875c28dcbcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nextExtraPos : m Pos := do
  let iter ← getThe HoleIterator
  let pos := iter.toPos
  modifyThe HoleIterator HoleIterator.next
  return pos

end Hole
end SubExpr

end Lean.PrettyPrinter.Delaborator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variant3825110de21a5627e6627f428214039406e2e202aef1e8bd2d0e00a4476bb53b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variant3825110de21a5627e6627f428214039406e2e202aef1e8bd2d0e00a4476bb53b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1a6ac60c4b2019b2129a4ab8b03dfafbe14b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
