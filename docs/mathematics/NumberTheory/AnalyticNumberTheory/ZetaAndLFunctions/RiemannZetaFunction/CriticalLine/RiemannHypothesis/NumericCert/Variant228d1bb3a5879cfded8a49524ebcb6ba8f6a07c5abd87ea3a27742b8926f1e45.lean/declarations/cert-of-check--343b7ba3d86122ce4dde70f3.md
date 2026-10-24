# cert_of_check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:183f8573-3bc9-94f2-2299-e534bf04db8c",
  "kind": "theorem",
  "lexical_name": "cert_of_check",
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
  "slug": "cert-of-check--343b7ba3d86122ce4dde70f3",
  "source": {
    "blob": "f3a761c50704f71cc60e17e6edc7cc0a2d3e94f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 261,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:343b7ba3d86122ce4dde70f32c35f7e9b4a83effc7c6e5e3cff911c12771c92c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:183f8573-3bc9-94f2-2299-e534bf04db8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cert_of_check (d : CertData) (hc : check d = true) (S : ℕ → ℝ) (hS : EnclOK d.K S 0 d.encl) :
    |D1 S d.N| ≤ (d.bD1n : ℝ) / d.bD1d ∧ |E1 S d.N| ≤ (d.bE1n : ℝ) / d.bE1d ∧
    (∀ j, 1 ≤ j → j ≤ d.N → |Dleft S d.N j| ≤ (d.b1n : ℝ) / d.b1d ∧ |Dright S d.N j| ≤ (d.b1n : ℝ) / d.b1d) ∧
    (∀ i j, 1 ≤ i → i ≤ d.N → 1 ≤ j → j ≤ d.N →
        |Egrid S d.N j| + |Dleft S d.N i| / d.N ≤ (d.b2n : ℝ) / d.b2d ∧ |Egrid S d.N j| + |Dright S d.N i| / d.N ≤ (d.b2n : ℝ) / d.b2d) := by
  -- unpack the Bool
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hok, hj⟩, hN⟩, hK⟩, hbD1d⟩, hbE1d⟩, hb1d⟩, hb2d⟩, hD1⟩, hE1⟩, hM1⟩, hM2⟩ := hc
  set s := run d.N d.K d.encl St.init with hs
  have hinv : LoopInv S d.N d.K s := loopInv_run hN loopInv_init (by simpa [St.init] using hS) hok
  have hN0 : (0 : ℝ) < d.N := by exact_mod_cast hN
  have hK0 : (0 : ℝ) < d.K := by exact_mod_cast hK
  have hsc2 : (0 : ℝ) < 2 * (d.N : ℝ) ^ 2 * d.K := by positivity
  have hsc6 : (0 : ℝ) < 6 * (d.N : ℝ) ^ 3 * d.K := by positivity
  have hjN : s.j = d.N := hj
  -- D(1)
  have hD1r : |(2 * (d.N : ℝ) ^ 2 * d.K) * D1 S d.N| ≤
      ((max |2 * (d.N : ℤ) * s.Tlo - (d.N : ℤ) ^ 2 * d.K| |2 * (d.N : ℤ) * s.Thi - (d.N : ℤ) ^ 2 * d.K| : ℤ) : ℝ) := by
    unfold D1; rw [scaled_Dright hN]
    have h1 := hinv.tlo; have h2 := hinv.thi
    rw [hjN] at h1 h2
    refine (abs_le_max_abs (a := 2 * d.N * (s.Tlo : ℝ) - (d.N : ℝ) ^ 2 * d.K) (b := 2 * d.N * (s.Thi : ℝ) - (d.N : ℝ) ^ 2 * d.K)
      (by nlinarith [hN0.le]) (by nlinarith [hN0.le])).trans (le_of_eq ?_)
    push_cast [Int.cast_max, Int.cast_abs]; rfl
  have hE1r : |(6 * (d.N : ℝ) ^ 3 * d.K) * E1 S d.N| ≤
      ((max |6 * (d.N : ℤ) * s.Ulo - (d.N : ℤ) ^ 3 * d.K| |6 * (d.N : ℤ) * s.Uhi - (d.N : ℤ) ^ 3 * d.K| : ℤ) : ℝ) := by
    unfold E1; rw [scaled_Egrid hN]
    have h1 := hinv.ulo; have h2 := hinv.uhi
    rw [hjN] at h1 h2
    refine (abs_le_max_abs (a := 6 * d.N * (s.Ulo : ℝ) - (d.N : ℝ) ^ 3 * d.K) (b := 6 * d.N * (s.Uhi : ℝ) - (d.N : ℝ) ^ 3 * d.K)
      (by nlinarith [hN0.le]) (by nlinarith [hN0.le])).trans (le_of_eq ?_)
    push_cast [Int.cast_max, Int.cast_abs]; rfl
  -- helper: from |c·x| ≤ A and A·den ≤ num·c conclude |x| ≤ num/den
  have key : ∀ {c x A : ℝ} {num den : ℕ}, 0 < c → 0 < den → |c * x| ≤ A → A * den ≤ num * c → |x| ≤ (num : ℝ) / den := by
    intro c x A num den hc hden h1 h2
    rw [le_div_iff₀ (by exact_mod_cast hden : (0:ℝ) < den)]
    rw [abs_mul, abs_of_pos hc] at h1
    have hden0 : (0:ℝ) ≤ den := by positivity
    nlinarith [mul_le_mul_of_nonneg_right h1 hden0, abs_nonneg x]
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact key hsc2 hbD1d hD1r (by push_cast [Int.cast_max, Int.cast_abs]; exact_mod_cast hD1)
  · exact key hsc6 hbE1d hE1r (by push_cast [Int.cast_max, Int.cast_abs]; exact_mod_cast hE1)
  · intro j h1 h2
    rw [← hjN] at h2
    have hM1r : (s.M1 : ℝ) * d.b1d ≤ d.b1n * (2 * (d.N : ℝ) ^ 2 * d.K) := by exact_mod_cast hM1
    exact ⟨key hsc2 hb1d (hinv.dl j h1 h2) hM1r, key hsc2 hb1d (hinv.dr j h1 h2) hM1r⟩
  · intro i j hi1 hi2 hj1 hj2
    rw [← hjN] at hi2 hj2
    have hEg := hinv.eg j hj1 hj2
    have hDl := hinv.dl i hi1 hi2
    have hDr := hinv.dr i hi1 hi2
    have hM2r : ((s.M2 + 3 * s.M1 : ℤ) : ℝ) * d.b2d ≤ d.b2n * (6 * (d.N : ℝ) ^ 3 * d.K) := by exact_mod_cast hM2
    -- 6N³K·(|E| + |D|/N) ≤ M2 + 3·M1  (since 6N³K/N · |D| = 3 · (2N²K|D|))
    have comb : ∀ {Dv : ℝ}, |(2 * (d.N : ℝ) ^ 2 * d.K) * Dv| ≤ (s.M1 : ℝ) →
        |Egrid S d.N j| + |Dv| / d.N ≤ (d.b2n : ℝ) / d.b2d := by
      intro Dv hDv
      rw [le_div_iff₀ (by exact_mod_cast hb2d : (0:ℝ) < d.b2d)]
      rw [abs_mul, abs_of_pos hsc6] at hEg
      rw [abs_mul, abs_of_pos hsc2] at hDv
      have e6 : (6 * (d.N : ℝ) ^ 3 * d.K) * (|Egrid S d.N j| + |Dv| / d.N)
          = (6 * (d.N : ℝ) ^ 3 * d.K) * |Egrid S d.N j| + 3 * ((2 * (d.N : ℝ) ^ 2 * d.K) * |Dv|) := by
        field_simp; ring
      have hb2d0 : (0:ℝ) ≤ d.b2d := by positivity
      have : (6 * (d.N : ℝ) ^ 3 * d.K) * (|Egrid S d.N j| + |Dv| / d.N) ≤ ((s.M2 + 3 * s.M1 : ℤ) : ℝ) := by
        rw [e6]; push_cast; linarith
      nlinarith [mul_le_mul_of_nonneg_right this hb2d0, abs_nonneg (Egrid S d.N j), abs_nonneg Dv, hN0]
    exact ⟨comb hDl, comb hDr⟩

end Sound

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a761c50704f71cc60e17e6edc7cc0a2d3e94f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
