# completeSpace_of_completeSpace_continuousMultilinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58dc4c91-5abe-55cb-e9eb-5e41294ac698",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ffb7cf-a438-9147-ae61-e7c7560c1c1b",
  "kind": "lemma",
  "lexical_name": "completeSpace_of_completeSpace_continuousMultilinearMap",
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
  "slug": "completespace-of-completespace-continuousmultilinearmap--1aa9ce49c2d60086a044a03a",
  "source": {
    "blob": "79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa9ce49c2d60086a044a03ae152b9b3753fc5a320fc265ed556dc5c452052a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ffb7cf-a438-9147-ae61-e7c7560c1c1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completeSpace_of_completeSpace_continuousMultilinearMap
    [CompleteSpace (ContinuousMultilinearMap 𝕜 M F)]
    {m : ∀ i, M i} (hm : ∀ i, m i ≠ 0) : CompleteSpace F := by
  refine Metric.complete_of_cauchySeq_tendsto fun f hf => ?_
  have : ∀ i, ∃ φ : M i →L[𝕜] 𝕜, φ (m i) = 1 := fun i ↦ exists_eq_one (hm i)
  choose φ hφ using this
  cases nonempty_fintype ι
  let g : ℕ → (ContinuousMultilinearMap 𝕜 M F) := fun n ↦
    compContinuousLinearMapL φ
    (ContinuousMultilinearMap.smulRightL 𝕜 _ F ((ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι 𝕜)) (f n))
  have : CauchySeq g := by
    refine (ContinuousLinearMap.lipschitz _).cauchySeq_comp ?_
    exact (ContinuousLinearMap.lipschitz _).cauchySeq_comp hf
  obtain ⟨a, ha⟩ : ∃ a, Tendsto g atTop (𝓝 a) := cauchy_iff_exists_le_nhds.mp this
  refine ⟨a m, ?_⟩
  have : Tendsto (fun n ↦ g n m) atTop (𝓝 (a m)) := ((continuous_eval_const _).tendsto _).comp ha
  simpa [g, hφ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
