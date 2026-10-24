# weighted_dilationTest_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7a98f95-8575-a425-57a1-30e1ede284fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ef754e2-1ad8-8110-ae59-daadee13818e",
  "kind": "theorem",
  "lexical_name": "weighted_dilationTest_integrable",
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
  "slug": "weighted-dilationtest-integrable--eaf718c376265e8c79756aa6",
  "source": {
    "blob": "1bf59ce65f4f74b603505d13a23150f1fd929c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf718c376265e8c79756aa6454632ef28f03c3752161a94ea74c6616637470b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef754e2-1ad8-8110-ae59-daadee13818e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_dilationTest_integrable (A σ : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) volume := by
  rw [weighted_dilationTest_eq_indicator A σ hA]
  exact integrable_zeroExtension (fun x ↦ Real.exp (σ * x) *
      (secondInterior A x - bumpInterior A x / 4))
      (((Real.continuous_exp.comp (continuous_const.mul continuous_id))).mul
        ((secondInterior_continuous A).sub ((bumpInterior_continuous A).div_const 4))) (-A) A

/-- The actual source test annihilates both exponential poles by the fundamental theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant705d9eb9524e0309b79eb0a731416533785289d2f417fc8ea4f2b9006624d2eb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf59ce65f4f74b603505d13a23150f1fd929c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
