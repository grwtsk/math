# re_logDeriv_xi_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 397,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:877b0a4d-db35-a19c-5195-323fe9b3793b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26339bcd-8cad-b2d5-6b02-3cb08bf1e67d",
  "kind": "theorem",
  "lexical_name": "re_logDeriv_xi_ge",
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
  "slug": "re-logderiv-xi-ge--e5ffa75879b3a4bffba2aaea",
  "source": {
    "blob": "0bf0396dd18bbd64fbbbbda7263d8add161afe60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 397,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ffa75879b3a4bffba2aaea80da069f12268c3ef0bb452e7ddddc310fc5c94b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26339bcd-8cad-b2d5-6b02-3cb08bf1e67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_logDeriv_xi_ge {T : ℝ} (_hT : 0 ≤ T) {s : ℂ} (h1 : 1 ≤ s.re) (h2 : s.re ≤ 2)
    (ht : 2 ≤ |s.im|) (hT2 : 2 * T ≤ |s.im|) :
    (NT T : ℝ) / (8 * s.im ^ 2) ≤ (logDeriv xi s).re := by
  classical
  have hxi : xi s ≠ 0 := xi_ne_zero_of_one_le_re h1
  rw [re_logDeriv_xi_eq_tsum hxi]
  have hsum := summable_re_one_div hxi
  have ht0 : 0 < s.im ^ 2 := by nlinarith [sq_abs s.im]
  set F := (finite_absWindow T).toFinset with hF
  have hmemF : ∀ ρ, ρ ∈ F ↔ IsNontrivialZero ρ ∧ |ρ.im| ≤ T := fun ρ => by
    rw [hF, Set.Finite.mem_toFinset]; rfl
  set f : zetaZeroConfig.carrier → ℝ :=
    fun ρ => (zeroMult ρ : ℝ) * ((s.re - (ρ : ℂ).re) / Complex.normSq (s - ρ)) with hfdef
  have hnonneg : ∀ ρ : zetaZeroConfig.carrier, 0 ≤ f ρ := by
    intro ρ
    have hρ : IsNontrivialZero (ρ : ℂ) := ρ.2
    exact mul_nonneg (Nat.cast_nonneg _) (div_nonneg (by linarith [hρ.2.2]) (Complex.normSq_nonneg _))
  set F' : Finset zetaZeroConfig.carrier := F.subtype (· ∈ zetaZeroConfig.carrier) with hF'
  have hle : ∑ x ∈ F', f x ≤ ∑' x, f x := hsum.sum_le_tsum F' (fun x _ => hnonneg x)
  have heq : ∑ x ∈ F', f x = ∑ ρ ∈ F, (zeroMult ρ : ℝ) * ((s.re - ρ.re) / Complex.normSq (s - ρ)) := by
    have h1 := Finset.sum_subtype_eq_sum_filter (s := F) (p := (· ∈ zetaZeroConfig.carrier))
      (fun ρ : ℂ => (zeroMult ρ : ℝ) * ((s.re - ρ.re) / Complex.normSq (s - ρ)))
    have h2 : F.filter (· ∈ zetaZeroConfig.carrier) = F := by
      apply Finset.filter_true_of_mem
      intro ρ hρ
      exact ((hmemF ρ).mp hρ).1
    rw [h2] at h1
    rw [← h1]
  have hterm : ∀ ρ ∈ F, (zeroMult ρ : ℝ) * (1 - ρ.re) / (4 * s.im ^ 2)
      ≤ (zeroMult ρ : ℝ) * ((s.re - ρ.re) / Complex.normSq (s - ρ)) := by
    intro ρ hρ
    obtain ⟨hz, hγ⟩ := (hmemF ρ).mp hρ
    have hβ0 := hz.2.1
    have hβ1 := hz.2.2
    have habs : |s.im - ρ.im| ≤ 3 / 2 * |s.im| := by
      calc |s.im - ρ.im| ≤ |s.im| + |ρ.im| := abs_sub _ _
        _ ≤ 3 / 2 * |s.im| := by linarith
    have hsq : (s.im - ρ.im) ^ 2 ≤ (3 / 2 * |s.im|) ^ 2 := by
      rw [← sq_abs (s.im - ρ.im)]
      exact pow_le_pow_left₀ (abs_nonneg _) habs 2
    have hN : Complex.normSq (s - ρ) ≤ 4 * s.im ^ 2 := by
      rw [Complex.normSq_apply, Complex.sub_re, Complex.sub_im]
      nlinarith [sq_abs s.im]
    have hNpos : 0 < Complex.normSq (s - ρ) :=
      Complex.normSq_pos.mpr (sub_ne_zero.mpr (fun h => by rw [h] at h1; linarith))
    calc (zeroMult ρ : ℝ) * (1 - ρ.re) / (4 * s.im ^ 2)
        ≤ (zeroMult ρ : ℝ) * (s.re - ρ.re) / (4 * s.im ^ 2) := by
          apply div_le_div_of_nonneg_right _ (by positivity)
          exact mul_le_mul_of_nonneg_left (by linarith) (Nat.cast_nonneg _)
      _ ≤ (zeroMult ρ : ℝ) * (s.re - ρ.re) / Complex.normSq (s - ρ) :=
          div_le_div_of_nonneg_left (mul_nonneg (Nat.cast_nonneg _) (by linarith)) hNpos hN
      _ = (zeroMult ρ : ℝ) * ((s.re - ρ.re) / Complex.normSq (s - ρ)) := by ring
  have hhalf := two_mul_sum_mult_one_sub_re T
  calc (NT T : ℝ) / (8 * s.im ^ 2)
      = (∑ ρ ∈ F, (zeroMult ρ : ℝ) * (1 - ρ.re)) / (4 * s.im ^ 2) := by
        rw [← hhalf]; field_simp; ring
    _ = ∑ ρ ∈ F, (zeroMult ρ : ℝ) * (1 - ρ.re) / (4 * s.im ^ 2) := by rw [Finset.sum_div]
    _ ≤ ∑ ρ ∈ F, (zeroMult ρ : ℝ) * ((s.re - ρ.re) / Complex.normSq (s - ρ)) := Finset.sum_le_sum hterm
    _ = ∑ x ∈ F', f x := heq.symm
    _ ≤ ∑' x, f x := hle

/-- N_T → ∞ (Riemann–von Mangoldt). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variantac389b4c7f04fc83b6dd3418782c4d355ac62b0114f328ecca601c480adf882b.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf0396dd18bbd64fbbbbda7263d8add161afe60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
