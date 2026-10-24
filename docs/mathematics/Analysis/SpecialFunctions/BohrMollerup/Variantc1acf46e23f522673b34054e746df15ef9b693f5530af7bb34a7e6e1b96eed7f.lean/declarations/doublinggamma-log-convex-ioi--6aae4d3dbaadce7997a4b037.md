# doublingGamma_log_convex_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b70e611-5d5d-324d-e47f-5a192cdea145",
  "kind": "theorem",
  "lexical_name": "doublingGamma_log_convex_Ioi",
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
  "slug": "doublinggamma-log-convex-ioi--6aae4d3dbaadce7997a4b037",
  "source": {
    "blob": "94400ea0c85b30a04ce15d85786d3cf2523cd725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 402,
    "path": "GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aae4d3dbaadce7997a4b037d1d7551b30c02fa0b8d46b3463e8545f0e473467",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b70e611-5d5d-324d-e47f-5a192cdea145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doublingGamma_log_convex_Ioi : ConvexOn ℝ (Ioi (0 : ℝ)) (log ∘ doublingGamma) := by
  refine (((ConvexOn.add ?_ ?_).add ?_).add_const _).congr log_doublingGamma_eq.symm
  · convert
      convexOn_log_Gamma.comp_affineMap (DistribMulAction.toLinearMap ℝ ℝ (1 / 2 : ℝ)).toAffineMap
      using 1
    · simpa only [zero_div] using (preimage_const_mul_Ioi (0 : ℝ) one_half_pos).symm
    · ext1 x
      simp only [LinearMap.coe_toAffineMap, Function.comp_apply, DistribMulAction.toLinearMap_apply]
      rw [smul_eq_mul, mul_comm, mul_one_div]
  · refine ConvexOn.subset ?_ (Ioi_subset_Ioi <| neg_one_lt_zero.le) (convex_Ioi _)
    convert
      convexOn_log_Gamma.comp_affineMap
        ((DistribMulAction.toLinearMap ℝ ℝ (1 / 2 : ℝ)).toAffineMap +
          AffineMap.const ℝ ℝ (1 / 2 : ℝ)) using 1
    · change Ioi (-1 : ℝ) = ((fun x : ℝ => x + 1 / 2) ∘ fun x : ℝ => (1 / 2 : ℝ) * x) ⁻¹' Ioi 0
      rw [preimage_comp, preimage_add_const_Ioi, zero_sub,
        preimage_const_mul_Ioi (_ : ℝ) one_half_pos, neg_div, div_self (@one_half_pos ℝ _).ne']
    · ext1 x
      change log (Gamma (x / 2 + 1 / 2)) = log (Gamma ((1 / 2 : ℝ) • x + 1 / 2))
      rw [smul_eq_mul, mul_comm, mul_one_div]
  · simpa only [mul_comm _ (log _)] using
      (convexOn_id (convex_Ioi (0 : ℝ))).smul (log_pos one_lt_two).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BohrMollerup/Variantc1acf46e23f522673b34054e746df15ef9b693f5530af7bb34a7e6e1b96eed7f.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94400ea0c85b30a04ce15d85786d3cf2523cd725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
