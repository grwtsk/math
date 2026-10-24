# per_n_line_integral_gen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2431769b-ff60-e800-f7a7-c1e03d8a0dd5",
  "kind": "theorem",
  "lexical_name": "per_n_line_integral_gen",
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
  "slug": "per-n-line-integral-gen--ca8f9363395be4acf486e723",
  "source": {
    "blob": "7ab24618853daeb6c2ef5214ca2f76f0f75a906f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca8f9363395be4acf486e7238f49a7ba6401ef436df1ab7352c5a54080e8aa39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2431769b-ff60-e800-f7a7-c1e03d8a0dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem per_n_line_integral_gen {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    (a : ℕ → ℂ) (c : ℝ) (n : ℕ) :
    (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
        paperFT (tilt k (c - 1/2)) t * LSeries.term a (c + t * I) n
      = a n / ((Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [LSeries.term]
  · have hn0 : (0:ℝ) < (n:ℝ) := by exact_mod_cast hn
    simp_rw [LSeries_term_line a c _ hn.ne']
    have hre : (fun t : ℝ => paperFT (tilt k (c - 1/2)) t
        * (a n * (((n:ℝ) ^ (-c) : ℝ) : ℂ) * cexp (-I * t * Real.log n)))
        = fun t : ℝ => (a n * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * (paperFT (tilt k (c - 1/2)) t * cexp (-I * t * Real.log n)) := by
      funext t
      ring
    rw [hre, Zeta23.EF.cintegral_const_mul]
    rw [show (1 / (2 * (Real.pi : ℂ))) * ((a n * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
        * ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t * cexp (-I * t * Real.log n))
        = (a n * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * ((1 / (2 * (Real.pi : ℂ))) * ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
            * cexp (-I * t * Real.log n)) from by ring]
    rw [tilted_inversion hk hkc (c - 1/2) (Real.log n)]
    have hexp : Real.exp ((c - 1/2) * Real.log n) = (n:ℝ) ^ (c - 1/2) := by
      rw [Real.rpow_def_of_pos hn0]
      ring_nf
    have hpow : ((n:ℝ) ^ (-c) : ℝ) * ((n:ℝ) ^ (c - 1/2) : ℝ) = ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) := by
      rw [← Real.rpow_add hn0]
      congr 1
      ring
    have hsqrt : ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) = 1 / Real.sqrt n := by
      rw [Real.rpow_neg hn0.le, Real.sqrt_eq_rpow]
      exact (one_div _).symm
    calc a n * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
        * (k (Real.log n) * ((Real.exp ((c - 1/2) * Real.log n) : ℝ) : ℂ))
        = a n * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
          * (k (Real.log n) * (((n:ℝ) ^ (c - 1/2) : ℝ) : ℂ)) := by rw [hexp]
      _ = a n * ((((n:ℝ) ^ (-c) * (n:ℝ) ^ (c - 1/2) : ℝ)) : ℂ) * k (Real.log n) := by
          push_cast
          ring
      _ = a n / ((Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
          rw [hpow, hsqrt]
          push_cast
          ring

/-- continuity of each L-series term along the line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant753295f90f60081c0d02f4ef35f928aacffb932c67b5b0c971b51313e3b5729c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ab24618853daeb6c2ef5214ca2f76f0f75a906f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
