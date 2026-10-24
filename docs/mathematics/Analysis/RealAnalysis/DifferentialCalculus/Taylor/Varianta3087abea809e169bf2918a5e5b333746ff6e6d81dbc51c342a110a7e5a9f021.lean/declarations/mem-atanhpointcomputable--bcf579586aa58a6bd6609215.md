# mem_atanhPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2688a10-a17f-3890-cb0f-bd20bcc03497",
  "kind": "theorem",
  "lexical_name": "mem_atanhPointComputable",
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
  "slug": "mem-atanhpointcomputable--bcf579586aa58a6bd6609215",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1699,
    "line": 1662,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf579586aa58a6bd6609215910815edcfdb248dc8a9647ab61e03e20d87732a",
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

Occurrence: `result:e2688a10-a17f-3890-cb0f-bd20bcc03497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1662–1699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_atanhPointComputable (q : ℚ) (n : ℕ) (hq : |(q : ℝ)| < 1) :
    Real.atanh q ∈ atanhPointComputable q n := by
  simp only [atanhPointComputable]
  -- Since |q| < 1, the condition |q| ≥ 1 is false
  have hq_rat : |q| < 1 := by
    have h := abs_lt.mp hq
    rw [abs_lt]
    constructor
    · have : (-1 : ℝ) < q := h.1
      exact_mod_cast this
    · have : (q : ℝ) < 1 := h.2
      exact_mod_cast this
  have h_not_ge : ¬(|q| ≥ 1) := not_le.mpr hq_rat
  simp only [h_not_ge, ↓reduceIte]

  -- Polynomial part: the partial sum is in evalTaylorSeries
  have hpoly := mem_evalTaylorSeries_atanh n (q := q)

  -- Remainder part: the tail is in atanhRemainderBoundComputable
  have hrem := atanh_taylor_remainder_in_interval hq n

  -- Combine: atanh q = partial_sum + remainder
  have heq : Real.atanh q = ((atanhTaylorCoeffs n).zipIdx.map
      (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum +
      (Real.atanh q - ((atanhTaylorCoeffs n).zipIdx.map
        (fun (c, i) => (c : ℝ) * (q : ℝ) ^ i)).sum) := by ring
  rw [heq]
  exact mem_add hpoly hrem

/-! ### Computable ln(2) via atanh

ln(2) = 2 * atanh(1/3), since:
  2 = (1 + 1/3) / (1 - 1/3) = (4/3) / (2/3)
  So atanh(1/3) = (1/2) * ln(2), giving ln(2) = 2 * atanh(1/3)
-/

/-- Compute ln(2) as an interval using 2 * atanh(1/3).
    This converges rapidly since atanh series at 1/3 has |y| = 1/3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
