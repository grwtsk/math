# squarefree_iff_prime_sq_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0430c336-d968-240f-48e8-12e66e76f84b",
  "kind": "theorem",
  "lexical_name": "squarefree_iff_prime_sq_not_dvd",
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
  "slug": "squarefree-iff-prime-sq-not-dvd--d76d847fb1d83e003068eb7d",
  "source": {
    "blob": "19958609d3065cb323ddf0f509958062494c9535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 417,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d76d847fb1d83e003068eb7dc514b8017f4e33edf4e0afdd31b3fc9dbfed1c60",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0430c336-d968-240f-48e8-12e66e76f84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarefree_iff_prime_sq_not_dvd {n : ℤ} :
    Squarefree n ↔ ∀ p : ℕ, p.Prime → ¬ (p : ℤ) ^ 2 ∣ n := by
  simp [← Int.squarefree_natAbs, Nat.squarefree_iff_prime_squarefree, ← Int.natCast_dvd,
    pow_two]

end Int

-- Porting note: comment out NormNum tactic, to be moved to another file.
/-

/-! ### Square-free prover -/


open NormNum

namespace Tactic

namespace NormNum

/-- A predicate representing partial progress in a proof of `Squarefree`. -/
def SquarefreeHelper (n k : ℕ) : Prop :=
  0 < k → (∀ m, Nat.Prime m → m ∣ bit1 n → bit1 k ≤ m) → Squarefree (bit1 n)

theorem squarefree_bit10 (n : ℕ) (h : SquarefreeHelper n 1) : Squarefree (bit0 (bit1 n)) := by
  refine' @Nat.minSqFacProp_div _ _ Nat.prime_two two_dvd_bit0 _ none _
  · rw [bit0_eq_two_mul (bit1 n), mul_dvd_mul_iff_left (two_ne_zero' ℕ)]
    exact Nat.not_two_dvd_bit1 _
  · rw [bit0_eq_two_mul, Nat.mul_div_right _ (by decide : 0 < 2)]
    refine' h (by decide) fun p pp dp => Nat.succ_le_of_lt (lt_of_le_of_ne pp.two_le _)
    rintro rfl
    exact Nat.not_two_dvd_bit1 _ dp

theorem squarefree_bit1 (n : ℕ) (h : SquarefreeHelper n 1) : Squarefree (bit1 n) := by
  refine' h (by decide) fun p pp dp => Nat.succ_le_of_lt (lt_of_le_of_ne pp.two_le _)
  rintro rfl; exact Nat.not_two_dvd_bit1 _ dp

theorem squarefree_helper_0 {k} (k0 : 0 < k) {p : ℕ} (pp : Nat.Prime p) (h : bit1 k ≤ p) :
    bit1 (k + 1) ≤ p ∨ bit1 k = p := by
  rcases lt_or_eq_of_le h with ((hp : _ + 1 ≤ _) | hp)
  · rw [bit1, bit0_eq_two_mul] at hp
    change 2 * (_ + 1) ≤ _ at hp
    rw [bit1, bit0_eq_two_mul]
    refine' Or.inl (lt_of_le_of_ne hp _)
    rintro rfl
    exact Nat.not_prime_mul (by decide) (lt_add_of_pos_left _ k0) pp
  · exact Or.inr hp

theorem squarefreeHelper_1 (n k k' : ℕ) (e : k + 1 = k')
    (hk : Nat.Prime (bit1 k) → ¬bit1 k ∣ bit1 n) (H : SquarefreeHelper n k') :
    SquarefreeHelper n k := fun k0 ih => by
  subst e
  refine' H (Nat.succ_pos _) fun p pp dp => _
  refine' (squarefree_helper_0 k0 pp (ih p pp dp)).resolve_right fun hp => _
  subst hp; cases hk pp dp

theorem squarefreeHelper_2 (n k k' c : ℕ) (e : k + 1 = k') (hc : bit1 n % bit1 k = c) (c0 : 0 < c)
    (h : SquarefreeHelper n k') : SquarefreeHelper n k := by
  refine' squarefree_helper_1 _ _ _ e (fun _ => _) h
  refine' mt _ (ne_of_gt c0); intro e₁
  rwa [← hc, ← Nat.dvd_iff_mod_eq_zero]

theorem squarefreeHelper_3 (n n' k k' c : ℕ) (e : k + 1 = k') (hn' : bit1 n' * bit1 k = bit1 n)
    (hc : bit1 n' % bit1 k = c) (c0 : 0 < c) (H : SquarefreeHelper n' k') : SquarefreeHelper n k :=
  fun k0 ih => by
  subst e
  have k0' : 0 < bit1 k := bit1_pos (Nat.zero_le _)
  have dn' : bit1 n' ∣ bit1 n := ⟨_, hn'.symm⟩
  have dk : bit1 k ∣ bit1 n := ⟨_, ((mul_comm _ _).trans hn').symm⟩
  have : bit1 n / bit1 k = bit1 n' := by rw [← hn', Nat.mul_div_cancel _ k0']
  have k2 : 2 ≤ bit1 k := Nat.succ_le_succ (bit0_pos k0)
  have pk : (bit1 k).Prime := by
    refine' Nat.prime_def_minFac.2 ⟨k2, le_antisymm (Nat.minFac_le k0') _⟩
    exact ih _ (Nat.minFac_prime (ne_of_gt k2)) (dvd_trans (Nat.minFac_dvd _) dk)
  have dkk' : ¬bit1 k ∣ bit1 n' := by
    rw [Nat.dvd_iff_mod_eq_zero, hc]
    exact ne_of_gt c0
  have dkk : ¬bit1 k * bit1 k ∣ bit1 n := by rwa [← Nat.dvd_div_iff_mul_dvd dk, this]
  refine' @Nat.minSqFacProp_div _ _ pk dk dkk none _
  rw [this]
  refine' H (Nat.succ_pos _) fun p pp dp => _
  refine' (squarefree_helper_0 k0 pp (ih p pp <| dvd_trans dp dn')).resolve_right fun e => _
  subst e
  contradiction

theorem squarefreeHelper_4 (n k k' : ℕ) (e : bit1 k * bit1 k = k') (hd : bit1 n < k') :
    SquarefreeHelper n k := by
  rcases Nat.eq_zero_or_pos n with h | h
  · subst n
    exact fun _ _ => squarefree_one
  subst e
  refine' fun k0 ih => Irreducible.squarefree (Nat.prime_def_le_sqrt.2 ⟨bit1_lt_bit1.2 h, _⟩)
  intro m m2 hm md
  obtain ⟨p, pp, hp⟩ := Nat.exists_prime_and_dvd (ne_of_gt m2)
  have :=
    (ih p pp (dvd_trans hp md)).trans
      (le_trans (Nat.le_of_dvd (lt_of_lt_of_le (by decide) m2) hp) hm)
  rw [Nat.le_sqrt] at this
  exact not_le_of_gt hd this

theorem not_squarefree_mul (a aa b n : ℕ) (ha : a * a = aa) (hb : aa * b = n) (h₁ : 1 < a) :
    ¬Squarefree n := by
  rw [← hb, ← ha]
  exact fun H => ne_of_gt h₁ (Nat.isUnit_iff.1 <| H _ ⟨_, rfl⟩)

/-- Given `e` a natural numeral and `a : ℕ` with `a^2 ∣ n`, return `⊢ ¬ Squarefree e`. -/
unsafe def prove_non_squarefree (e : expr) (n a : ℕ) : tactic expr := do
  let ea := reflect a
  let eaa := reflect (a * a)
  let c ← mk_instance_cache q(Nat)
  let (c, p₁) ← prove_lt_nat c q(1) ea
  let b := n / (a * a)
  let eb := reflect b
  let (c, eaa, pa) ← prove_mul_nat c ea ea
  let (c, e', pb) ← prove_mul_nat c eaa eb
  guard (e' == e)
  return <| q(@not_squarefree_mul).mk_app [ea, eaa, eb, e, pa, pb, p₁]

/-- Given `en`,`en1 := bit1 en`, `n1` the value of `en1`, `ek`,
  returns `⊢ squarefree_helper en ek`. -/
unsafe def prove_squarefree_aux :
    ∀ (ic : instance_cache) (en en1 : expr) (n1 : ℕ) (ek : expr) (k : ℕ), tactic expr
  | ic, en, en1, n1, ek, k => do
    let k1 := bit1 k
    let ek1 := q((bit1 : ℕ → ℕ)).mk_app [ek]
    if n1 < k1 * k1 then do
        let (ic, ek', p₁) ← prove_mul_nat ic ek1 ek1
        let (ic, p₂) ← prove_lt_nat ic en1 ek'
        pure <| q(squarefreeHelper_4).mk_app [en, ek, ek', p₁, p₂]
      else do
        let c := n1 % k1
        let k' := k + 1
        let ek' := reflect k'
        let (ic, p₁) ← prove_succ ic ek ek'
        if c = 0 then do
            let n1' := n1 / k1
            let n' := n1' / 2
            let en' := reflect n'
            let en1' := q((bit1 : ℕ → ℕ)).mk_app [en']
            let (ic, _, pn') ← prove_mul_nat ic en1' ek1
            let c := n1' % k1
            guard (c ≠ 0)
            let (ic, ec, pc) ← prove_div_mod ic en1' ek1 tt
            let (ic, p₀) ← prove_pos ic ec
            let p₂ ← prove_squarefree_aux ic en' en1' n1' ek' k'
            pure <| q(squarefreeHelper_3).mk_app [en, en', ek, ek', ec, p₁, pn', pc, p₀, p₂]
          else do
            let (ic, ec, pc) ← prove_div_mod ic en1 ek1 tt
            let (ic, p₀) ← prove_pos ic ec
            let p₂ ← prove_squarefree_aux ic en en1 n1 ek' k'
            pure <| q(squarefreeHelper_2).mk_app [en, ek, ek', ec, p₁, pc, p₀, p₂]

/-- Given `n > 0` a squarefree natural numeral, returns `⊢ Squarefree n`. -/
unsafe def prove_squarefree (en : expr) (n : ℕ) : tactic expr :=
  match match_numeral en with
  | match_numeral_result.one => pure q(@squarefree_one ℕ _)
  | match_numeral_result.bit0 en1 =>
    match match_numeral en1 with
    | match_numeral_result.one => pure q(Nat.squarefree_two)
    | match_numeral_result.bit1 en => do
      let ic ← mk_instance_cache q(ℕ)
      let p ← prove_squarefree_aux ic en en1 (n / 2) q((1 : ℕ)) 1
      pure <| q(squarefree_bit10).mk_app [en, p]
    | _ => failed
  | match_numeral_result.bit1 en' => do
    let ic ← mk_instance_cache q(ℕ)
    let p ← prove_squarefree_aux ic en' en n q((1 : ℕ)) 1
    pure <| q(squarefree_bit1).mk_app [en', p]
  | _ => failed

/-- Evaluates the `Squarefree` predicate on naturals. -/
@[norm_num]
unsafe def eval_squarefree : expr → tactic (expr × expr)
  | q(@Squarefree ℕ $(inst) $(e)) => do
    is_def_eq inst q(Nat.monoid)
    let n ← e.toNat
    match n with
      | 0 => false_intro q(@not_squarefree_zero ℕ _ _)
      | 1 => true_intro q(@squarefree_one ℕ _)
      | _ =>
        match n with
        | some d => prove_non_squarefree e n d >>= false_intro
        | none => prove_squarefree e n >>= true_intro
  | _ => failed

end NormNum

end Tactic

-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Varianta29abacc2428dadd3b78bc22deeaa665da1328fb243a500b574b8affcbd99c7f.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19958609d3065cb323ddf0f509958062494c9535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
