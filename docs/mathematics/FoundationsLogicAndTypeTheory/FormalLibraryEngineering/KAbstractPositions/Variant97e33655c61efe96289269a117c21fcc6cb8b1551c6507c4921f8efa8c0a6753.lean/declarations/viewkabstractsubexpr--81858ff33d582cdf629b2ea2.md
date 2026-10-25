# viewKAbstractSubExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f2da7f1c22577357581b305b4c13e52ca6300e39b8c7e86113c99d9e8b16f74",
  "kind": "def",
  "lexical_name": "viewKAbstractSubExpr",
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
  "slug": "viewkabstractsubexpr--81858ff33d582cdf629b2ea2",
  "source": {
    "blob": "d8b18350513d2ed93c5b984dae4fb3aaf26147e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81858ff33d582cdf629b2ea2f6697eeb77bcfb11104e27606bd62f6c25cefb43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f2da7f1c22577357581b305b4c13e52ca6300e39b8c7e86113c99d9e8b16f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def viewKAbstractSubExpr (e : Expr) (pos : SubExpr.Pos) : MetaM (Option (Expr × Option Nat)) := do
  let subExpr ← Core.viewSubexpr pos e
  if subExpr.hasLooseBVars then
    return none
  let positions ← kabstractPositions subExpr e
  let some n := positions.idxOf? pos | unreachable!
  return some (subExpr, if positions.size == 1 then none else some (n + 1))

/-- Determine whether the result of abstracting `subExpr` from `e` at position `pos` results
in a well typed expression. This is important if you want to rewrite at this position.

Here is an example of what goes wrong with an ill-typed kabstract result:

```
example (h : [5] ≠ []) : List.getLast [5] h = 5 := by
  rw [show [5] = [5] from rfl] -- tactic 'rewrite' failed, motive is not type correct
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KAbstractPositions/Variant97e33655c61efe96289269a117c21fcc6cb8b1551c6507c4921f8efa8c0a6753.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b18350513d2ed93c5b984dae4fb3aaf26147e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
