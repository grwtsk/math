# error_eq_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c7a3161-50a0-f329-ee00-2ea47a2ea710",
  "kind": "theorem",
  "lexical_name": "error_eq_boundary",
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
  "slug": "error-eq-boundary--00e0db1d0b4b40130008dc0f",
  "source": {
    "blob": "08810734c3cb71868bb7c08ce88fdb815684ade2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00e0db1d0b4b40130008dc0f71aba824de2ef57f216c911788dc23d9613383f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c7a3161-50a0-f329-ee00-2ea47a2ea710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem error_eq_boundary (A c R1 R2 : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : 7 ≤ R1)
    (horder : R1 ≤ R2)
    (hg1 : ∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0)
    (hg2 : ∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) :
    (actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
      (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) -
      (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1) =
      actualFiniteHorizontalCorrection A c R2 - actualFiniteHorizontalCorrection A c R1 := by
  have he : (actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
      (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) =
      actualSignedZeroHeightShell A R1 R2 := by
    rw [actualSignedZeroHeightShell_eq_head_sub A R1 R2 horder,
      actualZeroHeightHead_eq_critical_add_offAxis A R1,
      actualZeroHeightHead_eq_critical_add_offAxis A R2]
    ring
  rw [he, actualSignedZeroHeightShell_eq_contour_difference A c R1 R2 hA hc hc2
    h7 horder hg1 hg2, add_sub_cancel_left]

/-- The complete finite actual compensation pays only its two true endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variantc6160b66104ab5f358eeb3e32ae10a439ab003758b3c40c140977c230f6d03f8.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08810734c3cb71868bb7c08ce88fdb815684ade2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
