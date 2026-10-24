# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousFunctionalCalculus.Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `717d9efdd9fa976837df0f4a34f7e472a6b41d9c`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Star.GelfandDuality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.StarSubalgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/instance--e0dbcf3f41d518da51e360b1.md) | 67 | `declaration-track:e0dbcf3f41d518da51e360b1da987e97f3b8d73f40ced3f039acd93bb962dcb6` |
| 2 | `theorem` | [spectrum_star_mul_self_of_isStarNormal](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/spectrum-star-mul-self-of-isstarnormal--21376522f1a30aecae2fd09c.md) | 82 | `result-track:21376522f1a30aecae2fd09c4d222483ecda11d573706ba71a61b6adf7b6371d` |
| 3 | `theorem` | [elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/elementalstaralgebra-isunit-of-isunit-of-isstarnormal--cdfcfb5b4afa75dc81246391.md) | 106 | `result-track:cdfcfb5b4afa75dc81246391dbe62ad546287eefbf5216069da059cbd22cd398` |
| 4 | `theorem` | [StarSubalgebra.isUnit_coe_inv_mem](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/starsubalgebra-isunit-coe-inv-mem--484d4376e5ad2f9ad872c247.md) | 182 | `result-track:484d4376e5ad2f9ad872c24724bdf6b1bb0cafebae9d20425ebbd10fa8e8a5b6` |
| 5 | `theorem` | [StarSubalgebra.coe_isUnit](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/starsubalgebra-coe-isunit--102336c39df8c365974e67bf.md) | 199 | `result-track:102336c39df8c365974e67bf0dd4e772a26e65e5df9c791c04e8a8e795e43e0d` |
| 6 | `theorem` | [StarSubalgebra.mem_spectrum_iff](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/starsubalgebra-mem-spectrum-iff--e9d5cdcf6b65ac6c4d067710.md) | 207 | `result-track:e9d5cdcf6b65ac6c4d067710ad8a4ad926aa38369d57070b73d84c2467ab3225` |
| 7 | `theorem` | [StarSubalgebra.spectrum_eq](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/starsubalgebra-spectrum-eq--932e55fb984658f8513de3a1.md) | 214 | `result-track:932e55fb984658f8513de3a165cab47fa81bba53f777107c96cd3d920d20de3a` |
| 8 | `def` | [elementalStarAlgebra.characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/elementalstaralgebra-characterspacetospectrum--d706cbf9ff976c111354890b.md) | 226 | `declaration-track:d706cbf9ff976c111354890ba208fb3d182f7b1a2f092a5593a10c7146cc3184` |
| 9 | `theorem` | [elementalStarAlgebra.continuous_characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/elementalstaralgebra-continuous-characterspacetospectrum--99a397932b00a136aa7e36c9.md) | 235 | `result-track:99a397932b00a136aa7e36c98614d196ff3afd8f359e483cef1e66ce168e62e6` |
| 10 | `theorem` | [elementalStarAlgebra.bijective_characterSpaceToSpectrum](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/elementalstaralgebra-bijective-characterspacetospectrum--9e6704b96032ecb907e273db.md) | 241 | `result-track:9e6704b96032ecb907e273db4d7f1a51b15087b94c2017f2fde2d7c60ff2ba4c` |
| 11 | `def` | [elementalStarAlgebra.characterSpaceHomeo](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/elementalstaralgebra-characterspacehomeo--7787dc4ebed47a16f982ee3f.md) | 260 | `declaration-track:7787dc4ebed47a16f982ee3f1dc6812de5faa3b55e6318f6c8a9a87776b8990f` |
| 12 | `def` | [continuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/continuousfunctionalcalculus--38bedeeffcc7eef319a526e8.md) | 275 | `declaration-track:38bedeeffcc7eef319a526e8fd33ab1652c4b9f228752e34e84862f0b78b4211` |
| 13 | `theorem` | [continuousFunctionalCalculus_map_id](../../../../../mathematics/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/declarations/continuousfunctionalcalculus-map-id--627b9fa0cce2f740de6bf87b.md) | 281 | `result-track:627b9fa0cce2f740de6bf87b55ac9084db84686ad3a5b73a87250c21d34e278b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
