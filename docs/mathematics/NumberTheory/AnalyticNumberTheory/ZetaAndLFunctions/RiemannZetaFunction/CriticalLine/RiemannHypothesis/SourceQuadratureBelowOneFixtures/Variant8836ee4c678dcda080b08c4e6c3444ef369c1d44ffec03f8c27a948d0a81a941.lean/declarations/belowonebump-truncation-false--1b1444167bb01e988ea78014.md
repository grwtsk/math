# belowOneBump_truncation_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceb1a73217347a1390ca6b9195159aba109e054b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20cd93f2-0f4c-450a-5ce1-0dfa9fd88d8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f15b6ca2-850a-4220-e933-1b22fb9c3ce9",
  "kind": "theorem",
  "lexical_name": "belowOneBump_truncation_false",
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
  "slug": "belowonebump-truncation-false--1b1444167bb01e988ea78014",
  "source": {
    "blob": "ceb1a73217347a1390ca6b9195159aba109e054b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1444167bb01e988ea78014579b2d8c937aa5d195ada4e4c177410b69dc9d86",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f15b6ca2-850a-4220-e933-1b22fb9c3ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem belowOneBump_truncation_false :
    (∫ u : ℝ in Ioi 0, belowOneBump u) ≠ ∫ u : ℝ in Ioi 1, belowOneBump u := by
  have hz : (∫ u : ℝ in Ioi 1, belowOneBump u) = 0 := by
    apply integral_eq_zero_of_ae
    filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with u hu
    exact belowOneBump_zero_above hu.le
  rw [belowOneBump_positive_integral, hz]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceQuadratureBelowOneFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceb1a73217347a1390ca6b9195159aba109e054b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
