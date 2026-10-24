# annihilator_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddb6da30-20cc-2ad1-e478-6104a914133c",
  "kind": "theorem",
  "lexical_name": "annihilator_error_bound",
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
  "slug": "annihilator-error-bound--a73fc8eb18e3f125b86a0f87",
  "source": {
    "blob": "c73857b17ff90e9b1183eda9496b4da9ed44c784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant174898e3c02fbeb252be9938d90e37baa8f11575a98cbb55ac387d4dfe59caa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a73fc8eb18e3f125b86a0f87eeaefa3a85bd37f3737fd3b43f853d872b67c21b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant174898e3c02fbeb252be9938d90e37baa8f11575a98cbb55ac387d4dfe59caa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb6da30-20cc-2ad1-e478-6104a914133c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem annihilator_error_bound (R : L →L[ℂ] L) (v : L) :
    |(⟪v, R v⟫_ℂ).re| ≤ ‖R‖ * ‖v‖ ^ 2 := by
  calc
    |(⟪v, R v⟫_ℂ).re| ≤ ‖⟪v, R v⟫_ℂ‖ := Complex.abs_re_le_norm _
    _ ≤ ‖v‖ * ‖R v‖ := norm_inner_le_norm _ _
    _ ≤ ‖v‖ * (‖R‖ * ‖v‖) :=
      mul_le_mul_of_nonneg_left (R.le_opNorm v) (norm_nonneg v)
    _ = ‖R‖ * ‖v‖ ^ 2 := by ring

/-- A controlled change of variables preserves the energy kernel through an
exact common-annihilator comparison. No continuity of ranges is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant174898e3c02fbeb252be9938d90e37baa8f11575a98cbb55ac387d4dfe59caa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHPoleRelativeFormAuditInitial/Variant174898e3c02fbeb252be9938d90e37baa8f11575a98cbb55ac387d4dfe59caa6.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73857b17ff90e9b1183eda9496b4da9ed44c784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
