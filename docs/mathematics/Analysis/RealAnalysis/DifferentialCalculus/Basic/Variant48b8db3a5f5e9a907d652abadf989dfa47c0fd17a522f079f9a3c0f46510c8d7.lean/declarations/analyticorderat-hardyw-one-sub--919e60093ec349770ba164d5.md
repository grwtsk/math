# analyticOrderAt_hardyW_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cff184a-3fad-50ad-ff04-77e6465379c7",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_hardyW_one_sub",
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
  "slug": "analyticorderat-hardyw-one-sub--919e60093ec349770ba164d5",
  "source": {
    "blob": "d9db56067d5f9e092171b27535c8c8cd1699b8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 255,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919e60093ec349770ba164d548ebfd5874150154baa9204b914c5132eb4f3908",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cff184a-3fad-50ad-ff04-77e6465379c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticOrderAt_hardyW_one_sub {w : ℂ} (hw : w.im ≠ 0) :
    analyticOrderAt hardyW (1 - w) = analyticOrderAt hardyW w := by
  have hg : AnalyticAt ℂ (fun z : ℂ => 1 - z) w := analyticAt_const.sub analyticAt_id
  have hg' : deriv (fun z : ℂ => 1 - z) w ≠ 0 := by rw [deriv_const_sub]; simp
  -- W(1−z) = −χ(z)⁻¹·W(z) near w
  have hev : (hardyW ∘ fun z : ℂ => 1 - z) =ᶠ[𝓝 w] (fun z => -(chiFE z)⁻¹) * hardyW := by
    filter_upwards [isOpen_im_ne_zero.mem_nhds hw] with z hz
    simp only [Function.comp_apply, Pi.mul_apply]
    rw [hardyW_eq_neg_chiFE_mul hz]
    field_simp [chiFE_ne_zero hz]
  have hu : AnalyticAt ℂ (fun z => -(chiFE z)⁻¹) w := ((chiFE_analyticAt hw).inv (chiFE_ne_zero hw)).neg
  have hu0 : analyticOrderAt (fun z => -(chiFE z)⁻¹) w = 0 :=
    hu.analyticOrderAt_eq_zero.mpr (neg_ne_zero.mpr (inv_ne_zero (chiFE_ne_zero hw)))
  calc analyticOrderAt hardyW (1 - w)
      = analyticOrderAt (hardyW ∘ fun z : ℂ => 1 - z) w := by
        rw [analyticOrderAt_comp_of_deriv_ne_zero hg hg']
    _ = analyticOrderAt ((fun z => -(chiFE z)⁻¹) * hardyW) w := analyticOrderAt_congr hev
    _ = analyticOrderAt (fun z => -(chiFE z)⁻¹) w + analyticOrderAt hardyW w :=
        analyticOrderAt_mul hu (hardyW_analyticAt hw)
    _ = analyticOrderAt hardyW w := by rw [hu0, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9db56067d5f9e092171b27535c8c8cd1699b8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
