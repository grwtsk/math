# original_lower_of_compensated_residual_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb2ae16e-4ae0-761a-b6fd-c9eea2c9645e",
  "kind": "theorem",
  "lexical_name": "original_lower_of_compensated_residual_cap",
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
  "slug": "original-lower-of-compensated-residual-cap--7237e719aa5aaa2159c080d1",
  "source": {
    "blob": "ddcd553f1740bc39b9ac235e1d594bf9d6cc5692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7237e719aa5aaa2159c080d1390f6596e7a9f36aa59ed6fd8f0995dfc9578e76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb2ae16e-4ae0-761a-b6fd-c9eea2c9645e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_compensated_residual_cap (R D : ℝ) (hR : 1 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A → mertensResidual A - criticalContinuousMoment A ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 4 - 2 * D - 2 * continuousDefect R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hi := one_add_continuous_eq_defect A hA
    have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
    have hr := hcap A hRA
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcd553f1740bc39b9ac235e1d594bf9d6cc5692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
