# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gronwall.Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "609cf53913229b7d3ea89d4f2f0f9f9084288641",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `609cf53913229b7d3ea89d4f2f0f9f9084288641`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gronwallBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound--7892bd20b4bf61568262ec64.md) | 39 | `declaration-track:7892bd20b4bf61568262ec649fad2bea12656d1ccd38694ae4972800e2e78655` |
| 2 | `theorem` | [gronwallBound_K0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound-k0--bc0ed9a4faf15c18031478e5.md) | 42 | `result-track:bc0ed9a4faf15c18031478e52111938b1555f3fe128bf2d9819bab086d69ce8c` |
| 3 | `theorem` | [gronwallBound_of_K_ne_0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound-of-k-ne-0--c915595655c3e0b3ddc892b2.md) | 45 | `result-track:c915595655c3e0b3ddc892b2d1da4853ea36cc8d51a4c441376a33d7950e3f81` |
| 4 | `theorem` | [hasDerivAt_gronwallBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/hasderivat-gronwallbound--83ce64b258264602d30e8e2f.md) | 49 | `result-track:83ce64b258264602d30e8e2f99432df21d5c4cfa4f083796a76972af95bcc43d` |
| 5 | `theorem` | [hasDerivAt_gronwallBound_shift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/hasderivat-gronwallbound-shift--c52430f6d9b04c4b4d9d0156.md) | 62 | `result-track:c52430f6d9b04c4b4d9d0156377d497293aa0f7139a679be51664792ed45f9b4` |
| 6 | `theorem` | [gronwallBound_x0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound-x0--27e39ad6740c1bca389fe727.md) | 67 | `result-track:27e39ad6740c1bca389fe7276fb2e54937d5280ee141900eda2ca74eb069c76d` |
| 7 | `theorem` | [gronwallBound_ε0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound-0--291d3f694e4c07269e4d3293.md) | 73 | `result-track:291d3f694e4c07269e4d3293368352748374cdbfd14fb2d1eb641f65fa01d895` |
| 8 | `theorem` | [gronwallBound_ε0_δ0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound-0-0--4428ed1a3e0989e594734f4c.md) | 78 | `result-track:4428ed1a3e0989e594734f4c0492d507d3589d0b86d8e6119f4831f698026b19` |
| 9 | `theorem` | [gronwallBound_continuous_ε](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/gronwallbound-continuous--66dd5f35e89785f780b1b54f.md) | 81 | `result-track:66dd5f35e89785f780b1b54f337ca671af4a2101305c23473a0bf623ac55d2af` |
| 10 | `theorem` | [le_gronwallBound_of_liminf_deriv_right_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/le-gronwallbound-of-liminf-deriv-right-le--b314908ae42f10e2e4295f3c.md) | 97 | `result-track:b314908ae42f10e2e4295f3cc717147030b5e1a5ac0b3a99181733115bc98db0` |
| 11 | `theorem` | [norm_le_gronwallBound_of_norm_deriv_right_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/norm-le-gronwallbound-of-norm-deriv-right-le--8ff9e26dead359189d035d11.md) | 122 | `result-track:8ff9e26dead359189d035d116ce59f37bc56e26d3ccdbafb688324664c67dc8c` |
| 12 | `theorem` | [dist_le_of_approx_trajectories_ODE_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/dist-le-of-approx-trajectories-ode-of-mem--e9d4c1f98049225b5f1ff42d.md) | 137 | `result-track:e9d4c1f98049225b5f1ff42df42a1d53344a2d328ecc3f3b6fc2637fcd467a3d` |
| 13 | `theorem` | [dist_le_of_approx_trajectories_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/dist-le-of-approx-trajectories-ode--2031edc6af1bff0b98d66e14.md) | 165 | `result-track:2031edc6af1bff0b98d66e14adaadf6f3b26fc1ea03c981a15c4014d1edc532e` |
| 14 | `theorem` | [dist_le_of_trajectories_ODE_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/dist-le-of-trajectories-ode-of-mem--6fd73e16df99efd4cfe19d70.md) | 185 | `result-track:6fd73e16df99efd4cfe19d70e4409f80b98f0bacb378a61d1d333396dde59b4e` |
| 15 | `theorem` | [dist_le_of_trajectories_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/dist-le-of-trajectories-ode--3f911af75ec4e1daad3834a5.md) | 205 | `result-track:3f911af75ec4e1daad3834a565c9ad426ca619e16a769507f78b81bb1d41702e` |
| 16 | `theorem` | [ODE_solution_unique_of_mem_Icc_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique-of-mem-icc-right--20187788d5becc544813d793.md) | 222 | `result-track:20187788d5becc544813d793b54fdb6ab1716cf38d3c0cf86c3f7224a55801c3` |
| 17 | `theorem` | [ODE_solution_unique_of_mem_Icc_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique-of-mem-icc-left--2f6916c41ed83142f1f475da.md) | 237 | `result-track:2f6916c41ed83142f1f475da06db28b0831ec32f696a7c6ee408ed8861fdec5d` |
| 18 | `theorem` | [ODE_solution_unique_of_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique-of-mem-icc--70ab5f004ea672eb6172a842.md) | 278 | `result-track:70ab5f004ea672eb6172a842a7f315b9581aacce9dbf74dd64db189458ea774b` |
| 19 | `theorem` | [ODE_solution_unique_of_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique-of-mem-ioo--cca632aa9aec6bf28fb6a86e.md) | 305 | `result-track:cca632aa9aec6bf28fb6a86e19b4bd88a97c34e78375a330b1d1bb4b1787d469` |
| 20 | `theorem` | [ODE_solution_unique_of_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique-of-eventually--439383998ef1a9d5c9ba1b12.md) | 338 | `result-track:439383998ef1a9d5c9ba1b1258f1dc0b947c08190d2657af66efec12fe7cf528` |
| 21 | `theorem` | [ODE_solution_unique](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique--7cd2f52366383179c39f6b04.md) | 353 | `result-track:7cd2f52366383179c39f6b044e60e804013e49516efa807258cbc4e3d9e45442` |
| 22 | `theorem` | [ODE_solution_unique_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variantd478c4dffa5afc6c1ee6d44c817c0e46dab68ed95bdcafe3d24a16945fd56b86.lean/declarations/ode-solution-unique-univ--3efca374e227ee26d1875ef7.md) | 367 | `result-track:3efca374e227ee26d1875ef74313b618462a6de7e5498e2012fe2cbce7570d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
