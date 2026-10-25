# mkCongrFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71e38002a4b3139f13216747bb510f132d9001372f575feeb4be4c9953bba1d6",
  "kind": "def",
  "lexical_name": "mkCongrFun",
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
  "slug": "mkcongrfun--fc1b435f08963d66634bc7a0",
  "source": {
    "blob": "e4171b932c4fa956f4f6011ce069f73d9bee1cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc1b435f08963d66634bc7a04475c08c80eebdfd12570351683a22fbbf7734c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71e38002a4b3139f13216747bb510f132d9001372f575feeb4be4c9953bba1d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCongrFun (e : Expr) (f a : Expr) (f' : Expr) (hf : Expr) (_ : e = .app f a)
    (done := false) (contextDependent := false) : SymM Result := do
  let .forallE x _ βx _ ← whnfD (← inferType f)
    | throwError "failed to build congruence proof, function expected{indentExpr f}"
  let α ← inferType a
  let u ← getLevel α
  let v ← getLevel (← inferType e)
  let β := Lean.mkLambda x .default α βx
  let e' ← mkAppS f' a
  let h := mkApp6 (mkConst ``congrFun [u, v]) α β f f' hf a
  return .step e' h done contextDependent

/--
Handles simplification of over-applied function terms.

When a function has more arguments than expected by its `CongrInfo`, we need to handle
the "extra" arguments separately. This function peels off `numArgs` trailing applications,
simplifies the remaining function using `simpFn`, then rebuilds the term by simplifying
and re-applying the trailing arguments.

**Over-application** occurs when:
- A function with `fixedPrefix prefixSize suffixSize` is applied to more than `prefixSize + suffixSize` arguments
- A function with `interlaced` rewritable mask is applied to more than `mask.size` arguments
- A function with a congruence theorem is applied to more than the theorem expects

**Example**: If `f` has `CongrInfo.fixedPrefix 2 3` (expects 5 arguments) but we see `f a₁ a₂ a₃ a₄ a₅ b₁ b₂`,
then `numArgs = 2` (the extra arguments) and we:
1. Recursively simplify `f a₁ a₂ a₃ a₄ a₅` using the fixed prefix strategy (via `simpFn`)
2. Simplify each extra argument `b₁` and `b₂`
3. Rebuild the term using either `mkCongr` (for non-dependent arrows) or `mkCongrFun` (for dependent functions)

**Parameters**:
- `e`: The over-applied expression to simplify
- `numArgs`: Number of excess arguments to peel off
- `simpFn`: Strategy for simplifying the function after peeling (e.g., `simpFixedPrefix`, `simpInterlaced`, or `simpUsingCongrThm`)

**Note**: This is a fallback path without specialized optimizations. The common case (correct number of arguments)
is handled more efficiently by the specific strategies.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4171b932c4fa956f4f6011ce069f73d9bee1cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
