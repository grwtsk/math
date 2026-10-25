# processUnassigned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a19cd37ac4cae7c6b08f83cd5925f11a89984399eebde2c2c0f8e9ef29dd88c",
  "kind": "def",
  "lexical_name": "processUnassigned",
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
  "slug": "processunassigned--249918f696d188859dc88978",
  "source": {
    "blob": "e4b44c9d3be89b0d60e18832499bb47a33fc7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 627,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:249918f696d188859dc889787e7990038ca85f74ef70aa8acecf41b6ed3fbf02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a19cd37ac4cae7c6b08f83cd5925f11a89984399eebde2c2c0f8e9ef29dd88c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def processUnassigned (mvars : Array Expr) (i : Nat) (v : Expr) (h : i < mvars.size) : OptionT (StateT Choice M) Unit := do
  let thm := (← read).thm
  let numParams := thm.numParams
  let bidx := numParams - i - 1
  let mvarId := mvars[i].mvarId!
  let mvarIdType ← mvarId.getType
  let vType ← inferType v
  let rec unassignOrFail : OptionT (StateT Choice M) Unit := do
    /-
    If there is type error and `vType` is a proposition, we can still instantiate the
    theorem by unassigning `v` and using it as an extra hypothesis.
    Here is an example to motivate the unassignment.
    ```
    example (xs : Array Nat) (w : xs.reverse = xs) (j : Nat) (hj : 0 ≤ j) (hj' : j < xs.size / 2)
        : xs[j] = xs[xs.size - 1 - j] := by
      grind
    ```
    Without the unassignment we get a type error while trying to instantiate the theorem
    ```
    theorem getElem_reverse {xs : Array α} {i : Nat} (hi : i < xs.reverse.size) :
      (xs.reverse)[i] = xs[xs.size - 1 - i]'(by simp at hi; omega)
    ```
    The pattern for this theorem is `xs.reverse[i]`. Note that `hi` occurs there as an implicit argument.
    The term `xs[j]` in our goal e-matches the pattern because we have the equality `xs.reverse = xs`.
    However, the implicit proof at `xs[j]` has type `j < xs.size` instead of `j < xs.reverse.size`.
    -/
    if (← isProp vType) then
      modify (unassign · bidx)
    else
      reportEMatchIssue! "type error constructing proof for {thm.origin.pp}\nwhen assigning metavariable {mvars[i]} with {indentExpr v}\n{← mkHasTypeButIsExpectedMsg vType mvarIdType}"
      failure
  if (← isDefEqD mvarIdType vType) then
    unless (← mvarId.checkedAssign v) do unassignOrFail
  else
    if let some heq ← withoutReportingMVarIssues <| proveEq? vType mvarIdType (abstract := true) then
      /-
      Some of the `cast`s will appear inside the `Grind.MatchCond` binders, and
      we want their proofs to be properly wrapped.
      -/
      let heq := mkApp2 (mkConst ``Grind.nestedProof) (← mkEq vType mvarIdType) heq
      let v ← mkAppM ``cast #[heq, v]
      unless (← mvarId.checkedAssign v) do unassignOrFail
    else
      unassignOrFail

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b44c9d3be89b0d60e18832499bb47a33fc7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
