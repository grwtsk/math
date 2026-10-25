# KernelVerifyResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e6f9500a30fde1afd7e732f3c455794afb6b6e87b67eb8616da523d98b9d817",
  "kind": "inductive",
  "lexical_name": "KernelVerifyResult",
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
  "slug": "kernelverifyresult--f54bc679d9aec329c21e2dde",
  "source": {
    "blob": "736cd0a197834251628066ae1db85eb97dc01357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f54bc679d9aec329c21e2dde0378d35ea8765dc1bd46a4126de56d3d558988f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e6f9500a30fde1afd7e732f3c455794afb6b6e87b67eb8616da523d98b9d817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive KernelVerifyResult
  | success : KernelVerifyResult
  | nativeExpression : KernelVerifyResult  -- Goal uses native Lean expression, not Expr.eval
  | boundsNotDefeq : KernelVerifyResult    -- Interval bounds aren't definitionally equal
  | boundCheckFailed : KernelVerifyResult  -- Computed bound doesn't satisfy goal
  | parseError : KernelVerifyResult        -- Couldn't parse goal structure
  | unsupportedGoal : KernelVerifyResult   -- Goal type not supported (e.g., strict inequality)
  deriving DecidableEq

/-- Try to extract AST from a function that may be Core.Expr.eval or a raw expression.
    Returns (ast, isExprEval) where isExprEval indicates if goal was in Expr.eval form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variantfe73673fdf21cd998fc868cae2be0b5fa1dfef1272f286cdd5a1f82f3d75f861.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `736cd0a197834251628066ae1db85eb97dc01357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
