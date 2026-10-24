# slope_pos_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3146360-deca-0e68-20aa-14d2445bc785",
  "kind": "theorem",
  "lexical_name": "slope_pos_le",
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
  "slug": "slope-pos-le--94f99d7f47ad3631fae59ec4",
  "source": {
    "blob": "c2b7d91a2321c6764b1a5f087974d52914115809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 23,
    "path": "GRWTSK/Analysis/Real/ClassicalRawCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94f99d7f47ad3631fae59ec4254f99ae53c5a3ac8539b2d492f20b2b6df6686a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/ClassicalRawCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3146360-deca-0e68-20aa-14d2445bc785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem slope_pos_le (x : ℝ) (hx : 1 < x) :
    0 < slope x ∧ slope x ≤ 1/(2*(x^2-1)) := by
  have h0 : x ≠ 0 := by linarith
  have hsq : 0 < x^2-1 := by nlinarith
  have he : 1-(x⁻¹)^2 = (x^2-1)/(x^2) := by field_simp
  have hr : 0 < 1-(x⁻¹)^2 := by rw [he]; exact div_pos hsq (sq_pos_of_ne_zero h0)
  have hr1 : 1-(x⁻¹)^2 < 1 := by have := sq_pos_of_ne_zero (inv_ne_zero h0); linarith
  rw [slope_eq_raw_log x hx]
  refine ⟨by have := Real.log_neg hr hr1; linarith,?_⟩
  have hl := Real.one_sub_inv_le_log_of_pos hr
  have hi : (1-(x⁻¹)^2)⁻¹-1 = 1/(x^2-1) := by rw [he]; field_simp; ring
  have hb : -Real.log (1-(x⁻¹)^2) ≤ (1-(x⁻¹)^2)⁻¹-1 := by linarith
  rw [hi] at hb
  have h := div_le_div_of_nonneg_right hb (by norm_num : (0:ℝ) ≤ 2)
  simpa only [div_div, mul_comm] using h
end GRWTSK.Analysis.Real.ClassicalRawCorrection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/ClassicalRawCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/ClassicalRawCorrection.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b7d91a2321c6764b1a5f087974d52914115809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
