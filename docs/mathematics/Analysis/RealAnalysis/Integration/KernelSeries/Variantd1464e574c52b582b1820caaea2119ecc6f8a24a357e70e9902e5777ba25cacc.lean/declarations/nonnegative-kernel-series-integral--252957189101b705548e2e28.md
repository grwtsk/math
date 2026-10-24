# nonnegative_kernel_series_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a18ef18-266c-b4c6-c7c4-01f6d287c9d2",
  "kind": "theorem",
  "lexical_name": "nonnegative_kernel_series_integral",
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
  "slug": "nonnegative-kernel-series-integral--252957189101b705548e2e28",
  "source": {
    "blob": "fa3e26b22372c5ed7e6cc48a639caddb7d397a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:252957189101b705548e2e28784c398f6664671a4fdd2f345ed5dcdc8e9e2546",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a18ef18-266c-b4c6-c7c4-01f6d287c9d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonnegative_kernel_series_integral {ι : Type*} [Countable ι]
    {F : ι → ℝ → ℝ} {μ : Measure ℝ}
    (hF : ∀ i, Integrable (F i) μ)
    (hn : ∀ i x, 0 ≤ F i x)
    (hi : Summable (fun i => ∫ x, F i x ∂μ)) :
    (∫ x, ∑' i, F i x ∂μ) = ∑' i, ∫ x, F i x ∂μ := by
  apply (integral_tsum_of_summable_integral_norm hF ?_).symm
  have he : (fun i => ∫ x, ‖F i x‖ ∂μ) = (fun i => ∫ x, F i x ∂μ) := by
    funext i
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun x => Real.norm_of_nonneg (hn i x))
  rw [he]
  exact hi

end CommonMeanStieltjes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/KernelSeries/Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa3e26b22372c5ed7e6cc48a639caddb7d397a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
