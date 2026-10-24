# ofNativeQuadraticRemainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9c7d3e9b88003248882a4cd4de79297de6b0a80bb0232479213b9cd065f4d01",
  "kind": "def",
  "lexical_name": "ofNativeQuadraticRemainder",
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
  "slug": "ofnativequadraticremainder--dd3a211e14ca3dd2b2912062",
  "source": {
    "blob": "6ece442dcd48c7411e5fe3ff63f613da93640c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 121,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd3a211e14ca3dd2b2912062e5eee2c73a6c8668ad87a7a37a4f0aeb199814bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9c7d3e9b88003248882a4cd4de79297de6b0a80bb0232479213b9cd065f4d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNativeQuadraticRemainder {F : ℂ → ℂ} {U : Set ℂ}
    (c : ℂ) (r τ : ℝ) (hr : 0 ≤ r) (hτ : 0 ≤ τ)
    (_hF : DifferentiableAt ℂ F c) (_hD : DifferentiableAt ℂ (deriv F) c)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hremainder : ∀ z ∈ U, ‖F z - nativeQuadraticModel F c z‖ ≤ τ)
    (hmargin : ‖deriv F c‖ * r + ‖deriv (deriv F) c / 2‖ * r ^ 2 + τ < ‖F c‖) :
    SampleVariationPatch F U where
  center := c
  lower := ‖F c‖
  error := ‖deriv F c‖ * r + ‖deriv (deriv F) c / 2‖ * r ^ 2 + τ
  error_nonneg := by positivity
  sample_lower := le_rfl
  variation := by
    intro z hz
    have hmodel := quadraticLocalModel_variation
      (a₀ := F c) (a₁ := deriv F c) (a₂ := deriv (deriv F) c / 2) hr (hradius z hz)
    have htriangle : ‖F z - F c‖ ≤
        ‖F z - nativeQuadraticModel F c z‖ + ‖nativeQuadraticModel F c z - F c‖ := by
      calc
        ‖F z - F c‖ = ‖(F z - nativeQuadraticModel F c z) +
            (nativeQuadraticModel F c z - F c)‖ := by congr 1; abel
        _ ≤ _ := norm_add_le _ _
    change ‖nativeQuadraticModel F c z - F c‖ ≤ _ at hmodel
    linarith [hremainder z hz]
  strict_margin := hmargin

end SampleVariationPatch

/-- An approximating model is useful to the RH-local route only after its error is
bounded against the actual pinned zeta function on every consumed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ece442dcd48c7411e5fe3ff63f613da93640c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
