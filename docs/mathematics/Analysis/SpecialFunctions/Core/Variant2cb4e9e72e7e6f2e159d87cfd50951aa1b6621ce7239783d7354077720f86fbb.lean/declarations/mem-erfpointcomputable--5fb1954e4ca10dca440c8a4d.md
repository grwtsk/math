# mem_erfPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcd43ac4-c0e4-f6ad-3a57-554560cf9923",
  "kind": "theorem",
  "lexical_name": "mem_erfPointComputable",
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
  "slug": "mem-erfpointcomputable--5fb1954e4ca10dca440c8a4d",
  "source": {
    "blob": "2b96b531ddc90394a51239f94d95d32fd3e40739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 196,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fb1954e4ca10dca440c8a4daa9851062ee55c7d640d1da2493cc7d78de5679d",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd43ac4-c0e4-f6ad-3a57-554560cf9923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_erfPointComputable (q : ℚ) (n : ℕ) :
    Real.erf q ∈ IntervalRat.erfPointComputable q n := by
  unfold IntervalRat.erfPointComputable
  have h_abs1 : |Real.erf q| ≤ (1 : ℝ) := by
    refine (abs_le.2 ?_)
    constructor
    · exact_mod_cast (Real.neg_one_le_erf q)
    · exact_mod_cast (Real.erf_le_one q)
  have h_abs2 : |Real.erf q| ≤ ((2257 : ℝ) / 2000) * |(q : ℝ)| :=
    Real.abs_erf_le_2257_div_2000_mul_abs q
  by_cases hq : q < 0
  · simp [hq, IntervalRat.mem_def]
    have hq_real : (q : ℝ) < 0 := by exact_mod_cast hq
    have herf_lt_erf0 : Real.erf q < Real.erf 0 := Real.strictMono_erf hq_real
    have herf_nonpos : Real.erf q ≤ 0 := by
      simpa [Real.erf] using le_of_lt herf_lt_erf0
    have hneg_min : -(min (1 : ℝ) (((2257 : ℝ) / 2000) * |(q : ℝ)|)) ≤ Real.erf q := by
      exact (abs_le.mp (le_min h_abs1 h_abs2)).1
    exact ⟨hneg_min, herf_nonpos⟩
  · by_cases h0 : q = 0
    · subst h0
      simp [IntervalRat.mem_def, Real.erf]
    · simp [hq, h0, IntervalRat.mem_def]
      have hq_pos : 0 < q := lt_of_le_of_ne (le_of_not_gt hq) (by
        intro hz
        exact h0 hz.symm)
      have hq_pos_real : (0 : ℝ) < q := by exact_mod_cast hq_pos
      have herf0_lt : Real.erf 0 < Real.erf q := Real.strictMono_erf hq_pos_real
      have herf_nonneg : 0 ≤ Real.erf q := by
        simpa [Real.erf] using le_of_lt herf0_lt
      exact ⟨herf_nonneg, (abs_le.mp h_abs1).2, (abs_le.mp h_abs2).2⟩

/-- Correctness of erf interval using monotonicity and endpoint evaluation.

    Since erf is strictly monotone increasing:
    - For x ∈ [I.lo, I.hi], we have erf(I.lo) ≤ erf(x) ≤ erf(I.hi)
    - erfPointComputable(I.lo) contains erf(I.lo)
    - erfPointComputable(I.hi) contains erf(I.hi)
    - hull of these intervals contains [erf(I.lo), erf(I.hi)]
    - Therefore erf(x) ∈ hull(...) ∩ [-1, 1] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b96b531ddc90394a51239f94d95d32fd3e40739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
