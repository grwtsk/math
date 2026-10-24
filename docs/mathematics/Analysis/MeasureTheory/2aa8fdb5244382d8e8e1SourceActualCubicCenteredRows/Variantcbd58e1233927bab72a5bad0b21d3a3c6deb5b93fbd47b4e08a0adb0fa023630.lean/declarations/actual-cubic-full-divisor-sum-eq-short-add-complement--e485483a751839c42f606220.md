# actual_cubic_full_divisor_sum_eq_short_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2eddaf3-091a-aa0b-6084-c781ef633cce",
  "kind": "theorem",
  "lexical_name": "actual_cubic_full_divisor_sum_eq_short_add_complement",
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
  "slug": "actual-cubic-full-divisor-sum-eq-short-add-complement--e485483a751839c42f606220",
  "source": {
    "blob": "783a52d45f80b2991faa017adbe28c519a283698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e485483a751839c42f606220454901071eb37ad82fe9b72486f0cb7e57402c82",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2eddaf3-091a-aa0b-6084-c781ef633cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cubic_full_divisor_sum_eq_short_add_complement (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) =
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) +
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hu : Finset.Icc 1 (vaughanCutoff A) ∪
      Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A) =
        Finset.Icc 1 (sourceKernelCutoff A) := by
    ext d
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 (vaughanCutoff A))
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)) := by
    rw [Finset.disjoint_left]
    intro d h1 h2
    have hb1 := Finset.mem_Icc.mp h1
    have hb2 := Finset.mem_Ioc.mp h2
    omega
  rw [← hu, Finset.sum_union hd]

/-- The proved short bound does not discard or estimate the actual complementary rows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `783a52d45f80b2991faa017adbe28c519a283698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
