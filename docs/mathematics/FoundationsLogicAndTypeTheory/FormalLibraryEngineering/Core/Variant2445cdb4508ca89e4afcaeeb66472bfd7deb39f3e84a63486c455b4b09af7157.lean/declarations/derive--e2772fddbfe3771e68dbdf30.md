# derive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19123163852ac2e6aa02271d80d04496c755edf9a5cbeed706d3a823f265ea5f",
  "kind": "def",
  "lexical_name": "derive",
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
  "slug": "derive--e2772fddbfe3771e68dbdf30",
  "source": {
    "blob": "bdffff84d85ce49878fa335c91a305d2ad43b316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant2445cdb4508ca89e4afcaeeb66472bfd7deb39f3e84a63486c455b4b09af7157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2772fddbfe3771e68dbdf30905d408934cd39855547978664c473183a0947a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant2445cdb4508ca89e4afcaeeb66472bfd7deb39f3e84a63486c455b4b09af7157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19123163852ac2e6aa02271d80d04496c755edf9a5cbeed706d3a823f265ea5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derive (e : Expr) : MetaM (ℕ × Expr) := do
  trace[CancelDenoms] "e = {e}"
  let eSimp ← simpOnlyNames (config := Simp.neutralConfig) deriveThms e
  trace[CancelDenoms] "e simplified = {eSimp.expr}"
  let eSimpNormNum ←
    Mathlib.Meta.NormNum.deriveSimp (← Simp.mkContext) (useSimp := false) (e := eSimp.expr)
  trace[CancelDenoms] "e norm_num'd = {eSimpNormNum.expr}"
  let (n, t) := findCancelFactor eSimpNormNum.expr
  let ⟨u, tp, e⟩ ← inferTypeQ' eSimpNormNum.expr
  let stp : Q(Field $tp) ← synthInstanceQ q(Field $tp)
  try
    have n' := (← mkOfNat tp q(inferInstance) <| mkRawNatLit <| n).1
    let r ← mkProdPrf tp stp n n' t e
    trace[CancelDenoms] "pf : {← inferType r.pf}"
    let pf' ←
      match eSimp.proof?, eSimpNormNum.proof? with
      | some pfSimp, some pfSimp' => mkAppM ``derive_trans₂ #[pfSimp, pfSimp', r.pf]
      | some pfSimp, none | none, some pfSimp => mkAppM ``derive_trans #[pfSimp, r.pf]
      | none, none => pure r.pf
    return (n, pf')
  catch E => do
    throwError "CancelDenoms.derive failed to normalize {e}.\n{E.toMessageData}"

/--
`findCompLemma e` arranges `e` in the form `lhs R rhs`, where `R ∈ {<, ≤, =, ≠}`, and returns
`lhs`, `rhs`, the `cancel_factors` lemma corresponding to `R`, and a Boolean indicating whether
`R` involves the order (i.e. `<` and `≤`) or not (i.e. `=` and `≠`).
In the case of `LT`, `LE`, `GE`, and `GT` an order on the type is needed, in the last case
it is not, the final component of the return value tracks this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant2445cdb4508ca89e4afcaeeb66472bfd7deb39f3e84a63486c455b4b09af7157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant2445cdb4508ca89e4afcaeeb66472bfd7deb39f3e84a63486c455b4b09af7157.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdffff84d85ce49878fa335c91a305d2ad43b316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
