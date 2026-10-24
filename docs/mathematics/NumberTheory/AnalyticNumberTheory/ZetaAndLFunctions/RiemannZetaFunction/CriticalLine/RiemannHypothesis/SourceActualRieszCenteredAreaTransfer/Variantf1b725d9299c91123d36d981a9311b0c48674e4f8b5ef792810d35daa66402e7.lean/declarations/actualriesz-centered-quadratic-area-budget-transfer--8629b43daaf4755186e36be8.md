# actualRiesz_centered_quadratic_area_budget_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d272ac38-675b-5be7-dcf0-448114d77a59",
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
  "slug": "actualriesz-centered-quadratic-area-budget-transfer--8629b43daaf4755186e36be8",
  "source": {
    "blob": "ca0b04c22e2a7f926dffe3222dbeed129e3c5e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variantf1b725d9299c91123d36d981a9311b0c48674e4f8b5ef792810d35daa66402e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8629b43daaf4755186e36be88724369186d04646ead1d5952e37f2dafc9597a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variantf1b725d9299c91123d36d981a9311b0c48674e4f8b5ef792810d35daa66402e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d272ac38-675b-5be7-dcf0-448114d77a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variantf1b725d9299c91123d36d981a9311b0c48674e4f8b5ef792810d35daa66402e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variantf1b725d9299c91123d36d981a9311b0c48674e4f8b5ef792810d35daa66402e7.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0b04c22e2a7f926dffe3222dbeed129e3c5e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
