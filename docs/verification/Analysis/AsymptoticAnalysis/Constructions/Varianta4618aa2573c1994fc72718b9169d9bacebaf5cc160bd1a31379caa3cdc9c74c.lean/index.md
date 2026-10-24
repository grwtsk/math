# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Constructions.Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8caa29a9b24558bb89283d1d32e5c30d146cb1cd",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8caa29a9b24558bb89283d1d32e5c30d146cb1cd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasProd_pi_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-pi-single--940937203718e26ce231c3b6.md) | 42 | `result-track:940937203718e26ce231c3b64734f32c5ad56cb3258beb3b9973612a8e8d56c3` |
| 2 | `theorem` | [tprod_pi_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tprod-pi-single--46be68e1698166b4701bcdd7.md) | 47 | `result-track:46be68e1698166b4701bcdd79591c05bab7b8294122af6f18e722190b2228c81` |
| 3 | `lemma` | [tprod_setProd_singleton_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tprod-setprod-singleton-left--680f2869ca6c17ced04f6837.md) | 53 | `result-track:680f2869ca6c17ced04f6837d0e12f5513656e76e0b274a07b8e0c33fc6c3128` |
| 4 | `lemma` | [tprod_setProd_singleton_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tprod-setprod-singleton-right--de1d5a9547eac7b325256ecd.md) | 58 | `result-track:de1d5a9547eac7b325256ecdf7ba0cf12e5bbf122e35eeff953291009a10e3b2` |
| 5 | `theorem` | [Multipliable.prod_symm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-prod-symm--d7caf9eed39523ffadd1ca54.md) | 63 | `result-track:d7caf9eed39523ffadd1ca541628569a293927230f48bec49c9901e2cb4e3beb` |
| 6 | `theorem` | [HasProd.prodMk](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-prodmk--5eee0ce44d11e816eebcc399.md) | 74 | `result-track:5eee0ce44d11e816eebcc3991b471a6ee27f035909ff5c8bc8167f46cfd526f7` |
| 7 | `lemma` | [HasProd.sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-sum--b4c284668fef693c7c6087d1.md) | 93 | `result-track:b4c284668fef693c7c6087d10c42d375b9c0f528658a9a35498f52df8adff014` |
| 8 | `lemma` | [Multipliable.tprod_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-sum--c33017b70c1f0f47e6865d0d.md) | 105 | `result-track:c33017b70c1f0f47e6865d0da29dd785f4c4f3cc0a43a3b91b736733fde2da36` |
| 9 | `lemma` | [Multipliable.sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-sum--faef983b38317d224d84737b.md) | 115 | `result-track:faef983b38317d224d84737bad156d16c109f95164ec8e0870b8c0b75861ea26` |
| 10 | `theorem` | [HasProd.sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-sigma--db8eb39fd6c138cfaec2085a.md) | 127 | `result-track:db8eb39fd6c138cfaec2085a541ebdbd64019f7ce48737d99a77eebd890c974c` |
| 11 | `theorem` | [HasProd.prod_fiberwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-prod-fiberwise--d11c10aae9a0b6eb47f9d680.md) | 150 | `result-track:d11c10aae9a0b6eb47f9d68057fe18e3a0b619d05478a6de60cb39f395e5d4c8` |
| 12 | `theorem` | [Multipliable.sigma'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-sigma--c8b89ae43ce02418c99f74be.md) | 155 | `result-track:c8b89ae43ce02418c99f74be9c3997ee4689f3dfb4c56ffd7d655a2ab487c6e1` |
| 13 | `theorem` | [HasProd.sigma_of_hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-sigma-of-hasprod--7c3dae086d095cdae2363a98.md) | 166 | `result-track:7c3dae086d095cdae2363a98a49d65baa0bdac4ab9d278be54dea5aa36e75166` |
| 14 | `theorem` | [Multipliable.tprod_sigma'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-sigma--44ab7e8af3d86e1eead7bc04.md) | 171 | `result-track:44ab7e8af3d86e1eead7bc04b2d6b682a69f3d5a886bcb9fa57460763ba50b2d` |
| 15 | `theorem` | [Multipliable.tprod_prod'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-prod--6ccc29b9ae367fe02d7b391f.md) | 181 | `result-track:6ccc29b9ae367fe02d7b391f2217a8643fff783dc7bd1896e6be71f071496bec` |
| 16 | `theorem` | [Multipliable.tprod_prod_uncurry](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-prod-uncurry--316f73a72f9756fbed03bfc0.md) | 191 | `result-track:316f73a72f9756fbed03bfc08a16088a924080ed6e4815cd26863d562dd144dd` |
| 17 | `theorem` | [Multipliable.tprod_comm'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-comm--7425167ba6e998f8e1671446.md) | 202 | `result-track:7425167ba6e998f8e16714464b77e2127360318769a57a32cf823dfb9e287030` |
| 18 | `theorem` | [HasProd.of_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-of-sigma--b0790578913d258d1fcec42b.md) | 222 | `result-track:b0790578913d258d1fcec42bfb8f1fa2fe336d891977f91dbbd645617baea8f0` |
| 19 | `theorem` | [Multipliable.sigma_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-sigma-factor--15070e7940a23f366a6c7fb7.md) | 251 | `result-track:15070e7940a23f366a6c7fb777ee543cf6649a7740b233924f2f2362c7774fde` |
| 20 | `theorem` | [Multipliable.sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-sigma--e37f25f72905cc624f3b775e.md) | 257 | `result-track:e37f25f72905cc624f3b775ec2fcadc2191165021c54158778dff13bf7796156` |
| 21 | `theorem` | [Multipliable.prod_factor](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-prod-factor--55752dc42d4052b37f71c115.md) | 262 | `result-track:55752dc42d4052b37f71c115d9993b0976a6110f21e247fbc4e28b8ba438f3ee` |
| 22 | `lemma` | [Multipliable.prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-prod--f76280fc542812f88af026e9.md) | 267 | `result-track:f76280fc542812f88af026e9a07d62bde630f6896f1a16e0e72912312e126d95` |
| 23 | `lemma` | [HasProd.tprod_fiberwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hasprod-tprod-fiberwise--ed913f49d92377bd5bdb978d.md) | 272 | `result-track:ed913f49d92377bd5bdb978df097db9c5fbbfec86a8d9474f2c4e7287c048d4c` |
| 24 | `theorem` | [Multipliable.tprod_sigma](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-sigma--836e020850179dda610af4c6.md) | 282 | `result-track:836e020850179dda610af4c699ff18bcf4862c1c73b2570737cdf64610908cf6` |
| 25 | `theorem` | [Multipliable.tprod_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-prod--2682bea91cae02af595db207.md) | 291 | `result-track:2682bea91cae02af595db20741929789933d0e8189ba68fb3f57ee00b884d5fd` |
| 26 | `theorem` | [Multipliable.tprod_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/multipliable-tprod-comm--106120fea489a6cdb6d95bfd.md) | 300 | `result-track:106120fea489a6cdb6d95bfdcf58d88ba70f8b4fe8d105d12520dbea6b123446` |
| 27 | `theorem` | [Pi.hasProd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/pi-hasprod--5445e83627f5c8aeb40f7c57.md) | 317 | `result-track:5445e83627f5c8aeb40f7c57b84ed5d3f9dd1fca5fe3a44d5c0127eff1a4a907` |
| 28 | `theorem` | [Pi.multipliable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/pi-multipliable--0eb5436b59e76675a2edda9d.md) | 322 | `result-track:0eb5436b59e76675a2edda9d7fe2fce1b35a4e6beac2b4d8fbbee189ea473ddc` |
| 29 | `theorem` | [tprod_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tprod-apply--5d66cf43d0e2b35810302ffa.md) | 326 | `result-track:5d66cf43d0e2b35810302ffa94bb1542da7de3d5f72318c075b3590e0baeda5e` |
| 30 | `theorem` | [HasSum.op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hassum-op--b9c2c9ff43660d6e9e006930.md) | 341 | `result-track:b9c2c9ff43660d6e9e006930e9f656b01240ffd7d282f92a17aa9a4237b9172b` |
| 31 | `theorem` | [Summable.op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-op--edeec46dc9aeaf7cb3d06d19.md) | 344 | `result-track:edeec46dc9aeaf7cb3d06d1907ad9b047b87e5131cec9cfa844bb0fe884dab4f` |
| 32 | `theorem` | [HasSum.unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hassum-unop--d322b054abdd0eb9c0e0fa1d.md) | 347 | `result-track:d322b054abdd0eb9c0e0fa1d58a079b4742115219ec12c2085b71092a8c596ef` |
| 33 | `theorem` | [Summable.unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-unop--05249bf7c47eace0a5e7f6be.md) | 351 | `result-track:05249bf7c47eace0a5e7f6be9219b64ab521054aab0472c81baf728b45097108` |
| 34 | `theorem` | [hasSum_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hassum-op--b9b7e8d1b9bd0d5dbb0acbb6.md) | 355 | `result-track:b9b7e8d1b9bd0d5dbb0acbb68e88735fc2787d756a8ffb6fce87199f09f90a0a` |
| 35 | `theorem` | [hasSum_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hassum-unop--9afaa0ad2a41c244d241c933.md) | 359 | `result-track:9afaa0ad2a41c244d241c9338c8c4b7489275fe4946649dd1de0c3c43bc9c11f` |
| 36 | `theorem` | [summable_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-op--7850c656fa75197cf010ffdd.md) | 364 | `result-track:7850c656fa75197cf010ffdd4858cd9b746dc8e37a8c640fafd939e06bb5f6a9` |
| 37 | `theorem` | [summable_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-unop--d5dfbfd71f44b1ab958dcb43.md) | 367 | `result-track:d5dfbfd71f44b1ab958dcb43ce73a69cc4e2f6762ae33f783046900e2ddf60a1` |
| 38 | `theorem` | [tsum_op](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tsum-op--5ff673a1d642ba20c1649a22.md) | 370 | `result-track:5ff673a1d642ba20c1649a225d7a84418e40ac4dfd29953518b88ef3e7435f8d` |
| 39 | `theorem` | [tsum_unop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tsum-unop--6fac5f80f9e6ddcb762b3f8e.md) | 377 | `result-track:6fac5f80f9e6ddcb762b3f8ee331e8b2bb419443e12c4fb2f1af100db53cad0f` |
| 40 | `theorem` | [HasSum.star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/hassum-star--e17c5fd9193ecd2293cc3ca9.md) | 390 | `result-track:e17c5fd9193ecd2293cc3ca93431e7eeb80db7b390b3d2a35ecc0c7bf276e598` |
| 41 | `theorem` | [Summable.star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-star--9040e9ea812ad92e573dcbf0.md) | 393 | `result-track:9040e9ea812ad92e573dcbf0244d4b8c39813274b70c535508b655191a064a8e` |
| 42 | `theorem` | [Summable.ofStar](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-ofstar--33f94af99abb436fcbeb6baf.md) | 396 | `result-track:33f94af99abb436fcbeb6bafd5f46935d5438fb1ef17341b9838f360936093bb` |
| 43 | `theorem` | [summable_star_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-star-iff--9424c09182a0e03a19c69e50.md) | 400 | `result-track:9424c09182a0e03a19c69e50f6f30bd01cfba0d532a0823311f34416f168b92d` |
| 44 | `theorem` | [summable_star_iff'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/summable-star-iff--3fd98305d35d142ab9c11119.md) | 404 | `result-track:3fd98305d35d142ab9c11119d09e4fab08f9834a15e674715a8914447040717b` |
| 45 | `theorem` | [tsum_star](../../../../../mathematics/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/declarations/tsum-star--133110fee5ff25d1df04ba00.md) | 407 | `result-track:133110fee5ff25d1df04ba0001be86930cce62f6784bf59b334c3c8dca5523d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
