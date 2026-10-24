# IdentDistrib.prodMk

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
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:886cfd46-5757-fc1d-282c-f46672fa98b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a92f21a5-dc77-6848-89ad-3cbfaf9ebcdc",
  "kind": "lemma",
  "lexical_name": "IdentDistrib.prodMk",
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
  "slug": "identdistrib-prodmk--c443051d321f8a89c068c8f8",
  "source": {
    "blob": "d8afe660abb3687a0611f421fc6de98a145e8174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 39,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c443051d321f8a89c068c8f830271b7c1c6e67eb07ce420cfc6fbcd92190aede",
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

Occurrence: `result:a92f21a5-dc77-6848-89ad-3cbfaf9ebcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IdentDistrib.prodMk [IsFiniteMeasure μ]
    {X : Ω → E} {Y : Ω → F} {Z : Ω' → E} {W : Ω' → F}
    (hXZ : IdentDistrib X Z μ ν) (hYW : IdentDistrib Y W μ ν)
    (hXY : X ⟂ᵢ[μ] Y) (hZW : Z ⟂ᵢ[ν] W) :
    IdentDistrib (fun ω ↦ (X ω, Y ω)) (fun ω' ↦ (Z ω', W ω')) μ ν where
  aemeasurable_fst := hXZ.aemeasurable_fst.prodMk hYW.aemeasurable_fst
  aemeasurable_snd := hXZ.aemeasurable_snd.prodMk hYW.aemeasurable_snd
  map_eq := by
    have : IsFiniteMeasure ν := by
      have : IsFiniteMeasure (ν.map Z) := by rw [← hXZ.map_eq]; infer_instance
      exact Measure.isFiniteMeasure_of_map hXZ.aemeasurable_snd
    rw [hXY.map_prod_eq_prod_map_map hXZ.aemeasurable_fst hYW.aemeasurable_fst,
      hZW.map_prod_eq_prod_map_map hXZ.aemeasurable_snd hYW.aemeasurable_snd,
      hXZ.map_eq, hYW.map_eq]

/-- If `(X i)` and `(Y i)` are families of independent random variables indexed by a countable
type `ι`, such that for each `i`, `X i` and `Y i` are identically distributed, then the products
`X` and `Y` are identically distributed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistribIndep/Variantbbbb5b4b25655531bf767e8b872bbcadc229d4f48bae9f4eb68324cfcd67c5e0.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8afe660abb3687a0611f421fc6de98a145e8174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
