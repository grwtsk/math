# _root_.ProbabilityTheory.hasGaussianLaw_iff_charFunDual_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "219f109b0f4320e9805cf381ad48dbd4e3ab0e34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13dfae0f-59b3-09fb-fcdd-13d021640115",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33024607-f160-9fdf-ff46-14e4df6fa7b2",
  "kind": "lemma",
  "lexical_name": "_root_.ProbabilityTheory.hasGaussianLaw_iff_charFunDual_map_eq",
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
  "slug": "root-probabilitytheory-hasgaussianlaw-iff-charfundual-map-eq--501b0c8cfda50052191fb6c4",
  "source": {
    "blob": "219f109b0f4320e9805cf381ad48dbd4e3ab0e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:501b0c8cfda50052191fb6c4513b52828cc8f33c89d963e175a009912403ef3c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33024607-f160-9fdf-ff46-14e4df6fa7b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ProbabilityTheory.hasGaussianLaw_iff_charFunDual_map_eq
    [IsFiniteMeasure P] (hX : AEMeasurable X P) :
    HasGaussianLaw X P ↔ ∀ L,
    charFunDual (P.map X) L = exp ((P[L ∘ X] : ℝ) * I - Var[L ∘ X; P] / 2) where
  mp h := h.charFunDual_map_eq
  mpr h := by
    refine ⟨hX, isGaussian_iff_charFunDual_eq.2 fun t ↦ ?_⟩
    rw [h, integral_map, variance_map, integral_complex_ofReal, Function.comp_def]
    all_goals fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `219f109b0f4320e9805cf381ad48dbd4e3ab0e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
