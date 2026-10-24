# even_exponential_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01f3686e-6bd4-5f20-403b-0f8a1457e384",
  "kind": "theorem",
  "lexical_name": "even_exponential_eq_indicator",
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
  "slug": "even-exponential-eq-indicator--1083a1d05e364c58596ed787",
  "source": {
    "blob": "8f8717f97ebc4e425b2439522f89d9b4813585c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1083a1d05e364c58596ed787bc01335ffd937edb7f3a19916d314dbe6427f5bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01f3686e-6bd4-5f20-403b-0f8a1457e384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem even_exponential_eq_indicator (j : ℕ) {v : ℝ} (hv : v ≠ 0) :
    Real.exp (-|v| / 2) * |v| ^ j =
      (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) v +
      (Ioi (0 : ℝ)).indicator (fun x : ℝ => x ^ j * Real.exp (-x / 2)) (-v) := by
  rcases lt_or_gt_of_ne hv with hv | hv
  · simp only [Set.indicator_of_notMem (by exact not_lt_of_ge hv.le : v ∉ Ioi (0 : ℝ)),
      Set.indicator_of_mem (by exact neg_pos.mpr hv : -v ∈ Ioi (0 : ℝ)),
      zero_add, abs_of_neg hv]
    ring
  · simp only [Set.indicator_of_mem (by exact hv : v ∈ Ioi (0 : ℝ)),
      Set.indicator_of_notMem (by exact not_lt_of_ge (neg_nonpos.mpr hv.le) :
        -v ∉ Ioi (0 : ℝ)), add_zero, abs_of_pos hv]
    ring

/-- The even exponential majorant is integrable on the whole real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantc32f29dcefe48541d1a26795f9af438b2fae5f0b3fb90c6505f09ad6df21e5de.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8717f97ebc4e425b2439522f89d9b4813585c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
