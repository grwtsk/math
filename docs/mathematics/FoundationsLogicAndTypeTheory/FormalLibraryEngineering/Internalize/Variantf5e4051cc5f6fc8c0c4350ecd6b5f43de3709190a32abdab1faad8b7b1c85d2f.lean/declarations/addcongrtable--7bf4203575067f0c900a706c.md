# addCongrTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66b4978dd5c48eb223b8b4854f5c032890d7b7af6f8052d13f84a850d9f00f2f",
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
  "slug": "addcongrtable--7bf4203575067f0c900a706c",
  "source": {
    "blob": "30785a5302abff1277a64edfeba73f2859bb7cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bf4203575067f0c900a706c016dc22d1ca2308b71190af2bed833fe943833ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66b4978dd5c48eb223b8b4854f5c032890d7b7af6f8052d13f84a850d9f00f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–88.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30785a5302abff1277a64edfeba73f2859bb7cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
