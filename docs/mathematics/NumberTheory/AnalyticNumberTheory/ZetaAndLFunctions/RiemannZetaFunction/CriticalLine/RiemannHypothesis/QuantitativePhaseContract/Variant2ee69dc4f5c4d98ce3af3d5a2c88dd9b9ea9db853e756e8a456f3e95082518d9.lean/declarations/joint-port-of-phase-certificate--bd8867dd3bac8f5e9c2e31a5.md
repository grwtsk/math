# joint_port_of_phase_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ccde84f-d978-4952-329f-ea307d533b0e",
  "kind": "theorem",
  "lexical_name": "joint_port_of_phase_certificate",
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
  "slug": "joint-port-of-phase-certificate--bd8867dd3bac8f5e9c2e31a5",
  "source": {
    "blob": "e924b7a1c32465000b6884c904f7b83f833da900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativePhaseContract/Variant2ee69dc4f5c4d98ce3af3d5a2c88dd9b9ea9db853e756e8a456f3e95082518d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd8867dd3bac8f5e9c2e31a5ddbcd413daced5529dd3afa17d8cafcfa86c6f11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativePhaseContract/Variant2ee69dc4f5c4d98ce3af3d5a2c88dd9b9ea9db853e756e8a456f3e95082518d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ccde84f-d978-4952-329f-ea307d533b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_port_of_phase_certificate
    (hcert : PhaseCertificate certificateConstant (matveevExponent + 1))
    {H : ℝ} (hH : 0 < H) {ρ η : ℂ}
    (hρ : ρ.re ∈ Set.Icc 0 1) (hη : η.re ∈ Set.Icc 0 1)
    (hργ : |ρ.im| ≤ H) (hηγ : |η.im| ≤ H) :
    certificateConstant / Real.sqrt 3 *
      (1 + H) ^ (-((matveevExponent + 1 : ℕ) : ℝ)) * ‖ρ - η‖ ≤ ‖port ρ - port η‖ := by
  have h := joint_coordinate_lower hρ hη
    (mul_nonneg certificateConstant_positive.le (Real.rpow_nonneg (by linarith) _))
    (bounded_phase_gain_le_logLength hH.le) (hcert H hH ρ.im η.im hργ hηγ)
  simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativePhaseContract/Variant2ee69dc4f5c4d98ce3af3d5a2c88dd9b9ea9db853e756e8a456f3e95082518d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativePhaseContract/Variant2ee69dc4f5c4d98ce3af3d5a2c88dd9b9ea9db853e756e8a456f3e95082518d9.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e924b7a1c32465000b6884c904f7b83f833da900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
