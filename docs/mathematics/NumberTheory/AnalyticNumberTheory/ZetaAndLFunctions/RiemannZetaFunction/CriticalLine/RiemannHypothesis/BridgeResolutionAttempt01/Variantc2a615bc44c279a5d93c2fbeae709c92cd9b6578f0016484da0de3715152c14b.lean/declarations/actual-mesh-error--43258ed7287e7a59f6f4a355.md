# actual_mesh_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d38a599d-de86-4977-5eea-b93398209084",
  "kind": "theorem",
  "lexical_name": "actual_mesh_error",
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
  "slug": "actual-mesh-error--43258ed7287e7a59f6f4a355",
  "source": {
    "blob": "ed46e57049b10f93b57283bffd1b00cafe420969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43258ed7287e7a59f6f4a35535a1b02162dcf1c6b1040ac21b70ea939c696814",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d38a599d-de86-4977-5eea-b93398209084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mesh_error {A s t : ℝ} {n : ℕ} (hA : 0<A) (hn : 0<n)
    (hs : s∈Icc (0:ℝ) (2*A)) (ht : t∈Icc (0:ℝ) (2*A))
    (hmesh : |t-s|≤2*A/(n:ℝ)) :
    |criticalDiscrepancyBridge A t-criticalDiscrepancyBridge A s|≤
      (389/20:ℝ)*A/n := by
  calc
    _ ≤ (389/40:ℝ)*|t-s| := actual_bridge_lipschitz hA hs ht
    _ ≤ (389/40:ℝ)*(2*A/(n:ℝ)) :=
      mul_le_mul_of_nonneg_left hmesh (by norm_num)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BridgeResolutionAttempt01/Variantc2a615bc44c279a5d93c2fbeae709c92cd9b6578f0016484da0de3715152c14b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed46e57049b10f93b57283bffd1b00cafe420969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
