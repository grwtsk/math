# Verification target: GRWTSK.Topology.GeneralTopology.Continuation.Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7789990240985152f5d5a5b6958d221afc15a01c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7789990240985152f5d5a5b6958d221afc15a01c`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.InitialFormula` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [zeroOccurrence_countable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/zerooccurrence-countable--2b32e60d9c6572fc65647f37.md) | 52 | `declaration-track:2b32e60d9c6572fc65647f370596482c200f8bcd87f0d07a20868f288d3ef649` |
| 2 | `theorem` | [finite_occurrences_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/finite-occurrences-norm-le--4b6889bf1e3b29a3fc042f45.md) | 63 | `result-track:4b6889bf1e3b29a3fc042f45c190932804b1871b5261d075eaadf54c0209b2c6` |
| 3 | `theorem` | [finite_occurrences_scaled_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/finite-occurrences-scaled-norm-le--90a4b59e45b89eb815eefa48.md) | 77 | `result-track:90a4b59e45b89eb815eefa484f7ce22e21832c2cb3ef891eb152d5e219e39c60` |
| 4 | `theorem` | [locallyFinite_scaled_values](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/locallyfinite-scaled-values--04e3e14d66a01cc5a6c2d4a1.md) | 87 | `result-track:04e3e14d66a01cc5a6c2d4a19f3188b25daccd74c99af9e325adf75b7053717f` |
| 5 | `theorem` | [isClosed_scaled_range](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/isclosed-scaled-range--06df85c7e6411712cd4b72d8.md) | 108 | `result-track:06df85c7e6411712cd4b72d888d1ec8c3f839520483e7c5c1687b2194cf3fb8c` |
| 6 | `def` | [candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/candidatesingularities--bae3f874b9d56100595aca89.md) | 119 | `declaration-track:bae3f874b9d56100595aca89e06355bd55e98096b3d08dc15f0df2ccac7cb430` |
| 7 | `def` | [convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/convergencedomain--64ed9dd3adf216a0ce4907ab.md) | 125 | `declaration-track:64ed9dd3adf216a0ce4907abce4e380617d6de5f664fcc0ca021a62ff12596c8` |
| 8 | `theorem` | [isClosed_candidateSingularities](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/isclosed-candidatesingularities--9fe2401a0c9d004fd9703517.md) | 128 | `result-track:9fe2401a0c9d004fd9703517c2af212acbe4cfb686221ef8f701592eb8fd0273` |
| 9 | `theorem` | [isOpen_convergenceDomain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/isopen-convergencedomain--1324635064e5204057054e73.md) | 135 | `result-track:1324635064e5204057054e739c087a6036855bc3dc389bbcf38329ca4a35cc7d` |
| 10 | `theorem` | [mem_convergenceDomain_iff](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/mem-convergencedomain-iff--0451626c34778e6af2331df6.md) | 140 | `result-track:0451626c34778e6af2331df653eb001228cad2325132fee75b67a5ed02a7e8ab` |
| 11 | `theorem` | [initial_halfPlane_subset_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/initial-halfplane-subset-domain--2e06b761b8d692954faf131d.md) | 152 | `result-track:2e06b761b8d692954faf131d81e43852dce4720f117b8092f16ea72cddacf730` |
| 12 | `theorem` | [J_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/j-analytic--3a69a0d7e91d1d9e4f757305.md) | 170 | `result-track:3a69a0d7e91d1d9e4f757305909c0598ea0a29064e1b92dc6001e41c90b79ce1` |
| 13 | `theorem` | [polynomialKernel_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/polynomialkernel-analytic--cf0668ffaff2e2357988d267.md) | 177 | `result-track:cf0668ffaff2e2357988d267d2b97ca1d6c893d2c97f5ce053bb0a0dc8b44df1` |
| 14 | `theorem` | [sourceKernel_analytic_of_denominators](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-analytic-of-denominators--894355feb49fa7040088c93f.md) | 186 | `result-track:894355feb49fa7040088c93fa13de3c6b5c6d24b4d04e80aff93c65b97bd99af` |
| 15 | `theorem` | [sourceKernel_analytic_on_domain](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-analytic-on-domain--4e6e6c378a302407e41873a1.md) | 215 | `result-track:4e6e6c378a302407e41873a1a13d5bf9f36d41519bf5da7be2533711fb787386` |
| 16 | `theorem` | [laplaceKernel_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/laplacekernel-norm-le-factorial--c07c87d38a5abef52dc2a76d.md) | 235 | `result-track:c07c87d38a5abef52dc2a76d11378f996828e2e790e0378ab245b15105f95e6c` |
| 17 | `theorem` | [J_norm_le_factorial](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/j-norm-le-factorial--a4787db8f95e9836d540be84.md) | 278 | `result-track:a4787db8f95e9836d540be849919abb56733bd0e338f9b57d79036cc2b1914fa` |
| 18 | `theorem` | [J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/j-norm-le--84b2267559620c8caff8e998.md) | 288 | `result-track:84b2267559620c8caff8e9981edc27d79488241fff9626dda3d22562d94b15c9` |
| 19 | `theorem` | [positivePolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/positivepolynomial-coeff-norm-le--3e0db59ff1f9c0ef499605d7.md) | 301 | `result-track:3e0db59ff1f9c0ef499605d7bfd58df88c1846eb521fede2618fb64275b17abf` |
| 20 | `theorem` | [mixedPolynomial_coeff_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/mixedpolynomial-coeff-norm-le--4e6f8f97637d05ffc075048a.md) | 319 | `result-track:4e6f8f97637d05ffc075048a39904c29a85ed0f834f4b91e9de255e816185bf3` |
| 21 | `theorem` | [polynomialKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/polynomialkernel-norm-le--99186e90b6acd12819176516.md) | 337 | `result-track:99186e90b6acd128191765161b39859c59c8c4eb5a37e1daa677f4573ea010dd` |
| 22 | `theorem` | [shifted_norm_ge_one](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/shifted-norm-ge-one--da0f764fe0bebeb17e095bf0.md) | 363 | `result-track:da0f764fe0bebeb17e095bf0866668a817b6fd6ef09dfef18be8b82c04be557e` |
| 23 | `theorem` | [shifted_J_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/shifted-j-norm-le--c71f7cf663a85a0c9e5a5706.md) | 374 | `result-track:c71f7cf663a85a0c9e5a5706cf0f4ff7acf9cfb6abd3e9095f8c9fccaeefd9ba` |
| 24 | `def` | [tailConstant](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/tailconstant--f865b2154694ddfb1ee0cf80.md) | 399 | `declaration-track:f865b2154694ddfb1ee0cf80157bc8f97151d01079b653bdc76716b92f9d2e7b` |
| 25 | `theorem` | [tailConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/tailconstant-nonneg--40e34a193ccc7715be398013.md) | 403 | `result-track:40e34a193ccc7715be39801304492b7f1801420485566a29bceff53c8d588c58` |
| 26 | `theorem` | [sourceKernel_norm_le](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-norm-le--e8e75ae4b967240f6e3e71ad.md) | 411 | `result-track:e8e75ae4b967240f6e3e71ad4eebd56347c023a80883dc659ba225d9dbe33807` |
| 27 | `theorem` | [compact_unshifted_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/compact-unshifted-bound--db2fcc398f709bf49a12b1c6.md) | 533 | `result-track:db2fcc398f709bf49a12b1c63a6b390c4a25d5ffa7e0ef7db08d7195d03d9160` |
| 28 | `theorem` | [compact_sourceKernel_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/compact-sourcekernel-tail-bound--c5429da5487f5369be70f459.md) | 571 | `result-track:c5429da5487f5369be70f45988a88d4a414abe26d725449c463b261402fe1e28` |
| 29 | `def` | [compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/compactkernelnorm--c4da3c61ee9b590382c35b35.md) | 597 | `declaration-track:c4da3c61ee9b590382c35b3525f00ed91f7073ff6426937cc2bd14559af7d35d` |
| 30 | `theorem` | [sourceKernel_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-continuouson--7d59a1039d1ff15e864aba63.md) | 602 | `result-track:7d59a1039d1ff15e864aba6301b3a1e8ffed3037e6e79df010a4d919802c5bce` |
| 31 | `theorem` | [norm_le_compactKernelNorm](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/norm-le-compactkernelnorm--35ca68e9c6ac4235dfb19b57.md) | 612 | `result-track:35ca68e9c6ac4235dfb19b57180be4dd52c935bb9bb7728b0a4980c9c64b1bc7` |
| 32 | `theorem` | [compactKernelNorm_nonneg](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/compactkernelnorm-nonneg--06e3c69733258ca67d669a33.md) | 623 | `result-track:06e3c69733258ca67d669a337aa653042950c0e18008709c8ca9138901a91a1f` |
| 33 | `theorem` | [eventually_shifted_norm_ge](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/eventually-shifted-norm-ge--e3fde1bc91d1362ce1c242de.md) | 634 | `result-track:e3fde1bc91d1362ce1c242de5a2bc7a3b0237166d70b58a1e56840089f2e0ab3` |
| 34 | `theorem` | [sourceKernel_compact_tail_bound](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-compact-tail-bound--9a7ac9b23e63cdff26a58e38.md) | 641 | `result-track:9a7ac9b23e63cdff26a58e38d191c5b3322f2ea06197a952a58cfe359579f94e` |
| 35 | `theorem` | [sourceKernel_compact_norms_summable](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-compact-norms-summable--da32dabff90fa51d6907423b.md) | 667 | `result-track:da32dabff90fa51d6907423b2fab6689038350bc5741ff683a006640c595775a` |
| 36 | `theorem` | [sourceKernel_hasSumUniformlyOn_compact](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-hassumuniformlyon-compact--a6c83c4d6a3ad8ff9f6d3d71.md) | 685 | `result-track:a6c83c4d6a3ad8ff9f6d3d717d9bdc36219e5f1a3712be4de6cefea34331ceec` |
| 37 | `theorem` | [sourceKernel_hasSumLocallyUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-hassumlocallyuniformlyon--29922c06928dbceea3d0ac7a.md) | 699 | `result-track:29922c06928dbceea3d0ac7a7942cb5d1b5e4dd8d3fbc363676e7dab2a680035` |
| 38 | `theorem` | [sourceKernel_tsum_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-tsum-analytic--d611ce6fd29e711ed26f6bfb.md) | 713 | `result-track:d611ce6fd29e711ed26f6bfb3e478ff4f8851f9b33e7d8b093ae3a2c58390c53` |
| 39 | `def` | [continuedTransform](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/continuedtransform--55bef37b32fd26ba6a9a0204.md) | 732 | `declaration-track:55bef37b32fd26ba6a9a0204c602b889f0f583740d99b7f76abf9338ba218bda` |
| 40 | `theorem` | [continuedTransform_analytic](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/continuedtransform-analytic--d6c4a8c7baf0a37004744ee5.md) | 736 | `result-track:d6c4a8c7baf0a37004744ee527dbaaadc0c1f44f0fa0d2f0ae69892953d9e33e` |
| 41 | `theorem` | [sourceKernel_eq_equation20_tsum](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/sourcekernel-eq-equation20-tsum--63d23771bc27a0a0d5f9ebf5.md) | 740 | `result-track:63d23771bc27a0a0d5f9ebf512f7a92f5df7861b51bdf8d2ab9380080534d705` |
| 42 | `theorem` | [initial_agreement](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/initial-agreement--ef3e5e30493029a20257919a.md) | 752 | `result-track:ef3e5e30493029a20257919ae2fe7d79ede3950227e5d1b10f1686931ad06a4d` |
| 43 | `def` | [CandidateFreeContinuationCheckpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/candidatefreecontinuationcheckpoint--cdfa2652e0a1ed7ccb3b5f8f.md) | 763 | `declaration-track:cdfa2652e0a1ed7ccb3b5f8f19a3810416be87d58ee30b5e1bdf84dddb05c2d4` |
| 44 | `theorem` | [candidate_free_continuation_checkpoint](../../../../../mathematics/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/declarations/candidate-free-continuation-checkpoint--4390201e5acf2df815e8164b.md) | 778 | `result-track:4390201e5acf2df815e8164ba6cc7198e5a5517d568ed615ed67bf2ccffe5397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
