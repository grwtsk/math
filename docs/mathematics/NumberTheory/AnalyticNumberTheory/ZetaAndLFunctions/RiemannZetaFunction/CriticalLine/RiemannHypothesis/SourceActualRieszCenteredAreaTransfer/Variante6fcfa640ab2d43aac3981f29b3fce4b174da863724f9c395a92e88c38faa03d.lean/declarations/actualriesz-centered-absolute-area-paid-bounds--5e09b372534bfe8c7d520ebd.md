# actualRiesz_centered_absolute_area_paid_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85990d2c-d9ee-9410-e95e-b8e2129c7b1b",
  "kind": "theorem",
  "lexical_name": "actualRiesz_centered_absolute_area_paid_bounds",
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
  "slug": "actualriesz-centered-absolute-area-paid-bounds--5e09b372534bfe8c7d520ebd",
  "source": {
    "blob": "813cb7908accd1634c9c170f6da73122c063f530",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variante6fcfa640ab2d43aac3981f29b3fce4b174da863724f9c395a92e88c38faa03d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e09b372534bfe8c7d520ebdc43de007907f1a03f8b5d22adf80f64f3ecb088a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variante6fcfa640ab2d43aac3981f29b3fce4b174da863724f9c395a92e88c38faa03d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85990d2c-d9ee-9410-e95e-b8e2129c7b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_centered_absolute_area_paid_bounds {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤
      (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) + 112 ∧
    (∫ t in 0..2 * A, |actualCenteredMangoldtRieszPrimitive A b t|) ≤
      (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) + 112 := by
  have h := abs_le.mp (actualRiesz_centered_absolute_area_difference_le_112 hA b)
  constructor <;> linarith [h.1,h.2]

/-- An optional quadratic area budget transfers either way; no such budget is supplied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variante6fcfa640ab2d43aac3981f29b3fce4b174da863724f9c395a92e88c38faa03d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variante6fcfa640ab2d43aac3981f29b3fce4b174da863724f9c395a92e88c38faa03d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813cb7908accd1634c9c170f6da73122c063f530` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
