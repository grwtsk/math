# addCongrTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebfdeafe24eb51c8f8c9098b686becaad7e556cc81bd942e4dc65a8b5cda904e",
  "kind": "def",
  "lexical_name": "addCongrTable",
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
  "slug": "addcongrtable--ff2b4346ce4f3aeb7de1bea5",
  "source": {
    "blob": "33164ab9d00bfdda88417ea42e8846b49b9d596d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff2b4346ce4f3aeb7de1bea5d7c5809e56b34b5f338928ce66f793614ca38734",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebfdeafe24eb51c8f8c9098b686becaad7e556cc81bd942e4dc65a8b5cda904e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addCongrTable (e : Expr) : GoalM Unit := do
  if let some { e := e' } := (← get).congrTable.find? { e } then
    /-
    See paper: Congruence Closure in Intensional Type Theory
    **Note**: We do **not** implement the expensive quadratic case used in the paper.
    -/
    if e.isApp then
      unless (← isCongruentCheck e e') do
        reportIssue! "found congruence between{indentExpr e}\nand{indentExpr e'}\nbut functions have different types"
        return ()
    trace_goal[grind.debug.congr] "{e} = {e'}"
    if (← isEqCongrSymm e e') then
      -- **Note**: See comment at `eqCongrSymmPlaceholderProof`
      pushEqHEq e e' eqCongrSymmPlaceholderProof
    else
      pushEqHEq e e' congrPlaceholderProof
    if (← swapCgrRepr e e') then
      /-
      Recall that `isDiseq` and `mkDiseqProof?` are implemented using the congruence table.
      So, if `e` is an equality `a = b`, and is the equivalence class of `False`, but `e'` is not,
      we **must** make `e` the representative of the congruence class.
      The equivalence classes of `e` and `e'` will be merged eventually since we used `pushEqHEq` above,
      but assume that a conflict is detected before we merge the equivalence classes of `e` and `e'`,
      and we try to construct a proof that uses the fact that `a ≠ b`. To retrieve this disequality
      we must ensure that `e` is still the congruence root.
      -/
      modify fun s => { s with congrTable := s.congrTable.insert { e } }
      setENode e' { (← getENode e') with congr := e }
      setENode e { (← getENode e) with congr := e }
    else
      let node ← getENode e
      setENode e { node with congr := e' }
  else
    modify fun s => { s with congrTable := s.congrTable.insert { e } }
where
  isEqCongrSymm (e e' : Expr) : GoalM Bool := do
    let_expr Eq _ a₁ b₁ := e | return false
    let_expr Eq _ a₂ b₂ := e' | return false
    let goal ← get
    return goal.hasSameRoot a₁ b₂ && goal.hasSameRoot b₁ a₂

  swapCgrRepr (e e' : Expr) : GoalM Bool := do
    let_expr Eq _ _ _ := e | return false
    unless (← isEqFalse e) do return false
    return !(← isEqFalse e')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33164ab9d00bfdda88417ea42e8846b49b9d596d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
