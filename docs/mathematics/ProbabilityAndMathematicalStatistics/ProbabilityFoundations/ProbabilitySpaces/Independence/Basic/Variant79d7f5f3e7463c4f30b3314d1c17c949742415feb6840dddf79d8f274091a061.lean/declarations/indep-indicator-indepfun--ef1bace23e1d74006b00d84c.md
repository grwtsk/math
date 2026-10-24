# Indep.indicator_indepFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f348954b4478a5a81be29aaff1bb761d4eb197b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1034,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79d7f5f3e7463c4f30b3314d1c17c949742415feb6840dddf79d8f274091a061.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1e57ef7-b103-e467-161d-2e7b473e1aeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35b41d1c-3a3e-b639-06b0-d8c83948a7a8",
  "kind": "lemma",
  "lexical_name": "Indep.indicator_indepFun",
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
  "slug": "indep-indicator-indepfun--ef1bace23e1d74006b00d84c",
  "source": {
    "blob": "3f348954b4478a5a81be29aaff1bb761d4eb197b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1047,
    "line": 1034,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant79d7f5f3e7463c4f30b3314d1c17c949742415feb6840dddf79d8f274091a061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef1bace23e1d74006b00d84cd269d8d2dbcf690a37ea6d6d86533cd73600186c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant79d7f5f3e7463c4f30b3314d1c17c949742415feb6840dddf79d8f274091a061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35b41d1c-3a3e-b639-06b0-d8c83948a7a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1034–1047.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.indicator_indepFun {m : MeasurableSpace Ω} {M 𝓧 : Type*}
    [Zero M] [MeasurableSpace M] (c : M) {m𝓧 : MeasurableSpace 𝓧} {A : Set Ω}
    {X : Ω → 𝓧} (hA : MeasurableSet[m] A) (h : Indep m (m𝓧.comap X) μ) :
    (A.indicator (fun _ ↦ c)) ⟂ᵢ[μ] X :=
  Kernel.Indep.indicator_const_indepFun c hA h

end IndepFun

variable {ι Ω α β : Type*} {mΩ : MeasurableSpace Ω} {mα : MeasurableSpace α}
  {mβ : MeasurableSpace β} {μ : Measure Ω} {X : ι → Ω → α} {Y : ι → Ω → β} {f : _ → Set Ω}
  {t : ι → Set β} {s : Finset ι}

/-- The probability of an intersection of preimages conditioning on another intersection factors
into a product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant79d7f5f3e7463c4f30b3314d1c17c949742415feb6840dddf79d8f274091a061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant79d7f5f3e7463c4f30b3314d1c17c949742415feb6840dddf79d8f274091a061.lean#L1034).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f348954b4478a5a81be29aaff1bb761d4eb197b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
