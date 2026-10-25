# getOps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:feb98280284ed76b58c1f5812aa58597e679e242ff34af5201f3e290936e4b01",
  "kind": "def",
  "lexical_name": "getOps",
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
  "slug": "getops--31af2054ea1d6ed22bea7610",
  "source": {
    "blob": "c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31af2054ea1d6ed22bea7610604f780f6bbd027e4bf1ec6f7186d53261d1dcf1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:feb98280284ed76b58c1f5812aa58597e679e242ff34af5201f3e290936e4b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getOps (sum : Expr) : MetaM (Array ((Array Expr) × Expr)) := do
  let summands ← getAddends op (← inferType sum <|> return sum) sum
  let (first, rest) := if summands.size == 1 then (#[], sum.getExprInputs) else
    (#[(summands, sum)], summands)
  let rest ← rest.mapM getOps
  return rest.foldl Array.append first

/-- `rankSums op tgt instructions` takes as input
* the name `op` of a binary operation,
* an `Expr`ession `tgt`,
* a list `instructions` of pair `(expression, boolean)`.

It extracts the maximal subexpressions of `tgt` whose head symbol is `op`
(i.e. the maximal subexpressions that consist only of applications of the binary operation `op`),
it rearranges the operands of such subexpressions following the order implied by `instructions`
(as in `reorderUsing`),
it returns the list of pairs of expressions `(old_sum, new_sum)`, for which `old_sum ≠ new_sum`
sorted by decreasing value of `Lean.Expr.size`.
In particular, a subexpression of an `old_sum` can only appear *after* its over-expression.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
