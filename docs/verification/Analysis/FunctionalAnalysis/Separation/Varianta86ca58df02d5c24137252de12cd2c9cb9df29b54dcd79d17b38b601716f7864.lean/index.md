# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Separation.Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e38810cea58d56eba4732b2c034caeaf8250cab",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e38810cea58d56eba4732b2c034caeaf8250cab`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extend` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [separate_convex_open_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/separate-convex-open-set--d9d3ecdc220988c3b2110527.md) | 56 | `result-track:d9d3ecdc220988c3b21105272e568648efda3e5432c90387d476c97f460d6945` |
| 2 | `theorem` | [geometric_hahn_banach_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-open--2be9ee2d755a70be6d1d916a.md) | 95 | `result-track:2be9ee2d755a70be6d1d916a265528db075316d4dad43a129ccae6e9b65dca17` |
| 3 | `theorem` | [geometric_hahn_banach_open_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-open-point--a00687f2e1d0fdefc39c9c0e.md) | 125 | `result-track:a00687f2e1d0fdefc39c9c0ea6f8df0be02de040544c1c93e7d77e4e0defcf77` |
| 4 | `theorem` | [geometric_hahn_banach_point_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-point-open--09ff20f88fccecb4a1950794.md) | 131 | `result-track:09ff20f88fccecb4a19507941eb36ed3e10bc956809bf6dbeafc05d6cb73130b` |
| 5 | `theorem` | [geometric_hahn_banach_open_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-open-open--4d620b9c3306c036be1b68a4.md) | 136 | `result-track:4d620b9c3306c036be1b68a48eacaa37bc8cea226f816d5e650939142922ecde` |
| 6 | `theorem` | [geometric_hahn_banach_compact_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-compact-closed--199ccdca46a06073a1b5c534.md) | 160 | `result-track:199ccdca46a06073a1b5c534a9ce44789d9a2b410344bfaff722a6a92f5c4194` |
| 7 | `theorem` | [geometric_hahn_banach_closed_compact](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-closed-compact--738ddc3bd569e223a2e2ed41.md) | 180 | `result-track:738ddc3bd569e223a2e2ed410f244214b0c04dad95fcc1aceed078b1f35817cf` |
| 8 | `theorem` | [geometric_hahn_banach_point_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-point-closed--b6a7ecdb462c129ff49fe778.md) | 186 | `result-track:b6a7ecdb462c129ff49fe77825bc6f1009f510fc49749be6c7a6dfe59ae03cf8` |
| 9 | `theorem` | [geometric_hahn_banach_closed_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-closed-point--26eb75bddac768bfc5f6b6fa.md) | 193 | `result-track:26eb75bddac768bfc5f6b6fabefaea03ef08a82588cd3d85696e00cec4c61373` |
| 10 | `theorem` | [geometric_hahn_banach_point_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-point-point--aaac77eb0a7fad355215f5eb.md) | 201 | `result-track:aaac77eb0a7fad355215f5ebf8ba4a8b871bc32c6dc2596f2cfcca5a9206cda8` |
| 11 | `theorem` | [iInter_halfSpaces_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/iinter-halfspaces-eq--29caf0073b479fbebf793a95.md) | 209 | `result-track:29caf0073b479fbebf793a9521a289876643f6a383885183f7b1c3ef77f78014` |
| 12 | `def` | [extendTo𝕜'ₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/extendto--7c390d151cb00d50ac8616b7.md) | 226 | `declaration-track:7c390d151cb00d50ac8616b7a3a1f1f4e31acf4441d6936c11cb8cb9183fb4bb` |
| 13 | `lemma` | [re_extendTo𝕜'ₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/re-extendto--240ea79275045f18575e694e.md) | 236 | `result-track:240ea79275045f18575e694e05b728e6c23a751c9e2b80efab053e05bdc610da` |
| 14 | `theorem` | [separate_convex_open_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/separate-convex-open-set--cf04b3b7cc5348b265627fe1.md) | 244 | `result-track:cf04b3b7cc5348b265627fe1543472b97a60c7543fc52e1a2f7770e96dff1be5` |
| 15 | `theorem` | [geometric_hahn_banach_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-open--1dad3e68c483a5eaf987684c.md) | 253 | `result-track:1dad3e68c483a5eaf987684c328c5cbae6ca7c10b84fce767385e28bc88c9b0f` |
| 16 | `theorem` | [geometric_hahn_banach_open_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-open-point--73a1f6d36b8e6842d78900be.md) | 262 | `result-track:73a1f6d36b8e6842d78900be4e710cab09e1cfcb69cb1d78a3ab792b596ce645` |
| 17 | `theorem` | [geometric_hahn_banach_point_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-point-open--d7231f8a5559a5232f8c23cd.md) | 270 | `result-track:d7231f8a5559a5232f8c23cd920cf2e389d79c7e54d049a4640f75ab4e3a2693` |
| 18 | `theorem` | [geometric_hahn_banach_open_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-open-open--4b65d8c683d4d95e598f0e8d.md) | 275 | `result-track:4b65d8c683d4d95e598f0e8d6e7dcfde9b7fb03996223fc080dfda695bd33b35` |
| 19 | `theorem` | [geometric_hahn_banach_compact_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-compact-closed--7546cfd7a6daf2eb1bff75a9.md) | 286 | `result-track:7546cfd7a6daf2eb1bff75a9ffd8d267ba0d8a0006c6631b8a4f2038cc980071` |
| 20 | `theorem` | [geometric_hahn_banach_closed_compact](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-closed-compact--096ca90c1399731b90ea7ab4.md) | 295 | `result-track:096ca90c1399731b90ea7ab43f748b9369ba6a4b9084ce101778c0187b63d46e` |
| 21 | `theorem` | [geometric_hahn_banach_point_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-point-closed--1492843419a7a00fbfa5834a.md) | 301 | `result-track:1492843419a7a00fbfa5834a5738d7f341461aff74b9ed4a41eb25c598fd51ee` |
| 22 | `theorem` | [geometric_hahn_banach_closed_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-closed-point--6c29abc2daf8b6c613c07af8.md) | 308 | `result-track:6c29abc2daf8b6c613c07af823d6788e229be28d490449ca9804c1ab0cdfdb22` |
| 23 | `theorem` | [geometric_hahn_banach_point_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/geometric-hahn-banach-point-point--a014850f9388fb87ed3b5881.md) | 315 | `result-track:a014850f9388fb87ed3b588126d89decb286728e5f966f983f73a35248fb422b` |
| 24 | `theorem` | [iInter_halfSpaces_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Varianta86ca58df02d5c24137252de12cd2c9cb9df29b54dcd79d17b38b601716f7864.lean/declarations/iinter-halfspaces-eq--9becac832462d484f256d105.md) | 322 | `result-track:9becac832462d484f256d10595707f5aa3d3341392ecd0571aa85d04e5a751a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
