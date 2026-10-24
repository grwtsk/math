# polynomialEnvelope_of_supplier_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4210efb-da50-ca4e-1efe-1fc2b8786934",
  "kind": "theorem",
  "lexical_name": "polynomialEnvelope_of_supplier_and_tail",
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
  "slug": "polynomialenvelope-of-supplier-and-tail--334c3aa354ee84c203fb617d",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 542,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:334c3aa354ee84c203fb617d34ad65a4c2d6a8e5949eaf3e283e78b01bad5130",
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

Occurrence: `result:e4210efb-da50-ca4e-1efe-1fc2b8786934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialEnvelope_of_supplier_and_tail {W : ℝ → ℝ} {K S h C p : ℝ}
    (hW : Continuous W) (hK : 0 ≤ K) (hS : 0 < S) (hKS : 8 * K ≤ S)
    (hh : 0 ≤ h) (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ supplierCoefficient K (s + h) * runningPositiveMaximum W (s + h) +
        C * (1 + s) ^ p)
    (htail : ∀ T, S + h ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => supplierCoefficient K (T + (j : ℝ) * h)) n *
        runningPositiveMaximum W (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ T : ℝ, S + h ≤ T →
      runningPositiveMaximum W T ≤ D * (1 + T) ^ p := by
  obtain ⟨C', hC', hrec⟩ :=
    supplier_runningMaximum_polynomial_recurrence hW hK hS hKS hh hC hp hsupplier
  apply exactPolynomialEnvelope_of_recurrence_and_tail (add_nonneg hS.le hh) hh hC'
    uniformContraction_pos uniformContraction_lt_one hp
  · intro s hs
    exact supplierCoefficient_nonneg hK (by linarith)
  · intro s hs
    exact supplierCoefficient_le_uniformContraction (by linarith) (by linarith)
  · exact hrec
  · exact htail

/-- Compact initial times can be included without changing the real exponent.
This is the global upper bound needed to form a nonnegative Landau transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
