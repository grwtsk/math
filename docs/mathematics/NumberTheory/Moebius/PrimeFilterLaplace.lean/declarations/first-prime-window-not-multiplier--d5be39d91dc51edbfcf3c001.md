# first_prime_window_not_multiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0786590-566f-80dd-78e6-4632945759fa",
  "kind": "theorem",
  "lexical_name": "first_prime_window_not_multiplier",
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
  "slug": "first-prime-window-not-multiplier--d5be39d91dc51edbfcf3c001",
  "source": {
    "blob": "cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 157,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5be39d91dc51edbfcf3c001b2b2764f044ef5270fe96b8ffa6fc7bf3705c99a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0786590-566f-80dd-78e6-4632945759fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_prime_window_not_multiplier :
    noteWindowLaplace (primeNoteCascade {2}) 1 (Real.log 2) ≠
      (1-primeLaplaceWeight 2 1)*noteWindowLaplace baseNote 1 (Real.log 2) := by
  have ht : 0 < Real.log (2:ℝ) := Real.log_pos (by norm_num)
  have hb : ∀ u : ℝ, 0 < u → 0 < baseNote u := by
    intro u hu
    have he : Real.exp (-u/2) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
    simp only [baseNote, pickupResponse, Nat.cast_one, Real.log_one, Real.sqrt_one,
      inv_one, if_pos hu.le]
    linarith
  have hf : Continuous baseNote := pickupResponse_continuous (by norm_num : 1 ≤ (1:ℕ))
  have hi : 0 < ∫ u in (0:ℝ)..Real.log 2, Real.exp (-u)*baseNote u := by
    apply intervalIntegral.integral_pos ht ((Real.continuous_exp.comp continuous_id.neg).mul hf).continuousOn
    · intro u hu
      exact (mul_pos (Real.exp_pos _) (hb u hu.1)).le
    · exact ⟨Real.log 2, ⟨ht.le, le_rfl⟩, mul_pos (Real.exp_pos _) (hb _ ht)⟩
  have hL : noteWindowLaplace baseNote 1 (Real.log 2) ≠ 0 := by
    have he : noteWindowLaplace baseNote 1 (Real.log 2) =
        ((∫ u in (0:ℝ)..Real.log 2, Real.exp (-u)*baseNote u):ℝ) := by
      unfold noteWindowLaplace
      rw [max_eq_right ht.le]
      simp only [neg_mul, one_mul, ← Complex.ofReal_neg,
        ← Complex.ofReal_exp, ← Complex.ofReal_mul]
      exact intervalIntegral.integral_ofReal
    rw [he]
    exact_mod_cast hi.ne'
  have hw : primeLaplaceWeight 2 1 ≠ 0 := by
    unfold primeLaplaceWeight
    apply mul_ne_zero
    · exact_mod_cast inv_ne_zero (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 2)).ne'
    · exact Complex.exp_ne_zero _
  have hb0 : baseNote 0 = 0 := by simp [baseNote, pickupResponse]
  have hc : primeNoteCascade {2} = primeNoteFilter 2 baseNote := by
    simpa using primeNoteCascade_insert (P := ∅) (p := 2) (by simp) (by norm_num) (by simp)
  intro h
  rw [hc, noteWindowLaplace_primeFilter_before_delay hb0 1 2 ht.le le_rfl] at h
  have hm : primeLaplaceWeight 2 1 * noteWindowLaplace baseNote 1 (Real.log 2) = 0 := by
    linear_combination h
  exact (mul_ne_zero hw hL) hm

end GRWTSK.RiemannHypothesis.CCC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
