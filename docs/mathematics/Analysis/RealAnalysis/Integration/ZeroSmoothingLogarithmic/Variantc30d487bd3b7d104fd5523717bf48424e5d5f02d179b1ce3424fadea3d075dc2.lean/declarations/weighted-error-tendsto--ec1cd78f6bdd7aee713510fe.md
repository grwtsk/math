# weighted_error_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5869c919-c996-85e8-f762-4a17569ea7cd",
  "kind": "theorem",
  "lexical_name": "weighted_error_tendsto",
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
  "slug": "weighted-error-tendsto--ec1cd78f6bdd7aee713510fe",
  "source": {
    "blob": "8e594d37ab329630c1b9c47ec3660cc2b4730c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec1cd78f6bdd7aee713510feaac5f344a6493efa1448cb5ef094f14afd3f1c6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5869c919-c996-85e8-f762-4a17569ea7cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_error_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ logarithmicWeight ξ *
      Complex.normSq
        (sourceFourier (smoothedTest A (ε i) (hε i)) ξ -
          sourceFourier (actualTest A) ξ)) l (𝓝 0) := by
  have ht := smoothed_fourier_tendsto A hA ε hε hlim ξ
  have hs := ht.sub_const (sourceFourier (actualTest A) ξ)
  have hn := Complex.continuous_normSq.continuousAt.tendsto.comp hs
  simpa using hn.const_mul (logarithmicWeight ξ)

/-- Z2.5: the source H¹ approximation and the exact normalized logarithmic
Fourier-form approximation hold on the same positive-scale filter.  Every
weighted error is genuinely integrable, and all radii at most one retain the
fixed support window `[-A-1,A+1]`.  This is convergence only; it does not
assert the smooth explicit formula or the zero-side identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e594d37ab329630c1b9c47ec3660cc2b4730c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
