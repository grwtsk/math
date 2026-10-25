# nlinarithGetProductsProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b06c73ffdd24260be4195b581df94759159bc2b6673cc2af8d367376c71aee15",
  "kind": "def",
  "lexical_name": "nlinarithGetProductsProofs",
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
  "slug": "nlinarithgetproductsproofs--e9c87c621dd0539bc73a72e3",
  "source": {
    "blob": "77a99f8cd2e0f89015b974cd4386134a32d6f92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c87c621dd0539bc73a72e3abe25c2b58689846faf15bfe7c2c931418ae7d50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b06c73ffdd24260be4195b581df94759159bc2b6673cc2af8d367376c71aee15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def nlinarithGetProductsProofs (ls : List Expr) : MetaM (List Expr) :=
  withTraceNode `linarith (return m!"{exceptEmoji ·} adding product terms") do
  let with_comps ← ls.mapM (fun e => do
    let tp ← inferType e
    try
      let ⟨ine, _⟩ ← parseCompAndExpr tp
      pure (ine, e)
    catch _ => pure (Ineq.lt, e))
  let products ← with_comps.mapDiagM fun (⟨posa, a⟩ : Ineq × Expr) ⟨posb, b⟩ =>
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
  compWithZero.globalize.transform products.reduceOption

/--
`nlinarithExtras` is the preprocessor corresponding to the `nlinarith` tactic.

* For every term `t` such that `t^2` or `t*t` appears in the input, adds a proof of `t^2 ≥ 0`
  or `t*t ≥ 0`.
* For every pair of comparisons `t1 R1 0` and `t2 R2 0`, adds a proof of `t1*t2 R 0`.

This preprocessor is typically run last, after all inputs have been canonized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocessing/Variant6353b60978064ff8d0fd8ad31c34421865c563bc0bd2978d0f54166fa3dfd958.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77a99f8cd2e0f89015b974cd4386134a32d6f92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
