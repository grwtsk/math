# completeSpace_of_completeSpace_continuousMultilinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfdf5efa-6d3f-2487-e1d3-8c3bf476ccb1",
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
  "slug": "completespace-of-completespace-continuousmultilinearmap--8c11721b263862917ba41bf4",
  "source": {
    "blob": "2e96bc8260409a1f64324b02df9e67e12ae8ab93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant458c285f5b272ba23ecb28d01ce651a89ed84f45fcd673800db23cdd1512fdca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c11721b263862917ba41bf423f85fc45829ed6d11554ceacc755e92d2167286",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant458c285f5b272ba23ecb28d01ce651a89ed84f45fcd673800db23cdd1512fdca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfdf5efa-6d3f-2487-e1d3-8c3bf476ccb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completeSpace_of_completeSpace_continuousMultilinearMap
    [CompleteSpace (ContinuousMultilinearMap 𝕜 M F)]
    {m : ∀ i, M i} (hm : ∀ i, m i ≠ 0) : CompleteSpace F := by
  refine Metric.complete_of_cauchySeq_tendsto fun f hf => ?_
  have : ∀ i, ∃ φ : StrongDual 𝕜 (M i), φ (m i) = 1 := fun i ↦ exists_eq_one (hm i)
  choose φ hφ using this
  cases nonempty_fintype ι
  let g : ℕ → (ContinuousMultilinearMap 𝕜 M F) := fun n ↦
    compContinuousLinearMapL φ
    (ContinuousMultilinearMap.smulRightL 𝕜 _ F ((ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι 𝕜)) (f n))
  have : CauchySeq g := by
    refine (ContinuousLinearMap.lipschitzWith _).cauchySeq_comp ?_
    exact (ContinuousLinearMap.lipschitzWith _).cauchySeq_comp hf
  obtain ⟨a, ha⟩ : ∃ a, Tendsto g atTop (𝓝 a) := cauchy_iff_exists_le_nhds.mp this
  refine ⟨a m, ?_⟩
  have : Tendsto (fun n ↦ g n m) atTop (𝓝 (a m)) := ((continuous_eval_const _).tendsto _).comp ha
  simpa [g, hφ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant458c285f5b272ba23ecb28d01ce651a89ed84f45fcd673800db23cdd1512fdca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant458c285f5b272ba23ecb28d01ce651a89ed84f45fcd673800db23cdd1512fdca.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e96bc8260409a1f64324b02df9e67e12ae8ab93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
