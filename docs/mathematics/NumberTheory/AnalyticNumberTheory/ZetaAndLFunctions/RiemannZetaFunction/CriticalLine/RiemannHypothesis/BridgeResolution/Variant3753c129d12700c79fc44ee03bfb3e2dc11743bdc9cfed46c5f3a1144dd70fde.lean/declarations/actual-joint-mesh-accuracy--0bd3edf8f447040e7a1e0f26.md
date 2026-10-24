# actual_joint_mesh_accuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:041bf450-f5a7-6df4-30f9-895010552b7e",
  "kind": "theorem",
  "lexical_name": "actual_joint_mesh_accuracy",
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
  "slug": "actual-joint-mesh-accuracy--0bd3edf8f447040e7a1e0f26",
  "source": {
    "blob": "ff67988dac63708b1e5db00856f2e438a43f310c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd3edf8f447040e7a1e0f26986e91dd9cce3f30d9ea232f4e9184174e881e05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041bf450-f5a7-6df4-30f9-895010552b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_mesh_accuracy {A η s t : ℝ} {n : ℕ}
    (hA : 0<A) (hη : 0<η) (hn : bridgeResolutionCount A η≤n)
    (hs : s∈Icc (0:ℝ) (2*A)) (ht : t∈Icc (0:ℝ) (2*A))
    (hmesh : |t-s|≤2*A/(n:ℝ)) :
    |criticalDiscrepancyBridge A t-criticalDiscrepancyBridge A s|≤η :=
  (actual_mesh_error hA ((bridgeResolutionCount_pos A η).trans_le hn) hs ht hmesh).trans
    (selected_mesh_budget hη hn)

#print axioms bridgeResolutionCount
#print axioms bridgeResolutionCount_pos
#print axioms bridgeResolutionCount_mono
#print axioms actual_mesh_error
#print axioms selected_mesh_budget
#print axioms actual_joint_mesh_accuracy
end ContinuousResearch.BridgeResolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolution/Variant3753c129d12700c79fc44ee03bfb3e2dc11743bdc9cfed46c5f3a1144dd70fde.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff67988dac63708b1e5db00856f2e438a43f310c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
