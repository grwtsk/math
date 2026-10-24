# no_uniform_full_multiplier_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fc18267dd11743dca9ba39a7cb7bdbae5065c10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d44075f-be57-dd4c-e625-814714d3253c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aeea5e52-2c18-8c8e-5b78-904ab92fd583",
  "kind": "theorem",
  "lexical_name": "no_uniform_full_multiplier_lower_bound",
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
  "slug": "no-uniform-full-multiplier-lower-bound--e8165e36b60174d7bcd12ab1",
  "source": {
    "blob": "1fc18267dd11743dca9ba39a7cb7bdbae5065c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8165e36b60174d7bcd12ab1dc25cb3c25105a4d9677684f15b380952b05491f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeea5e52-2c18-8c8e-5b78-904ab92fd583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_full_multiplier_lower_bound :
    ¬∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → ∀ ξ : ℝ, lower ≤ spectralMultiplier A ξ := by
  rintro ⟨lower, h⟩
  obtain ⟨A, hA, hneg⟩ := full_multiplier_zero_unbounded_below lower
  exact (not_lt_of_ge (h A hA 0)) hneg

/-- A genuine unit-mass frequency window can have arbitrarily negative complete form value.
The frequency window is not asserted to be a transform of a supported source test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc18267dd11743dca9ba39a7cb7bdbae5065c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
