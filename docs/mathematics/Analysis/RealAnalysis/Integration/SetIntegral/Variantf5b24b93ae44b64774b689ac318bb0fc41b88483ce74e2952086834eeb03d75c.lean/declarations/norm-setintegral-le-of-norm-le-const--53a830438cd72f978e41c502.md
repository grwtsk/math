# norm_setIntegral_le_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc65111-9301-5b6f-7587-ad0558012cb5",
  "kind": "theorem",
  "lexical_name": "norm_setIntegral_le_of_norm_le_const",
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
  "slug": "norm-setintegral-le-of-norm-le-const--53a830438cd72f978e41c502",
  "source": {
    "blob": "7c73e89f84ce475e59e63393bd479f8e5c8ce97d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 458,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a830438cd72f978e41c502797501fc6f3862c4c8d01311d1537411ab2e1134",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc65111-9301-5b6f-7587-ad0558012cb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_setIntegral_le_of_norm_le_const {C : ℝ}
    [h : IsFiniteMeasure (μ.variation.restrict s)]
    (hC : ∀ x ∈ s, ‖f x‖ ≤ C) :
    ‖∫ᵛ x in s, f x ∂[B; μ]‖ ≤ C * ‖B‖ * μ.variation.real s := by
  rcases eq_empty_or_nonempty s with rfl | ⟨x, hx⟩
  · simp
  by_cases hs : MeasurableSet s; swap
  · simp only [setIntegral_eq_zero_of_not_measurableSet hs, norm_zero]
    have : 0 ≤ C := le_trans (norm_nonneg _) (hC x hx)
    positivity
  apply norm_setIntegral_le_of_norm_le_const_ae
  filter_upwards [ae_restrict_mem hs] with x hx using hC x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c73e89f84ce475e59e63393bd479f8e5c8ce97d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
