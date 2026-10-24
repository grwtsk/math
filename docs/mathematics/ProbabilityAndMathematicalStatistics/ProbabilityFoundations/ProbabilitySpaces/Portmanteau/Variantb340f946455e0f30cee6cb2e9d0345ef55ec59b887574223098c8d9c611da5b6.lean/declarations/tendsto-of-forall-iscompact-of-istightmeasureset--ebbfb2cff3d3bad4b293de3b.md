# tendsto_of_forall_isCompact_of_isTightMeasureSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b06375e9-10ee-2213-857c-7594cbf5083d",
  "kind": "theorem",
  "lexical_name": "tendsto_of_forall_isCompact_of_isTightMeasureSet",
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
  "slug": "tendsto-of-forall-iscompact-of-istightmeasureset--ebbfb2cff3d3bad4b293de3b",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 663,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebbfb2cff3d3bad4b293de3b3ee1a5b5703e955e099bdd0d3d3aeb6d7ec1ca73",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b06375e9-10ee-2213-857c-7594cbf5083d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_forall_isCompact_of_isTightMeasureSet
    (h₁ : IsTightMeasureSet (range (ProbabilityMeasure.toMeasure ∘ μs)))
    (h₂ : ∀ F, IsCompact F → limsup (μs · F) L ≤ μ F) :
    Tendsto μs L (𝓝 μ) := by
  obtain rfl | _ := L.eq_or_neBot
  · simp
  refine tendsto_of_forall_isClosed_limsup_le <| fun F hF_closed ↦ ?_
  rw [← ENNReal.coe_le_coe, ENNReal.ofNNReal_limsup <|
      isBoundedUnder_of_eventually_le (a := 1) (by simp)]
  refine ENNReal.le_of_forall_pos_le_add <| fun ε hε _ ↦ ?_
  obtain ⟨K, hKc, hK_le⟩ := isTightMeasureSet_iff_exists_isCompact_measure_compl_le.mp
    h₁ ε (by positivity)
  grw [limsup_le_limsup (v := fun i ↦ μs i (F ∩ K) + (ε : ENNReal))]
  · rw [limsup_add_const _ _ _ (by isBoundedDefault) (by isBoundedDefault)]
    apply add_le_add _ (by simp)
    specialize h₂ (F ∩ K) <| hKc.inter_left hF_closed
    rw [← ENNReal.coe_le_coe, ENNReal.ofNNReal_limsup <|
      isBoundedUnder_of_eventually_le (a := 1) (by simp)] at h₂
    grw [h₂]
    simp [measure_mono]
  · refine .of_forall (fun i ↦ ?_)
    simp_rw [ProbabilityMeasure.ennreal_coeFn_eq_coeFn_toMeasure]
    grw [measure_mono (t := (F ∩ K) ∪ F \ K) (by simp), measure_union_le]
    gcongr
    exact le_trans (measure_mono (by simp)) <| hK_le (μs i) <| by simp

end Closed

section Lipschitz

/-- Weak convergence of probability measures is equivalent to the property that the integrals of
every bounded Lipschitz function converge to the integral of the function against
the limit measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
