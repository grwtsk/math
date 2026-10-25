# processUnassigned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a965ec5b09e65dabb44c9966c063cb2cd614d03751e859c07829110f28afc3a",
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
  "slug": "processunassigned--ace9a318a2514c1ca7c7570d",
  "source": {
    "blob": "b93662f0624c93668d57fdf79fda4f70fe156101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 635,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ace9a318a2514c1ca7c7570d75b038c58cd2f60ddf50928579595509b088f693",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a965ec5b09e65dabb44c9966c063cb2cd614d03751e859c07829110f28afc3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–679.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93662f0624c93668d57fdf79fda4f70fe156101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
