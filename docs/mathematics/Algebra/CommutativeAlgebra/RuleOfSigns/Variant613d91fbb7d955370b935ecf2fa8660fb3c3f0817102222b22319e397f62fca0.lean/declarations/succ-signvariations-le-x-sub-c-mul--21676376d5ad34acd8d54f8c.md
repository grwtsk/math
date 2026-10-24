# succ_signVariations_le_X_sub_C_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e0efd5e-6e8b-c90e-4fd7-9981e2e5b447",
  "kind": "theorem",
  "lexical_name": "succ_signVariations_le_X_sub_C_mul",
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
  "slug": "succ-signvariations-le-x-sub-c-mul--21676376d5ad34acd8d54f8c",
  "source": {
    "blob": "fd5eb56e5b08d69344886f293b8780cd7182fcc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 273,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21676376d5ad34acd8d54f8c355dce51ad656872e8d114be2999d8a4a2fc1b09",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e0efd5e-6e8b-c90e-4fd7-9981e2e5b447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_signVariations_le_X_sub_C_mul (hη : 0 < η) (hP : P ≠ 0) :
    signVariations P + 1 ≤ signVariations ((X - C η) * P) := by
  -- do induction on the degree
  generalize hd : P.natDegree = d
  induction d using Nat.strong_induction_on generalizing P with | _ d ih =>
  -- can assume it starts positive, otherwise negate P
  wlog h_lC : 0 < leadingCoeff P generalizing P with H
  · simpa using @H (-P) (by simpa) (by simpa) (by grind [leadingCoeff_eq_zero, leadingCoeff_neg])
  --Adding a new root doesn't make the product zero, and increases degree by exactly one.
  have h_mul : (X - C η) * P ≠ 0 := mul_ne_zero (X_sub_C_ne_zero η) hP
  have h_deg_mul : natDegree ((X - C η) * P) = natDegree P + 1 := by
    rw [natDegree_mul (X_sub_C_ne_zero η) hP, natDegree_X_sub_C, add_comm]
  rcases d with _ | d
  · --P is zero degree, therefore a constant.
    have hcQ : 0 < coeff P 0 := by grind [leadingCoeff]
    have hxcQ : coeff ((X - C η) * P) 1 = coeff P 0 := by
      simp_all [coeff_X_sub_C_mul, coeff_eq_zero_of_natDegree_lt]
    dsimp [signVariations, List.signVariations, coeffList]
    rw [withBotSucc_degree_eq_natDegree_add_one hP, withBotSucc_degree_eq_natDegree_add_one h_mul]
    simp [h_deg_mul, hxcQ, hη, hcQ, hd, List.range_succ]
  -- P is positive degree. Set up some temporary variables for signs for the nextCoeffs.
  generalize hs_nC : SignType.sign P.nextCoeff = s_nC
  generalize hs_nC_mul : SignType.sign ((X - C η) * P).nextCoeff = s_nC_mul
  --We're really doing induction on `P.eraseLead` in a sense
  have h_ih : P.eraseLead.natDegree < d + 1 := by grind [eraseLead_natDegree_le]
  have h_mul_lC : SignType.sign ((X - C η) * P).leadingCoeff = 1 := by simp [h_lC]
  have h_ηP : 0 < η * coeff P (d + 1) := by grind [leadingCoeff, mul_pos]
  rcases s_nC.trichotomy with rfl | rfl | rfl; rotate_left
  · -- P starts with [+,0,...] so (X-C)*P starts with [+,-,...].
    obtain rfl : s_nC_mul = -1 := by
      have : coeff P d = 0 := by simpa [nextCoeff, hd] using hs_nC
      simp [*, ← hs_nC_mul, nextCoeff, coeff_X_sub_C_mul]
    /- We would like to just `have : eraseLead P ≠ 0`, so that we can use the inductive
      hypothesis on eraseLead P. but that isn't actually true: we could have P a monomial
      and then eraseLead P = 0, and then the inductive hypothesis doesn't hold. (It's only
      true as written for P ≠ 0.) So we need to do a case-split and handle this separately. -/
    by_cases eraseLead P = 0
    · grind [succ_signVariations_X_sub_C_mul_monomial,
        eraseLead_add_monomial_natDegree_leadingCoeff, zero_add]
    · /- Dropping the lead of the product exactly drops the first two of the eraseLead. This
        decreases the sign variations of the eraseLead by at least one, and of the product by at
       most one, so we can induct. -/
      have : signVariations ((X - C η) * P).eraseLead + 1 =
          signVariations ((X - C η) * P) := by
        simp [-leadingCoeff_mul, ← sign_ne_zero,
          signVariations_eq_eraseLead_add_ite h_mul, leadingCoeff_eraseLead_eq_nextCoeff,
          hs_nC_mul, h_mul_lC]
      have : ((X - C η) * P.eraseLead).signVariations ≤
          ((X - C η) * P).eraseLead.signVariations := by
        have := signVariations_eraseLead_le (eraseLead ((X - C η) * P))
        rwa [← eraseLead_mul_eq_mul_eraseLead_of_nextCoeff_zero hη.ne']
        grind [sign_eq_zero_iff]
      grind [signVariations_le_eraseLead_succ]
  all_goals
    have h₁ : nextCoeff P ≠ 0 := by simp [← sign_ne_zero, hs_nC]
    specialize ih _ h_ih (mt nextCoeff_eq_zero_of_eraseLead_eq_zero h₁) rfl
  · /- P starts with [+,+,...]. (X-C)*P starts with [+,?,...]. After dropping the lead of P, this
      becomes [+,...] and [+,...]. So the sign variations on P are unchanged when we induct, while
      (X-C)*P can only lose at most one sign change. -/
    have : P.signVariations = P.eraseLead.signVariations + 0 := by
      simp [signVariations_eq_eraseLead_add_ite hP, leadingCoeff_eraseLead_eq_nextCoeff h₁, *]
    grind [sign_eq_one_iff, signVariations_X_sub_C_mul_eraseLead_le]
  · /- P starts with [+,-,...], so (X-C)*P starts with [+,-,...]. After dropping the lead of P, this
    becomes [-,...] and [-,...]. Dropping the first one of each decreases (X-C)*P by one and P by
    one, so we can induct. -/
    have : P.signVariations = P.eraseLead.signVariations + 1 := by
      simp [signVariations_eq_eraseLead_add_ite hP, leadingCoeff_eraseLead_eq_nextCoeff h₁, *]
    trans ((X - C η) * P).eraseLead.signVariations + 1
    · grind [signVariations_eraseLead_mul_X_sub_C, sign_eq_neg_one_iff]
    · suffices SignType.sign ((X - C η) * P).nextCoeff = -1 by
        simp +decide [signVariations_eq_eraseLead_add_ite h_mul, h_lC,
          leadingCoeff_eraseLead_eq_nextCoeff, ← sign_eq_zero_iff, this]
      grind [← sign_eq_neg_one_iff, coeff_X_sub_C_mul, nextCoeff]

end StrictOrderedRing
section CommStrictOrderedRing

variable {R : Type*} [CommRing R] [LinearOrder R] [IsStrictOrderedRing R] (P : Polynomial R)

/-- **Descartes' Rule of Signs**: the number of positive roots is at most the number of sign
variations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd5eb56e5b08d69344886f293b8780cd7182fcc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
