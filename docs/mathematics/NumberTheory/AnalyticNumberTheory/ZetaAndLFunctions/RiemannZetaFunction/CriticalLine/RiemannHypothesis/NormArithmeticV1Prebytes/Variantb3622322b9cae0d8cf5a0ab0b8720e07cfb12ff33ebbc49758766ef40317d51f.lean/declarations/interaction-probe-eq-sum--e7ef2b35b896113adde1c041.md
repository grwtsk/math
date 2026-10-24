# interaction_probe_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1e3d9219ac05f801de4e5add107460d549cf22e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebc6a6bc-ce1c-0514-0bd2-460635af3e3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a09e48-09b5-70d9-e603-9845ad32cb2d",
  "kind": "theorem",
  "lexical_name": "interaction_probe_eq_sum",
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
  "slug": "interaction-probe-eq-sum--e7ef2b35b896113adde1c041",
  "source": {
    "blob": "c1e3d9219ac05f801de4e5add107460d549cf22e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7ef2b35b896113adde1c041adce9a262db226a100fec8116f8b49112ecc0f52",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a09e48-09b5-70d9-e603-9845ad32cb2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interaction_probe_eq_sum (A : ℝ) {R : ℝ} (hR : 0 < R) :
    (⟪originalSourceState R, mangoldtInteraction A (originalSourceState R)⟫_ℂ).re =
      ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        sourceCorrelation explicitSecondDerivative R (Real.log n) := by
  rw [mangoldtInteraction_self_real]
  simp_rw [sourceCorrelation_eq_inner hR]

/-- Finite probe approximation preserves all coefficients before taking a norm error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e3d9219ac05f801de4e5add107460d549cf22e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
