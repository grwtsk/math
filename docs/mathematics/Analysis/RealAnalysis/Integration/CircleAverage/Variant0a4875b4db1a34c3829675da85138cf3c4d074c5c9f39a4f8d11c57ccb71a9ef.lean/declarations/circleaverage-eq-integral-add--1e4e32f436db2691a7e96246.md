# circleAverage_eq_integral_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dfae29b15e00c0f5252a479b32dcc714d270f38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ca8220c-7a49-1a05-d02c-870f8825fe51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dff479ef-3784-731f-fb8e-c55aea01302c",
  "kind": "lemma",
  "lexical_name": "circleAverage_eq_integral_add",
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
  "slug": "circleaverage-eq-integral-add--1e4e32f436db2691a7e96246",
  "source": {
    "blob": "8dfae29b15e00c0f5252a479b32dcc714d270f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e4e32f436db2691a7e962463af9b1ae942e3b9fcb1dc935686c9ff55f61cfce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dff479ef-3784-731f-fb8e-c55aea01302c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma circleAverage_eq_integral_add (η : ℝ) :
    circleAverage f c R = (2 * π)⁻¹ • ∫ (θ : ℝ) in (0)..2 * π, f (circleMap c R (θ + η)) := by
  rw [intervalIntegral.integral_comp_add_right (fun θ ↦ f (circleMap c R θ))]
  have t₀ : (fun θ ↦ f (circleMap c R θ)).Periodic (2 * π) :=
    fun x ↦ by simp [periodic_circleMap c R x]
  have := t₀.intervalIntegral_add_eq 0 η
  rw [zero_add, add_comm] at this
  rw [zero_add]
  simp only [circleAverage, mul_inv_rev]
  congr

/-- Circle averages do not change when replacing the radius by its negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variant0a4875b4db1a34c3829675da85138cf3c4d074c5c9f39a4f8d11c57ccb71a9ef.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dfae29b15e00c0f5252a479b32dcc714d270f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
