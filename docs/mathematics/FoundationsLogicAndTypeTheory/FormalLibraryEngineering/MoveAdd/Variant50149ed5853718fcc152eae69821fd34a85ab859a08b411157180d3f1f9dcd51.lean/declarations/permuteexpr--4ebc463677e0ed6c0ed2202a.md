# permuteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dda56061084b231f9996c9086121022af2c81b7fb51d8d6e223224d17319db2",
  "kind": "def",
  "lexical_name": "permuteExpr",
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
  "slug": "permuteexpr--4ebc463677e0ed6c0ed2202a",
  "source": {
    "blob": "c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ebc463677e0ed6c0ed2202a61de9c0383af21acf4e669f0e315639bf27b03e3",
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

Occurrence: `declaration:7dda56061084b231f9996c9086121022af2c81b7fb51d8d6e223224d17319db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def permuteExpr (tgt : Expr) (instructions : List (Expr × Bool)) : MetaM Expr := do
  let permInstructions ← rankSums op tgt instructions
  if permInstructions == [] then throwError "The goal is already in the required form"
  let mut permTgt := tgt
  -- We cannot do `Expr.replace` all at once here, we need to follow
  -- the order of the instructions.
  for (old, new) in permInstructions do
    permTgt := permTgt.replace (if · == old then new else none)
  return permTgt

/-- `pairUp L R` takes to lists `L R : List Expr` as inputs.
It scans the elements of `L`, looking for a corresponding `DefEq` `Expr`ession in `R`.
If it finds one such element `d`, then it sets the element `d : R` aside, removing it from `R`, and
it continues with the matching on the remainder of `L` and on `R.erase d`.

At the end, it returns the sublist of `R` of the elements that were matched to some element of `R`,
in the order in which they appeared in `L`,
as well as the sublist of `L` of elements that were not matched, also in the order in which they
appeared in `L`.

Example:
```lean
#eval do
  let L := [mkNatLit 0, (← mkFreshExprMVar (some (mkConst ``Nat))), mkNatLit 0] -- i.e. [0, _, 0]
  let R := [mkNatLit 0, mkNatLit 0,                                 mkNatLit 1] -- i.e. [0, 1]
  dbg_trace f!"{(← pairUp L R)}"
/- output:
`([0, 0], [0])`
the output LHS list `[0, 0]` consists of the first `0` and the `MVarId`.
the output RHS list `[0]` corresponds to the last `0` in `L`.
-/
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
