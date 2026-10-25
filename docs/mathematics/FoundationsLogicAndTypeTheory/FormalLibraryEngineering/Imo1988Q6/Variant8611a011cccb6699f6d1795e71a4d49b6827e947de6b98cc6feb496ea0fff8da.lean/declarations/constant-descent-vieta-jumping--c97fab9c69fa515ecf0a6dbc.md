# constant_descent_vieta_jumping

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89f7d19b5bc77b6190ed12cfe4155be1a57f6310",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8611a011cccb6699f6d1795e71a4d49b6827e947de6b98cc6feb496ea0fff8da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c193189b-bdde-a085-d173-6d26f88737d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b473fa2e-0170-d74e-6847-3ec4ff0b6cb8",
  "kind": "theorem",
  "lexical_name": "constant_descent_vieta_jumping",
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
  "slug": "constant-descent-vieta-jumping--c97fab9c69fa515ecf0a6dbc",
  "source": {
    "blob": "89f7d19b5bc77b6190ed12cfe4155be1a57f6310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant8611a011cccb6699f6d1795e71a4d49b6827e947de6b98cc6feb496ea0fff8da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c97fab9c69fa515ecf0a6dbc473663e9392e31485bcac41333566bff8e774347",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant8611a011cccb6699f6d1795e71a4d49b6827e947de6b98cc6feb496ea0fff8da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b473fa2e-0170-d74e-6847-3ec4ff0b6cb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constant_descent_vieta_jumping (x y : ℕ) {claim : Prop} {H : ℕ → ℕ → Prop} (h₀ : H x y)
    (B : ℕ → ℤ) (C : ℕ → ℤ) (base : ℕ → ℕ → Prop)
    (H_quad : ∀ {x y}, H x y ↔ (y : ℤ) * y - B x * y + C x = 0) (H_symm : ∀ {x y}, H x y ↔ H y x)
    (H_zero : ∀ {x}, H x 0 → claim) (H_diag : ∀ {x}, H x x → claim)
    (H_desc : ∀ {x y}, 0 < x → x < y → ¬base x y → H x y →
      ∀ y', y' * y' - B x * y' + C x = 0 → y' = B x - y → y' * y = C x → 0 ≤ y' ∧ y' ≤ x)
    (H_base : ∀ {x y}, H x y → base x y → claim) : claim := by
  -- First of all, we may assume that x ≤ y.
  -- We justify this using H_symm.
  wlog hxy : x ≤ y
  · rw [H_symm] at h₀; apply this y x h₀ B C base _ _ _ _ _ _ (le_of_not_le hxy); assumption'
  -- In fact, we can easily deal with the case x = y.
  by_cases x_eq_y : x = y
  · subst x_eq_y; exact H_diag h₀
  -- Hence we may assume that x < y.
  replace hxy : x < y := lt_of_le_of_ne hxy x_eq_y
  clear x_eq_y
  -- Consider the upper branch of the hyperbola defined by H.
  let upper_branch : Set (ℕ × ℕ) := {p | H p.1 p.2 ∧ p.1 < p.2}
  -- Note that the point p = (x,y) lies on the upper branch.
  let p : ℕ × ℕ := ⟨x, y⟩
  have hp : p ∈ upper_branch := ⟨h₀, hxy⟩
  -- We also consider the exceptional set of solutions (a,b) that satisfy
  -- a = 0 or a = b or B a = b or B a = b + a or that lie in the base locus.
  let exceptional : Set (ℕ × ℕ) :=
    {p | H p.1 p.2 ∧ (base p.1 p.2 ∨ p.1 = 0 ∨ p.1 = p.2 ∨ B p.1 = p.2 ∨ B p.1 = p.2 + p.1)}
  -- Let S be the projection of the upper branch on to the y-axis
  -- after removing the exceptional locus.
  let S : Set ℕ := Prod.snd '' (upper_branch \ exceptional)
  -- The strategy is to show that the exceptional locus in nonempty
  -- by running a descent argument that starts with the given point p = (x,y).
  -- Our assumptions ensure that we can then prove the claim.
  suffices exc : exceptional.Nonempty
  · -- Suppose that there exists an element in the exceptional locus.
    simp only [Set.Nonempty, Prod.exists, Set.mem_setOf_eq] at exc
    -- Let (a,b) be such an element, and consider all the possible cases.
    rcases exc with ⟨a, b, hH, hb⟩
    rcases hb with (_ | rfl | rfl | hB | hB)
    -- The first three cases are rather easy to solve.
    · solve_by_elim
    · rw [H_symm] at hH; solve_by_elim
    · solve_by_elim
    -- The final two cases are very similar.
    all_goals
      -- Consider the quadratic equation that (a,b) satisfies.
      rw [H_quad] at hH
      -- We find the other root of the equation, and Vieta's formulas.
      rcases vieta_formula_quadratic hH with ⟨c, h_root, hV₁, hV₂⟩
      -- By substitutions we find that b = 0 or b = a.
      simp only [hB, add_right_eq_self, add_right_inj] at hV₁
      subst hV₁
      rw [← Int.ofNat_zero] at *
      rw [← H_quad] at h_root
      -- And hence we are done by H_zero and H_diag.
      solve_by_elim
  -- To finish the main proof, we need to show that the exceptional locus is nonempty.
  -- So we assume that the exceptional locus is empty, and work towards deriving a contradiction.
  rw [Set.nonempty_iff_ne_empty]
  intro exceptional_empty
  -- Observe that S is nonempty.
  have S_nonempty : S.Nonempty := by
    -- It contains the image of p.
    use p.2
    apply Set.mem_image_of_mem
    -- After all, we assumed that the exceptional locus is empty.
    rwa [exceptional_empty, Set.diff_empty]
  -- We are now set for an infinite descent argument.
  -- Let m be the smallest element of the nonempty set S.
  let m : ℕ := WellFounded.min Nat.lt_wfRel.wf S S_nonempty
  have m_mem : m ∈ S := WellFounded.min_mem Nat.lt_wfRel.wf S S_nonempty
  have m_min : ∀ k ∈ S, ¬k < m := fun k hk => WellFounded.not_lt_min Nat.lt_wfRel.wf S S_nonempty hk
  -- It suffices to show that there is point (a,b) with b ∈ S and b < m.
  rsuffices ⟨p', p'_mem, p'_small⟩ : ∃ p' : ℕ × ℕ, p'.2 ∈ S ∧ p'.2 < m
  · solve_by_elim
  -- Let (m_x, m_y) be a point on the upper branch that projects to m ∈ S
  -- and that does not lie in the exceptional locus.
  rcases m_mem with ⟨⟨mx, my⟩, ⟨⟨hHm, mx_lt_my⟩, h_base⟩, m_eq⟩
  -- This means that m_y = m,
  -- and the conditions H(m_x, m_y) and m_x < m_y are satisfied.
  simp only at mx_lt_my hHm m_eq
  simp only [hHm, Set.mem_setOf_eq, true_and] at h_base
  push_neg at h_base
  -- Finally, it also means that (m_x, m_y) does not lie in the base locus,
  -- that m_x ≠ 0, m_x ≠ m_y, B(m_x) ≠ m_y, and B(m_x) ≠ m_x + m_y.
  rcases h_base with ⟨h_base, hmx, hm_diag, hm_B₁, hm_B₂⟩
  replace hmx : 0 < mx := pos_iff_ne_zero.mpr hmx
  -- Consider the quadratic equation that (m_x, m_y) satisfies.
  have h_quad := hHm
  rw [H_quad] at h_quad
  -- We find the other root of the equation, and Vieta's formulas.
  rcases vieta_formula_quadratic h_quad with ⟨c, h_root, hV₁, hV₂⟩
  -- Now we rewrite Vietas formulas a bit, and apply the descent step.
  replace hV₁ : c = B mx - my := eq_sub_of_add_eq' hV₁
  rw [mul_comm] at hV₂
  have Hc := H_desc hmx mx_lt_my h_base hHm c h_root hV₁ hV₂
  -- This means that we may assume that c ≥ 0 and c ≤ m_x.
  cases' Hc with c_nonneg c_lt
  -- In other words, c is a natural number.
  lift c to ℕ using c_nonneg
  -- Recall that we are trying find a point (a,b) such that b ∈ S and b < m.
  -- We claim that p' = (c, m_x) does the job.
  let p' : ℕ × ℕ := ⟨c, mx⟩
  use p'
  -- The second condition is rather easy to check, so we do that first.
  constructor; swap
  · rwa [m_eq] at mx_lt_my
  -- Now we need to show that p' projects onto S. In other words, that c ∈ S.
  -- We do that, by showing that it lies in the upper branch
  -- (which is sufficient, because we assumed that the exceptional locus is empty).
  apply Set.mem_image_of_mem
  rw [exceptional_empty, Set.diff_empty]
  -- Now we are ready to prove that p' = (c, m_x) lies on the upper branch.
  -- We need to check two conditions: H(c, m_x) and c < m_x.
  constructor <;> dsimp only
  · -- The first condition is not so hard. After all, c is the other root of the quadratic equation.
    rw [H_symm, H_quad]
    simpa using h_root
  · -- For the second condition, we note that it suffices to check that c ≠ m_x.
    suffices hc : c ≠ mx
    · refine' lt_of_le_of_ne _ hc
      exact_mod_cast c_lt
    -- However, recall that B(m_x) ≠ m_x + m_y.
    -- If c = m_x, we can prove B(m_x) = m_x + m_y.
    contrapose! hm_B₂
    subst c
    simp [hV₁]
    -- Hence p' = (c, m_x) lies on the upper branch, and we are done.
#align imo1988_q6.constant_descent_vieta_jumping Imo1988Q6.constant_descent_vieta_jumping

end Imo1988Q6

open Imo1988Q6

/-- Question 6 of IMO1988. If a and b are two natural numbers
such that a*b+1 divides a^2 + b^2, show that their quotient is a perfect square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant8611a011cccb6699f6d1795e71a4d49b6827e947de6b98cc6feb496ea0fff8da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant8611a011cccb6699f6d1795e71a4d49b6827e947de6b98cc6feb496ea0fff8da.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f7d19b5bc77b6190ed12cfe4155be1a57f6310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
