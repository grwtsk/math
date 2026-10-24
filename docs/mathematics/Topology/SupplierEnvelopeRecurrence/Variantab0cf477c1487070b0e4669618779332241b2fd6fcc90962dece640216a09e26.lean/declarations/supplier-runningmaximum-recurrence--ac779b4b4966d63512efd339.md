# supplier_runningMaximum_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bf37e8e-522e-185d-a0a6-9b52b1320df4",
  "kind": "theorem",
  "lexical_name": "supplier_runningMaximum_recurrence",
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
  "slug": "supplier-runningmaximum-recurrence--ac779b4b4966d63512efd339",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 177,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac779b4b4966d63512efd33995928dff64e39a260b8a65aa7a9d3d673b0c101c",
  "verification": {
    "reference": "docs/verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bf37e8e-522e-185d-a0a6-9b52b1320df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supplier_runningMaximum_recurrence {W : ℝ → ℝ} {K S h T C p : ℝ}
    (hW : Continuous W) (hK : 0 ≤ K) (hS : 0 < S) (hKS : 8 * K ≤ S)
    (hh : 0 ≤ h) (hT : S + h ≤ T) (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ supplierCoefficient K (s + h) * runningPositiveMaximum W (s + h) +
        C * (1 + s) ^ p) :
    runningPositiveMaximum W T ≤ supplierCoefficient K T *
      runningPositiveMaximum W (T + h) +
      max (runningPositiveMaximum W S) (C * (1 + T) ^ p / (1 - uniformContraction)) := by
  apply runningMaximum_recurrence hW hS.le hh hT uniformContraction_nonneg
    uniformContraction_lt_one (supplierCoefficient_antitoneOn hK hS)
  · intro u hSu
    exact supplierCoefficient_nonneg hK (hS.trans_le hSu)
  · intro u hSu
    exact supplierCoefficient_le_uniformContraction (hS.trans_le hSu) (hKS.trans hSu)
  · intro s hs t ht hst
    have hs₀ : 0 ≤ s := hs
    exact mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow (by linarith : 0 ≤ 1 + s) (by linarith) hp) hC
  · exact mul_nonneg hC (Real.rpow_nonneg (by linarith) _)
  · exact hsupplier

/-- The bounded initial record is absorbed into a fixed polynomial constant,
uniformly at all admissible real times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
