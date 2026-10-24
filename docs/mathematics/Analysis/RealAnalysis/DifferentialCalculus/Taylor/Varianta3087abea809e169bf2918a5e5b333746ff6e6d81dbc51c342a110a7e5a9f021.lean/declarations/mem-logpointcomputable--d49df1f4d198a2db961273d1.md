# mem_logPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b8f31b6-751d-6057-a09a-4dc128472e2c",
  "kind": "theorem",
  "lexical_name": "mem_logPointComputable",
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
  "slug": "mem-logpointcomputable--d49df1f4d198a2db961273d1",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1848,
    "line": 1784,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d49df1f4d198a2db961273d1c5fa30d8819e63c1152f080b0d4912a4d10a0210",
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

Occurrence: `result:8b8f31b6-751d-6057-a09a-4dc128472e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1784–1848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_logPointComputable {q : ℚ} (hq : 0 < q) (n : ℕ) :
    Real.log q ∈ logPointComputable q n := by
  unfold logPointComputable
  simp only [not_le.mpr hq, ↓reduceIte]

  -- Get the reduced mantissa and exponent
  set k := logReductionExponent q with hk_def
  set m := logReduceMantissa q with hm_def

  -- Show they equal the LogReduction definitions
  have hk_eq : k = LogReduction.reductionExponent q := logReductionExponent_eq hq
  have hm_eq : m = LogReduction.reduceMantissa q := logReduceMantissa_eq hq

  -- Get bounds on m from LogReduction.reduced_bounds
  have hm_bounds : 1/2 ≤ m ∧ m ≤ 2 := by rw [hm_eq]; exact LogReduction.reduced_bounds hq
  have hm_pos : 0 < m := by rw [hm_eq]; exact LogReduction.reduced_pos hq

  -- Compute y = (m-1)/(m+1) and get bounds from atanh_arg_bounds
  set y := (m - 1) / (m + 1) with hy_def
  have hy_bounds : (-1)/3 ≤ y ∧ y ≤ 1/3 := LogReduction.atanh_arg_bounds hm_bounds.1 hm_bounds.2

  -- Key: |y| ≤ 1/3 < 1, so we can use mem_atanhPointComputable
  have hy_abs_lt : |(y : ℝ)| < 1 := by
    rw [abs_lt]
    have hlo : ((-1 : ℚ) / 3 : ℝ) ≤ y := by exact_mod_cast hy_bounds.1
    have hhi : (y : ℝ) ≤ (1 : ℚ) / 3 := by exact_mod_cast hy_bounds.2
    constructor <;> linarith

  -- Step 1: atanh(y) ∈ atanhPointComputable y n
  have h_atanh := mem_atanhPointComputable y n hy_abs_lt

  -- Step 2: log(m) = 2 * atanh(y), so log(m) ∈ scale 2 (atanhPointComputable y n)
  have h_log_m_eq : Real.log m = 2 * Real.atanh y := by
    have h := LogReduction.log_via_atanh hm_pos
    -- h : Real.log m = 2 * Real.atanh ((m - 1) / (m + 1))
    -- Need to show: ((m - 1) / (m + 1) : ℚ) : ℝ = ((m : ℝ) - 1) / ((m : ℝ) + 1)
    have hcast : (y : ℝ) = ((m : ℝ) - 1) / ((m : ℝ) + 1) := by
      simp only [hy_def]
      push_cast
      ring
    rw [hcast]
    exact h
  have h_log_m := mem_scale 2 h_atanh
  -- h_log_m : (2 : ℚ) * Real.atanh y ∈ scale 2 (atanhPointComputable y n)
  -- h_log_m_eq : Real.log m = 2 * Real.atanh y
  have h_log_m' : Real.log m ∈ scale 2 (atanhPointComputable y n) := by
    rw [h_log_m_eq]
    exact h_log_m

  -- Step 3: log(2) ∈ ln2Computable n
  have h_ln2 := mem_ln2Computable n

  -- Step 4: k * log(2) ∈ scale k (ln2Computable n)
  have h_k_ln2 := mem_scale k h_ln2

  -- Step 5: log(q) = log(m) + k * log(2) by log_reduction
  have h_log_eq : Real.log q = Real.log m + k * Real.log 2 := by
    have h := LogReduction.log_reduction hq
    exact h

  -- Step 6: Combine using mem_add
  rw [h_log_eq]
  exact mem_add h_log_m' h_k_ln2

/-- FTIA for logComputable: if x ∈ I and I.lo > 0, then log(x) ∈ logComputable I n -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1784).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
