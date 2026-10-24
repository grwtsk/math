# evalNatPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d040c26e72a2798727ed342456044128b6ef6588d2ae307e131dd53f86e6eee",
  "kind": "def",
  "lexical_name": "evalNatPrime",
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
  "slug": "evalnatprime--7004840106eb46ca56b8f5f1",
  "source": {
    "blob": "3fb72fd07189520eeb3ef30c091fc6cbed6b64be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 183,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7004840106eb46ca56b8f5f17f02163bee5dfb0c70bd06c9ee0137222ac4cc18",
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

Occurrence: `declaration:8d040c26e72a2798727ed342456044128b6ef6588d2ae307e131dd53f86e6eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num Nat.Prime _] def evalNatPrime : NormNumExt where eval {_ _} e := do
  let .app (.const `Nat.Prime _) (n : Q(ℕ)) ← whnfR e | failure
  let ⟨nn, pn⟩ ← deriveNat n q(Nat.instAddMonoidWithOne)
  let n' := nn.natLit!
  -- note: if `n` is not prime, we don't have to verify the calculation of `n.minFac`, we just have
  -- to compute it, which is a lot quicker
  let rec core : MetaM (Result q(Nat.Prime $n)) := do
    match n' with
    | 0 => haveI' : $nn =Q 0 := ⟨⟩; return .isFalse q(isNat_prime_0 $pn)
    | 1 => haveI' : $nn =Q 1 := ⟨⟩; return .isFalse q(isNat_prime_1 $pn)
    | _ =>
      let d := n'.minFac
      if d < n' then
        let prf : Q(¬ Nat.Prime $nn) := deriveNotPrime n' d nn
        return .isFalse q(isNat_not_prime $pn $prf)
      let r : Q(Nat.ble 2 $nn = true) := (q(Eq.refl true) : Expr)
      let .isNat _ _lit (p2n : Q(IsNat (minFac $nn) $nn)) ←
        evalMinFac.core nn nn q(.raw_refl _) n' | failure
      return .isTrue q(isNat_prime_2 $pn $r $p2n)
  core


end NormNum

end Meta

end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantaedae2a492a41e4908cb5f5baac8ddb6ac0ee270d0c84f6e1bcdc38e7034083d.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb72fd07189520eeb3ef30c091fc6cbed6b64be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
