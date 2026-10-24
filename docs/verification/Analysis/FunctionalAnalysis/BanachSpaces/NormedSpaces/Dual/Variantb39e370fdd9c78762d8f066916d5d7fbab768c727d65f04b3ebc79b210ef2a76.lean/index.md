# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Dual.Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "612f92f141966fafc8bc0ca843aa601699edff48",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `612f92f141966fafc8bc0ca843aa601699edff48`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.IsROrC` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Polar` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Dual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/dual--1e916687bc4d17c2307657fd.md) | 64 | `declaration-track:1e916687bc4d17c2307657fd58b9d25c5195d04ba49907cc3a735c11812f6aea` |
| 2 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--75ee829cece158366b3a32de.md) | 71 | `declaration-track:75ee829cece158366b3a32de51a7080fc78d0898993bcc64b7b5156e0c84f9c0` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--75cdd47f2e6d1d1b9c5dcee2.md) | 74 | `declaration-track:75cdd47f2e6d1d1b9c5dcee2b96d32dbc162d48d91b4d567b2b20ea7f4af6729` |
| 4 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--a26d434a75e49b934c34f5f1.md) | 77 | `declaration-track:a26d434a75e49b934c34f5f15aaad8dfa082fe6354f402d5450dac0e12caf47c` |
| 5 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--a7cef54afd7f974ba6139aa0.md) | 82 | `declaration-track:a7cef54afd7f974ba6139aa05cf04a058369fe5325642f1499c08ef712487e64` |
| 6 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--97da5b23363ad1a6aa21ecdd.md) | 85 | `declaration-track:97da5b23363ad1a6aa21ecdd0171751cea899597afdb68fd056c609c88997f3c` |
| 7 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--74b7aee1a8852ef1953a29de.md) | 88 | `declaration-track:74b7aee1a8852ef1953a29de4ae4dd9d0fdaa32193c03e0207b6b693a3aa7e28` |
| 8 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/instance--23a4c33b6c637d99adcbe4ae.md) | 91 | `declaration-track:23a4c33b6c637d99adcbe4ae0e8d6990f0b78c91e7d5ec72bfac8a693d1550b6` |
| 9 | `def` | [inclusionInDoubleDual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/inclusionindoubledual--1e8d30c6b4fa60376810d0c5.md) | 96 | `declaration-track:1e8d30c6b4fa60376810d0c517720496e931650da7e17b9f017124b6bee727ca` |
| 10 | `theorem` | [dual_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/dual-def--c16eef782b7291026bbdf07c.md) | 101 | `result-track:c16eef782b7291026bbdf07ca10af62385d23172ed9a7182a9d54e62d8b12289` |
| 11 | `theorem` | [inclusionInDoubleDual_norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/inclusionindoubledual-norm-eq--27fa1fe854bb5524f7b95adc.md) | 105 | `result-track:27fa1fe854bb5524f7b95adc18722d5cb109bf9e47ebc93ad2b6c06811879d56` |
| 12 | `theorem` | [inclusionInDoubleDual_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/inclusionindoubledual-norm-le--e366e63f9aa15c4bba8bd11c.md) | 110 | `result-track:e366e63f9aa15c4bba8bd11cdeea24a9cd505da559e007540d6aa59987901f48` |
| 13 | `theorem` | [double_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/double-dual-bound--0fc4bd71131f0416207a3643.md) | 115 | `result-track:0fc4bd71131f0416207a36437849e74d6e3ce962b83ab2890156483a58b4cb7b` |
| 14 | `def` | [dualPairing](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/dualpairing--780a5ecc026da86880dc7a58.md) | 120 | `declaration-track:780a5ecc026da86880dc7a58921543585868729648488a3a58d87168f6de0b5d` |
| 15 | `theorem` | [dualPairing_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/dualpairing-apply--cc8d72f2986253281a984cb2.md) | 125 | `result-track:cc8d72f2986253281a984cb297ea3b28c9826a8b991b5483433ede5cd4f1a6f6` |
| 16 | `theorem` | [dualPairing_separatingLeft](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/dualpairing-separatingleft--a3f8b5b1c79382a5397b5f5a.md) | 129 | `result-track:a3f8b5b1c79382a5397b5f5a32fd1337a016624c390caa67ba5e1a8d60515cd7` |
| 17 | `theorem` | [norm_le_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/norm-le-dual-bound--bb4e0c51c59e77507b08035f.md) | 142 | `result-track:bb4e0c51c59e77507b08035f463f95175fe782e5fdf3d1563f28f42b8123148b` |
| 18 | `theorem` | [eq_zero_of_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/eq-zero-of-forall-dual-eq-zero--238c2ffc0de8d842b66b5789.md) | 155 | `result-track:238c2ffc0de8d842b66b5789ceab460c837643e7653f13d93ec23053c1637263` |
| 19 | `theorem` | [eq_zero_iff_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/eq-zero-iff-forall-dual-eq-zero--61ef1f3501227bcd7b4e3119.md) | 159 | `result-track:61ef1f3501227bcd7b4e3119ca42aa2ac6852661a6685af5bf3d53a34473ca6c` |
| 20 | `theorem` | [eq_iff_forall_dual_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/eq-iff-forall-dual-eq--a69e97fc40f1ca044f9dc7a7.md) | 164 | `result-track:a69e97fc40f1ca044f9dc7a7e5351565cf7d12c441092c0b77721cf5aff1cad5` |
| 21 | `def` | [inclusionInDoubleDualLi](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/inclusionindoubledualli--3735b787f3364beb353d771e.md) | 170 | `declaration-track:3735b787f3364beb353d771ebd32454d57c295310b3afbdd32fb05c67d88c217` |
| 22 | `def` | [polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/polar--f529113c9f88af80f2facf67.md) | 191 | `declaration-track:f529113c9f88af80f2facf6794a53752a35f8724b544c5faecfeeea893b27c87` |
| 23 | `theorem` | [mem_polar_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/mem-polar-iff--43480af84441b096e2f2b63e.md) | 200 | `result-track:43480af84441b096e2f2b63e14be206a8f1288b64ab3f4019127848856b93ee5` |
| 24 | `theorem` | [polar_univ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/polar-univ--7c5a1ac7368b3f7981e82012.md) | 205 | `result-track:7c5a1ac7368b3f7981e820125c0ab1090617c4522caba217c7a27acdc747e84c` |
| 25 | `theorem` | [isClosed_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/isclosed-polar--be55ce369342980a4d1854ee.md) | 210 | `result-track:be55ce369342980a4d1854ee3627a67aa49785debacd11d0de2a45b37776bf4c` |
| 26 | `theorem` | [polar_closure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/polar-closure--371f0e9f4550766c9fdf9ae1.md) | 218 | `result-track:371f0e9f4550766c9fdf9ae1b8da7982461004475378a09aad19d64ccf9216fe` |
| 27 | `theorem` | [smul_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/smul-mem-polar--5138935516b9e708d5fd5087.md) | 230 | `result-track:5138935516b9e708d5fd5087b4d2d63da04fa9948fcd4efd846e8a798ebd4967` |
| 28 | `theorem` | [polar_ball_subset_closedBall_div](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/polar-ball-subset-closedball-div--9feadcc6b0281a584b61fcc2.md) | 245 | `result-track:9feadcc6b0281a584b61fcc26e2c867a6135b220cc8b202eff7174b9fc49b888` |
| 29 | `theorem` | [closedBall_inv_subset_polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/closedball-inv-subset-polar-closedball--eb6d32499852179486bbf62e.md) | 260 | `result-track:eb6d32499852179486bbf62e543f9c49d023be72c2e504d5a404ffea9ecfccf0` |
| 30 | `theorem` | [polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/polar-closedball--eaa7432cdaa255bcc99bfcf4.md) | 273 | `result-track:eaa7432cdaa255bcc99bfcf4bdfb2b4c4cb908e7d4ddd7cfab2ba4cb7fbf2da6` |
| 31 | `theorem` | [bounded_polar_of_mem_nhds_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variantb39e370fdd9c78762d8f066916d5d7fbab768c727d65f04b3ebc79b210ef2a76.lean/declarations/bounded-polar-of-mem-nhds-zero--ffc41d26ea2d449293a9ad3c.md) | 284 | `result-track:ffc41d26ea2d449293a9ad3c1bf7607a5f2bfe9f4607620d6b7a78b2e1afbd85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
