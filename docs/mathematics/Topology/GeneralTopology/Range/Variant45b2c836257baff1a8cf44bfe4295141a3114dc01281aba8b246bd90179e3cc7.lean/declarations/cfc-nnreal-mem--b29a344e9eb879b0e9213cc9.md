# cfcₙ_nnreal_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69768fb899bfd8f8603196e0287fce9d51d923bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e09ec172-9397-2f40-8b39-822c4505daba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2416c482-62ac-4d7d-0ef7-9a5559e3d5f0",
  "kind": "theorem",
  "lexical_name": "cfcₙ_nnreal_mem",
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
  "slug": "cfc-nnreal-mem--b29a344e9eb879b0e9213cc9",
  "source": {
    "blob": "69768fb899bfd8f8603196e0287fce9d51d923bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29a344e9eb879b0e9213cc90e97333293dbf39fcfd20735de1bd3f123e23ba6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2416c482-62ac-4d7d-0ef7-9a5559e3d5f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cfcₙ_nnreal_mem {𝕜 : Type*} [RCLike 𝕜]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    {S : Type*} [MulAction 𝕜 A] [SetLike S A]
    [NonUnitalSubringClass S A] [IsScalarTower ℝ 𝕜 A]
    [SMulMemClass S 𝕜 A] [StarMemClass S A] {s : S} [hs : IsClosed (s : Set A)]
    (f : ℝ≥0 → ℝ≥0) {a : A} (has : a ∈ s) :
    cfcₙ f a ∈ s := by
  by_cases ha : 0 ≤ a
  · rw [cfcₙ_nnreal_eq_real ..]
    exact cfcₙ_mem _ has
  · simp [cfcₙ_apply_of_not_predicate _ ha]

end NonUnital

section StarOrderedSubtype

variable {𝕜 S A : Type*} [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [ContinuousStar A] [Module ℝ A] [IsScalarTower ℝ A A] [SMulCommClass ℝ A A]
    [IsTopologicalRing A] [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    [RCLike 𝕜] [Module 𝕜 A] [IsScalarTower ℝ 𝕜 A] [ContinuousConstSMul ℝ A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint] [StarModule ℝ A]
    [SetLike S A] [NonUnitalSubringClass S A] [SMulMemClass S 𝕜 A] [StarMemClass S A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Range/Variant45b2c836257baff1a8cf44bfe4295141a3114dc01281aba8b246bd90179e3cc7.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69768fb899bfd8f8603196e0287fce9d51d923bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
