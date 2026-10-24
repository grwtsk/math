# singularPart_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d84692eaf2b3c34c6bd2543c8d33014b3adf722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8902c1b-b53c-f05e-0386-f02b7999e6ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2e680ba-cc5d-1a13-345f-895782e6a4b3",
  "kind": "theorem",
  "lexical_name": "singularPart_neg",
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
  "slug": "singularpart-neg--9dcf3729702f8b2cfe0b4bfb",
  "source": {
    "blob": "5d84692eaf2b3c34c6bd2543c8d33014b3adf722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 320,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dcf3729702f8b2cfe0b4bfba9aef0447a874f053c20c5a8d364dc993c8e2d96",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2e680ba-cc5d-1a13-345f-895782e6a4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singularPart_neg (s : SignedMeasure α) (μ : Measure α) :
    (-s).singularPart μ = -s.singularPart μ := by
  have h₁ :
    ((-s).toJordanDecomposition.posPart.singularPart μ).toSignedMeasure =
      (s.toJordanDecomposition.negPart.singularPart μ).toSignedMeasure := by
    refine toSignedMeasure_congr ?_
    rw [toJordanDecomposition_neg, JordanDecomposition.neg_posPart]
  have h₂ :
    ((-s).toJordanDecomposition.negPart.singularPart μ).toSignedMeasure =
      (s.toJordanDecomposition.posPart.singularPart μ).toSignedMeasure := by
    refine toSignedMeasure_congr ?_
    rw [toJordanDecomposition_neg, JordanDecomposition.neg_negPart]
  rw [singularPart, singularPart, neg_sub, h₁, h₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7dadc0d458f854be9d0c0634f5b58c07281e3272a430f2502ff11112c5de4f32.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d84692eaf2b3c34c6bd2543c8d33014b3adf722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
