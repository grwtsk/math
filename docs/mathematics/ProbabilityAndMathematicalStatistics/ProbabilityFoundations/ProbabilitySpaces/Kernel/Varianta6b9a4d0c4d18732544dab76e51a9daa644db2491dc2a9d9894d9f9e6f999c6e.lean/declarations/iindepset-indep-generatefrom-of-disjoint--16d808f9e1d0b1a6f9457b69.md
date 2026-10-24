# iIndepSet.indep_generateFrom_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 604,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b44529e-fa72-6e8e-3123-bfdadc312b75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4a04e0c-8310-2084-dfea-0f9a0edbd0e1",
  "kind": "theorem",
  "lexical_name": "iIndepSet.indep_generateFrom_of_disjoint",
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
  "slug": "iindepset-indep-generatefrom-of-disjoint--16d808f9e1d0b1a6f9457b69",
  "source": {
    "blob": "d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 604,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d808f9e1d0b1a6f9457b6958c59d803cba36cd219262b49a6cc1ba28158172",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4a04e0c-8310-2084-dfea-0f9a0edbd0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepSet.indep_generateFrom_of_disjoint {s : ι → Set Ω}
    (hsm : ∀ n, MeasurableSet (s n)) (hs : iIndepSet s κ μ) (S T : Set ι) (hST : Disjoint S T) :
    Indep (generateFrom { t | ∃ n ∈ S, s n = t }) (generateFrom { t | ∃ k ∈ T, s k = t }) κ μ := by
  classical
  rcases eq_or_ne μ 0 with rfl | hμ
  · simp
  obtain ⟨η, η_eq, hη⟩ : ∃ (η : Kernel α Ω), κ =ᵐ[μ] η ∧ IsMarkovKernel η :=
    exists_ae_eq_isMarkovKernel hs.ae_isProbabilityMeasure hμ
  apply Indep.congr (Filter.EventuallyEq.symm η_eq)
  rw [← generateFrom_piiUnionInter_singleton_left, ← generateFrom_piiUnionInter_singleton_left]
  refine
    IndepSets.indep'
      (fun t ht => generateFrom_piiUnionInter_le _ ?_ _ _ (measurableSet_generateFrom ht))
      (fun t ht => generateFrom_piiUnionInter_le _ ?_ _ _ (measurableSet_generateFrom ht)) ?_ ?_ ?_
  · exact fun k => generateFrom_le fun t ht => (Set.mem_singleton_iff.1 ht).symm ▸ hsm k
  · exact fun k => generateFrom_le fun t ht => (Set.mem_singleton_iff.1 ht).symm ▸ hsm k
  · exact isPiSystem_piiUnionInter _ (fun k => IsPiSystem.singleton _) _
  · exact isPiSystem_piiUnionInter _ (fun k => IsPiSystem.singleton _) _
  · exact indepSets_piiUnionInter_of_disjoint (iIndep.iIndepSets (fun n => rfl) (hs.congr η_eq)) hST

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Kernel/Varianta6b9a4d0c4d18732544dab76e51a9daa644db2491dc2a9d9894d9f9e6f999c6e.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4aec8554af0fc2c0beb5d13cf6b3045bc4c418e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
