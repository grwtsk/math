# RectangleIntegralHSplit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377b24f1b641c133d77964e6af5698c101bc8458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39289eb-6b0a-6bb8-9b4f-58cce10fb2b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc8f63d3-3312-afe5-f439-f4eab4ac47b7",
  "kind": "lemma",
  "lexical_name": "RectangleIntegralHSplit'",
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
  "slug": "rectangleintegralhsplit--dc4ccb7dadb30571e70ff3b6",
  "source": {
    "blob": "377b24f1b641c133d77964e6af5698c101bc8458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc4ccb7dadb30571e70ff3b6d3cd7af1e2c2987d30c8f4f3eb1a91e6282892ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc8f63d3-3312-afe5-f439-f4eab4ac47b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RectangleIntegralHSplit' {a x₀ x₁ y₀ y₁ : ℝ}
    (ha : a ∈ [[x₀, x₁]])
    (hf : RectangleBorderIntegrable f (↑x₀ + ↑y₀ * I) (↑x₁ + ↑y₁ * I)) :
    RectangleIntegral f (x₀ + y₀ * I) (x₁ + y₁ * I) =
      RectangleIntegral f (x₀ + y₀ * I) (a + y₁ * I) +
      RectangleIntegral f (a + y₀ * I) (x₁ + y₁ * I) :=
  RectangleIntegralHSplit
    (IntervalIntegrable.mono (by simpa using hf.1) (uIcc_subset_uIcc left_mem_uIcc ha) le_rfl)
    (IntervalIntegrable.mono (by simpa using hf.1) (uIcc_subset_uIcc ha right_mem_uIcc) le_rfl)
    (IntervalIntegrable.mono (by simpa using hf.2.1) (uIcc_subset_uIcc left_mem_uIcc ha) le_rfl)
    (IntervalIntegrable.mono (by simpa using hf.2.1) (uIcc_subset_uIcc ha right_mem_uIcc) le_rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377b24f1b641c133d77964e6af5698c101bc8458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
