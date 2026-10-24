# matchVecConsPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8d2fdeaa8443cfdd2ddaa0ad335ab289396a95996349b14d5920f13bc755bed",
  "kind": "def",
  "lexical_name": "matchVecConsPrefix",
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
  "slug": "matchvecconsprefix--5f3c921daae29c363f6756b5",
  "source": {
    "blob": "d7aedbdea64e7cdf5493b612f1c735ea62cea293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f3c921daae29c363f6756b5325b85f8a7fcd4c35c48d90d50cf7fb950899975",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8d2fdeaa8443cfdd2ddaa0ad335ab289396a95996349b14d5920f13bc755bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def matchVecConsPrefix (n : Q(Nat)) (e : Expr) : MetaM <| List Expr × Q(Nat) × Expr := do
  match_expr ← Meta.whnfR e with
  | Matrix.vecCons _ n x xs => do
    let (elems, n', tail) ← matchVecConsPrefix n xs
    return (x :: elems, n', tail)
  | _ =>
    return ([], n, e)

open Qq in
/-- A simproc that handles terms of the form `Matrix.vecCons a f i` where `i` is a numeric literal.

In practice, this is most effective at handling `![a, b, c] i`-style terms. -/
dsimproc cons_val (Matrix.vecCons _ _ _) := fun e => do
  let_expr Matrix.vecCons α en x xs' ei := ← Meta.whnfR e | return .continue
  let some i := ei.int? | return .continue
  let (xs, etailn, tail) ← matchVecConsPrefix en xs'
  let xs := x :: xs
  -- Determine if the tail is a numeral or only an offset.
  let (tailn, variadic, etailn) ← do
    let etailn_whnf : Q(ℕ) ← Meta.whnfD etailn
    if let Expr.lit (.natVal length) := etailn_whnf then
      pure (length, false, q(OfNat.ofNat $etailn_whnf))
    else if let .some ((base : Q(ℕ)), offset) ← (Meta.isOffset? etailn_whnf).run then
      let offset_e : Q(ℕ) := mkNatLit offset
      pure (offset, true, q($base + $offset))
    else
      pure (0, true, etailn)
  -- Wrap the index if possible, and abort if not
  let wrapped_i ←
    if variadic then
      -- can't wrap as we don't know the length
      unless 0 ≤ i ∧ i < xs.length + tailn do return .continue
      pure i.toNat
    else
      pure (i % (xs.length + tailn)).toNat
  if h : wrapped_i < xs.length then
    return .continue xs[wrapped_i]
  else
    -- Within the `tail`
    let _ ← synthInstanceQ q(NeZero $etailn)
    have i_lit : Q(ℕ) := mkRawNatLit (wrapped_i - xs.length)
    return .continue (.some <| .app tail q(OfNat.ofNat $i_lit : Fin $etailn))

end simprocs

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7aedbdea64e7cdf5493b612f1c735ea62cea293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
