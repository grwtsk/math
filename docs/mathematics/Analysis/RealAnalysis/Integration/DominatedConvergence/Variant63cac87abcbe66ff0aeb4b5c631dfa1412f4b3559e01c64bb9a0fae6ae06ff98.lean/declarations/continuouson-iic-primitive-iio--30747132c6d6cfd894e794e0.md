# continuousOn_Iic_primitive_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bef47b5-c07e-3ab0-c5cf-33150606d5cd",
  "kind": "theorem",
  "lexical_name": "continuousOn_Iic_primitive_Iio",
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
  "slug": "continuouson-iic-primitive-iio--30747132c6d6cfd894e794e0",
  "source": {
    "blob": "4c9c2804830d9693d63c4708e83da3dcc9ccf9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 681,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30747132c6d6cfd894e794e0ae8014c736e52d8582182b70fc49b674c8ef96f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bef47b5-c07e-3ab0-c5cf-33150606d5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_Iic_primitive_Iio [NullSingletonClass μ] {a₀ : ℝ}
    (hf : IntegrableOn f (Iio a₀) μ) : ContinuousOn (fun b ↦ ∫ x in Iio b, f x ∂μ) (Iic a₀) := by
  intro a (ha : a ≤ a₀)
  rw [continuousWithinAt_iff_continuous_left_right]
  constructor
  · simpa [ha] using (hf.mono_set (Iio_subset_Iio ha)).continuousWithinAt_Iic_primitive_Iio
  · rw [Iic_inter_Ici]
    have h_int : IntervalIntegrable f μ a a₀ :=
      (intervalIntegrable_iff_integrableOn_Ico_of_le ha).2 <| hf.mono_set Ico_subset_Iio_self
    have h_split : ∀ b ∈ Icc a a₀, ∫ x in Iio b, f x ∂μ =
        (∫ x in Iio a₀, f x ∂μ) + ∫ x in a₀..b, f x ∂μ := by
      intro b hb
      simp [integral_symm b a₀, ← integral_Iio_sub_Iio' hf (hf.mono_set (Iio_subset_Iio hb.2))]
    have h_cwa : ContinuousWithinAt (fun b ↦ ∫ x in a₀..b, f x ∂μ) (Icc a a₀) a :=
      continuousWithinAt_primitive (measure_singleton a) (by simpa [ha])
    exact (continuousWithinAt_const.add h_cwa).congr h_split (h_split a (left_mem_Icc.2 ha))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9c2804830d9693d63c4708e83da3dcc9ccf9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
