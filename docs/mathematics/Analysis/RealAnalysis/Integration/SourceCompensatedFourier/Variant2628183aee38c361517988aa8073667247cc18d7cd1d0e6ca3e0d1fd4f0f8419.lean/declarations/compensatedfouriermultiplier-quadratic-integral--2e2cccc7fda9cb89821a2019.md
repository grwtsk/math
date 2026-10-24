# compensatedFourierMultiplier_quadratic_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61330c32-a03c-21f1-1afa-c6311fe4d9d6",
  "kind": "theorem",
  "lexical_name": "compensatedFourierMultiplier_quadratic_integral",
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
  "slug": "compensatedfouriermultiplier-quadratic-integral--2e2cccc7fda9cb89821a2019",
  "source": {
    "blob": "0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e2cccc7fda9cb89821a2019933dc5f98abbe9989bef7a7559e23d41842fea9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61330c32-a03c-21f1-1afa-c6311fe4d9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedFourierMultiplier_quadratic_integral (A : ℝ) (f : ComplexL2) :
    (⟪f, compensatedFourierMultiplier A f⟫_ℂ).re =
      ∫ ξ : ℝ, compensatedFourierSymbol A ξ * Complex.normSq (f ξ) := by
  rw [L2.inner_def]
  change RCLike.re (∫ ξ : ℝ, ⟪f ξ, (compensatedFourierMultiplier A f) ξ⟫_ℂ) = _
  rw [← integral_re (L2.integrable_inner (𝕜 := ℂ) f (compensatedFourierMultiplier A f))]
  apply integral_congr_ae
  filter_upwards [compensatedFourierMultiplier_coe_ae A f] with ξ hξ
  rw [hξ]
  exact inner_real_multiplier _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant2628183aee38c361517988aa8073667247cc18d7cd1d0e6ca3e0d1fd4f0f8419.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cce7baa9bd4b1cf1d24cbced651d6c0f7990fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
