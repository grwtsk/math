# sum_of_iIndepFun_of_forall_aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fea7bdf-a38f-4037-7693-25f5d391228d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ecdeb93-dac2-7a18-e080-81af43f3dfa7",
  "kind": "lemma",
  "lexical_name": "sum_of_iIndepFun_of_forall_aemeasurable",
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
  "slug": "sum-of-iindepfun-of-forall-aemeasurable--2b0a9e737ed9644a6dcf5a68",
  "source": {
    "blob": "f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 548,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b0a9e737ed9644a6dcf5a682eb0f743d7c6fc1a5ddbb6634683e30e12a74d99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ecdeb93-dac2-7a18-e080-81af43f3dfa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sum_of_iIndepFun_of_forall_aemeasurable
    {ι : Type*} {X : ι → Ω → ℝ} (h_indep : iIndepFun X μ) {c : ι → ℝ≥0}
    (h_meas : ∀ i, AEMeasurable (X i) μ)
    {s : Finset ι} (h_subG : ∀ i ∈ s, HasSubgaussianMGF (X i) (c i) μ) :
    HasSubgaussianMGF (fun ω ↦ ∑ i ∈ s, X i ω) (∑ i ∈ s, c i) μ := by
  have : IsProbabilityMeasure μ := h_indep.isProbabilityMeasure
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s his h =>
    simp_rw [← Finset.sum_apply, Finset.sum_insert his, Pi.add_apply, Finset.sum_apply]
    have h_indep' := (h_indep.indepFun_finset_sum_of_notMem₀ h_meas his).symm
    refine add_of_indepFun (h_subG _ (Finset.mem_insert_self _ _)) (h ?_) ?_
    · exact fun i hi ↦ h_subG _ (Finset.mem_insert_of_mem hi)
    · convert h_indep'
      rw [Finset.sum_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
