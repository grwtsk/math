# exists_ae_eq_isMarkovKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7fdb429-9f7c-09d1-2093-951440ff2106",
  "kind": "lemma",
  "lexical_name": "exists_ae_eq_isMarkovKernel",
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
  "slug": "exists-ae-eq-ismarkovkernel--13c0efd47c404c0628d8b24e",
  "source": {
    "blob": "acc9f314beac08287c71bc33aca78f6c94fee49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 398,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant85bf0f2c72b02a0fea4b475f49d9c6ad93c8df482dcbfe2aebd75b7007d4d8ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13c0efd47c404c0628d8b24e4cc3f1524139d98962b2c3d4147efbf0c3acdedd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant85bf0f2c72b02a0fea4b475f49d9c6ad93c8df482dcbfe2aebd75b7007d4d8ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7fdb429-9f7c-09d1-2093-951440ff2106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_ae_eq_isMarkovKernel {μ : Measure α}
    (h : ∀ᵐ a ∂μ, IsProbabilityMeasure (κ a)) (h' : μ ≠ 0) :
    ∃ (η : Kernel α β), (κ =ᵐ[μ] η) ∧ IsMarkovKernel η := by
  classical
  obtain ⟨s, s_meas, μs, hs⟩ : ∃ s, MeasurableSet s ∧ μ s = 0
      ∧ ∀ a ∉ s, IsProbabilityMeasure (κ a) := by
    refine ⟨toMeasurable μ {a | ¬ IsProbabilityMeasure (κ a)}, measurableSet_toMeasurable _ _,
      by simpa [measure_toMeasurable] using h, ?_⟩
    intro a ha
    contrapose! ha
    exact subset_toMeasurable _ _ ha
  obtain ⟨a, ha⟩ : sᶜ.Nonempty := by
    contrapose! h'; simpa [μs, h'] using measure_univ_le_add_compl s (μ := μ)
  refine ⟨Kernel.piecewise s_meas (Kernel.const _ (κ a)) κ, ?_, ?_⟩
  · filter_upwards [measure_zero_iff_ae_notMem.1 μs] with b hb
    simp [hb, piecewise]
  · refine ⟨fun b ↦ ?_⟩
    by_cases hb : b ∈ s
    · simpa [hb, piecewise] using hs _ ha
    · simpa [hb, piecewise] using hs _ hb

end Kernel
end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant85bf0f2c72b02a0fea4b475f49d9c6ad93c8df482dcbfe2aebd75b7007d4d8ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant85bf0f2c72b02a0fea4b475f49d9c6ad93c8df482dcbfe2aebd75b7007d4d8ab.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc9f314beac08287c71bc33aca78f6c94fee49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
