# wienerFubini_term_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93083e98-35eb-288d-ed5c-4dceba0f9230",
  "kind": "theorem",
  "lexical_name": "wienerFubini_term_phase",
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
  "slug": "wienerfubini-term-phase--270c8a692c740e8905783590",
  "source": {
    "blob": "9f4327711f96a9694c056af8cf7b244296e8acf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 179,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:270c8a692c740e890578359069cd0bbcb40fafacf21ad807a4d748caeb9ba63c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93083e98-35eb-288d-ed5c-4dceba0f9230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFubini_term_phase
    (f : ℕ → ℂ) (sigma t T : ℝ) (hT : 0 < T)
    (psi : ℝ → ℂ) (n : ℕ) :
    wienerFubiniIntegrand f sigma T psi n t =
      LSeries.term f ((sigma : ℂ) + (t : ℂ) * Complex.I) n *
        (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I)) := by
  by_cases hn : n = 0
  · subst n
    simp [wienerFubiniIntegrand, LSeries.term]
  · have hnR : (0 : ℝ) < (n : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hn
    have hTC : (T : ℂ) ≠ 0 := by
      exact_mod_cast hT.ne'
    have hnC : (n : ℂ) ≠ 0 := by
      exact_mod_cast hn
    simp only [wienerFubiniIntegrand, LSeries.term,
      hn, ↓reduceIte]
    calc
      _ = (f n *
            (Complex.exp
                ((2 * Real.pi *
                  -(t * wienerFubiniFrequency n T) : ℝ) *
                    Complex.I)) /
              (↑((n : ℝ) ^ sigma) : ℂ)) • psi t := by
        rw [Circle.smul_def, Real.fourierChar_apply,
          Complex.ofReal_cpow (by norm_num)]
        simp [wienerFubiniFrequency, one_div, mul_inv_rev,
          mul_neg, ofReal_neg, ofReal_mul, ofReal_ofNat, ofReal_inv]
        ring
      _ = (f n *
            (((T : ℂ) ^ ((t : ℂ) * Complex.I)) /
              (n : ℂ) ^ ((sigma : ℂ) +
                (t : ℂ) * Complex.I))) • psi t := by
        rw [Real.rpow_def_of_pos hnR,
          Complex.cpow_def_of_ne_zero hTC,
          Complex.cpow_def_of_ne_zero hnC]
        push_cast
        rw [mul_div_assoc, ← Complex.exp_sub, ← Complex.exp_sub]
        congr 1
        congr 1
        have hfrequency :
            (2 * Real.pi : ℂ) *
                (-(t : ℂ) *
                  ((1 / (2 * Real.pi) : ℝ) *
                    Real.log ((n : ℝ) / T))) =
              -((t : ℂ) * Real.log ((n : ℝ) / T)) := by
          push_cast
          field_simp [show (2 * Real.pi : ℂ) ≠ 0 from by
            exact_mod_cast (mul_ne_zero (by norm_num : (2 : ℝ) ≠ 0) Real.pi_ne_zero)]
        unfold wienerFubiniFrequency
        push_cast at hfrequency ⊢
        simp only [neg_mul] at hfrequency
        rw [hfrequency, Real.log_div hnR.ne' hT.ne']
        push_cast
        rw [Complex.ofReal_log hT.le]
        congr 1
        ring
      _ = _ := by
        simp only [smul_eq_mul]
        ring

/-- The Fourier transform here is Mathlib's actual exp(-2*pi*i*t*xi)
transform, not a redefined signed version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4327711f96a9694c056af8cf7b244296e8acf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
