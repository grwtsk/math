# mertensResidual_eq_complete_pairing_add_plain_add_actual_errors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e11fffa-0450-0ba1-d935-6d21729228ee",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_complete_pairing_add_plain_add_actual_errors",
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
  "slug": "mertensresidual-eq-complete-pairing-add-plain-add-actual-errors--caa6f6bfa33cf011ddadbf73",
  "source": {
    "blob": "8d1d86e8d422dc8bb725a7156a0f6487b8ca58fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caa6f6bfa33cf011ddadbf733fe6fe2661a22f0ebe604782e7aebc03f4d80a71",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e11fffa-0450-0ba1-d935-6d21729228ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_complete_pairing_add_plain_add_actual_errors
    (A : ℝ) (hA : 91 ≤ A) :
    mertensResidual A = completeCorrectedAbelPairing A + plainInventory A +
      actualPeanoCubicError A + completeOmegaError A := by
  rw [mertensResidual_eq_completeOmega_add_baseline_add_error A hA,
    completeOmega_eq_complete_pairing_add_actualPeanoError A (by linarith)]
  ring

/-- The complete integral expression has the proved conditional combined error budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A9057b9b59cd6f4f4ad3SourceCompleteCorrectedAbelPairing/Variant224859fd878195597b2ac18cc153dda46e6c75e7137bf76d3925d754012dad9b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1d86e8d422dc8bb725a7156a0f6487b8ca58fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
