# Multiset.proveZeroOrCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d204fd8187ff62d5232fb3ea3b901d03b295db3e29d29e09ef61309ec8ae5b34",
  "kind": "def",
  "lexical_name": "Multiset.proveZeroOrCons",
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
  "slug": "multiset-provezeroorcons--e7b0ca595d9edb20b3dec607",
  "source": {
    "blob": "068cb591d337b11a9351d80f2c6ced47aac6283c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7b0ca595d9edb20b3dec607aa1633739213c6501663c0f1d0ce3fff394d08ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d204fd8187ff62d5232fb3ea3b901d03b295db3e29d29e09ef61309ec8ae5b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Multiset.proveZeroOrCons {α : Q(Type u)} (s : Q(Multiset $α)) :
    MetaM (Multiset.ProveZeroOrConsResult s) :=
  match s.getAppFnArgs with
  | (``EmptyCollection.emptyCollection, _) => haveI : $s =Q {} := ⟨⟩; pure (.zero q(rfl))
  | (``Zero.zero, _) => haveI : $s =Q 0 := ⟨⟩; pure (.zero q(rfl))
  | (``Multiset.cons, #[_, (a : Q($α)), (s' : Q(Multiset $α))]) =>
    haveI : $s =Q .cons $a $s' := ⟨⟩
    pure (.cons a s' q(rfl))
  | (``Multiset.ofList, #[_, (val : Q(List $α))]) => do
    haveI : $s =Q .ofList $val := ⟨⟩
    return match ← List.proveNilOrCons val with
    | .nil pf => .zero q($pf ▸ Multiset.coe_nil : Multiset.ofList _ = _)
    | .cons a s' pf => .cons a q($s') q($pf ▸ Multiset.cons_coe $a $s' : Multiset.ofList _ = _)
  | (``Multiset.range, #[(n : Q(ℕ))]) => do
    have s : Q(Multiset ℕ) := s; .uncheckedCast _ _ <$> show MetaM (ProveZeroOrConsResult s) from do
    let ⟨nn, pn⟩ ← NormNum.deriveNat n _
    haveI' : $s =Q .range $n := ⟨⟩
    let nnL := nn.natLit!
    if nnL = 0 then
      haveI' : $nn =Q 0 := ⟨⟩
      return .zero q(Multiset.range_zero' $pn)
    else
      have n' : Q(ℕ) := mkRawNatLit (nnL - 1)
      haveI' : $nn =Q ($n').succ := ⟨⟩
      return .cons _ _ q(Multiset.range_succ' $pn rfl)
  | (fn, args) =>
    throwError "Multiset.proveZeroOrCons: unsupported multiset expression {s} ({fn}, {args})"

/-- This represents the result of trying to determine whether the given expression
`s : Q(Finset $α)` is either empty or consists of an element inserted into a strict subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068cb591d337b11a9351d80f2c6ced47aac6283c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
