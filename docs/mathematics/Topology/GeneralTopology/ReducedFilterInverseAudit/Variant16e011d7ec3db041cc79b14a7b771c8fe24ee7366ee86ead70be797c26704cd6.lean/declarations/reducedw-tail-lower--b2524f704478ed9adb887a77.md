# reducedW_tail_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab1fc83f5fda32eba3f82809cb3457270ed39bf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16e011d7ec3db041cc79b14a7b771c8fe24ee7366ee86ead70be797c26704cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6091225b-edd7-7fda-f46e-360d0c09d82e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d347d47c-f9d7-3aab-09b2-3721750e0f71",
  "kind": "theorem",
  "lexical_name": "reducedW_tail_lower",
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
  "slug": "reducedw-tail-lower--b2524f704478ed9adb887a77",
  "source": {
    "blob": "ab1fc83f5fda32eba3f82809cb3457270ed39bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant16e011d7ec3db041cc79b14a7b771c8fe24ee7366ee86ead70be797c26704cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2524f704478ed9adb887a7758a8f435c3480dc354c8bcbb00c764f424c0d8b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant16e011d7ec3db041cc79b14a7b771c8fe24ee7366ee86ead70be797c26704cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d347d47c-f9d7-3aab-09b2-3721750e0f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedW_tail_lower (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060 / (1 - Real.exp (-2 * ε))) ≤ ‖w‖) :
    192 * (1 - Real.exp (-2 * ε)) /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^4) ≤ ‖reducedW w‖ := by
  have hr1 : 1 ≤ ‖w‖ := (le_max_left _ _).trans hr
  have hrpos : 0 < ‖w‖ := lt_of_lt_of_le zero_lt_one hr1
  have hS : 0 < Real.sqrt (45056/1105 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hq := sourceTailGap_pos ε hε
  have he := sourceEndpoint_tail_lower ε hε w hw hr
  have hl := norm_add_half_ge w (hε.le.trans hw)
  have hp : 192 * (1 - Real.exp (-2*ε)) * ‖w‖^5 ≤
      384 * ‖w + 1/2‖ *
        ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ := by
    calc
      _ = 384 * (‖w‖ * (((1 - Real.exp (-2*ε))/2) * ‖w‖^4)) := by ring
      _ ≤ 384 * (‖w + 1/2‖ *
          ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖) := by
        apply mul_le_mul_of_nonneg_left _ (by norm_num)
        exact mul_le_mul hl he (by positivity) (norm_nonneg _)
      _ = _ := by ring
  have hn : ‖reducedW w‖ = 384 * ‖w + 1/2‖ *
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^9) := by
    rw [reducedW_closedFormula w (norm_pos_iff.mp hrpos)]
    have h384 : ‖(384 : ℂ)‖ = (384 : ℝ) := by norm_num
    simp only [norm_div, norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hS, h384]
  calc
    _ = (192 * (1 - Real.exp (-2*ε)) * ‖w‖^5) /
        (Real.sqrt (45056/1105 : ℝ) * ‖w‖^9) := by
      field_simp
    _ ≤ (384 * ‖w + 1/2‖ *
        ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖) /
          (Real.sqrt (45056/1105 : ℝ) * ‖w‖^9) :=
      div_le_div_of_nonneg_right hp (by positivity)
    _ = _ := hn.symm

/-- Inverting the proved positive tail lower bound gives the exact source polynomial budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant16e011d7ec3db041cc79b14a7b771c8fe24ee7366ee86ead70be797c26704cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant16e011d7ec3db041cc79b14a7b771c8fe24ee7366ee86ead70be797c26704cd6.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab1fc83f5fda32eba3f82809cb3457270ed39bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
