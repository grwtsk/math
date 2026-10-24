# mem_atanhPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1654,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba615a45-f67c-2bd9-834c-0766b73e73c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cff4760-488b-7058-9c86-ff102dc0418a",
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
  "slug": "mem-atanhpointcomputable--25a57e3a806b43604fa71df4",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1691,
    "line": 1654,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a57e3a806b43604fa71df47555229c03cd04566276921a1d0a15125de9e563",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cff4760-488b-7058-9c86-ff102dc0418a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1654–1691.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L1654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
