# cutoffs_eventually_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79041f4a80c1f67518676b9ff36c1065012e4e47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c476a388ee23ec3b85badee3e807f22215f8ff7223ff24b250c3a5ae930701.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48b251f4-bf73-c524-2511-cb194b1d1743",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d18aadf4-01a8-ecd4-d0ac-3610e9a7a9de",
  "kind": "theorem",
  "lexical_name": "cutoffs_eventually_eq",
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
  "slug": "cutoffs-eventually-eq--f0a3b5fff4e61ef3090d4cf6",
  "source": {
    "blob": "79041f4a80c1f67518676b9ff36c1065012e4e47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant94c476a388ee23ec3b85badee3e807f22215f8ff7223ff24b250c3a5ae930701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0a3b5fff4e61ef3090d4cf65b1dd75bbd704ee87497acb207a5d3c433721c81",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant94c476a388ee23ec3b85badee3e807f22215f8ff7223ff24b250c3a5ae930701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18aadf4-01a8-ecd4-d0ac-3610e9a7a9de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffs_eventually_eq {A : ℝ}
    (hU : (vaughanCutoff A : ℝ) < A ^ 2)
    (hN : (sourceKernelCutoff A : ℝ) < Real.exp (2 * A)) :
    ∀ᶠ B in nhds A,
      vaughanCutoff B = vaughanCutoff A ∧ sourceKernelCutoff B = sourceKernelCutoff A := by
  have hu := SourceScaleVariation.floor_eventually_eq_of_strict_lower
    (f := fun B : ℝ => B ^ 2) (by fun_prop) hU
  have hn := SourceScaleVariation.floor_eventually_eq_of_strict_lower
    (f := fun B : ℝ => Real.exp (2 * B)) (by fun_prop) hN
  filter_upwards [hu, hn] with B hB hB'
  exact ⟨hB, hB'⟩

/-- Between actual cutoff events the complete forward arithmetic state has C¹ source variation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant94c476a388ee23ec3b85badee3e807f22215f8ff7223ff24b250c3a5ae930701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDivisorCounterterms/Variant94c476a388ee23ec3b85badee3e807f22215f8ff7223ff24b250c3a5ae930701.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79041f4a80c1f67518676b9ff36c1065012e4e47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
