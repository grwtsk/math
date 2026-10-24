# TendstoInDistribution.of_tendsto_charFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d52877dd7704ee9fd878cd4035cbe2980bd8cb7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8461c650-f00c-2629-faf2-57d4bc14f032",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57c39b11-9caa-b78d-2ea4-cb1a2df5007a",
  "kind": "lemma",
  "lexical_name": "TendstoInDistribution.of_tendsto_charFun",
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
  "slug": "tendstoindistribution-of-tendsto-charfun--b3ea03a3e43309085567e07d",
  "source": {
    "blob": "d52877dd7704ee9fd878cd4035cbe2980bd8cb7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 232,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3ea03a3e43309085567e07d426dc7a46d55d070bb8dbbdf8e07fb5533be4ff3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c39b11-9caa-b78d-2ea4-cb1a2df5007a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TendstoInDistribution.of_tendsto_charFun
    (hX : ∀ n, AEMeasurable (X n) (P n)) (hX' : AEMeasurable X' P')
    (h : ∀ t : E, Tendsto (fun n ↦ charFun ((P n).map (X n)) t) atTop (𝓝 (charFun (P'.map X') t))) :
    TendstoInDistribution X atTop X' P P' where
  forall_aemeasurable := hX
  aemeasurable_limit := hX'
  tendsto := by
    apply ProbabilityMeasure.tendsto_of_tendsto_charFun
    simpa

/-- If a sequence of random variables converges in distribution to a random variable, then the
characteristic functions of the sequence of pushforward measures under the sequence of random
variables converge pointwise to the characteristic function of the pushforward measure under the
random variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantc00347a429ee88b973976ff260dadfba834260879a0a37011e7bf3c5624ff60a.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d52877dd7704ee9fd878cd4035cbe2980bd8cb7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
