# abs_Efun_le_of_nearCUE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31b591ae-793c-9c71-aad6-2701caef96cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1bd7042-ae1c-d75e-d323-6709c29a1a52",
  "kind": "theorem",
  "lexical_name": "abs_Efun_le_of_nearCUE",
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
  "slug": "abs-efun-le-of-nearcue--7ef59ac2fe0245d29ec162f3",
  "source": {
    "blob": "b654e8cb36264ab066d261168879ca5f94e91fc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ef59ac2fe0245d29ec162f31d9c5a1b43c797a62eb2a0f04159f86596bd5b12",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1bd7042-ae1c-d75e-d323-6709c29a1a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_Efun_le_of_nearCUE (hN : 0 < N) (hτ : 0 ≤ τ) (h : NearCUE S N τ) :
    ∀ x ∈ Icc (0:ℝ) 1, |Efun (massOf S N) N x| ≤ 1 / (6 * (N : ℝ) ^ 2) + τ / (2 * N) := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  intro x hx
  -- the cell index m < N with x ∈ [m/N, (m+1)/N]
  obtain ⟨m, hmN, hxm⟩ : ∃ m : ℕ, m < N ∧ x ∈ Icc ((m : ℝ) / N) ((m + 1 : ℝ) / N) := by
    rcases eq_or_lt_of_le hx.2 with hx1 | hx1
    · refine ⟨N - 1, Nat.sub_lt hN one_pos, ?_, ?_⟩
      · rw [hx1, div_le_one hNr]; exact_mod_cast Nat.sub_le N 1
      · rw [hx1, le_div_iff₀ hNr, one_mul]
        have : ((N - 1 : ℕ) : ℝ) = (N : ℝ) - 1 := by rw [Nat.cast_sub hN]; simp
        rw [this]; linarith
    · refine ⟨⌊(N : ℝ) * x⌋₊, ?_, ?_, ?_⟩
      · have h1 : ((⌊(N:ℝ) * x⌋₊ : ℕ) : ℝ) ≤ N * x := Nat.floor_le (by have := hx.1; positivity)
        have h2 : (N:ℝ) * x < N := by nlinarith
        exact_mod_cast lt_of_le_of_lt h1 h2
      · rw [div_le_iff₀ hNr]
        have := Nat.floor_le (show 0 ≤ (N:ℝ) * x by have := hx.1; positivity)
        linarith [mul_comm (N:ℝ) x]
      · rw [le_div_iff₀ hNr]
        have := Nat.lt_floor_add_one ((N:ℝ) * x)
        linarith [mul_comm (N:ℝ) x]
  rw [Efun_cell hN hmN hxm]
  -- write N·x = m + θ
  set θ : ℝ := (N : ℝ) * x - m with hθ
  have hθ0 : 0 ≤ θ := by
    have := hxm.1; rw [div_le_iff₀ hNr] at this; rw [hθ]; linarith [mul_comm x (N:ℝ)]
  have hθ1 : θ ≤ 1 := by
    have := hxm.2; rw [le_div_iff₀ hNr] at this; rw [hθ]; linarith [mul_comm x (N:ℝ)]
  have hxe : x = ((m : ℝ) + θ) / N := by rw [hθ]; field_simp; ring
  -- the perturbations
  set P : ℝ := (N : ℝ) * U S m - ((m : ℝ) ^ 3 - m) / 6 with hP
  set Δ : ℝ := (N : ℝ) * T S m - (m : ℝ) * (m + 1) / 2 with hΔ
  have hPb : |P| ≤ (m : ℝ) * (m - 1) / 2 * τ := abs_U_sub_le h hmN.le
  have hΔb : |Δ| ≤ m * τ := abs_T_sub_le h (Nat.succ_le_of_lt hmN)
  -- the identity  N³·E = (−m + 3mθ(1−θ) − θ³)/6 + P + Δθ
  have hid : Egrid S N m + T S m / N * (x - (m : ℝ) / N) - (x ^ 3 - ((m : ℝ) / N) ^ 3) / 6
      = ((-(m : ℝ) + 3 * m * θ * (1 - θ) - θ ^ 3) / 6 + P + Δ * θ) / (N : ℝ) ^ 3 := by
    have eU : U S m = (P + ((m : ℝ) ^ 3 - m) / 6) / N := by rw [hP]; field_simp; ring
    have eT : T S m = (Δ + (m : ℝ) * (m + 1) / 2) / N := by rw [hΔ]; field_simp; ring
    unfold Egrid
    rw [eU, eT, hxe]
    field_simp
    ring
  rw [hid, abs_div, abs_of_pos (by positivity : (0:ℝ) < (N:ℝ) ^ 3)]
  rw [div_le_iff₀ (by positivity : (0:ℝ) < (N:ℝ) ^ 3)]
  -- bound the numerator
  have hm0 : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hm1 : (m : ℝ) + 1 ≤ N := by exact_mod_cast Nat.succ_le_of_lt hmN
  obtain ⟨hc1, hc2⟩ := cubic_bounds hm0 hθ0 hθ1
  have hmain : |(-(m : ℝ) + 3 * m * θ * (1 - θ) - θ ^ 3) / 6| ≤ (N : ℝ) / 6 := by
    rw [abs_div, abs_of_pos (by norm_num : (0:ℝ) < 6), div_le_div_iff_of_pos_right (by norm_num : (0:ℝ) < 6), abs_le]
    constructor <;> linarith
  have hpert : |P + Δ * θ| ≤ (N : ℝ) ^ 2 / 2 * τ := by
    calc |P + Δ * θ| ≤ |P| + |Δ * θ| := abs_add_le _ _
      _ = |P| + |Δ| * θ := by rw [abs_mul, abs_of_nonneg hθ0]
      _ ≤ (m : ℝ) * (m - 1) / 2 * τ + m * τ * θ := by gcongr
      _ ≤ (m : ℝ) * (m - 1) / 2 * τ + m * τ * 1 := by gcongr
      _ = (m : ℝ) * (m + 1) / 2 * τ := by ring
      _ ≤ (N : ℝ) ^ 2 / 2 * τ := by
          apply mul_le_mul_of_nonneg_right _ hτ
          all_goals nlinarith
  calc |(-(m : ℝ) + 3 * m * θ * (1 - θ) - θ ^ 3) / 6 + P + Δ * θ|
      ≤ |(-(m : ℝ) + 3 * m * θ * (1 - θ) - θ ^ 3) / 6| + |P + Δ * θ| := by
        rw [add_assoc]; exact abs_add_le _ _
    _ ≤ (N : ℝ) / 6 + (N : ℝ) ^ 2 / 2 * τ := add_le_add hmain hpert
    _ = (1 / (6 * (N : ℝ) ^ 2) + τ / (2 * N)) * (N : ℝ) ^ 3 := by field_simp

/-- in particular at x = 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NearCUE/Variantac8daac5867a750749f6fafa8d428bd2403025e884f24e5eca625d9292993b80.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b654e8cb36264ab066d261168879ca5f94e91fc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
