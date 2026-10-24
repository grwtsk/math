# mem_coshComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3592d3a-cd60-cb15-ae71-63d05f25dd49",
  "kind": "theorem",
  "lexical_name": "mem_coshComputable",
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
  "slug": "mem-coshcomputable--3ba8691de2f2502712991826",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1331,
    "line": 1244,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba8691de2f250271299182651dde21ec52aa04ae661ccbd97d4651f86bd32f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3592d3a-cd60-cb15-ae71-63d05f25dd49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1244–1331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_coshComputable {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    Real.cosh x ∈ coshComputable I n := by
  simp only [coshComputable]
  have hlo_mem := mem_coshPointComputable I.lo n
  have hhi_mem := mem_coshPointComputable I.hi n
  -- cosh x ≥ 1 always (AM-GM)
  have hcosh_ge_one : 1 ≤ Real.cosh x := Real.one_le_cosh x
  -- Key lemma: cosh a ≤ cosh b iff |a| ≤ |b|
  split_ifs with h1 h2
  · -- Case: 0 ≤ I.lo (non-negative interval, cosh is increasing)
    have hlo_nonneg : (0 : ℝ) ≤ I.lo := by exact_mod_cast h1
    have hx_nonneg : 0 ≤ x := le_trans hlo_nonneg hx.1
    have hhi_nonneg : (0 : ℝ) ≤ I.hi := le_trans hlo_nonneg (by exact_mod_cast I.le)
    -- For 0 ≤ a ≤ b: |a| = a ≤ b = |b|, so cosh(a) ≤ cosh(b)
    have hcosh_lo_le : Real.cosh I.lo ≤ Real.cosh x := by
      rw [Real.cosh_le_cosh]
      rw [abs_of_nonneg hlo_nonneg, abs_of_nonneg hx_nonneg]
      exact hx.1
    have hcosh_x_le_hi : Real.cosh x ≤ Real.cosh I.hi := by
      rw [Real.cosh_le_cosh]
      rw [abs_of_nonneg hx_nonneg, abs_of_nonneg hhi_nonneg]
      exact hx.2
    simp only [hull, mem_def, Rat.cast_min, Rat.cast_max]
    constructor
    · calc (min (coshPointComputable I.lo n).lo (coshPointComputable I.hi n).lo : ℝ)
          ≤ (coshPointComputable I.lo n).lo := by exact_mod_cast min_le_left _ _
        _ ≤ Real.cosh I.lo := hlo_mem.1
        _ ≤ Real.cosh x := hcosh_lo_le
    · calc Real.cosh x ≤ Real.cosh I.hi := hcosh_x_le_hi
        _ ≤ (coshPointComputable I.hi n).hi := hhi_mem.2
        _ ≤ max ((coshPointComputable I.lo n).hi : ℝ) ((coshPointComputable I.hi n).hi : ℝ) := le_max_right _ _
  · -- Case: I.hi ≤ 0 (non-positive interval, cosh is decreasing)
    have hhi_nonpos : I.hi ≤ (0 : ℝ) := by exact_mod_cast h2
    have hx_nonpos : x ≤ 0 := le_trans hx.2 hhi_nonpos
    have hlo_nonpos : (I.lo : ℝ) ≤ 0 := le_trans (by exact_mod_cast I.le) hhi_nonpos
    -- For a ≤ b ≤ 0: |a| = -a ≥ -b = |b|, so cosh(a) ≥ cosh(b)
    have hcosh_hi_le : Real.cosh I.hi ≤ Real.cosh x := by
      rw [Real.cosh_le_cosh]
      rw [abs_of_nonpos hhi_nonpos, abs_of_nonpos hx_nonpos]
      linarith [hx.2]
    have hcosh_x_le_lo : Real.cosh x ≤ Real.cosh I.lo := by
      rw [Real.cosh_le_cosh]
      rw [abs_of_nonpos hx_nonpos, abs_of_nonpos hlo_nonpos]
      linarith [hx.1]
    simp only [hull, mem_def, Rat.cast_min, Rat.cast_max]
    constructor
    · calc (min (coshPointComputable I.hi n).lo (coshPointComputable I.lo n).lo : ℝ)
          ≤ (coshPointComputable I.hi n).lo := by exact_mod_cast min_le_left _ _
        _ ≤ Real.cosh I.hi := hhi_mem.1
        _ ≤ Real.cosh x := hcosh_hi_le
    · calc Real.cosh x ≤ Real.cosh I.lo := hcosh_x_le_lo
        _ ≤ (coshPointComputable I.lo n).hi := hlo_mem.2
        _ ≤ max ((coshPointComputable I.hi n).hi : ℝ) ((coshPointComputable I.lo n).hi : ℝ) := le_max_right _ _
  · -- Case: interval contains 0, minimum is 1
    simp only [mem_def, Rat.cast_one, hull, Rat.cast_max]
    constructor
    · exact hcosh_ge_one
    · -- Upper bound is max of endpoint cosh values
      push Not at h1 h2
      have hhi_pos : (0 : ℝ) < I.hi := by exact_mod_cast h2
      have hlo_neg : (I.lo : ℝ) < 0 := by exact_mod_cast h1
      have hmax_bound : Real.cosh x ≤ max (Real.cosh I.lo) (Real.cosh I.hi) := by
        -- x is between lo and hi, and interval contains 0
        by_cases! hx_nonneg : 0 ≤ x
        · -- x ≥ 0: cosh(x) ≤ cosh(hi) since 0 ≤ x ≤ hi means |x| ≤ |hi|
          apply le_max_of_le_right
          rw [Real.cosh_le_cosh]
          rw [abs_of_nonneg hx_nonneg, abs_of_nonneg (le_of_lt hhi_pos)]
          exact hx.2
        · -- x < 0: cosh(x) ≤ cosh(lo) since lo ≤ x < 0 means |x| ≤ |lo|
          apply le_max_of_le_left
          rw [Real.cosh_le_cosh]
          rw [abs_of_neg hx_nonneg, abs_of_neg hlo_neg]
          linarith [hx.1]
      calc Real.cosh x ≤ max (Real.cosh I.lo) (Real.cosh I.hi) := hmax_bound
        _ ≤ max ((coshPointComputable I.lo n).hi : ℝ) ((coshPointComputable I.hi n).hi : ℝ) := by
            apply max_le_max
            · exact hlo_mem.2
            · exact hhi_mem.2

/-! ### Computable atanh via Taylor series

For |y| < 1, atanh(y) = y + y³/3 + y⁵/5 + ...
We compute this series for y ∈ [-1/3, 1/3] where it converges rapidly.
-/

/-- Taylor coefficients for atanh: 0, 1, 0, 1/3, 0, 1/5, ...
    atanh(y) = Σ y^(2k+1)/(2k+1) = y + y³/3 + y⁵/5 + ... -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
