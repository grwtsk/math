# rectangleIntegral_logDeriv_xiDeriv_eq_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81548e1e7a17365f261fff763ed955ceca997060",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82524a30-9dbd-405d-c491-2917b9e017ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:357e43b3-6bfe-f01a-df24-471240174e29",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral_logDeriv_xiDeriv_eq_halfContour",
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
  "slug": "rectangleintegral-logderiv-xideriv-eq-halfcontour--dab08579d19a433db0fe90e3",
  "source": {
    "blob": "81548e1e7a17365f261fff763ed955ceca997060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dab08579d19a433db0fe90e37b23ed2d14136e1446ef63e71b85ae136061b88a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:357e43b3-6bfe-f01a-df24-471240174e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral_logDeriv_xiDeriv_eq_halfContour {T₁ T₂ : ℝ}
    (hg₁ : GoodHeight T₁) (hg₂ : GoodHeight T₂) :
    RectangleIntegral (logDeriv xiDeriv) (-1 + T₁ * I) (2 + T₂ * I)
      = 2 * I * ((Zeta23.RvM.halfContour (logDeriv xiDeriv) T₁ T₂).im : ℂ) :=
  GenericRvM.rectangleIntegral_eq_halfContour_of_fold
    (continuous_logDeriv_xiDeriv_horizontal hg₁) (continuous_logDeriv_xiDeriv_horizontal hg₂)
    (fun _ _ => logDeriv_xiDeriv_one_sub_conj _) (fun _ _ => logDeriv_xiDeriv_one_sub_conj _)
    (fun _ _ => logDeriv_xiDeriv_one_sub_conj _)

/-- **N_{ξ′}(T₁,T₂) = (1/π)·Im ∫_L ξ″/ξ′** for good heights T₁ ≤ T₂. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variantb2e4236c117f1857fd1c79185114d322b1f808b6675e50c74e42d102409fba8e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81548e1e7a17365f261fff763ed955ceca997060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
