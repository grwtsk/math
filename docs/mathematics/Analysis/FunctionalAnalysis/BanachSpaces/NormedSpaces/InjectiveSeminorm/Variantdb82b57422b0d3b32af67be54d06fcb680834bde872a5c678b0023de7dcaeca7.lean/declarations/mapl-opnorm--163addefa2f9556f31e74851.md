# mapL_opNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21f35cc0-b5ad-f80e-73fc-d01aa37e38ad",
  "kind": "theorem",
  "lexical_name": "mapL_opNorm",
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
  "slug": "mapl-opnorm--163addefa2f9556f31e74851",
  "source": {
    "blob": "ddd10e61202f69053042a811269c8d34d3b7b161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 434,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:163addefa2f9556f31e74851e886f9c09cc98153c62e145aa25df1aac87e0237",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21f35cc0-b5ad-f80e-73fc-d01aa37e38ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapL_opNorm : ‖mapL f‖ ≤ ∏ i, ‖f i‖ := by
  rw [ContinuousLinearMap.opNorm_le_iff (by positivity)]
  intro x
  rw [mapL, liftIsometry]
  simp only [LinearIsometryEquiv.coe_mk, liftEquiv_apply, LinearMap.mkContinuous_apply]
  refine le_trans (norm_eval_le_injectiveSeminorm _ _)
    (mul_le_mul_of_nonneg_right ?_ (norm_nonneg x))
  rw [ContinuousMultilinearMap.opNorm_le_iff (Finset.prod_nonneg (fun _ _ ↦ norm_nonneg _))]
  intro m
  simp only [ContinuousMultilinearMap.compContinuousLinearMap_apply]
  refine le_trans (injectiveSeminorm_tprod_le (fun i ↦ (f i) (m i))) ?_
  rw [← Finset.prod_mul_distrib]
  exact Finset.prod_le_prod (fun _ _ ↦ norm_nonneg _) (fun _ _ ↦ ContinuousLinearMap.le_opNorm _ _ )

variable (𝕜 E E')

/-- The tensor of a family of linear maps from `Eᵢ` to `E'ᵢ`, as a continuous multilinear map of
the family.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddd10e61202f69053042a811269c8d34d3b7b161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
