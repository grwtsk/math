# isFiniteKernel_withDensity_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "104718cdaec4cf8adff813f565e1ec6eee904c91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2512a7ea-398d-6a56-898a-eab939f82d76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1abbb0b-e9f1-ddee-12ee-266524ebdce6",
  "kind": "theorem",
  "lexical_name": "isFiniteKernel_withDensity_of_bounded",
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
  "slug": "isfinitekernel-withdensity-of-bounded--78f52c2be677fe8e57bd4934",
  "source": {
    "blob": "104718cdaec4cf8adff813f565e1ec6eee904c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f52c2be677fe8e57bd4934be31c5fecd7818a032bf9675098bb156e61c16fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1abbb0b-e9f1-ddee-12ee-266524ebdce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiniteKernel_withDensity_of_bounded (κ : Kernel α β) [IsFiniteKernel κ] {B : ℝ≥0∞}
    (hB_top : B ≠ ∞) (hf_B : ∀ a b, f a b ≤ B) : IsFiniteKernel (withDensity κ f) := by
  by_cases hf : Measurable (Function.uncurry f)
  · exact ⟨⟨B * κ.bound, ENNReal.mul_lt_top hB_top.lt_top κ.bound_lt_top, fun a => by
        rw [Kernel.withDensity_apply' κ hf a Set.univ]
        calc
          ∫⁻ b in Set.univ, f a b ∂κ a ≤ ∫⁻ _ in Set.univ, B ∂κ a := lintegral_mono (hf_B a)
          _ = B * κ a Set.univ := by
            simp only [Measure.restrict_univ, MeasureTheory.lintegral_const]
          _ ≤ B * κ.bound := by grw [measure_le_bound]⟩⟩
  · rw [withDensity_of_not_measurable _ hf]
    infer_instance

/-- Auxiliary lemma for `IsSFiniteKernel.withDensity`.
If a kernel `κ` is finite, then `withDensity κ f` is s-finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant57c8bedf87750d4df772673336e0be34c59342909b2eb2f0c91d4daa75b910aa.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104718cdaec4cf8adff813f565e1ec6eee904c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
