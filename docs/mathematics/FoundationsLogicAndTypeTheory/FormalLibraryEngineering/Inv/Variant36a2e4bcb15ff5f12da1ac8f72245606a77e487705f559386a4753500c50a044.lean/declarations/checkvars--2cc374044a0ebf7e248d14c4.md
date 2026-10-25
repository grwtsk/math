# checkVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f1dac070c9ea0f2c4dc79a82351a7e34440d991c1b48c6ea7126a7293c77b5e",
  "kind": "def",
  "lexical_name": "checkVars",
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
  "slug": "checkvars--2cc374044a0ebf7e248d14c4",
  "source": {
    "blob": "84df105d39f2a49545e470c97b46fedfa09ac8bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cc374044a0ebf7e248d14c40c1cfa020d086fef0cee7e032bcf0fc2f76c9cab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f1dac070c9ea0f2c4dc79a82351a7e34440d991c1b48c6ea7126a7293c77b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkVars : ACM Unit := do
  let s ← getStruct
  let mut num := 0
  for ({ expr }, var) in s.varMap do
    if h : var < s.vars.size then
      let expr' := s.vars[var]
      assert! isSameExpr expr expr'
    else
      unreachable!
    num := num + 1
  assert! s.vars.size == num

/-
**Note**: Elements in the todo queue are not fully simplified.
Recall that we only (fully) simplify them when adding them to the basis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant36a2e4bcb15ff5f12da1ac8f72245606a77e487705f559386a4753500c50a044.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84df105d39f2a49545e470c97b46fedfa09ac8bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
