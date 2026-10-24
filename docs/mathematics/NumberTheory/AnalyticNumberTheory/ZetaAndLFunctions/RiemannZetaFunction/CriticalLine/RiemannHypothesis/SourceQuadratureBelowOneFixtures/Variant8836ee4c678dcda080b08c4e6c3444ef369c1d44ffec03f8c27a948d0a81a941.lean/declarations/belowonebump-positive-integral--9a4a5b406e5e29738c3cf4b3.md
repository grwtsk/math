# belowOneBump_positive_integral

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
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8841b6a8-533a-2a56-a066-e4f4dc60ed96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a34bff1d-5ef8-6ef6-354c-035d943cc2e2",
  "kind": "theorem",
  "lexical_name": "belowOneBump_positive_integral",
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
  "slug": "belowonebump-positive-integral--9a4a5b406e5e29738c3cf4b3",
  "source": {
    "blob": "ceb1a73217347a1390ca6b9195159aba109e054b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a4a5b406e5e29738c3cf4b3664c5147a625011fe4b810c2d51c69d8f12dd259",
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

Occurrence: `result:a34bff1d-5ef8-6ef6-354c-035d943cc2e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem belowOneBump_positive_integral :
    (∫ u : ℝ in Ioi 0, belowOneBump u) = 128 / 315 := by
  have hs : support belowOneBump ⊆ Ioc (0 : ℝ) 1 := by
    intro u hu
    constructor
    · by_contra hn
      exact hu (belowOneBump_zero_below (le_of_not_gt hn))
    · by_contra hn
      exact hu (belowOneBump_zero_above (le_of_lt (lt_of_not_ge hn)))
  have hi : (∫ u : ℝ in Ioi 0, belowOneBump u) = ∫ u : ℝ, belowOneBump u :=
    setIntegral_eq_integral_of_forall_compl_eq_zero
      (fun u hu => belowOneBump_zero_below (le_of_not_gt hu))
  rw [hi, ← intervalIntegral.integral_eq_integral_of_support_subset hs]
  exact belowOneBump_interval_integral

/-- Every positive-integer sample vanishes despite the nonzero continuous mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureBelowOneFixtures/Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceb1a73217347a1390ca6b9195159aba109e054b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
