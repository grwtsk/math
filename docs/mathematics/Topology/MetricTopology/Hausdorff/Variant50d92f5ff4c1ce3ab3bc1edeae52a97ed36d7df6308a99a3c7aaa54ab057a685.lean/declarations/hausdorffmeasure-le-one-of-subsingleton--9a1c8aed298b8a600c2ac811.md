# hausdorffMeasure_le_one_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 701,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e733c25-1514-6f88-14ff-9efc86a1a58e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7169770-dba6-630e-b106-e330cbd6746a",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_le_one_of_subsingleton",
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
  "slug": "hausdorffmeasure-le-one-of-subsingleton--9a1c8aed298b8a600c2ac811",
  "source": {
    "blob": "68e1819bc363c5422395f0e9c695aca6b0f85b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 701,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a1c8aed298b8a600c2ac811dc865146fa4bf3bc8a60ea90d9603c012c256544",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7169770-dba6-630e-b106-e330cbd6746a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_le_one_of_subsingleton {s : Set X} (hs : s.Subsingleton) {d : ℝ}
    (hd : 0 ≤ d) : μH[d] s ≤ 1 := by
  rcases eq_empty_or_nonempty s with (rfl | ⟨x, hx⟩)
  · simp only [measure_empty, zero_le]
  · rw [(subsingleton_iff_singleton hx).1 hs]
    rcases eq_or_lt_of_le hd with (rfl | dpos)
    · simp only [le_refl, hausdorffMeasure_zero_singleton]
    · haveI := noAtoms_hausdorff X dpos
      simp only [zero_le, measure_singleton]
#align measure_theory.measure.hausdorff_measure_le_one_of_subsingleton MeasureTheory.Measure.hausdorffMeasure_le_one_of_subsingleton

end Measure

end MeasureTheory

/-!
### Hausdorff measure, Hausdorff dimension, and Hölder or Lipschitz continuous maps
-/


open scoped MeasureTheory

open MeasureTheory MeasureTheory.Measure

variable [MeasurableSpace X] [BorelSpace X] [MeasurableSpace Y] [BorelSpace Y]

namespace HolderOnWith

variable {C r : ℝ≥0} {f : X → Y} {s t : Set X}

/-- If `f : X → Y` is Hölder continuous on `s` with a positive exponent `r`, then
`μH[d] (f '' s) ≤ C ^ d * μH[r * d] s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant50d92f5ff4c1ce3ab3bc1edeae52a97ed36d7df6308a99a3c7aaa54ab057a685.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e1819bc363c5422395f0e9c695aca6b0f85b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
