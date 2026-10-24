# quadraticLocalModel_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b0665e-188e-8ce9-c498-afda5e2575b8",
  "kind": "theorem",
  "lexical_name": "quadraticLocalModel_variation",
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
  "slug": "quadraticlocalmodel-variation--cefcfaea9696c8f4d4d28dd2",
  "source": {
    "blob": "6ece442dcd48c7411e5fe3ff63f613da93640c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cefcfaea9696c8f4d4d28dd2e7347b97c8ec8c89a6a8de412508554e58e841b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b0665e-188e-8ce9-c498-afda5e2575b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticLocalModel_variation {c a₀ a₁ a₂ z : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (hz : ‖z - c‖ ≤ r) :
    ‖quadraticLocalModel c a₀ a₁ a₂ z - a₀‖ ≤
      ‖a₁‖ * r + ‖a₂‖ * r ^ 2 := by
  have hsq : ‖z - c‖ ^ 2 ≤ r ^ 2 := by nlinarith [norm_nonneg (z - c)]
  have heq : quadraticLocalModel c a₀ a₁ a₂ z - a₀ =
      a₁ * (z - c) + a₂ * (z - c) ^ 2 := by
    unfold quadraticLocalModel
    ring
  rw [heq]
  calc
    ‖a₁ * (z - c) + a₂ * (z - c) ^ 2‖ ≤
        ‖a₁ * (z - c)‖ + ‖a₂ * (z - c) ^ 2‖ := norm_add_le _ _
    _ = ‖a₁‖ * ‖z - c‖ + ‖a₂‖ * ‖z - c‖ ^ 2 := by
      rw [norm_mul, norm_mul, norm_pow]
    _ ≤ ‖a₁‖ * r + ‖a₂‖ * r ^ 2 :=
      add_le_add (mul_le_mul_of_nonneg_left hz (norm_nonneg _))
        (mul_le_mul_of_nonneg_left hsq (norm_nonneg _))

/-- The native second-order polynomial uses actual iterated complex derivatives.
Differentiability and the Taylor remainder are supplied explicitly by its consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ece442dcd48c7411e5fe3ff63f613da93640c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
