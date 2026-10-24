# tr2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc3ff662-c989-3fde-8b34-d20a0a6f71f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:281d78e4-a6f7-1949-5180-2191d3a7c2d8",
  "kind": "theorem",
  "lexical_name": "tr2",
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
  "slug": "tr2--5bc9ae9da9c0dbef6b0857a1",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 405,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc9ae9da9c0dbef6b0857a14ddc63495fac9f6df9b9caf9aa9869c3a5cea2d9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281d78e4-a6f7-1949-5180-2191d3a7c2d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr2 : D.trG2 ~[atTop] mainTr2Xi P D.bT D.JT := by
  have hlam := h.lam_pos
  -- (A) the collected §5 remainder is o(M⋆)
  have oA : (fun T => D.trG2 T - (2 * π * D.bT T * P.L T * D.intMu2 T + T / π * D.sumB2g T))
      =o[atTop] Mstar P := by
    refine evBound_isLittleO_of_le_mul (E := fun T => 2 * (l T ^ 2 * P.X T / T)) (tr2_first h)
      (by simpa using (tendsto_l_sq_mul_X_div P hlam h.lam_lt_one).const_mul 2) ?_
    filter_upwards [regime h] with T ⟨hT, hl, hlog, hL, hX, hLl, hXT, _u0⟩
    have hT0 : 0 < T := by linarith
    have hlogle : Real.log (l T) ≤ l T := Real.log_le_self (by linarith)
    unfold Rxi Mstar
    rw [show 2 * (l T ^ 2 * P.X T / T) * (T * P.L T * l T ^ 2)
        = P.L T * l T ^ 3 * l T * (2 * P.X T) by field_simp]
    gcongr <;> linarith
  -- (B) the μ-moment remainder is o(M⋆)
  have oB : (fun T => 2 * π * D.bT T * P.L T * (D.intMu2 T - T * ell1 T ^ 2 / (4 * π ^ 2)))
      =o[atTop] Mstar P := by
    obtain ⟨Cμ, hCμ, hμ⟩ := h.muints2.eventually_le
    refine isLittleO_of_le_mul (E := fun T => (2 * Cμ / π) * (l T ^ 2)⁻¹)
      (by simpa using tendsto_inv_l_sq.const_mul (2 * Cμ / π)) ?_
    filter_upwards [hμ, regime h, h.ab_range] with T hμ ⟨hT, hl, _u0, hL, _u1, _u2, _u3, hℓ2⟩
      ⟨hb2, hba, ha1, _u0⟩
    have hπ := Real.pi_pos
    have hb0 : 0 ≤ D.bT T := by linarith
    have hb1 : D.bT T ≤ 1 := hba.trans ha1
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ 2 * π * D.bT T * P.L T)]
    have hℓsq : ell1 T ^ 2 ≤ 4 * l T ^ 2 := by nlinarith [l_le_ell1 T]
    have hl0 : 0 < l T := by linarith
    calc 2 * π * D.bT T * P.L T * |D.intMu2 T - T * ell1 T ^ 2 / (4 * π ^ 2)|
        ≤ 2 * π * 1 * P.L T * (Cμ * (T * ell1 T ^ 2 / (4 * π ^ 2) / l T ^ 2)) := by gcongr
      _ = Cμ * T * P.L T * ell1 T ^ 2 / (2 * π * l T ^ 2) := by field_simp <;> ring
      _ ≤ Cμ * T * P.L T * (4 * l T ^ 2) / (2 * π * l T ^ 2) := by gcongr
      _ = (2 * Cμ / π) * (l T ^ 2)⁻¹ * Mstar P T := by unfold Mstar; field_simp <;> ring
  -- (C) the partial-summation remainder is o(M⋆), straight from the ε-form
  have oC : (fun T => T / π * (D.sumB2g T - P.L T ^ 3 / 2 * D.JT T)) =o[atTop] Mstar P := by
    rw [isLittleO_iff]
    intro c hc
    have hπ := Real.pi_pos
    filter_upwards [h.sumJ (c * π) (by positivity), eventually_gt_atTop (0:ℝ),
      Mstar_le h] with T hS hT ⟨hM0, _u0⟩
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos hM0, abs_mul,
      abs_of_nonneg (by positivity : (0:ℝ) ≤ T / π)]
    calc T / π * |D.sumB2g T - P.L T ^ 3 / 2 * D.JT T| ≤ T / π * (c * π * (l T ^ 2 * P.L T)) := by
          gcongr
      _ = c * Mstar P T := by unfold Mstar; field_simp
  -- sum, and compare M⋆ with the main term
  have hsum := (oA.add oB).add oC
  have hbig : Mstar P =O[atTop] mainTr2Xi P D.bT D.JT := by
    refine IsBigO.of_bound (4 * π) ?_
    filter_upwards [Mstar_le h] with T ⟨h0, h1⟩
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos h0]
    exact h1.trans (by
      have : 0 ≤ 4 * π := by positivity
      nlinarith [le_abs_self (mainTr2Xi P D.bT D.JT T)])
  have key := hsum.trans_isBigO hbig
  show (D.trG2 - mainTr2Xi P D.bT D.JT) =o[atTop] mainTr2Xi P D.bT D.JT
  refine key.congr' (Eventually.of_forall fun T => ?_) EventuallyEq.rfl
  have hπ : (π : ℝ) ≠ 0 := Real.pi_pos.ne'
  simp only [Pi.sub_apply, mainTr2Xi]
  field_simp <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
