# integrable_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9596c6ea-8fdc-12b0-e18e-d7876e3329d3",
  "kind": "theorem",
  "lexical_name": "integrable_of_continuousOn",
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
  "slug": "integrable-of-continuouson--f3c334a7fc8608d03df16743",
  "source": {
    "blob": "7e6b725797250d205876f963301327eb6bbc04ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 753,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c334a7fc8608d03df1674364641c3b4bd481ece549e2063bb9585b9ecd135a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9596c6ea-8fdc-12b0-e18e-d7876e3329d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_of_continuousOn [CompleteSpace E] {I : Box ι} {f : ℝⁿ → E}
    (hc : ContinuousOn f (Box.Icc I)) (μ : Measure ℝⁿ) [IsLocallyFiniteMeasure μ] :
    Integrable.{u, v, v} I l f μ.toBoxAdditive.toSMul := by
  apply integrable_of_bounded_and_ae_continuousWithinAt
  · obtain ⟨C, hC⟩ := (NormedSpace.isBounded_iff_subset_smul_closedBall ℝ).1
                        (I.isCompact_Icc.image_of_continuousOn hc).isBounded
    use ‖C‖, fun x hx ↦ by
      simpa only [smul_unitClosedBall, mem_closedBall_zero_iff] using hC (Set.mem_image_of_mem f hx)
  · refine eventually_of_mem ?_ (fun x hx ↦ hc.continuousWithinAt hx)
    rw [mem_ae_iff, μ.restrict_apply] <;> simp [MeasurableSet.compl_iff.2 I.measurableSet_Icc]

variable {l}

/-- This is an auxiliary lemma used to prove two statements at once. Use one of the next two
lemmas instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6b725797250d205876f963301327eb6bbc04ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
