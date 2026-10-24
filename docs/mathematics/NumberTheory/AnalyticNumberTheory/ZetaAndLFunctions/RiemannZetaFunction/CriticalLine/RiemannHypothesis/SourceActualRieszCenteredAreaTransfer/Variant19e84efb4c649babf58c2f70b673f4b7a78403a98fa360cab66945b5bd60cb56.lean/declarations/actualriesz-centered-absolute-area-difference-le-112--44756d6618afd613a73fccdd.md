# actualRiesz_centered_absolute_area_difference_le_112

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b28e7c3-8a0a-3676-40a7-9f865ff4755a",
  "kind": "theorem",
  "lexical_name": "actualRiesz_centered_absolute_area_difference_le_112",
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
  "slug": "actualriesz-centered-absolute-area-difference-le-112--44756d6618afd613a73fccdd",
  "source": {
    "blob": "9b34bdc65aca6a7859a2b658de4fca0cf76b313d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant19e84efb4c649babf58c2f70b673f4b7a78403a98fa360cab66945b5bd60cb56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44756d6618afd613a73fccdd88c26e3759b5fb42ab8e3b0e1c28ed5c4dbccb66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant19e84efb4c649babf58c2f70b673f4b7a78403a98fa360cab66945b5bd60cb56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b28e7c3-8a0a-3676-40a7-9f865ff4755a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_centered_absolute_area_difference_le_112 {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    |(∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) -
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|)| ≤ 112 := by
  have hA0 : 0 < A := by linarith
  have hA2 : 0 < A ^ 2 := by positivity
  have hd := (le_div_iff₀ hA2).mp (actualRiesz_finite_center_payment_bound hA0).2
  exact (actualRiesz_centered_absolute_area_difference_bound hA b).trans (by nlinarith)

/-- Both full area inequalities retain the same real constant and all original atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant19e84efb4c649babf58c2f70b673f4b7a78403a98fa360cab66945b5bd60cb56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant19e84efb4c649babf58c2f70b673f4b7a78403a98fa360cab66945b5bd60cb56.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b34bdc65aca6a7859a2b658de4fca0cf76b313d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
