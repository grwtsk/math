# Finset.proveEmptyOrCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0261a49803c109fb213f6c1cb03ad179be5a8d6e712d8ff963fc7e7164fca103",
  "kind": "def",
  "lexical_name": "Finset.proveEmptyOrCons",
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
  "slug": "finset-proveemptyorcons--b92e8e3c59b898e072be776f",
  "source": {
    "blob": "068cb591d337b11a9351d80f2c6ced47aac6283c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 269,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b92e8e3c59b898e072be776f7b7ec4f88eb9631faa31e29eb066144a1c03db8d",
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

Occurrence: `declaration:0261a49803c109fb213f6c1cb03ad179be5a8d6e712d8ff963fc7e7164fca103`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Finset.proveEmptyOrCons {α : Q(Type u)} (s : Q(Finset $α)) :
    MetaM (ProveEmptyOrConsResult s) :=
  match s.getAppFnArgs with
  | (``EmptyCollection.emptyCollection, _) => haveI : $s =Q {} := ⟨⟩; pure (.empty q(rfl))
  | (``Finset.cons, #[_, (a : Q($α)), (s' : Q(Finset $α)), (h : Q($a ∉ $s'))]) =>
    haveI : $s =Q .cons $a $s' $h := ⟨⟩
    pure (.cons a s' h q(.refl $s))
  | (``Finset.mk, #[_, (val : Q(Multiset $α)), (nd : Q(Multiset.Nodup $val))]) => do
    match ← Multiset.proveZeroOrCons val with
    | .zero pf => pure <| .empty (q($pf ▸ Finset.mk_zero) : Q(Finset.mk $val $nd = ∅))
    | .cons a s' pf => do
      let h : Q(Multiset.Nodup ($a ::ₘ $s')) := q($pf ▸ $nd)
      let nd' : Q(Multiset.Nodup $s') := q((Multiset.nodup_cons.mp $h).2)
      let h' : Q($a ∉ $s') := q((Multiset.nodup_cons.mp $h).1)
      return (.cons a q(Finset.mk $s' $nd') h'
        (q($pf ▸ Finset.mk_cons $h) : Q(Finset.mk $val $nd = Finset.cons $a ⟨$s', $nd'⟩ $h')))
  | (``Finset.range, #[(n : Q(ℕ))]) =>
    have s : Q(Finset ℕ) := s; .uncheckedCast _ _ <$> show MetaM (ProveEmptyOrConsResult s) from do
    let ⟨nn, pn⟩ ← NormNum.deriveNat n _
    haveI' : $s =Q .range $n := ⟨⟩
    let nnL := nn.natLit!
    if nnL = 0 then
      haveI : $nn =Q 0 := ⟨⟩
      return .empty q(Finset.range_zero' $pn)
    else
      have n' : Q(ℕ) := mkRawNatLit (nnL - 1)
      haveI' : $nn =Q ($n').succ := ⟨⟩
      return .cons n' _ _ q(Finset.range_succ' $pn (.refl $nn))
  | (``Finset.univ, #[_, (instFT : Q(Fintype $α))]) => do
    haveI' : $s =Q .univ := ⟨⟩
    match (← whnfI instFT).getAppFnArgs with
    | (``Fintype.mk, #[_, (elems : Q(Finset $α)), (complete : Q(∀ x : $α, x ∈ $elems))]) => do
      let res ← Finset.proveEmptyOrCons elems
      pure <| res.eq_trans q(Finset.univ_eq_elems $elems $complete)
    | e =>
      throwError "Finset.proveEmptyOrCons: could not determine elements of Fintype instance {e}"
  | (fn, args) =>
    throwError "Finset.proveEmptyOrCons: unsupported finset expression {s} ({fn}, {args})"

namespace NormNum

/-- If `a = b` and we can evaluate `b`, then we can evaluate `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant4b1fe97a664776e807b6d7938df88814046e549d3b0e6575b67dccef5aead34f.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068cb591d337b11a9351d80f2c6ced47aac6283c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
