# IdentDistrib.pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8afe660abb3687a0611f421fc6de98a145e8174",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:420845b7-312c-f485-b096-9f433acf81ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:274d24f7-c1ad-8171-0843-1f5683ce178e",
  "kind": "lemma",
  "lexical_name": "IdentDistrib.pi",
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
  "slug": "identdistrib-pi--72a2c3a02c9c76e8704367f6",
  "source": {
    "blob": "d8afe660abb3687a0611f421fc6de98a145e8174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 57,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a2c3a02c9c76e8704367f680f6ae853c0777d2658286a6ffa6d5accb012314",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:274d24f7-c1ad-8171-0843-1f5683ce178e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IdentDistrib.pi [Countable ι] {E : ι → Type*} {mE : ∀ i, MeasurableSpace (E i)}
    {X : (i : ι) → Ω → E i} {Y : (i : ι) → Ω' → E i}
    (h : ∀ i, IdentDistrib (X i) (Y i) μ ν) (hX_ind : iIndepFun X μ) (hY_ind : iIndepFun Y ν) :
    IdentDistrib (fun ω ↦ (X · ω)) (fun ω ↦ (Y · ω)) μ ν where
  aemeasurable_fst := .of_eval fun i ↦ (h i).aemeasurable_fst
  aemeasurable_snd := .of_eval fun i ↦ (h i).aemeasurable_snd
  map_eq := by
    have : IsProbabilityMeasure μ := hX_ind.isProbabilityMeasure
    have : IsProbabilityMeasure ν := hY_ind.isProbabilityMeasure
    rw [(iIndepFun_iff_map_fun_eq_infinitePi_map₀' (fun i ↦ (h i).aemeasurable_fst)).mp hX_ind,
      (iIndepFun_iff_map_fun_eq_infinitePi_map₀' (fun i ↦ (h i).aemeasurable_snd)).mp hY_ind]
    congr with i
    rw [(h i).map_eq]

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8afe660abb3687a0611f421fc6de98a145e8174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
