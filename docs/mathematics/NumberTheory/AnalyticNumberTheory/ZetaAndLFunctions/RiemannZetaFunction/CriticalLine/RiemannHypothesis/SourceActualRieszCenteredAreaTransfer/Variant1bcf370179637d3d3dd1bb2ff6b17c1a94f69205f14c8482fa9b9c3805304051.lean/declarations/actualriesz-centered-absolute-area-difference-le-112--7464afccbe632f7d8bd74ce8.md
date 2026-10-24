# actualRiesz_centered_absolute_area_difference_le_112

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:597950e2-4894-55c2-e866-3a653f6a4ace",
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
  "slug": "actualriesz-centered-absolute-area-difference-le-112--7464afccbe632f7d8bd74ce8",
  "source": {
    "blob": "a27067e48cb7ed810e24e08fef2df416bb261ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1bcf370179637d3d3dd1bb2ff6b17c1a94f69205f14c8482fa9b9c3805304051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7464afccbe632f7d8bd74ce817931428ed9f42b1416329d09bbe2220ffee64c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1bcf370179637d3d3dd1bb2ff6b17c1a94f69205f14c8482fa9b9c3805304051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:597950e2-4894-55c2-e866-3a653f6a4ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–89.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1bcf370179637d3d3dd1bb2ff6b17c1a94f69205f14c8482fa9b9c3805304051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszCenteredAreaTransfer/Variant1bcf370179637d3d3dd1bb2ff6b17c1a94f69205f14c8482fa9b9c3805304051.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a27067e48cb7ed810e24e08fef2df416bb261ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
