# mem_ln2Computable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:044ab235-8ce1-990f-cb5e-61003dd49adf",
  "kind": "theorem",
  "lexical_name": "mem_ln2Computable",
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
  "slug": "mem-ln2computable--c99270c5edf39226d90b9488",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1732,
    "line": 1706,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c99270c5edf39226d90b94888212e0d74abb1399e10c8092ca28286b19af78b3",
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

Occurrence: `result:044ab235-8ce1-990f-cb5e-61003dd49adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1706–1732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_ln2Computable (n : ℕ) : Real.log 2 ∈ ln2Computable n := by
  simp only [ln2Computable]
  -- log(2) = 2 * atanh(1/3) via log_via_atanh
  have hlog_eq : Real.log 2 = 2 * Real.atanh (↑(1/3 : ℚ)) := by
    have h := LogReduction.log_via_atanh (by norm_num : (0 : ℚ) < 2)
    -- Convert: ((↑2 : ℝ) - 1) / ((↑2 : ℝ) + 1) = ↑(1/3 : ℚ)
    have h_arg : ((↑(2 : ℚ) : ℝ) - 1) / (↑(2 : ℚ) + 1) = ↑(1/3 : ℚ) := by
      simp only [Rat.cast_ofNat]
      norm_num
    rw [h_arg] at h
    convert h using 1
  rw [hlog_eq]
  -- atanh(1/3) ∈ atanhPointComputable (1/3) n by mem_atanhPointComputable
  have h_third_lt : |(↑(1/3 : ℚ) : ℝ)| < 1 := by
    rw [abs_lt]
    constructor <;> norm_num
  exact mem_scale 2 (mem_atanhPointComputable (1/3) n h_third_lt)

/-! ### Computable log via argument reduction

For q > 0, we compute:
  1. Reduce q to m * 2^k where m ∈ [1/2, 2]
  2. Compute log(m) = 2 * atanh((m-1)/(m+1)), which has |arg| ≤ 1/3
  3. Result = log(m) + k * ln(2)
-/

/-- Reduction exponent k such that q * 2^(-k) ≈ 1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
