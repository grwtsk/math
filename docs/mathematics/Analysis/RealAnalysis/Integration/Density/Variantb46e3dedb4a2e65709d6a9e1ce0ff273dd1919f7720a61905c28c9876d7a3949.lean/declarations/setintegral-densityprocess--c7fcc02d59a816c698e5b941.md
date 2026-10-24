# setIntegral_densityProcess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:197c7013-0b4c-6bfa-4d12-70311a25456a",
  "kind": "lemma",
  "lexical_name": "setIntegral_densityProcess",
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
  "slug": "setintegral-densityprocess--c7fcc02d59a816c698e5b941",
  "source": {
    "blob": "2a49ff4eda35f74082be3ce99933db8f3ab08f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7fcc02d59a816c698e5b941e89fa159a82a957e594113e541b400c5be99f399",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:197c7013-0b4c-6bfa-4d12-70311a25456a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_densityProcess (hκν : fst κ ≤ ν) [IsFiniteKernel ν]
    (n : ℕ) (a : α) {s : Set β} (hs : MeasurableSet s) {A : Set γ}
    (hA : MeasurableSet[countableFiltration γ n] A) :
    ∫ x in A, densityProcess κ ν n a x s ∂(ν a) = (κ a).real (A ×ˢ s) := by
  have : IsFiniteKernel κ := isFiniteKernel_of_isFiniteKernel_fst (h := isFiniteKernel_of_le hκν)
  obtain ⟨S, hS_subset, rfl⟩ := (measurableSet_generateFrom_countablePartition_iff _ _).mp hA
  simp_rw [sUnion_eq_iUnion]
  have h_disj : Pairwise (Disjoint on fun i : S ↦ (i : Set γ)) := by
    intro u v huv
    simp only [Function.onFun]
    refine disjoint_countablePartition (hS_subset (by simp)) (hS_subset (by simp)) ?_
    rwa [ne_eq, ← Subtype.ext_iff]
  rw [integral_iUnion, iUnion_prod_const, measureReal_def, measure_iUnion,
      tsum_toReal_eq (fun _ ↦ measure_ne_top _ _)]
  · congr with u
    rw [setIntegral_densityProcess_of_mem hκν _ _ hs (hS_subset (by simp))]
    rfl
  · intro u v huv
    simp only [Finset.coe_sort_coe, Set.disjoint_prod, disjoint_self]
    exact Or.inl (h_disj huv)
  · exact fun _ ↦ (measurableSet_countablePartition n (hS_subset (by simp))).prod hs
  · exact fun _ ↦ measurableSet_countablePartition n (hS_subset (by simp))
  · exact h_disj
  · exact (integrable_densityProcess hκν _ _ hs).integrableOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a49ff4eda35f74082be3ce99933db8f3ab08f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
