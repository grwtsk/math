# actualRiesz_centered_quadratic_area_budget_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:246eb7a3-96a7-9e35-bf9b-c41aa965c174",
  "kind": "theorem",
  "lexical_name": "actualRiesz_centered_quadratic_area_budget_transfer",
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
  "slug": "actualriesz-centered-quadratic-area-budget-transfer--258bf3fc8cbcb60a273fe400",
  "source": {
    "blob": "835dfc17f32adbd269935c3f777ca4f43522b499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Varianta9b9e21e3926234bd74a1e977d6074382c7681cb5ea438d53ae9baf6ce99e567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:258bf3fc8cbcb60a273fe4002f0c0ee6d47adcd40880513b0038ecdc57daa50d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Varianta9b9e21e3926234bd74a1e977d6074382c7681cb5ea438d53ae9baf6ce99e567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:246eb7a3-96a7-9e35-bf9b-c41aa965c174`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_centered_quadratic_area_budget_transfer {A M : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    ((∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) ≤ M * A ^ 2 →
      (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤
        (M + 112) * A ^ 2) ∧
    ((∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤ M * A ^ 2 →
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) ≤
        (M + 112) * A ^ 2) := by
  have hb := actualRiesz_centered_absolute_area_paid_bounds hA b
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  constructor
  · intro h
    nlinarith [hb.1]
  · intro h
    nlinarith [hb.2]

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredAreaTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Varianta9b9e21e3926234bd74a1e977d6074382c7681cb5ea438d53ae9baf6ce99e567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Varianta9b9e21e3926234bd74a1e977d6074382c7681cb5ea438d53ae9baf6ce99e567.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `835dfc17f32adbd269935c3f777ca4f43522b499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
