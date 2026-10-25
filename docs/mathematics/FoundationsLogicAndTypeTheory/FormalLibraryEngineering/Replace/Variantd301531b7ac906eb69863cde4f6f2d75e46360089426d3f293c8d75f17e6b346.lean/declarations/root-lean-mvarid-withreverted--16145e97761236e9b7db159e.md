# _root_.Lean.MVarId.withReverted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be7270adde9305e1b37a61d25911fdbd2415a130934373c9f3b114acc3b521cf",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.withReverted",
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
  "slug": "root-lean-mvarid-withreverted--16145e97761236e9b7db159e",
  "source": {
    "blob": "2a118efceedfd55d88e1ae50821bc2d0ba8ff1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16145e97761236e9b7db159eb0a46234458741d55691d81530d2830f9ca62d24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be7270adde9305e1b37a61d25911fdbd2415a130934373c9f3b114acc3b521cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.withReverted (mvarId : MVarId) (fvarIds : Array FVarId)
    (k : MVarId → Array FVarId → MetaM (α × Array (Option FVarId) × MVarId))
    (clearAuxDeclsInsteadOfRevert := false) : MetaM (α × MVarId) := do
  let (xs, mvarId) ← mvarId.revert fvarIds true clearAuxDeclsInsteadOfRevert
  let (r, xs', mvarId) ← k mvarId xs
  let (ys, mvarId) ← mvarId.introNP xs'.size
  mvarId.withContext do
    for x? in xs', y in ys do
      if let some x := x? then
        Elab.pushInfoLeaf (.ofFVarAliasInfo { id := y, baseId := x, userName := ← y.getUserName })
  return (r, mvarId)

/--
Like `Lean.MVarId.withReverted`, but reverts all local variables starting from `fvarId`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replace/Variantd301531b7ac906eb69863cde4f6f2d75e46360089426d3f293c8d75f17e6b346.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a118efceedfd55d88e1ae50821bc2d0ba8ff1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
