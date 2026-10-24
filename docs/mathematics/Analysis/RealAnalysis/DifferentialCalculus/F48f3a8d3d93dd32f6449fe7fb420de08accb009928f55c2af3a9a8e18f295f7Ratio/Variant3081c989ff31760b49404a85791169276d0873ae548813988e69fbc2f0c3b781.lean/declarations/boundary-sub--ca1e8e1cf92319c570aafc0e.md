# boundary_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cf404f3-7d93-4cc5-4dcc-f70796cb8635",
  "kind": "theorem",
  "lexical_name": "boundary_sub",
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
  "slug": "boundary-sub--ca1e8e1cf92319c570aafc0e",
  "source": {
    "blob": "0908809aa8054e335720ced123d7c757db885040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca1e8e1cf92319c570aafc0e3e78df1df669ff87fd0bcf58fb9d100a91fe199d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cf404f3-7d93-4cc5-4dcc-f70796cb8635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundary_sub (t : ℝ) (ht : 0 ≤ t) :
    Tendsto (fun u => thetaPhi u * (u - t)) atTop (𝓝 0) := by
  have h0 : Tendsto thetaPhi atTop (𝓝 0) := thetaTail_tendsto_atTop 0
  have h1 : Tendsto (fun u => thetaPhi u * evenBasis 1 u) atTop (𝓝 0) :=
    thetaTail_mul_evenBasis_tendsto_atTop 0 1
  apply squeeze_zero' (g := fun u => thetaPhi u + thetaPhi u * evenBasis 1 u)
  · filter_upwards [eventually_ge_atTop t] with u hu
    exact mul_nonneg (thetaPhi_positive u (ht.trans hu)).le (sub_nonneg.mpr hu)
  · filter_upwards [eventually_ge_atTop t] with u hu
    have hp := (thetaPhi_positive u (ht.trans hu)).le
    have he : evenBasis 1 u = 2 * u ^ 2 := by norm_num [evenBasis]; ring
    rw [he]
    have hx : u - t ≤ 1 + 2 * u ^ 2 := by nlinarith [sq_nonneg (u - 1)]
    nlinarith [mul_le_mul_of_nonneg_left hx hp]
  · simpa using h0.add h1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F48f3a8d3d93dd32f6449fe7fb420de08accb009928f55c2af3a9a8e18f295f7Ratio/Variant3081c989ff31760b49404a85791169276d0873ae548813988e69fbc2f0c3b781.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0908809aa8054e335720ced123d7c757db885040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
