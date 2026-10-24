# resolventMassKernel_tendsto_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eafc7ceb-c954-e696-0ea2-110ed44fcb2e",
  "kind": "theorem",
  "lexical_name": "resolventMassKernel_tendsto_zero_right",
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
  "slug": "resolventmasskernel-tendsto-zero-right--a0a15ace402f91b509f89d5e",
  "source": {
    "blob": "4b7ee7a50a396f87be2421f957aa67942b38f72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 62,
    "path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0a15ace402f91b509f89d5ef1efacdbf1bb1c03001691d427efff363d91faf6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eafc7ceb-c954-e696-0ea2-110ed44fcb2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolventMassKernel_tendsto_zero_right (x : ℝ≥0) :
    Tendsto (fun α : ℝ => resolventMassKernel α x) (𝓝[>] 0)
      (𝓝 (({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x)) := by
  by_cases hx : x = 0
  · subst x
    simp only [Set.mem_singleton_iff, Set.indicator_of_mem]
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [self_mem_nhdsWithin] with α hα
    change 1 = α / ((0 : ℝ≥0) + α)
    simp [ne_of_gt (show 0 < α from hα)]
  · have hc : (x : ℝ) ≠ 0 := by exact_mod_cast hx
    rw [Set.indicator_of_notMem (by simpa using hx)]
    have hi : Tendsto (fun α : ℝ => α) (𝓝[>] 0) (𝓝 (0 : ℝ)) :=
      tendsto_nhdsWithin_of_tendsto_nhds tendsto_id
    have hden : Tendsto (fun α : ℝ => (x : ℝ) + α) (𝓝[>] 0)
        (𝓝 ((x : ℝ) + 0)) := tendsto_const_nhds.add hi
    have hd := hi.div hden (by simpa only [add_zero] using hc)
    convert hd using 1
    · rfl
    · simp only [zero_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtom/Variant4fd9808d8cc9a2f2871e74ca09119a4b8721c165f26bb4639deac0e0d9adc2a2.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b7ee7a50a396f87be2421f957aa67942b38f72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
