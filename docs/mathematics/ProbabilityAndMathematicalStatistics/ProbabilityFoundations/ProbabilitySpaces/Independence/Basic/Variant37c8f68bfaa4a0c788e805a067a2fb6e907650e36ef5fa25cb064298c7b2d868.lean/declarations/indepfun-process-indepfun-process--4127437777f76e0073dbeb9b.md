# IndepFun.process_indepFun_process₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69c79156f03cca42fd6d7e632cfcb4375a91422e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0b10a3a-0f01-7d7c-fe72-e9239590101b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db361e7b-9e79-443f-9571-4e1442a63419",
  "kind": "lemma",
  "lexical_name": "IndepFun.process_indepFun_process₀",
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
  "slug": "indepfun-process-indepfun-process--4127437777f76e0073dbeb9b",
  "source": {
    "blob": "69c79156f03cca42fd6d7e632cfcb4375a91422e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 177,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4127437777f76e0073dbeb9b2ef0387d85da6a82d419df1969c0ec29bd219398",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db361e7b-9e79-443f-9571-4e1442a63419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IndepFun.process_indepFun_process₀ {T : Type*} {𝓧 : S → Type*} {𝓨 : T → Type*}
    [∀ i, MeasurableSpace (𝓧 i)] [∀ j, MeasurableSpace (𝓨 j)] {X : (i : S) → Ω → 𝓧 i}
    {Y : (j : T) → Ω → 𝓨 j} (hX : ∀ i, AEMeasurable (X i) (κ ∘ₘ P))
    (hY : ∀ j, AEMeasurable (Y j) (κ ∘ₘ P))
    (h : ∀ (I : Finset S) (J : Finset T),
      IndepFun (fun ω (i : I) ↦ X i ω) (fun ω (j : J) ↦ Y j ω) κ P) [IsZeroOrMarkovKernel κ] :
    IndepFun (fun ω i ↦ X i ω) (fun ω j ↦ Y j ω) κ P := by
  refine process_congr ?_ (fun i ↦ Measure.ae_ae_of_ae_comp (hX i).ae_eq_mk.symm)
    (fun j ↦ Measure.ae_ae_of_ae_comp (hY j).ae_eq_mk.symm)
  refine process_indepFun_process
    (fun i ↦ (hX i).measurable_mk) (fun j ↦ (hY j).measurable_mk) fun I J ↦ ?_
  exact process_congr (h I J) (fun i ↦ Measure.ae_ae_of_ae_comp (hX i).ae_eq_mk)
    (fun j ↦ Measure.ae_ae_of_ae_comp (hY j).ae_eq_mk)

/-- If stochastic processes `X : (i : S) → (j : T i) → Ω → 𝓧 i j` are independent and
for all `i j`, `X' i j` is almost everywhere equal to `X i j`,
then `X'` are also independent. This implies that independence results about
measurable processes should generally also hold
for processes whose marginals are only a.e.-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant37c8f68bfaa4a0c788e805a067a2fb6e907650e36ef5fa25cb064298c7b2d868.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c79156f03cca42fd6d7e632cfcb4375a91422e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
