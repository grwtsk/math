# actual_sixth_laplace_closed_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:008d684e-f720-52c1-ad4b-3a6abe373d30",
  "kind": "theorem",
  "lexical_name": "actual_sixth_laplace_closed_formula",
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
  "slug": "actual-sixth-laplace-closed-formula--e8f7a79729f1851a337bfcb3",
  "source": {
    "blob": "b9dd25ae5869f6130cbbdba3d76e688fababa61d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthNormalizedFormula/Variant365510cdf0c75b460dd2d0155e5d50b93976a0094885fdfb04ba48bf6f881d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f7a79729f1851a337bfcb3463d38011df0095f194ad9dc0f64a0e1ff97f914",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthNormalizedFormula/Variant365510cdf0c75b460dd2d0155e5d50b93976a0094885fdfb04ba48bf6f881d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:008d684e-f720-52c1-ad4b-3a6abe373d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_laplace_closed_formula {A : ℝ} (hA : 1 ≤ A) :
    testMoment A (1 / 6) =
      -663552 * (Real.exp (A / 6) * sixthEndpointCorrection A) /
        (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hpos : 0 < A := by linarith
  have hn := source_normalization_pos A (by linarith)
  rw [exact_actual_normalized_laplace_multiplier hA, actual_sixth_bump_moment_closed_formula hA]
  field_simp [(Real.sqrt_pos.mpr hpos).ne', (Real.sqrt_pos.mpr hn).ne']
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthNormalizedFormula/Variant365510cdf0c75b460dd2d0155e5d50b93976a0094885fdfb04ba48bf6f881d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthNormalizedFormula/Variant365510cdf0c75b460dd2d0155e5d50b93976a0094885fdfb04ba48bf6f881d7e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9dd25ae5869f6130cbbdba3d76e688fababa61d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
