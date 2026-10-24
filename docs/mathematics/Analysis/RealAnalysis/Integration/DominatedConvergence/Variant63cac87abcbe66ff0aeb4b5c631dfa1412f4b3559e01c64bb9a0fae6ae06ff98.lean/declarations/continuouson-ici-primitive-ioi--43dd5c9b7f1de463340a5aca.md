# continuousOn_Ici_primitive_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:537d9753-f3f2-6c66-a2b2-ac9fcfdfa81e",
  "kind": "theorem",
  "lexical_name": "continuousOn_Ici_primitive_Ioi",
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
  "slug": "continuouson-ici-primitive-ioi--43dd5c9b7f1de463340a5aca",
  "source": {
    "blob": "4c9c2804830d9693d63c4708e83da3dcc9ccf9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 646,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43dd5c9b7f1de463340a5acaa1ab726724cf6a9d2f2320dc6c25de7286b027c6",
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

Occurrence: `result:537d9753-f3f2-6c66-a2b2-ac9fcfdfa81e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_Ici_primitive_Ioi [NullSingletonClass μ] {a₀ : ℝ}
    (hf : IntegrableOn f (Ioi a₀) μ) : ContinuousOn (fun b ↦ ∫ x in Ioi b, f x ∂μ) (Ici a₀) := by
  intro a (ha : a₀ ≤ a)
  rw [continuousWithinAt_iff_continuous_left_right]
  constructor
  · rw [Ici_inter_Iic]
    have h_int : IntervalIntegrable f μ a₀ a :=
      (intervalIntegrable_iff_integrableOn_Ioc_of_le ha).2 <| hf.mono_set Ioc_subset_Ioi_self
    have h_split : ∀ b ∈ Icc a₀ a, ∫ x in Ioi b, f x ∂μ =
        (∫ x in Ioi a₀, f x ∂μ) - ∫ x in a₀..b, f x ∂μ := by
      intro b hb
      simp [← integral_Ioi_sub_Ioi hf hb.1]
    have h_cwa : ContinuousWithinAt (fun b ↦ ∫ x in a₀..b, f x ∂μ) (Icc a₀ a) a :=
      continuousWithinAt_primitive (measure_singleton a) (by simpa [ha])
    exact (continuousWithinAt_const.sub h_cwa).congr h_split (h_split a (right_mem_Icc.2 ha))
  · simpa [ha] using (hf.mono_set (Ioi_subset_Ioi ha)).continuousWithinAt_Ici_primitive_Ioi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9c2804830d9693d63c4708e83da3dcc9ccf9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
