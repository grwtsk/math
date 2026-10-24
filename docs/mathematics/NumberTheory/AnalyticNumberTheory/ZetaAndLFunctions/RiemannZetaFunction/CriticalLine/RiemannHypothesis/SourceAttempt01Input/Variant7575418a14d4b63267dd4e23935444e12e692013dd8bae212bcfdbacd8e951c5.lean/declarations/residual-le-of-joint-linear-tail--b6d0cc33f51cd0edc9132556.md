# residual_le_of_joint_linear_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea030b4-aa4b-66bc-4ab8-b444ed3a8a8b",
  "kind": "theorem",
  "lexical_name": "residual_le_of_joint_linear_tail",
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
  "slug": "residual-le-of-joint-linear-tail--b6d0cc33f51cd0edc9132556",
  "source": {
    "blob": "61d9ccdc27bdcf07b7ddf438ed5542f8c7e86533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant7575418a14d4b63267dd4e23935444e12e692013dd8bae212bcfdbacd8e951c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6d0cc33f51cd0edc91325561c2f76ee1ce7c94fc1e56d833b1e08b2ed4767ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant7575418a14d4b63267dd4e23935444e12e692013dd8bae212bcfdbacd8e951c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea030b4-aa4b-66bc-4ab8-b444ed3a8a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_le_of_joint_linear_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A → jointHyperbolaTail A ≤ K + (5 / 128 : ℝ) * A) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + (riemannZeta (1 / 2)).re +
        260 / R ^ 2 + 21440 / R ^ 3 := by
  apply residual_le_of_completeOmega_tail (by linarith : 91 ≤ R)
  intro A hRA
  have he := completeOmega_le_compensated_joint A (hR.trans hRA)
  have hj := hjoint A hRA
  unfold compensatedJointHyperbolaTail at he
  linarith

/-- One fixed signed joint arithmetic inequality suffices for the unchanged original estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant7575418a14d4b63267dd4e23935444e12e692013dd8bae212bcfdbacd8e951c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAttempt01Input/Variant7575418a14d4b63267dd4e23935444e12e692013dd8bae212bcfdbacd8e951c5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d9ccdc27bdcf07b7ddf438ed5542f8c7e86533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
