# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e628f119f19643501a84e461c29575ff1365d511",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e628f119f19643501a84e461c29575ff1365d511`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.OfCompLeft` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [approximates_deriv_on_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/approximates-deriv-on-nhds--d5e1c66b3de722b6723cc43f.md) | 76 | `result-track:d5e1c66b3de722b6723cc43ff12da7b6f74a6d4a29182dc8dd81a8e3e0f81dca` |
| 2 | `theorem` | [map_nhds_eq_of_surj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/map-nhds-eq-of-surj--f06f157a3d9bb966d7ae2c80.md) | 87 | `result-track:f06f157a3d9bb966d7ae2c8021fb255f7ae02331b886b9ab4b8d3bbd1f0d7503` |
| 3 | `theorem` | [approximates_deriv_on_open_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/approximates-deriv-on-open-nhds--c568a10eb851781c7f0e1833.md) | 101 | `result-track:c568a10eb851781c7f0e1833d11b440d9f0c1c924af3ed6aabaeaded9922e3de` |
| 4 | `def` | [toOpenPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/toopenpartialhomeomorph--effc8c8c8f5cea5863b5fd31.md) | 117 | `declaration-track:effc8c8c8f5cea5863b5fd313d4802d52131916dc5a0dc772bbb9205267a260a` |
| 5 | `theorem` | [toOpenPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/toopenpartialhomeomorph-coe--0ff64ce34b722b5b06f5bd5b.md) | 129 | `result-track:0ff64ce34b722b5b06f5bd5ba2e2bad89a210094a9c8064d2e71e8205ce3a8b7` |
| 6 | `theorem` | [mem_toOpenPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/mem-toopenpartialhomeomorph-source--10abb732676e3a5b630dae4d.md) | 133 | `result-track:10abb732676e3a5b630dae4d2d99de44d0a9fa658e2e2a11e16ea47b31c6065c` |
| 7 | `theorem` | [image_mem_toOpenPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/image-mem-toopenpartialhomeomorph-target--5acc9e73dbf2973f93d072e5.md) | 137 | `result-track:5acc9e73dbf2973f93d072e52765ff367d7e84e53fb2088fb130d2c79616881c` |
| 8 | `theorem` | [map_nhds_eq_of_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/map-nhds-eq-of-equiv--931b08c467bd338ae60e6521.md) | 141 | `result-track:931b08c467bd338ae60e6521ef7160ee4cb778accc7de704e1d577bdfd8a5b25` |
| 9 | `def` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/localinverse--59a3e3972a771cac7167f420.md) | 149 | `declaration-track:59a3e3972a771cac7167f4202d1d883f0a24bde399d6bd252b84d82d5acd3857` |
| 10 | `theorem` | [localInverse_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/localinverse-def--0df8c3912f1218fbfff397b8.md) | 154 | `result-track:0df8c3912f1218fbfff397b800da832040fb56413584782fd8f7cdb582f018d2` |
| 11 | `theorem` | [eventually_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/eventually-left-inverse--87d8435df24e53601ee56084.md) | 158 | `result-track:87d8435df24e53601ee560845db06467d617da17e42e93b95639f41ce513e61f` |
| 12 | `theorem` | [localInverse_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/localinverse-apply-image--d2c057fb07c632860b6a099b.md) | 163 | `result-track:d2c057fb07c632860b6a099b30454a36ad83466848dc11cbeb6f191b92aae7c7` |
| 13 | `theorem` | [eventually_right_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/eventually-right-inverse--31024f2bc3a901d0adbe940b.md) | 167 | `result-track:31024f2bc3a901d0adbe940b00ded129c325763dc39dc899ec65e23ed40a9688` |
| 14 | `theorem` | [localInverse_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/localinverse-continuousat--325c2cd24a8d47a4341c325d.md) | 171 | `result-track:325c2cd24a8d47a4341c325d4f3de341920faf32500c2295fe62978568dda412` |
| 15 | `theorem` | [localInverse_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/localinverse-tendsto--7dd0f955b7a5d8d0199c248f.md) | 175 | `result-track:7dd0f955b7a5d8d0199c248f89c426eb521d42f2310d285f784f448575b38578` |
| 16 | `theorem` | [localInverse_unique](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/localinverse-unique--f643d9419d469486d01759a8.md) | 179 | `result-track:f643d9419d469486d01759a8f740242575188c17319174aaf2eec663b9ba7afb` |
| 17 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/to-localinverse--e7eb5734172426dfb71f288a.md) | 186 | `result-track:e7eb5734172426dfb71f288a75505d7c5604da4c1b0e0e4ab2d7e9d453d26d72` |
| 18 | `theorem` | [to_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/to-local-left-inverse--1e392cb7a1d8d1122733d967.md) | 197 | `result-track:1e392cb7a1d8d1122733d9673ab2928820b6aa5a86fa1893a3b54d2766d29257` |
| 19 | `theorem` | [isOpenMap_of_hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant2f32dfade659b44f50a3692b2173a02697ca6d6953c2d1d6d81e86470527551d.lean/declarations/isopenmap-of-hasstrictfderivat-equiv--f223ea7e1ae2971e205fb563.md) | 204 | `result-track:f223ea7e1ae2971e205fb563b1888ccdd5a0e4fecb9c94e70e137723f93054eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
