# weighted_dilationTest_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed0451c647701bff0458e9c1625e07723c725ec6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a758b1b5-e4ab-1214-44fe-109b679ef9fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8222638d-cecc-305e-2e03-c0cfc9b9c638",
  "kind": "theorem",
  "lexical_name": "weighted_dilationTest_eq_indicator",
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
  "slug": "weighted-dilationtest-eq-indicator--f155516723854ee2ebd9192c",
  "source": {
    "blob": "ed0451c647701bff0458e9c1625e07723c725ec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f155516723854ee2ebd9192c316aebc67c46805099a305ed0b366981a5ce9cb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8222638d-cecc-305e-2e03-c0cfc9b9c638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_dilationTest_eq_indicator (A σ : ℝ) (hA : 1 ≤ A) :
    (fun x ↦ Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      (Icc (-A) A).indicator (fun x ↦ Real.exp (σ * x) *
        (secondInterior A x - bumpInterior A x / 4)) := by
  rw [explicit_dilationTest_eq_indicator A (by linarith)]
  funext x
  exact (Set.indicator_mul_right (Icc (-A) A) (fun x ↦ Real.exp (σ * x))
    (fun x ↦ secondInterior A x - bumpInterior A x / 4)).symm

/-- Every fixed exponential weight is integrable against the actual compact source test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variantcf7f7306b117cc2d0483bfe0329d2f0fe8f8135247e170aa692e0163e35d7d7c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed0451c647701bff0458e9c1625e07723c725ec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
