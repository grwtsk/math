# psiRelativeError_mul_pow_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f9c44fd-eb01-a9ee-06e9-54695c65ba7d",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_mul_pow_tendsto_zero",
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
  "slug": "psirelativeerror-mul-pow-tendsto-zero--f7c6abf84a5d99999efa72af",
  "source": {
    "blob": "195e7f002287c0acc6f72f4183ea3be002f089f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7c6abf84a5d99999efa72af8ccdf968c977d727cba6b2027ff95f0b9c3646cc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f9c44fd-eb01-a9ee-06e9-54695c65ba7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_mul_pow_tendsto_zero (n : ℕ) :
    Tendsto (fun t : ℝ => t ^ n * psiRelativeError t) atTop (𝓝 0) := by
  obtain ⟨c, hc, C, hC, hb⟩ := psiRelativeError_medium_bound
  have hz := (power_stretched_exp_tendsto_zero n hc).const_mul C
  apply squeeze_zero_norm' ?_ (by simpa using hz)
  filter_upwards [hb, eventually_ge_atTop (0 : ℝ)] with t ht ht0
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (pow_nonneg ht0 n)]
  calc
    _ ≤ t ^ n * (C * Real.exp (-c * t ^ ((1 : ℝ) / 10))) :=
      mul_le_mul_of_nonneg_left ht (pow_nonneg ht0 n)
    _ = C * (t ^ n * Real.exp (-c * t ^ ((1 : ℝ) / 10))) := by ring

end ContinuousResearch.MediumPNTLogError

set_option pp.fullNames true
set_option pp.universes true
#check MediumPNT
#print axioms MediumPNT
#print MediumPNT
#check ContinuousResearch.MediumPNTLogError.psiRelativeError
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError
#print ContinuousResearch.MediumPNTLogError.psiRelativeError
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_eq
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_medium_bound
#check ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.power_stretched_exp_tendsto_zero
#check ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print axioms ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
#print ContinuousResearch.MediumPNTLogError.psiRelativeError_mul_pow_tendsto_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `195e7f002287c0acc6f72f4183ea3be002f089f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
