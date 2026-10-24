# mkProdPrf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:837ab08ad74d0c326a464664f550537e0d647bc181e934faad968c3bf03be5be",
  "kind": "def",
  "lexical_name": "mkProdPrf",
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
  "slug": "mkprodprf--c5d2817842e439db1ee9446f",
  "source": {
    "blob": "d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 153,
    "path": "GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5d2817842e439db1ee9446f74241e770ea31278a54cb6c7100c925444ab5bac",
  "verification": {
    "reference": "docs/verification/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:837ab08ad74d0c326a464664f550537e0d647bc181e934faad968c3bf03be5be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkProdPrf (α : Q(Type u)) (sα : Q(Field $α)) (v : ℕ) (t : Tree ℕ)
    (e : Q($α)) : MetaM Expr := do
  let amwo ← synthInstanceQ q(AddMonoidWithOne $α)
  match t, e with
  | .node _ lhs rhs, ~q($e1 + $e2) => do
    let v1 ← mkProdPrf α sα v lhs e1
    let v2 ← mkProdPrf α sα v rhs e2
    mkAppM ``CancelDenoms.add_subst #[v1, v2]
  | .node _ lhs rhs, ~q($e1 - $e2) => do
    let v1 ← mkProdPrf α sα v lhs e1
    let v2 ← mkProdPrf α sα v rhs e2
    mkAppM ``CancelDenoms.sub_subst #[v1, v2]
  | .node _ lhs@(.node ln _ _) rhs, ~q($e1 * $e2) => do
    let v1 ← mkProdPrf α sα ln lhs e1
    let v2 ← mkProdPrf α sα (v / ln) rhs e2
    have ln' := (← mkOfNat α amwo <| mkRawNatLit ln).1
    have vln' := (← mkOfNat α amwo <| mkRawNatLit (v/ln)).1
    have v' := (← mkOfNat α amwo <| mkRawNatLit v).1
    let ntp : Q(Prop) := q($ln' * $vln' = $v')
    let npf ← synthesizeUsingNormNum ntp
    mkAppM ``CancelDenoms.mul_subst #[v1, v2, npf]
  | .node _ lhs (.node rn _ _), ~q($e1 / $e2) => do
    -- Invariant: e2 is equal to the natural number rn
    let v1 ← mkProdPrf α sα (v / rn) lhs e1
    have rn' := (← mkOfNat α amwo <| mkRawNatLit rn).1
    have vrn' := (← mkOfNat α amwo <| mkRawNatLit <| v / rn).1
    have v' := (← mkOfNat α amwo <| mkRawNatLit <| v).1
    let ntp : Q(Prop) := q($rn' / $e2 = 1)
    let npf ← synthesizeUsingNormNum ntp
    let ntp2 : Q(Prop) := q($vrn' * $rn' = $v')
    let npf2 ← synthesizeUsingNormNum ntp2
    mkAppM ``CancelDenoms.div_subst #[v1, npf, npf2]
  | t, ~q(-$e) => do
    let v ← mkProdPrf α sα v t e
    mkAppM ``CancelDenoms.neg_subst #[v]
  | _, _ => do
    have v' := (← mkOfNat α amwo <| mkRawNatLit <| v).1
    let e' ← mkAppM ``HMul.hMul #[v', e]
    mkEqRefl e'

/-- Theorems to get expression into a form that `findCancelFactor` and `mkProdPrf`
can more easily handle. These are important for dividing by rationals and negative integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
