# pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:217e1898-0661-5ae5-e70a-eefeebf8c0f9",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget",
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
  "slug": "pinnedprimeweightbertrandratio-powerenvelope-to-remainingtarget--f7be52c4382189ce99b7f2a1",
  "source": {
    "blob": "9c821ea7a1a2262bf24d7bce7d324cf711fd4978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7be52c4382189ce99b7f2a11357be304209fa3c747748a2c4a38c6cd5864f39",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217e1898-0661-5ae5-e70a-eefeebf8c0f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightBertrandRatio_powerEnvelope_to_remainingTarget
    {X : ℕ} (hX : 0 < X)
    {C M ρ δ v E : ℝ}
    (hC : 0 ≤ C)
    (hM : 0 ≤ M)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤
          M * Real.rpow (X : ℝ) (ρ + δ))
    (hratio :
      pinnedPrimeWeightBertrandRatioRequirement X C v E) :
    pinnedPrimeWeightRemainingTarget v E ≤
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ)
          (quadraticThreshold ρ + 2 * δ) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hB :
      0 ≤ M * Real.rpow (X : ℝ) (ρ + δ) :=
    mul_nonneg hM (Real.rpow_nonneg hXr.le _)
  have h :=
    pinnedPrimeWeightBertrandRatio_to_remainingTarget_le_envelopeQuadraticMajorant
      hX hC hB henvelope hratio
  rw [pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power
    hX C M ρ δ] at h
  exact h

/-- Untruncated target form of the power-envelope collapse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c821ea7a1a2262bf24d7bce7d324cf711fd4978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
