# Lean.Expr.size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fd170f994e9e3072a9868fafd448ade71c5fb15b7284330455183dc28894f05",
  "kind": "def",
  "lexical_name": "Lean.Expr.size",
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
  "slug": "lean-expr-size--427586aba92958387dde459a",
  "source": {
    "blob": "abb6107c6f0c1525bbaf41e0beeff2a2b4118678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:427586aba92958387dde459ae298e8c2a72e8de9aa9e1bba37b1ab25b91e2a7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fd170f994e9e3072a9868fafd448ade71c5fb15b7284330455183dc28894f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Expr.size (e : Expr) : ℕ := (e.getExprInputs.map size).foldl (· + ·) 1

namespace Mathlib.MoveAdd

section ExprProcessing

section reorder
variable {α : Type*} [BEq α]

/-!
##  Reordering the variables

This section produces the permutations of the variables for `move_add`.

The user controls the final order by passing a list of terms to the tactic.
Each term can be preceded by `←` or not.
In the final ordering,
* terms preceded by `←` appear first,
* terms not preceded by `←` appear last,
* all remaining terms remain in their current relative order.
-/

/-- `uniquify L` takes a list `L : List α` as input and it returns a list `L' : List (α × ℕ)`.
The two lists `L` and `L'.map Prod.fst` coincide.
The second component of each entry `(a, n)` in `L'` is the number of times that `a` appears in `L`
before the current location.

The resulting list of pairs has no duplicates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant944e95828512c29606aa1b9cdf17e9e68aae29d5a7d8f2c97ac0331fe05eb383.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb6107c6f0c1525bbaf41e0beeff2a2b4118678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
