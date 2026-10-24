# literal_lower_native_price_tends_to_infinity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:697d1898-1c21-7430-fe87-bb345b535a54",
  "kind": "theorem",
  "lexical_name": "literal_lower_native_price_tends_to_infinity",
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
  "slug": "literal-lower-native-price-tends-to-infinity--eda2feec97a0113f59a4b67d",
  "source": {
    "blob": "04d8b553c459821e3ddc38267925fc4ea55d35e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/Analysis/CriticalTwoModeEnergyBarrier/Variantf0e4f606e550fe34905dd9f4ad10604d490399fbb318d857c4c2c366fca61914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda2feec97a0113f59a4b67d482d0e4b6bffe50b33b87a4067157c1fa6647770",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeEnergyBarrier/Variantf0e4f606e550fe34905dd9f4ad10604d490399fbb318d857c4c2c366fca61914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:697d1898-1c21-7430-fe87-bb345b535a54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_lower_native_price_tends_to_infinity {k p : ℝ} (hk : 0 < k) (hp : 1 < p) :
    Tendsto (lowerNativePrice k p) atTop atTop := by
  have h := tendsto_exp_mul_div_rpow_atTop (2*p) ((p-1)/2) (by linarith)
  have hc : 0 < k^p / (2 : ℝ)^(p-1) :=
    div_pos (Real.rpow_pos_of_pos hk _) (Real.rpow_pos_of_pos (by norm_num) _)
  have hscaled := h.const_mul_atTop hc
  apply hscaled.congr'
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  exact (literal_lower_native_price_formula hk hT p).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeEnergyBarrier/Variantf0e4f606e550fe34905dd9f4ad10604d490399fbb318d857c4c2c366fca61914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeEnergyBarrier/Variantf0e4f606e550fe34905dd9f4ad10604d490399fbb318d857c4c2c366fca61914.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d8b553c459821e3ddc38267925fc4ea55d35e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
