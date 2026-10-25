# evalNatPowMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7289c5b3867ffbccaecfd0fc6bf0c459815465f30cb5625fae90556c4fff9b85",
  "kind": "def",
  "lexical_name": "evalNatPowMod",
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
  "slug": "evalnatpowmod--3f47866f110e9d3d88c0e6bd",
  "source": {
    "blob": "fdb8ef3dd4cb4dcc2f4e51a0c211c9ea703ee680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f47866f110e9d3d88c0e6bddd346d9f7752e9dde9d9b38f258d9aa7542a8c67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7289c5b3867ffbccaecfd0fc6bf0c459815465f30cb5625fae90556c4fff9b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalNatPowMod (a b m : Q(ℕ)) : (c : Q(ℕ)) × Q(Nat.mod (Nat.pow $a $b) $m = $c) :=
  if b.natLit! = 0 then
    haveI : $b =Q 0 := ⟨⟩
    if m.natLit! = 0 then -- a ^ 0 % 0 = 1
      haveI : $m =Q 0 := ⟨⟩
      ⟨q(nat_lit 1), q(natPow_zero_natMod_zero)⟩
    else
      have m' : Q(ℕ) := mkRawNatLit (m.natLit! - 1)
      if m'.natLit! = 0 then -- a ^ 0 % 1 = 0
        haveI : $m =Q 1 := ⟨⟩
        ⟨q(nat_lit 0), q(natPow_zero_natMod_one)⟩
      else -- a ^ 0 % m = 1
        have m'' : Q(ℕ) := mkRawNatLit (m'.natLit! - 1)
        haveI : $m =Q Nat.succ (Nat.succ $m'') := ⟨⟩
        ⟨q(nat_lit 1), q(natPow_zero_natMod_succ_succ)⟩
  else if b.natLit! = 1 then -- a ^ 1 % m = a % m
    have c : Q(ℕ) := mkRawNatLit (a.natLit! % m.natLit!)
    haveI : $b =Q 1 := ⟨⟩
    haveI : $c =Q Nat.mod $a $m := ⟨⟩
    ⟨c, q(natPow_one_natMod)⟩
  else
    have c₀ : Q(ℕ) := mkRawNatLit (a.natLit! % m.natLit!)
    haveI : $c₀ =Q Nat.mod $a $m := ⟨⟩
    let ⟨c, p⟩ := go b.natLit!.log2 a m (mkRawNatLit 1) c₀ b _ .rfl
    ⟨c, q(($p).run)⟩
where
  /-- Invariants: `a ^ b₀ % m = c₀`, `depth > 0`, `b >>> depth = b₀` -/
  go (depth : Nat) (a m b₀ c₀ b : Q(ℕ))
      (p : Q(Prop)) (hp : $p =Q (Nat.mod (Nat.pow $a $b₀) $m = $c₀)) :
      (c : Q(ℕ)) × Q(IsNatPowModT $p $a $b $m $c) :=
    let b' := b.natLit!
    let m' := m.natLit!
    if depth ≤ 1 then
      let a' := a.natLit!
      let c₀' := c₀.natLit!
      if b' &&& 1 == 0 then
        have c : Q(ℕ) := mkRawNatLit ((c₀' * c₀') % m')
        haveI : $c =Q Nat.mod (Nat.mul $c₀ $c₀) $m := ⟨⟩
        haveI : $b =Q 2 * $b₀ := ⟨⟩
        ⟨c, q(IsNatPowModT.bit0)⟩
      else
        have c : Q(ℕ) := mkRawNatLit ((c₀' * ((c₀' * a') % m')) % m')
        haveI : $c =Q Nat.mod (Nat.mul $c₀ (Nat.mod (Nat.mul $c₀ $a) $m)) $m := ⟨⟩
        haveI : $b =Q 2 * $b₀ + 1 := ⟨⟩
        ⟨c, q(IsNatPowModT.bit1)⟩
    else
      let d := depth >>> 1
      have hi : Q(ℕ) := mkRawNatLit (b' >>> d)
      let ⟨c1, p1⟩ := go (depth - d) a m b₀ c₀ hi p (by exact hp)
      let ⟨c2, p2⟩ := go d a m hi c1 b q(Nat.mod (Nat.pow $a $hi) $m = $c1) ⟨⟩
      ⟨c2, q(($p1).trans $p2)⟩
end NormNum
end Meta
end Mathlib
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdb8ef3dd4cb4dcc2f4e51a0c211c9ea703ee680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
