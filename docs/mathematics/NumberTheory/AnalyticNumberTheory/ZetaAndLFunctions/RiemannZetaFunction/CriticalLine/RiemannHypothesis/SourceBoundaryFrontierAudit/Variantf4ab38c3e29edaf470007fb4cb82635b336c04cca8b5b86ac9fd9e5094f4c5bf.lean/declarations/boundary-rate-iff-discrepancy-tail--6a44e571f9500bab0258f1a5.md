# boundary_rate_iff_discrepancy_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5edb290-cb1d-2063-8055-8527e4eec816",
  "kind": "theorem",
  "lexical_name": "boundary_rate_iff_discrepancy_tail",
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
  "slug": "boundary-rate-iff-discrepancy-tail--6a44e571f9500bab0258f1a5",
  "source": {
    "blob": "ecbc8f11b18c8d6923f327135fba18e9c44a9b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a44e571f9500bab0258f1a5cc3ad0738fec9240b0494da44f71dab7c81c70ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5edb290-cb1d-2063-8055-8527e4eec816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_rate_iff_discrepancy_tail :
    BoundaryCancellationRate ↔ UniformTailUpperBound sourceDiscrepancyValue := by
  constructor
  · rintro ⟨B, hB, R, hR, h⟩
    refine ⟨B, hB, R, hR, ?_⟩
    intro A hA
    have hAone := hR.trans hA
    have hb := h A hA
    rw [lower_boundary_pairing_eq_scaled_discrepancy A hAone, mul_comm B] at hb
    exact (mul_le_mul_iff_right₀ (boundary_scale_pos A (by linarith))).mp
      (by simpa [mul_comm] using hb)
  · rintro ⟨B, hB, R, hR, h⟩
    refine ⟨B, hB, R, hR, ?_⟩
    intro A hA
    have hAone := hR.trans hA
    rw [lower_boundary_pairing_eq_scaled_discrepancy A hAone, mul_comm B]
    exact mul_le_mul_of_nonneg_left (h A hA)
      (boundary_scale_pos A (by linarith)).le

/-- The exact boundary rate is the same prime-and-square truth obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variantf4ab38c3e29edaf470007fb4cb82635b336c04cca8b5b86ac9fd9e5094f4c5bf.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbc8f11b18c8d6923f327135fba18e9c44a9b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
