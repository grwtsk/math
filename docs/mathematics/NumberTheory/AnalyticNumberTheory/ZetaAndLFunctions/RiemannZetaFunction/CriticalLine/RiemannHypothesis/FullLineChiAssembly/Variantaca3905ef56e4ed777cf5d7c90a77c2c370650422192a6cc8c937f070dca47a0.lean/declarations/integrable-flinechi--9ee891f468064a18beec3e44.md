# integrable_FlineChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7fee501-f887-5339-c726-9b7572afba56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba60e035-6cac-0d41-a657-a1d29333720e",
  "kind": "theorem",
  "lexical_name": "integrable_FlineChi",
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
  "slug": "integrable-flinechi--9ee891f468064a18beec3e44",
  "source": {
    "blob": "d2b8da4f4226a668cb8a6102ad529304e7ba7452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ee891f468064a18beec3e444e301631ae16d8d14526a9c9fdd955469dc71991",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba60e035-6cac-0d41-a657-a1d29333720e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_FlineChi (hq : 1 < q) (hprim : χ.IsPrimitive) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2) :
    Integrable (FlineChi χ k c) := by
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  have hχ1' : χ⁻¹ ≠ 1 := fun h => hχ1 (inv_eq_one.mp h)
  obtain ⟨C, hC0, hC⟩ := norm_Hfn_le hk hkc
  -- the two H factors
  set φ₁ : ℝ → ℂ := fun t => Hfn k ((c : ℂ) + t * I) with hφ₁
  set φ₂ : ℝ → ℂ := fun t => Hfn k (1 - c - t * I) with hφ₂
  have hφ₁c : Continuous φ₁ := continuous_Hfn_line hk hkc c
  have hφ₂c : Continuous φ₂ := by
    have h := continuous_Hfn_line hk hkc (1 - c)
    have : φ₂ = (fun t : ℝ => Hfn k (((1 - c : ℝ) : ℂ) + t * I)) ∘ fun t : ℝ => -t := by
      funext t; simp only [hφ₂, Function.comp_apply, one_sub_cast]
    rw [this]; exact h.comp continuous_neg
  have hφ₁b : ∀ t, ‖φ₁ t‖ ≤ C / (1 + t ^ 2) := fun t => hC c t (by linarith) (by linarith)
  have hφ₂b : ∀ t, ‖φ₂ t‖ ≤ C / (1 + t ^ 2) := by
    intro t
    have h2 := hC (1 - c) (-t) (by linarith) (by linarith)
    rw [← one_sub_cast, neg_sq] at h2
    exact h2
  -- four integrable pieces
  have hκ := parity_le_one' χ
  have hG₁ := integrable_mul_logDeriv_archChi_of_decay (q := q) (parity χ) hκ hφ₁c hC0 hφ₁b
    (by linarith : (1:ℝ)/2 ≤ c) hc2
  have hG₂ := integrable_mul_logDeriv_archChi_of_decay (q := q) (parity χ) hκ hφ₂c hC0 hφ₂b
    (by linarith : (1:ℝ)/2 ≤ c) hc2
  have hL₁ := integrable_mul_logDeriv_L_of_decay hχ1 hφ₁c hφ₁b hc1
  have hL₂ := integrable_mul_logDeriv_L_of_decay hχ1' hφ₂c hφ₂b hc1
  refine ((hG₁.add hL₁).add (hG₂.add hL₂)).congr (Eventually.of_forall fun t => ?_)
  have hre : 0 < ((c : ℂ) + t * I).re := by simp; linarith
  have hre1 : 1 ≤ ((c : ℂ) + t * I).re := by simp; linarith
  have hLne : χ.LFunction ((c : ℂ) + t * I) ≠ 0 :=
    DirichletCharacter.LFunction_ne_zero_of_one_le_re χ (Or.inl hχ1) hre1
  have hLne' : χ⁻¹.LFunction ((c : ℂ) + t * I) ≠ 0 :=
    DirichletCharacter.LFunction_ne_zero_of_one_le_re χ⁻¹ (Or.inl hχ1') hre1
  have e1 : logDeriv (completedLSym χ) ((c : ℂ) + t * I)
      = logDeriv (archChi q (parity χ)) ((c : ℂ) + t * I) + logDeriv χ.LFunction ((c : ℂ) + t * I) := by
    rw [← logDeriv_completedLSym_sub_L hq hχ1 hre hLne]; ring
  have e2 : logDeriv (completedLSym χ⁻¹) ((c : ℂ) + t * I)
      = logDeriv (archChi q (parity χ)) ((c : ℂ) + t * I) + logDeriv χ⁻¹.LFunction ((c : ℂ) + t * I) := by
    rw [← logDeriv_completedLSym_sub_L hq hχ1 hre hLne,
      ← logDeriv_completedLSym_sub_L_inv hq hχ1 hχ1' hre hLne hLne']; ring
  simp only [FlineChi, hφ₁, hφ₂, Pi.add_apply, e1, e2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullLineChiAssembly/Variantaca3905ef56e4ed777cf5d7c90a77c2c370650422192a6cc8c937f070dca47a0.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b8da4f4226a668cb8a6102ad529304e7ba7452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
