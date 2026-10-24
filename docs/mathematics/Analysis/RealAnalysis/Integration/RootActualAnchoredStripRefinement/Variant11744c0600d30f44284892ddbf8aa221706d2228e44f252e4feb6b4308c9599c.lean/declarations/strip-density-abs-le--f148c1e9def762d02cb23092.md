# strip_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f15718bf-4388-cff5-1a03-67db00b02a2d",
  "kind": "theorem",
  "lexical_name": "strip_density_abs_le",
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
  "slug": "strip-density-abs-le--f148c1e9def762d02cb23092",
  "source": {
    "blob": "d9f44fe7e969adee1e4b1f701a24f2538b6ffb62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f148c1e9def762d02cb230927777cd16aaf31ef59d3d5959669f1930ccf864c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f15718bf-4388-cff5-1a03-67db00b02a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem strip_density_abs_le {A offset w t s : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w)
    (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w))
    (hs : s ∈ Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) :
    |actualLowerStripDensity A offset (t, s)| ≤
      (4 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        ((vaughanCutoff A : ℝ) - 1) * (67 / A ^ 4 + 5 / (4 * A ^ 2)) *
          (1 - Real.exp (-w / 2))) *
        Real.exp (t / 2) * Real.exp (-s / 2) := by
  have hp := actualAdjointTimePrimitive_strip_abs_le (offset := offset) hA hw ht
  have hrho : 0 ≤ 1 - Real.exp (-w / 2) := by
    apply sub_nonneg.mpr
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hq := actualAdjointColumnPrimitive_abs_le (by linarith : 1 ≤ A)
    ((strip_orders hA hw).2.1.trans hs.1) hs.2
  have hk := actual_covariant_ordinary_work_abs_le A t s (by linarith)
  have hU1 : 1 ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  unfold actualLowerStripDensity
  rw [abs_mul, abs_mul]
  calc
    _ ≤ (2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (1 - Real.exp (-w / 2))) *
        (2 * ((vaughanCutoff A : ℝ) - 1)) *
        (Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4 + 5 / (4 * A ^ 2))) := by
      gcongr
    _ = _ := by ring

/-- Actual anchoring improves the fixed strip bound by its vanishing width factor. -/
set_option maxHeartbeats 1000000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant11744c0600d30f44284892ddbf8aa221706d2228e44f252e4feb6b4308c9599c.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f44fe7e969adee1e4b1f701a24f2538b6ffb62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
