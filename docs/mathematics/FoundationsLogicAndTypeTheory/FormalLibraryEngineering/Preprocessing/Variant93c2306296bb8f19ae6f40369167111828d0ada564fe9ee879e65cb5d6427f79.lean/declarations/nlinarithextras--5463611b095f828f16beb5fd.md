# nlinarithExtras

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cf88019cfb9b2f530873434627a58ea4baa2b433f0f3f1ea0ede41e5ed9d2cf",
  "kind": "def",
  "lexical_name": "nlinarithExtras",
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
  "slug": "nlinarithextras--5463611b095f828f16beb5fd",
  "source": {
    "blob": "c0b6e024289558d569b9eb0534f06e6def4cd6dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5463611b095f828f16beb5fd0b9b1378c9e4e9d70afcab0ab8b858d283bdf1fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cf88019cfb9b2f530873434627a58ea4baa2b433f0f3f1ea0ede41e5ed9d2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nlinarithExtras : GlobalPreprocessor where
  name := "nonlinear arithmetic extras"
  transform ls := do
    let s ← ls.foldrM (fun h s' => do findSquares s' (← instantiateMVars (← inferType h)))
      HashSet.empty
    let new_es ← s.foldM (fun new_es (⟨e, is_sq⟩ : Expr × Bool) =>
      ((do
        let p ← mkAppM (if is_sq then ``sq_nonneg else ``mul_self_nonneg) #[e]
        pure $ p::new_es) <|> pure new_es)) ([] : List Expr)
    let new_es ← compWithZero.globalize.transform new_es
    trace[linarith] "nlinarith preprocessing found squares"
    trace[linarith] "{s.toList}"
    linarithTraceProofs "so we added proofs" new_es
    let with_comps ← (new_es ++ ls).mapM (fun e => do
      let tp ← inferType e
      try
        let ⟨ine, _⟩ ← parseCompAndExpr tp
        pure (ine, e)
      catch _ => pure (Ineq.lt, e))
    let products ← with_comps.mapDiagM $ fun (⟨posa, a⟩ : Ineq × Expr) ⟨posb, b⟩ =>
      try
        (some <$> match posa, posb with
          | Ineq.eq, _ => mkAppM ``zero_mul_eq #[a, b]
          | _, Ineq.eq => mkAppM ``mul_zero_eq #[a, b]
          | Ineq.lt, Ineq.lt => mkAppM ``mul_pos_of_neg_of_neg #[a, b]
          | Ineq.lt, Ineq.le => do
              let a ← mkAppM ``le_of_lt #[a]
              mkAppM ``mul_nonneg_of_nonpos_of_nonpos #[a, b]
          | Ineq.le, Ineq.lt => do
              let b ← mkAppM ``le_of_lt #[b]
              mkAppM ``mul_nonneg_of_nonpos_of_nonpos #[a, b]
          | Ineq.le, Ineq.le => mkAppM ``mul_nonneg_of_nonpos_of_nonpos #[a, b])
      catch _ => pure none
    let products ← compWithZero.globalize.transform products.reduceOption
    return (new_es ++ ls ++ products)

end nlinarith

section removeNe
/--
`removeNe_aux` case splits on any proof `h : a ≠ b` in the input,
turning it into `a < b ∨ a > b`.
This produces `2^n` branches when there are `n` such hypotheses in the input.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant93c2306296bb8f19ae6f40369167111828d0ada564fe9ee879e65cb5d6427f79.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b6e024289558d569b9eb0534f06e6def4cd6dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
