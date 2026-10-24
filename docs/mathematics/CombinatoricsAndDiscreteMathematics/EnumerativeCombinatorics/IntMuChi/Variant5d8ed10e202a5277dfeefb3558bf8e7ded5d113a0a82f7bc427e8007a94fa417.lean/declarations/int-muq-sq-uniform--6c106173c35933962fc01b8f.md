# int_muq_sq_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:128eba17-c7c8-b6f6-9c5d-ec9a2219820c",
  "kind": "theorem",
  "lexical_name": "int_muq_sq_uniform",
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
  "slug": "int-muq-sq-uniform--6c106173c35933962fc01b8f",
  "source": {
    "blob": "a2e771f291b4636d8b3d168c4d9f84ef1d5c8db5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 508,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c106173c35933962fc01b8fd11eda4e7664899f45a7ada4347655ab97f757c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:128eba17-c7c8-b6f6-9c5d-ec9a2219820c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_muq_sq_uniform (C : ℝ) : ∀ (κ q : ℕ), 1 ≤ q → Continuous (muq κ q) →
    (∀ τ : ℝ, 1 ≤ |τ| →
      |muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))| ≤ C / τ ^ 2) →
    ∀ T : ℝ, max (2 * Real.pi * Real.exp 4) (32 * Real.pi ^ 2 * (C * (1 + C) + 1)) ≤ T →
      |(∫ τ in T..(2 * T), muq κ q τ ^ 2) - T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)|
        ≤ (8 * (1 + 2 * Real.log 2 ^ 2) + 1 + 4 * Real.pi * |C|)
          * (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2 := by
  intro κ q hq hcont hst T hT
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hq
  have hπ : (0 : ℝ) < Real.pi := Real.pi_pos
  set c₀ : ℝ := Real.log q / (2 * Real.pi) with hc₀
  have hc₀0 : 0 ≤ c₀ := by rw [hc₀]; exact div_nonneg (Real.log_nonneg (by exact_mod_cast hq)) (by positivity)
  set g : ℝ → ℝ := fun τ => muq κ q τ - c₀ with hg
  have hgcont : Continuous g := hcont.sub continuous_const
  have hgst : ∀ τ : ℝ, 1 ≤ |τ| →
      |g τ - (1 / (2 * Real.pi)) * Real.log (|τ| / (2 * Real.pi))| ≤ C / τ ^ 2 := by
    intro τ hτ
    have hτ0 : 0 < |τ| := by linarith
    have e : g τ - (1 / (2 * Real.pi)) * Real.log (|τ| / (2 * Real.pi))
        = muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi)) := by
      rw [hg, hc₀]
      simp only
      rw [show (q : ℝ) * |τ| / (2 * Real.pi) = q * (|τ| / (2 * Real.pi)) by ring,
        Real.log_mul hq0.ne' (by positivity)]
      ring
    rw [e]
    exact hst τ hτ
  have hC0 : 0 ≤ C := by
    have h := hst 1 (by norm_num)
    have := abs_nonneg (muq κ q 1 - 1 / (2 * Real.pi) * Real.log (q * |1| / (2 * Real.pi)))
    nlinarith
  -- thresholds
  have hTe4 : 2 * Real.pi * Real.exp 4 ≤ T := le_trans (le_max_left _ _) hT
  have hexp1 : (1 : ℝ) ≤ Real.exp 4 := by have := Real.add_one_le_exp (4 : ℝ); linarith
  have hT0 : (0 : ℝ) < T := by nlinarith [Real.exp_pos (4 : ℝ), Real.pi_gt_three]
  have hT1 : (1 : ℝ) ≤ T := by nlinarith [Real.pi_gt_three]
  have hl2 : (2 : ℝ) ≤ l T := by
    have h1 : Real.exp 4 ≤ T / (2 * Real.pi) := by
      rw [le_div_iff₀ (by positivity)]; linarith
    have h2 := Real.log_le_log (Real.exp_pos 4) h1
    rw [Real.log_exp] at h2
    unfold l
    linarith
  have hm : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)
  have hell1 : (1 : ℝ) ≤ ell1 T := by unfold ell1; nlinarith
  have hellq : ell1q q T = ell1 T + Real.log q := ell1q_eq hq hT0
  have hlogq : 0 ≤ Real.log (q : ℝ) := Real.log_nonneg (by exact_mod_cast hq)
  have hell_le : ell1 T ≤ ell1q q T := by rw [hellq]; linarith
  have hellq1 : (1 : ℝ) ≤ ell1q q T := le_trans hell1 hell_le
  have hellq_c₀ : 2 * Real.pi * c₀ ≤ ell1q q T := by
    rw [hellq, hc₀]; field_simp; linarith
  -- sizes
  set X : ℝ := T * ell1 T ^ 2 / (4 * Real.pi ^ 2) with hX
  set Xq : ℝ := T * ell1q q T ^ 2 / (4 * Real.pi ^ 2) with hXq
  have hX0 : 0 ≤ X := by positivity
  have hXle : X ≤ Xq := by
    rw [hX, hXq]
    apply div_le_div_of_nonneg_right _ (by positivity)
    apply mul_le_mul_of_nonneg_left _ hT0.le
    nlinarith
  have hlpos : 0 < l T := by linarith
  have hl2' : 0 < l T ^ 2 := by positivity
  have hlT : l T ≤ T := by
    unfold l
    have h1 := Real.log_le_sub_one_of_pos (by positivity : (0 : ℝ) < T / (2 * Real.pi))
    have h2 : T / (2 * Real.pi) ≤ T := by
      rw [div_le_iff₀ (by positivity)]; nlinarith [Real.pi_gt_three]
    linarith
  -- the c₀-free key: 2c₀ · (C/T) ≤ 4π·C · Xq / l²
  have hkey : 2 * c₀ * (C / T) ≤ (4 * Real.pi * C) * Xq / l T ^ 2 := by
    rw [hXq]
    rw [show 2 * c₀ * (C / T) = (2 * c₀ * C) / T by ring, div_le_div_iff₀ hT0 hl2']
    -- 2c₀C·l² ≤ 4πC·(T ell1q²/(4π²))·T
    have e : (4 * Real.pi * C) * (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) * T
        = (C / Real.pi) * (T ^ 2 * ell1q q T ^ 2) := by field_simp
    rw [e]
    -- ell1q² ≥ (2π c₀)·1
    have h1 : 2 * Real.pi * c₀ ≤ ell1q q T ^ 2 := by nlinarith [hellq_c₀, hellq1]
    have h2 : l T ^ 2 ≤ T ^ 2 := by nlinarith
    -- 2 c₀ C l² ≤ (C/π)·T²·(2π c₀) = 2 c₀ C T²  ≤ (C/π) T² ell1q²
    have h3 : 2 * c₀ * C * l T ^ 2 ≤ 2 * c₀ * C * T ^ 2 := by
      apply mul_le_mul_of_nonneg_left h2; positivity
    have h4 : 2 * c₀ * C * T ^ 2 = (C / Real.pi) * (T ^ 2 * (2 * Real.pi * c₀)) := by field_simp
    have h5 : (C / Real.pi) * (T ^ 2 * (2 * Real.pi * c₀)) ≤ (C / Real.pi) * (T ^ 2 * ell1q q T ^ 2) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact mul_le_mul_of_nonneg_left h1 (by positivity)
    linarith
  -- generic estimates with explicit constants
  have E₁ := int_g_sq_explicit hgcont hgst hT
  have E₂ := int_g_explicit hgcont hgst hT1
  -- decomposition
  have hgi : IntervalIntegrable g volume T (2 * T) := hgcont.intervalIntegrable _ _
  have hg2i : IntervalIntegrable (fun τ => g τ ^ 2) volume T (2 * T) :=
    (hgcont.pow 2).intervalIntegrable _ _
  have hli : IntervalIntegrable (fun τ => (2 * c₀) * g τ) volume T (2 * T) := hgi.const_mul _
  have hci : IntervalIntegrable (fun _ : ℝ => c₀ ^ 2) volume T (2 * T) :=
    _root_.intervalIntegrable_const
  have hsplit : (∫ τ in T..(2 * T), muq κ q τ ^ 2)
      = (∫ τ in T..(2 * T), g τ ^ 2) + 2 * c₀ * (∫ τ in T..(2 * T), g τ) + c₀ ^ 2 * T := by
    have e1 : (∫ τ in T..(2 * T), muq κ q τ ^ 2)
        = ∫ τ in T..(2 * T), (g τ ^ 2 + ((2 * c₀) * g τ + c₀ ^ 2)) := by
      apply intervalIntegral.integral_congr
      intro τ _
      rw [hg]
      ring
    rw [e1, intervalIntegral.integral_add hg2i (hli.add hci), intervalIntegral.integral_add hli hci,
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const, smul_eq_mul]
    ring
  have htarget : Xq = X + 2 * c₀ * (T * ell1 T / (2 * Real.pi)) + c₀ ^ 2 * T := by
    rw [hXq, hX, hellq, hc₀]; field_simp; ring
  rw [hsplit]
  have ediff : (∫ τ in T..(2 * T), g τ ^ 2) + 2 * c₀ * (∫ τ in T..(2 * T), g τ) + c₀ ^ 2 * T - Xq
      = ((∫ τ in T..(2 * T), g τ ^ 2) - X)
        + 2 * c₀ * ((∫ τ in T..(2 * T), g τ) - T * ell1 T / (2 * Real.pi)) := by
    rw [htarget]; ring
  rw [ediff]
  set K₁ : ℝ := 8 * (1 + 2 * Real.log 2 ^ 2) + 1 with hK₁
  have hK₁0 : 0 ≤ K₁ := by positivity
  have b1 : |(∫ τ in T..(2 * T), g τ ^ 2) - X| ≤ K₁ * Xq / l T ^ 2 := by
    calc |(∫ τ in T..(2 * T), g τ ^ 2) - X| ≤ K₁ * X / l T ^ 2 := E₁
      _ ≤ K₁ * Xq / l T ^ 2 := by
          apply div_le_div_of_nonneg_right _ hl2'.le
          exact mul_le_mul_of_nonneg_left hXle hK₁0
  have b2 : |2 * c₀ * ((∫ τ in T..(2 * T), g τ) - T * ell1 T / (2 * Real.pi))|
      ≤ (4 * Real.pi * C) * Xq / l T ^ 2 := by
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ 2 * c₀)]
    calc 2 * c₀ * |(∫ τ in T..(2 * T), g τ) - T * ell1 T / (2 * Real.pi)|
        ≤ 2 * c₀ * (C / T) := mul_le_mul_of_nonneg_left E₂ (by positivity)
      _ ≤ (4 * Real.pi * C) * Xq / l T ^ 2 := hkey
  have hCabs : 4 * Real.pi * C ≤ 4 * Real.pi * |C| := by
    apply mul_le_mul_of_nonneg_left (le_abs_self C); positivity
  have hXq0 : 0 ≤ Xq / l T ^ 2 := by positivity
  calc |((∫ τ in T..(2 * T), g τ ^ 2) - X)
        + 2 * c₀ * ((∫ τ in T..(2 * T), g τ) - T * ell1 T / (2 * Real.pi))|
      ≤ |(∫ τ in T..(2 * T), g τ ^ 2) - X|
        + |2 * c₀ * ((∫ τ in T..(2 * T), g τ) - T * ell1 T / (2 * Real.pi))| := abs_add_le _ _
    _ ≤ K₁ * Xq / l T ^ 2 + (4 * Real.pi * C) * Xq / l T ^ 2 := add_le_add b1 b2
    _ = (K₁ + 4 * Real.pi * C) * (Xq / l T ^ 2) := by ring
    _ ≤ (K₁ + 4 * Real.pi * |C|) * (Xq / l T ^ 2) := by
        apply mul_le_mul_of_nonneg_right _ hXq0; linarith
    _ = (K₁ + 4 * Real.pi * |C|) * Xq / l T ^ 2 := by ring


/-! ## μ_χ at fixed q (∃-forms, from the q-uniform versions) -/

/-- **GammaFactsChi.int_mu** from continuity + the Stirling field of μ_χ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant5d8ed10e202a5277dfeefb3558bf8e7ded5d113a0a82f7bc427e8007a94fa417.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e771f291b4636d8b3d168c4d9f84ef1d5c8db5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
