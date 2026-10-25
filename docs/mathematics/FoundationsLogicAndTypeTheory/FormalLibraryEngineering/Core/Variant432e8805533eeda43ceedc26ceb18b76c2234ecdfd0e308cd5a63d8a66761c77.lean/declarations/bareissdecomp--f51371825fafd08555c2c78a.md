# bareissDecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb3153e5af2849408b5f6886e7e331e7a1f267ca6022622f237fe431162980c7",
  "kind": "def",
  "lexical_name": "bareissDecomp",
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
  "slug": "bareissdecomp--f51371825fafd08555c2c78a",
  "source": {
    "blob": "33bbb2323bf86b43df2c8ab519d0e5b66257725b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f51371825fafd08555c2c78ad0a94942decd66111b7e81305c27fc47a47065a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb3153e5af2849408b5f6886e7e331e7a1f267ca6022622f237fe431162980c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bareissDecomp {V : Type} (ops : RingOps V) (A : Array (Array V)) :
    MetaM (BareissData V) := do
  let rows := A.size
  let cols := (A.getD 0 #[]).size
  let getEntry (M : Array (Array V)) (i j : Nat) : V := (M.getD i #[]).getD j ops.zero
  let eliminate (pivot coef prev : V) (row pivotRow : Array V) : Array V :=
    Array.zipWith (fun a b => ops.divExact (ops.sub (ops.mul pivot a) (ops.mul coef b)) prev)
      row pivotRow
  let mut W := A
  let mut L : Array (Array V) :=
    Array.ofFn (n := rows) fun i =>
      Array.ofFn (n := rows) fun j => if i == j then ops.one else ops.zero
  let mut swaps : Array (Nat × Nat) := #[]
  let mut pivotCols : Array Nat := #[]
  let mut r : Nat := 0
  -- the exact divisor of the elimination step
  let mut prevPivot : V := ops.one
  /- TODO: if we're handling larger matrices (beyond 10⁴ entries), add a checkSystem call
  per column to honor user interruption. At current realistic sizes this computation is
  almost instant. -/
  for c in 0...cols do
    if r == rows then break
    -- find the first row at or below `r` with a nonzero entry in column `c`
    let mut p? : Option Nat := none
    for q in r...rows do
      if !ops.isZero (getEntry W q c) then
        p? := some q
        break
    if let some p := p? then
      if p ≠ r then
        W := W.swapIfInBounds r p
        -- row swap
        L := L.swapIfInBounds r p
        -- column swap. This affects only rows `r` and `p`, since every other
        -- row vanishes at both columns
        L := (L.modify r (·.swapIfInBounds r p)).modify p (·.swapIfInBounds r p)
        swaps := swaps.push (r, p)
      pivotCols := pivotCols.push c
      let pivot := getEntry W r c
      let wRow := W.getD r #[]
      let lRow := L.getD r #[]
      for i in r<...rows do
        let coef := getEntry W i c
        W := W.set! i (eliminate pivot coef prevPivot (W.getD i #[]) wRow)
        L := L.set! i (eliminate pivot coef prevPivot (L.getD i #[]) lRow)
      prevPivot := pivot
      r := r + 1
  return { L, U := W, swaps, pivot := pivotCols }

/-- Assemble a producer from a computation model's parts.
`ops` describes the ring operation structure;
`prepare` reifies the entries into the values the elimination runs on, plus a
function restoring the resulting decomposition to one of the original matrix;
`mkEntry` constructs the value back in the ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant432e8805533eeda43ceedc26ceb18b76c2234ecdfd0e308cd5a63d8a66761c77.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33bbb2323bf86b43df2c8ab519d0e5b66257725b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
