# literal_lower_native_price_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2202d09-cee1-d9b1-7e19-950c1b6028ee",
  "kind": "theorem",
  "lexical_name": "literal_lower_native_price_formula",
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
  "slug": "literal-lower-native-price-formula--e876b61c97e64f1892c99e65",
  "source": {
    "blob": "51b44a93ddba2d97e6b5b57d702b9de2ccb33089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e876b61c97e64f1892c99e65890dd178885f2de92195d442a28671532944dc88",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2202d09-cee1-d9b1-7e19-950c1b6028ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_lower_native_price_formula {k T : ℝ} (hk : 0 < k) (hT : 0 < T) (p : ℝ) :
    lowerNativePrice k p T =
      (k^p / (2 : ℝ)^(p-1)) * (Real.exp (((p-1)/2)*T) / T^(2*p)) := by
  have ht2 : (T^2 : ℝ)^p = T^(2*p) := by
    rw [← Real.rpow_two,← Real.rpow_mul hT.le]
  unfold lowerNativePrice
  rw [Real.div_rpow hk.le (sq_nonneg T),ht2,
    Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2) (Real.exp_pos _).le,← Real.exp_mul]
  have he : (-T/2)*(p-1) = -(((p-1)/2)*T) := by ring
  rw [he,Real.exp_neg]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeEnergyBarrier/Variant32a39d7a35bcef8d420f5076315bd06ab8086d98c2521519b0a7311737c4be50.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b44a93ddba2d97e6b5b57d702b9de2ccb33089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
