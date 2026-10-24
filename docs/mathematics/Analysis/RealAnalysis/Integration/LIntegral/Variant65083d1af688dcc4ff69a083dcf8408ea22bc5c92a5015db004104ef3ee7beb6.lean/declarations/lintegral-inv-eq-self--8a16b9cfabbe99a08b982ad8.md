# lintegral_inv_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cd03501ff9fc22670b2299b2458c98cc84b7adb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de66820b-72d7-00fc-9ae4-35cab2a79437",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86e3b474-3749-c420-0c2a-7cea580404ab",
  "kind": "theorem",
  "lexical_name": "lintegral_inv_eq_self",
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
  "slug": "lintegral-inv-eq-self--8a16b9cfabbe99a08b982ad8",
  "source": {
    "blob": "3cd03501ff9fc22670b2299b2458c98cc84b7adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a16b9cfabbe99a08b982ad8ae5ce422e90c259b54ae57c7d67087edfca3100a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e3b474-3749-c420-0c2a-7cea580404ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_inv_eq_self [IsInvInvariant μ] (f : G → ℝ≥0∞) :
    ∫⁻ x, f x⁻¹ ∂μ = ∫⁻ x, f x ∂μ := by
  simpa using (lintegral_map_equiv f (μ := μ) <| MeasurableEquiv.inv G).symm

end MeasurableInv

section MeasurableMul

variable [Group G] [MeasurableMul G]

/-- Translating a function by left-multiplication does not change its Lebesgue integral
with respect to a left-invariant measure. -/
@[to_additive
      "Translating a function by left-addition does not change its Lebesgue integral with
      respect to a left-invariant measure."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cd03501ff9fc22670b2299b2458c98cc84b7adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
