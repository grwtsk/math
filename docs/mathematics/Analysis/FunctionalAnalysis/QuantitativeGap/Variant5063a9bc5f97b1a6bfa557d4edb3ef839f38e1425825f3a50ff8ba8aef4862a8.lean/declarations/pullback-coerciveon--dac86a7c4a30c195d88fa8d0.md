# pullback_coerciveOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37f40050-21ef-11ef-8f38-b266e49dc151",
  "kind": "theorem",
  "lexical_name": "pullback_coerciveOn",
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
  "slug": "pullback-coerciveon--dac86a7c4a30c195d88fa8d0",
  "source": {
    "blob": "01c282880608ba60515d25a5ff528df2dfc02653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 51,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac86a7c4a30c195d88fa8d0e33add1732e4c1a9260a6375ca3af2cecf096d0c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37f40050-21ef-11ef-8f38-b266e49dc151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_coerciveOn
    (H : V →L[𝕜] V) (H' E : W →L[𝕜] W) (T : W →L[𝕜] V)
    (P : ProtectedProjector (𝕜 := 𝕜) V) (P' : ProtectedProjector (𝕜 := 𝕜) W)
    (supported : Submodule 𝕜 V) (supported' : Submodule 𝕜 W)
    (Δ c ε : ℝ) (hΔ : 0 ≤ Δ) (hc : 0 ≤ c)
    (hsource : H' = T.adjoint.comp (H.comp T) + E)
    (hmap : ∀ x ∈ supported', T x ∈ supported)
    (hcoercive : CoerciveOn H P supported Δ)
    (hnorm : ∀ x ∈ supported', c * ‖P'.complement x‖ ≤ ‖P.complement (T x)‖)
    (herror : ∀ x ∈ supported', -ε * ‖P'.complement x‖ ^ 2 ≤
      RCLike.re ⟪x, E x⟫_𝕜) :
    CoerciveOn H' P' supported' (Δ * c ^ 2 - ε) := by
  intro x hx
  have hsq : c ^ 2 * ‖P'.complement x‖ ^ 2 ≤ ‖P.complement (T x)‖ ^ 2 := by
    simpa only [mul_pow] using
      (sq_le_sq₀ (mul_nonneg hc (norm_nonneg _)) (norm_nonneg _)).mpr (hnorm x hx)
  have hlower := hcoercive (T x) (hmap x hx)
  have htransport := mul_le_mul_of_nonneg_left hsq hΔ
  have herr := herror x hx
  rw [hsource, add_apply, ContinuousLinearMap.comp_apply,
    ContinuousLinearMap.comp_apply, inner_add_right,
    ContinuousLinearMap.adjoint_inner_right, map_add]
  nlinarith

/-- Positive coercivity plus actual protected-sector annihilation identifies
the full kernel. This prevents protected small positive modes from being hidden.
The support here is the entire declared Hilbert carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variant5063a9bc5f97b1a6bfa557d4edb3ef839f38e1425825f3a50ff8ba8aef4862a8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c282880608ba60515d25a5ff528df2dfc02653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
