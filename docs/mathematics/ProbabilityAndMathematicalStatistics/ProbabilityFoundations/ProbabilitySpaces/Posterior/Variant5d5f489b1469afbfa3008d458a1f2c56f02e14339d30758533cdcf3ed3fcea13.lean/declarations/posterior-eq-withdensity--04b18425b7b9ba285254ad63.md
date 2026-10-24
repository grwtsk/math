# posterior_eq_withDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73bfebca-26ad-2289-6e61-9120349c2ee7",
  "kind": "lemma",
  "lexical_name": "posterior_eq_withDensity",
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
  "slug": "posterior-eq-withdensity--04b18425b7b9ba285254ad63",
  "source": {
    "blob": "9de3dc7f7fcc1d7562763981b97023360ea53889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 295,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b18425b7b9ba285254ad63460df5198d71361fac912383d2fd2adfc9e1f1e7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73bfebca-26ad-2289-6e61-9120349c2ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posterior_eq_withDensity (h_ac : ∀ᵐ ω ∂μ, κ ω ≪ κ ∘ₘ μ) :
    ∀ᵐ x ∂(κ ∘ₘ μ), (κ†μ) x = μ.withDensity (fun ω ↦ κ.rnDeriv (Kernel.const _ (κ ∘ₘ μ)) ω x) := by
  filter_upwards [rnDeriv_posterior_symm h_ac, absolutelyContinuous_posterior h_ac] with x h h_ac'
  ext s hs
  rw [← Measure.setLIntegral_rnDeriv h_ac', withDensity_apply _ hs]
  refine setLIntegral_congr_fun_ae hs ?_
  filter_upwards [h, Kernel.rnDeriv_eq_rnDeriv_measure (κ := κ†μ) (η := Kernel.const 𝓧 μ) (a := x)]
    with ω h h_eq hωs
  rw [← h, h_eq, Kernel.const_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9de3dc7f7fcc1d7562763981b97023360ea53889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
