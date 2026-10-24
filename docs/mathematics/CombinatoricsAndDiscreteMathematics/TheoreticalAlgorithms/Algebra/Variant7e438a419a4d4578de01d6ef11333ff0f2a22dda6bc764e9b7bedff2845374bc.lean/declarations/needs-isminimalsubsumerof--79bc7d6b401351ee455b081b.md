# Needs.isMinimalSubsumerOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cde4912604dd8b78b492017088da592c2621438c206c6786183d9b6361a0b67",
  "kind": "def",
  "lexical_name": "Needs.isMinimalSubsumerOf",
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
  "slug": "needs-isminimalsubsumerof--79bc7d6b401351ee455b081b",
  "source": {
    "blob": "0117a0bbf1d60bbe4c6d7b2303730f6ffd5b0b33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 368,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79bc7d6b401351ee455b081bfb94d6727bcea42944a14d48bdebecc033bc0ebf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cde4912604dd8b78b492017088da592c2621438c206c6786183d9b6361a0b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def Needs.isMinimalSubsumerOf (reduced a : Needs) (transDeps : ArrayHierarchy) : Bool :=
  reduced.allWithKind fun k b => b.all fun i =>
    !a.subsumedBy (reduced.sub k {i}) transDeps

open Elab Command

#guard_msgs in
run_cmd
  let test : Std.RandT CommandElabM Bool := do
    let size := 30
    let h ← ArrayHierarchy.randM size
    let needs ← Needs.randM size
    let reduced := needs.reduce h
    unless reduced.isAntilinear do
      throwError "Reduced needs are not antilinear:\n\n\
        reduced: {reduced}\n\nneeds: {needs}\n\n{h}"
    unless reduced.directLe needs.linearize do
      throwError "Reduced needs are not included within linearized version of needs:\n\n\
        reduced: {reduced}\n\nneeds: {needs}\n\n{h}"
    unless needs.subsumedBy reduced h do
      throwError "Reduced needs do not subsume needs:\n\n\
        reduced: {reduced}\n\nneeds: {needs}\n\n{h}"
    let isMinimal := reduced.allWithKind fun k b => b.all fun i =>
      !needs.subsumedBy (reduced.sub k {i}) h
    unless isMinimal do
      throwError "Reduced needs are not minimal:\n\n\
        reduced: {reduced}\n\nneeds: {needs}\n\n{h}"
    unless needs.linearize.reduce h == reduced do
      throwError "Reduced needs changed with linearization:\n\n\
        reduced: {reduced}\n\nneeds: {needs}\n\n{h}"
    unless reduced.reduce h == reduced do
      throwError "Reduction is not idempotent:\n\n\
        reduced: {reduced}\n\nneeds: {needs}\n\n{h}"
    return true
  unless ← test.all 100 |>.run' testSeed do
    throwError "Tests failed."

end Reduction

section Minimals

/-- info: #[◻◻◻, ◼◻◻, ◻◼◻, ◼◼◻, ◻◻◼, ◼◻◼, ◻◼◼, ◼◼◼] ↦ #[◻◻◻] -/
#guard_msgs in
run_cmd do
  let data := (0...2^3).toArray.map Bitset.mk
  if h : data ≠ #[] then
    let univSize := Array.max (data.map (·.univSize)) (by simp; grind)
    logInfo s!"{data.map (·.toString univSize)} ↦ \
      {data.minimals (· ⊆ ·) |>.map (·.toString univSize)}"

/-- info: #[◼◻◻, ◻◼◻, ◼◼◻, ◻◻◼, ◼◻◼, ◻◼◼, ◼◼◼] ↦ #[◼◻◻, ◻◼◻, ◻◻◼] -/
#guard_msgs in
run_cmd do
  let data := (1...2^3).toArray.map Bitset.mk
  if h : data ≠ #[] then
    let univSize := Array.max (data.map (·.univSize)) (by simp; grind)
    logInfo s!"{data.map (·.toString univSize)} ↦ \
      {data.minimals (· ⊆ ·) |>.map (·.toString univSize)}"

/-- info: #[◼◼◻, ◼◻◼, ◻◼◼, ◼◼◼] ↦ #[◼◼◻, ◼◻◼, ◻◼◼] -/
#guard_msgs in
run_cmd do
  let data := (1...2^3).toArray.map Bitset.mk
  let data := data.filter (·.size > 1)
  if h : data ≠ #[] then
    let univSize := Array.max (data.map (·.univSize)) (by simp; grind)
    logInfo s!"{data.map (·.toString univSize)} ↦ \
      {data.minimals (· ⊆ ·) |>.map (·.toString univSize)}"

/-- info: #[◼◼◻, ◼◻◼, ◻◼◼, ◼◼◼, ◼◼◻, ◼◻◼, ◻◼◼, ◼◼◼, ◼◼◻, ◼◻◼, ◻◼◼, ◼◼◼] ↦ #[◼◼◻, ◼◻◼, ◻◼◼] -/
#guard_msgs in
run_cmd do
  let data := (1...2^3).toArray.map Bitset.mk
  let data := data ++ data ++ data
  let data := data.filter (·.size > 1)
  if h : data ≠ #[] then
    let univSize := Array.max (data.map (·.univSize)) (by simp; grind)
    logInfo s!"{data.map (·.toString univSize)} ↦ \
      {data.minimals (· ⊆ ·) |>.map (·.toString univSize)}"

end Minimals
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Algebra/Variant7e438a419a4d4578de01d6ef11333ff0f2a22dda6bc764e9b7bedff2845374bc.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0117a0bbf1d60bbe4c6d7b2303730f6ffd5b0b33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
