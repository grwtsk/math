# Verification target: GRWTSK.Algebra.LinearAlgebra.Reduced.Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4913c743b0f911d113e76ed0fccbf0b833d01185",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4913c743b0f911d113e76ed0fccbf0b833d01185`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsReduced](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/isreduced--4e900431a4c4f327569b6364.md) | 50 | `declaration-track:4e900431a4c4f327569b6364c2829d6830015eada167f7048acbc52d0eded600` |
| 2 | `lemma` | [isReduced_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/isreduced-iff--e46faf7a3038d7f47ea0161b.md) | 54 | `result-track:e46faf7a3038d7f47ea0161b15371caf28ccde954e6c935d53599734c2fd1d9c` |
| 3 | `lemma` | [IsReduced.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/isreduced-linearindependent--42ff830200a583884d0f0dc9.md) | 64 | `result-track:42ff830200a583884d0f0dc9aa2a0ea7e56a48571a7fb0118de3f05d14b5b726` |
| 4 | `lemma` | [IsReduced.linearIndependent_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/isreduced-linearindependent-iff--c10cf5f7f19f99077c2e2bb9.md) | 69 | `result-track:c10cf5f7f19f99077c2e2bb92183ab1e8e34cb369ec04f0998f3a701894bbe40` |
| 5 | `lemma` | [two_smul_notMem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/two-smul-notmem-range-root--e9112b9f4c0ffc5a4eddb07a.md) | 79 | `result-track:e9112b9f4c0ffc5a4eddb07a38f3a2da01955997d83613871ce9408b4f78560f` |
| 6 | `lemma` | [linearIndependent_of_add_mem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/linearindependent-of-add-mem-range-root--728cd7e0644c727a3c62e63f.md) | 96 | `result-track:728cd7e0644c727a3c62e63f8a2c38e6f0df5ecf15abdacb820a075dc427d6f8` |
| 7 | `lemma` | [linearIndependent_of_sub_mem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/linearindependent-of-sub-mem-range-root--5b4319a2f8ab1dbfd8becda7.md) | 105 | `result-track:5b4319a2f8ab1dbfd8becda75d479b7a7fa188add9cf3c3e6e9cfbc6c24dea29` |
| 8 | `lemma` | [linearIndependent_of_add_mem_range_root'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/linearindependent-of-add-mem-range-root--cf076d378a226ad7fa3e1748.md) | 113 | `result-track:cf076d378a226ad7fa3e1748850b6c9d924e68032a9f30535d12f61067416fd2` |
| 9 | `lemma` | [linearIndependent_of_sub_mem_range_root'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/linearindependent-of-sub-mem-range-root--7cb9cd80fc029b37faaf0b19.md) | 120 | `result-track:7cb9cd80fc029b37faaf0b19589dd3542206e7e2774bd4a34c918c0bf063dce3` |
| 10 | `lemma` | [infinite_of_linearIndependent_coxeterWeight_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/infinite-of-linearindependent-coxeterweight-four--56cdb0d777ee1ac49bab295c.md) | 127 | `result-track:56cdb0d777ee1ac49bab295c878cef48d3dca5c71c31cfa508971bb1d7b27170` |
| 11 | `lemma` | [pairing_smul_root_eq_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-smul-root-eq-of-not-linearindependent--bf586ad5d8034c2cd6577567.md) | 146 | `result-track:bf586ad5d8034c2cd65775679cb66a04311a1bab0ee5c3a1d77277faaff0fcda` |
| 12 | `lemma` | [coxeterWeight_ne_four_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/coxeterweight-ne-four-of-linearindependent--d889bdab68c52b06240fe141.md) | 170 | `result-track:d889bdab68c52b06240fe14151a31da45b4e5531903bdf4d123235b6794badff` |
| 13 | `lemma` | [linearIndependent_iff_coxeterWeight_ne_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/linearindependent-iff-coxeterweight-ne-four--eb34b018b4de7e7667d048c0.md) | 180 | `result-track:eb34b018b4de7e7667d048c09f5ae5aba12d863a71f378f3c76e062b4558fd35` |
| 14 | `lemma` | [coxeterWeight_eq_four_iff_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/coxeterweight-eq-four-iff-not-linearindependent--20546bbf0da9acdd19f1d911.md) | 196 | `result-track:20546bbf0da9acdd19f1d9115d9dea5089bf556c3e0a4fff48b171b885116a6f` |
| 15 | `lemma` | [pairing_two_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-two-two-iff--20ab86669882a6509457a1e9.md) | 204 | `result-track:20ab86669882a6509457a1e9502acc4a64e70c9c0643d62a3395ae830e328471` |
| 16 | `lemma` | [pairing_neg_two_neg_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-neg-two-neg-two-iff--6ed98860f3799c730b76c916.md) | 214 | `result-track:6ed98860f3799c730b76c916f95c35ca2793311105c0d4a9895380838ce94d6e` |
| 17 | `lemma` | [pairing_one_four_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-one-four-iff--5d81184b683f30fbdcea4e89.md) | 222 | `result-track:5d81184b683f30fbdcea4e899fe8e0f88d4af2ff8de5049252bdb8376447f17c` |
| 18 | `lemma` | [pairing_neg_one_neg_four_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-neg-one-neg-four-iff--aacfb810cc616c2e776e130e.md) | 239 | `result-track:aacfb810cc616c2e776e130e4b66c5e7a09c99f13a6e11163e19b5ac82b112d1` |
| 19 | `lemma` | [pairing_one_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-one-four-iff--f0ad0962fe934dee97abbc3f.md) | 245 | `result-track:f0ad0962fe934dee97abbc3f7cd88a8b9e39004c4f2f2b3022cebce461e9e3a2` |
| 20 | `lemma` | [pairing_neg_one_neg_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairing-neg-one-neg-four-iff--612fb1de17a952b2716eef46.md) | 251 | `result-track:612fb1de17a952b2716eef4603871987d055c24a223a32d9502143f106b0cc5c` |
| 21 | `lemma` | [linearIndependent_iff_coxeterWeightIn_ne_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/linearindependent-iff-coxeterweightin-ne-four--48750ba393cb39e9890f2e6c.md) | 263 | `result-track:48750ba393cb39e9890f2e6cb9f8493c7a41ea9eb300fe7c1372c160937e7ac2` |
| 22 | `lemma` | [coxeterWeightIn_eq_four_iff_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/coxeterweightin-eq-four-iff-not-linearindependent--0cec6992a8e219848b780465.md) | 268 | `result-track:0cec6992a8e219848b7804651958a5e27eda0b8e9eb4f2b44768e1fc0d7b8226` |
| 23 | `lemma` | [coxeterWeightIn_ne_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/coxeterweightin-ne-four--a11a70accba3fb82f8660cd5.md) | 272 | `result-track:a11a70accba3fb82f8660cd57798325ccb71e96349f3042fdc530f445fa52724` |
| 24 | `lemma` | [pairingIn_two_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairingin-two-two-iff--dc44975fa498dac585f29bd1.md) | 280 | `result-track:dc44975fa498dac585f29bd181d59960b38ec1c3d99929935dbfd7f6d3db3469` |
| 25 | `lemma` | [pairingIn_neg_two_neg_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairingin-neg-two-neg-two-iff--f216e20424cb3ee6fb1f3d2d.md) | 286 | `result-track:f216e20424cb3ee6fb1f3d2d7e7928c2587c86e6b1f067e68f3cd30e4038266c` |
| 26 | `lemma` | [pairingIn_one_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairingin-one-four-iff--c8d48313de883768d5485387.md) | 293 | `result-track:c8d48313de883768d5485387995d1722b39f15865e17021a3729bc88146b668e` |
| 27 | `lemma` | [pairingIn_neg_one_neg_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variantf522817050202b6b1c73fb5bd31ceec5339c7a6eefb5ad3f44aa1f7694cd55ef.lean/declarations/pairingin-neg-one-neg-four-iff--4c89486c55f1cceb277e9a05.md) | 299 | `result-track:4c89486c55f1cceb277e9a0561df28a90ea44b936c1fe5d037f61a8b3010289b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
