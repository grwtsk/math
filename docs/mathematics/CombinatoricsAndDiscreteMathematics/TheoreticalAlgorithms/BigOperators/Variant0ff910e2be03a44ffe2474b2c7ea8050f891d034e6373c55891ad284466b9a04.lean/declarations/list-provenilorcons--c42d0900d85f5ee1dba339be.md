# List.proveNilOrCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c171df82b08781b2ceb04c1e867e5bdb4a40c2f83fd6fb97e82b8f630881d641",
  "kind": "def",
  "lexical_name": "List.proveNilOrCons",
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
  "slug": "list-provenilorcons--c42d0900d85f5ee1dba339be",
  "source": {
    "blob": "414386089cf7c6743b64069567eb52dd01c1fba3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 110,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c42d0900d85f5ee1dba339be52f1e60c1c8c431db13d3b8ea7d837d809dc6af7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c171df82b08781b2ceb04c1e867e5bdb4a40c2f83fd6fb97e82b8f630881d641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def List.proveNilOrCons {u : Level} {α : Q(Type u)} (s : Q(List $α)) :
    MetaM (List.ProveNilOrConsResult s) :=
  s.withApp fun e a =>
  match (e, e.constName, a) with
  | (_, ``EmptyCollection.emptyCollection, _) => haveI : $s =Q {} := ⟨⟩; pure (.nil q(.refl []))
  | (_, ``List.nil, _) => haveI : $s =Q [] := ⟨⟩; pure (.nil q(rfl))
  | (_, ``List.cons, #[_, (a : Q($α)), (s' : Q(List $α))]) =>
    haveI : $s =Q $a :: $s' := ⟨⟩; pure (.cons a s' q(rfl))
  | (_, ``List.range, #[(n : Q(ℕ))]) =>
    have s : Q(List ℕ) := s; .uncheckedCast _ _ <$> show MetaM (ProveNilOrConsResult s) from do
    let ⟨nn, pn⟩ ← NormNum.deriveNat n _
    haveI' : $s =Q .range $n := ⟨⟩
    let nnL := nn.natLit!
    if nnL = 0 then
      haveI' : $nn =Q 0 := ⟨⟩
      return .nil q(List.range_zero' $pn)
    else
      have n' : Q(ℕ) := mkRawNatLit (nnL - 1)
      have : $nn =Q .succ $n' := ⟨⟩
      return .cons _ _ q(List.range_succ_eq_map' $pn (.refl $nn))
  | (_, ``List.finRange, #[(n : Q(ℕ))]) =>
    have s : Q(List (Fin $n)) := s
    .uncheckedCast _ _ <$> show MetaM (ProveNilOrConsResult s) from do
    haveI' : $s =Q .finRange $n := ⟨⟩
    return match ← Nat.unifyZeroOrSucc n with -- We want definitional equality on `n`.
    | .zero _pf => .nil q(List.finRange_zero)
    | .succ n' _pf => .cons _ _ q(List.finRange_succ_eq_map $n')
  | (.const ``List.map [v, _], _, #[(β : Q(Type v)), _, (f : Q($β → $α)), (xxs : Q(List $β))]) => do
    haveI' : $s =Q ($xxs).map $f := ⟨⟩
    return match ← List.proveNilOrCons xxs with
    | .nil pf => .nil q(($pf ▸ List.map_nil : List.map _ _ = _))
    | .cons x xs pf => .cons q($f $x) q(($xs).map $f)
      q(($pf ▸ List.map_cons : List.map _ _ = _))
  | (_, fn, args) =>
    throwError "List.proveNilOrCons: unsupported List expression {s} ({fn}, {args})"

/-- This represents the result of trying to determine whether the given expression
`s : Q(Multiset $α)` is either empty or consists of an element inserted into a strict subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant0ff910e2be03a44ffe2474b2c7ea8050f891d034e6373c55891ad284466b9a04.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `414386089cf7c6743b64069567eb52dd01c1fba3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
