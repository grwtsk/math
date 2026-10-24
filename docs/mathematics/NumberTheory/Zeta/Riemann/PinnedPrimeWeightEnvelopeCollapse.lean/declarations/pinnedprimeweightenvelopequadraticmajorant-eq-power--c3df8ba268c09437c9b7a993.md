# pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a83be245-2505-51cb-dd7e-c7dd3e14088c",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power",
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
  "slug": "pinnedprimeweightenvelopequadraticmajorant-eq-power--c3df8ba268c09437c9b7a993",
  "source": {
    "blob": "9c821ea7a1a2262bf24d7bce7d324cf711fd4978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3df8ba268c09437c9b7a993077be325d5e7a47018f15c4d9401d65fce9d28a8",
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

Occurrence: `result:a83be245-2505-51cb-dd7e-c7dd3e14088c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightEnvelopeQuadraticMajorant_eq_power
    {X : ℕ} (hX : 0 < X)
    (C M ρ δ : ℝ) :
    pinnedPrimeWeightEnvelopeQuadraticMajorant X C
        (M * Real.rpow (X : ℝ) (ρ + δ)) =
      C * primeCoefficientL1Budget^2 * M^2 *
        Real.rpow (X : ℝ)
          (quadraticThreshold ρ + 2 * δ) := by
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  unfold pinnedPrimeWeightEnvelopeQuadraticMajorant
  calc
    C * primeCoefficientL1Budget^2 *
          (M * Real.rpow (X : ℝ) (ρ + δ))^2 /
          (X : ℝ) =
        C * primeCoefficientL1Budget^2 * M^2 *
          ((Real.rpow (X : ℝ) (ρ + δ))^2 /
            (X : ℝ)) := by ring
    _ = C * primeCoefficientL1Budget^2 * M^2 *
          Real.rpow (X : ℝ)
            (quadraticThreshold ρ + 2 * δ) := by
      rw [quadratic_power_identity hXr]

/-- A ratio certificate under a power-law current envelope already contains
the corresponding descended power-law bound for the positive remaining target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightEnvelopeCollapse.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c821ea7a1a2262bf24d7bce7d324cf711fd4978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
