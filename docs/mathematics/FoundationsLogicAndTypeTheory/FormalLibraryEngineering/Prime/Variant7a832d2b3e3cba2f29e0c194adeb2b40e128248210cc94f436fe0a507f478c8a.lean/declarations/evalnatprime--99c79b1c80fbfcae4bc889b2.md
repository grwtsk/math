# evalNatPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e6dabcd66e693937bdaa2a06b57f10c5647e9ca841cb6bcbfe019e22d1dee6c",
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
  "slug": "evalnatprime--99c79b1c80fbfcae4bc889b2",
  "source": {
    "blob": "907841c64782a7b51745206599192a6237994ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99c79b1c80fbfcae4bc889b209ca6c5651c58e09676adbf78725e2b10bc768f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e6dabcd66e693937bdaa2a06b57f10c5647e9ca841cb6bcbfe019e22d1dee6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num Nat.Prime _] def evalNatPrime : NormNumExt where eval {u α} e := do
  let .app (.const `Nat.Prime _) (n : Q(ℕ)) ← whnfR e | failure
  let ⟨nn, pn⟩ ← deriveNat n _
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
        evalMinFac.core nn _ nn q(.raw_refl _) nn.natLit! | failure
      return .isTrue q(isNat_prime_2 $pn $r $p2n)
  core

/-
/-- A partial proof of `factors`. Asserts that `l` is a sorted list of primes, lower bounded by a
prime `p`, which multiplies to `n`. -/
def FactorsHelper (n p : ℕ) (l : List ℕ) : Prop :=
  p.Prime → List.Chain (· ≤ ·) p l ∧ (∀ a ∈ l, Nat.Prime a) ∧ List.prod l = n

theorem factorsHelper_nil (a : ℕ) : FactorsHelper 1 a [] := fun _ =>
  ⟨List.Chain.nil, by rintro _ ⟨⟩, List.prod_nil⟩

theorem factorsHelper_cons' (n m a b : ℕ) (l : List ℕ) (h₁ : b * m = n) (h₂ : a ≤ b)
    (h₃ : minFac b = b) (H : FactorsHelper m b l) : FactorsHelper n a (b :: l) := fun pa =>
  have pb : b.Prime := Nat.prime_def_minFac.2 ⟨le_trans pa.two_le h₂, h₃⟩
  let ⟨f₁, f₂, f₃⟩ := H pb
  ⟨List.Chain.cons h₂ f₁,
    fun c h => (List.eq_or_mem_of_mem_cons h).elim (fun e => e.symm ▸ pb) (f₂ _),
    by rw [List.prod_cons, f₃, h₁]⟩

theorem factorsHelper_cons (n m a b : ℕ) (l : List ℕ) (h₁ : b * m = n) (h₂ : a < b)
    (h₃ : minFac b = b) (H : FactorsHelper m b l) : FactorsHelper n a (b :: l) :=
  factorsHelper_cons' _ _ _ _ _ h₁ h₂.le h₃ H

theorem factorsHelper_sn (n a : ℕ) (h₁ : a < n) (h₂ : minFac n = n) : FactorsHelper n a [n] :=
  factorsHelper_cons _ _ _ _ _ (mul_one _) h₁ h₂ (factorsHelper_nil _)

theorem factorsHelper_same (n m a : ℕ) (l : List ℕ) (h : a * m = n) (H : FactorsHelper m a l) :
    FactorsHelper n a (a :: l) := fun pa =>
  factorsHelper_cons' _ _ _ _ _ h le_rfl (Nat.prime_def_minFac.1 pa).2 H pa

theorem factorsHelper_same_sn (a : ℕ) : FactorsHelper a a [a] :=
  factorsHelper_same _ _ _ _ (mul_one _) (factorsHelper_nil _)

theorem factorsHelper_end (n : ℕ) (l : List ℕ) (H : FactorsHelper n 2 l) : Nat.factors n = l :=
  let ⟨h₁, h₂, h₃⟩ := H Nat.prime_two
  have := List.chain'_iff_pairwise.1 (@List.Chain'.tail _ _ (_ :: _) h₁)
  (List.eq_of_perm_of_sorted (Nat.factors_unique h₃ h₂) this (Nat.factors_sorted _)).symm
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant7a832d2b3e3cba2f29e0c194adeb2b40e128248210cc94f436fe0a507f478c8a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907841c64782a7b51745206599192a6237994ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
