# evalMinFac.core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:805d3bbd021eed7d005c56c8349487461b7b61950cd5b233835242a686e75902",
  "kind": "def",
  "lexical_name": "evalMinFac.core",
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
  "slug": "evalminfac-core--fcfa10bef7d74ec5568727e3",
  "source": {
    "blob": "3fb72fd07189520eeb3ef30c091fc6cbed6b64be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 124,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcfa10bef7d74ec5568727e3784c2fbf77edccc78ed32c2f6ff9caf36321e0b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:805d3bbd021eed7d005c56c8349487461b7b61950cd5b233835242a686e75902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalMinFac.core (n : Q(ℕ)) (nn : Q(ℕ)) (pn : Q(IsNat $n $nn))
    (n' : ℕ) : MetaM (Result q(Nat.minFac $n)) := do
  let sℕ : Q(AddMonoidWithOne ℕ) := q(Nat.instAddMonoidWithOne)
  let rec aux (ek : Q(ℕ)) (prf : Q(MinFacHelper $nn $ek)) :
      (c : Q(ℕ)) × Q(IsNat (Nat.minFac $n) $c) :=
    let k := ek.natLit!
    -- remark: `deriveBool q($nn < $ek * $ek)` is 2x slower than the following test.
    if n' < k * k then
      let r : Q(Nat.ble ($ek * $ek) $nn = false) := (q(Eq.refl false) : Expr)
      ⟨nn, q(isNat_minFac_4 $pn $prf $r)⟩
    else
      let d : ℕ := k.minFac
      -- the following branch is not necessary for the correctness,
      -- but makes the algorithm 2x faster
      if d < k then
        have ek' : Q(ℕ) := mkRawNatLit <| k + 2
        let pk' : Q($ek + 2 = $ek') := (q(Eq.refl $ek') : Expr)
        let pd := deriveNotPrime k d ek
        aux ek' q(minFacHelper_2 $pk' $pd $prf)
      -- remark: `deriveBool q($nn % $ek = 0)` is 5x slower than the following test
      else if n' % k = 0 then
        let r : Q(nat_lit 0 = $nn % $ek) := (q(Eq.refl 0) : Expr)
        let r' : Q(IsNat (minFac $n) $ek) := q(isNat_minFac_3 _ $pn $prf $r)
        ⟨ek, r'⟩
      else
        let r : Q(Nat.beq ($nn % $ek) 0 = false) := (q(Eq.refl false) : Expr)
        have ek' : Q(ℕ) := mkRawNatLit <| k + 2
        let pk' : Q($ek + 2 = $ek') := (q(Eq.refl $ek') : Expr)
        aux ek' q(minFacHelper_3 $pk' $r $prf)
  if n' = 1 then
    let pn : Q(IsNat $n (nat_lit 1)) := pn
    return .isNat sℕ q(nat_lit 1) q(isNat_minFac_1 $pn)
  if n' % 2 = 0 then
    let pq : Q($nn % 2 = 0) := (q(Eq.refl 0) : Expr)
    return .isNat sℕ q(nat_lit 2) q(isNat_minFac_2 $pn $pq)
  let pp : Q(Nat.ble 2 $nn = true) := (q(Eq.refl true) : Expr)
  let pq : Q(1 = $nn % 2) := (q(Eq.refl (nat_lit 1)) : Expr)
  let ⟨c, pc⟩ := aux q(nat_lit 3) q(minFacHelper_0 $nn $pp $pq)
  return .isNat sℕ c pc

/-- The `norm_num` extension which identifies expressions of the form `minFac n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb72fd07189520eeb3ef30c091fc6cbed6b64be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
