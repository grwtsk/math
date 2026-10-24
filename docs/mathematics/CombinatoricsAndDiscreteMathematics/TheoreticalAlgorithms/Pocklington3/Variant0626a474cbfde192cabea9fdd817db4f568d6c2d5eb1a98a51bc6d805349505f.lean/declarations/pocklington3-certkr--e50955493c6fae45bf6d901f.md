# pocklington3_certKR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2332a42-678c-53ad-aa31-25beb11f012d",
  "kind": "theorem",
  "lexical_name": "pocklington3_certKR",
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
  "slug": "pocklington3-certkr--e50955493c6fae45bf6d901f",
  "source": {
    "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 307,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e50955493c6fae45bf6d901f2377c0f7f9ac32fc23d8df02c4d2b4f4c28cbe0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2332a42-678c-53ad-aa31-25beb11f012d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pocklington3_certKR (N root m e : ℕ) (F' : List PrimePow) (mode : Pocklington3CertMode)
    (cert : pocklington3_calculate N e root m F' mode) :
    Nat.Prime N := by
  unfold pocklington3_calculate at cert
  extract_lets F two_F R r s at cert
  simp only [Nat.div_eq_div, powModTR_eq, Nat.pred_eq_sub_one, Nat.mod_eq_mod, Nat.succ_eq_add_one,
    Nat.mul_eq, Nat.pow_eq, Nat.add_eq, Bool.and_eq_true, Nat.blt_eq, Nat.beq_eq] at cert
  obtain ⟨⟨⟨⟨⟨⟨⟨primitive, e_pos⟩, cert⟩, hnf⟩, odd_R⟩, psp⟩, divisors⟩, bound⟩ := cert
  have R_def : F * R + 1 = N := by
    rw [← Nat.div_add_mod N F, hnf]; rfl
  have even_F : Even F :=
    (Nat.even_pow.mpr ⟨even_two, e_pos.ne'⟩).mul_left _
  have odd_N : Odd N := by
    rw [← R_def, Nat.odd_add_one, Nat.not_odd_iff_even]
    exact even_F.mul_right _
  have F_def : F = (F'.map PrimePow.toNat).prod * 2 ^ e := by
    simp only [F, Nat.mul_eq, Nat.pow_eq]
    congr 1
    clear * - F'
    induction F' with
    | nil => rfl
    | cons h _ ih => simp only [ih, List.map_cons, List.prod_cons, mul_comm h.toNat]; rfl
  have hf₀ : F ≠ 0 := by
    rw [F_def]
    refine mul_ne_zero (List.prod_ne_zero ?_) (pow_ne_zero _ <| by decide)
    rw [List.mem_map, not_exists]
    exact fun pp h ↦ absurd (h.2) <| pow_ne_zero _ pp.pf.ne_zero
  have hf₂ : 2 ≤ F := by lia
  have hn₁ : N ≠ 1 := by
    rintro rfl
    rw [add_eq_right, mul_eq_zero] at R_def
    rw [R_def.resolve_left hf₀] at odd_R
    grind
  have hn₃ : 3 ≤ N := by grind
  have dvd_F_of_mem_F' (pp) (h : pp ∈ F') : pp.prime ∣ F := by
    rw [F_def]
    exact dvd_mul_of_dvd_left (dvd_trans pp.prime_dvd_toNat <| List.dvd_prod <|
      List.mem_map_of_mem h) _
  have h_two_F : two_F = 2 * F := mul_comm F 2
  have hrs : 2 * F * s + r = R := by
    rw [← Nat.div_add_mod R (2 * F), ← h_two_F]; rfl
  refine pocklington3_test N F R m r s R_def (mul_comm 2 F ▸ rfl) (mul_comm 2 F ▸ rfl)
    (by lia) odd_N (Nat.odd_iff.mpr odd_R) ?_ ?_ ?_ ?_
  · simp only [List.rec_and, Nat.beq_eq, powMod] at primitive
    rw [F_def, ← PrimePow.toNat_def ⟨2, e, Nat.prime_two, by simpa⟩, mul_comm, ← List.prod_cons,
      ← List.map_cons]
    refine fun p hp ↦ ⟨root, ?_, ?_⟩
    · rw [Nat.ModEq, Nat.one_mod_eq_one.mpr hn₁, ← powMod, psp]
    · obtain ⟨pp, hpp, rfl⟩ := mem_primeFactors_prod_toNat _ _ hp
      rw [List.mem_cons] at hpp
      refine of_gcd_pred_mod_eq_one _ _ ?_ (by lia)
      obtain rfl | hpp := hpp
      · convert primitive.1 using 5
        convert Nat.div_eq_sub_mod_div.symm
        exact (Nat.odd_iff.mp odd_N).symm
      · convert primitive.2 pp hpp using 5
        convert Nat.div_eq_sub_mod_div.symm
        rw [eq_comm, ← Nat.one_mod_eq_one.mpr pp.pf.ne_one, ← Nat.ModEq]
        refine Nat.ModEq.of_dvd (dvd_F_of_mem_F' _ hpp) ?_
        rw [Nat.ModEq, Nat.one_mod_eq_one.mpr (by lia), hnf]
  · rw [show F + 1 = 1 * F + 1 by simp, forallB_iff'] at divisors
    simp only [Nat.blt_eq, Nat.pos_iff_ne_zero, ne_eq, ← Nat.dvd_iff_mod_eq_zero] at divisors
    exact fun l hl₁ hl₂ ↦ divisors l hl₁ (by lia)
  · rw [← R_def, ← hrs]
    conv_lhs => exact show _ = ((s * 2 + m ^ 2) * F + r + m) * F + 1 by ring
    conv_rhs => exact show _ = (((F * 2 + r) * m + 2) * F + r + m) * F + 1 by ring
    gcongr 5
    exact bound
  · exact mode.to_cert _ _ cert

namespace Meta

open Lean Meta Qq

/-- Syntax for the non-square certificate mode in `pock3`:
- A numeric literal `0` means `s = 0`
- A numeric literal `p` (prime, `p > 2`) means `r² - 8s` is a quadratic non-residue mod `p`
- `<` means `r² < 8s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
