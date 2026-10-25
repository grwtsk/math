# rhetoricalSimilarity_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8afbe229-7d75-e95d-6fa4-e8eefde8132c",
  "kind": "theorem",
  "lexical_name": "rhetoricalSimilarity_mem_Icc",
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
  "slug": "rhetoricalsimilarity-mem-icc--a39e7e666a3c518dd6cb4a77",
  "source": {
    "blob": "d3cae19a6898fcbbf5521cf57900ce4dd8b5daa1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variant7177e12dfcb3e0dfded9d5148351ca53cf49edb37684b5f81164ef92c246c44e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39e7e666a3c518dd6cb4a771488d80fd6737c7fb21d2353ffb4cbc196699d86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variant7177e12dfcb3e0dfded9d5148351ca53cf49edb37684b5f81164ef92c246c44e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8afbe229-7d75-e95d-6fa4-e8eefde8132c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhetoricalSimilarity_mem_Icc
    (kernel : PositiveKernel RhetoricalIndex)
    {left right : Universe.ConceptId}
    {score : ℝ}
    (computed : rhetoricalSimilarity kernel left right = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 :=
  normalizedRealAffinity_mem_Icc kernel computed

/-- For a base-role normalized kernel, cosine normalization is transparent:
the similarity is exactly the real part of the base/base kernel entry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variant7177e12dfcb3e0dfded9d5148351ca53cf49edb37684b5f81164ef92c246c44e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variant7177e12dfcb3e0dfded9d5148351ca53cf49edb37684b5f81164ef92c246c44e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3cae19a6898fcbbf5521cf57900ce4dd8b5daa1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
