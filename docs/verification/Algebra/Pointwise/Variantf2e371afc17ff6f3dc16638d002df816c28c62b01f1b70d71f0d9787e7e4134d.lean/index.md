# Verification target: GRWTSK.Algebra.Pointwise.Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dfd528f59e3fd22a57df26bf05286df6111e267",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dfd528f59e3fd22a57df26bf05286df6111e267`.

Source path: `GRWTSK/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star--2a843d63c4a83a5a69d60d18.md) | 43 | `declaration-track:2a843d63c4a83a5a69d60d187e01f6de818b9b19d35d40131f497c5a18d7e5f6` |
| 2 | `theorem` | [star_empty](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-empty--32061b90bb3fb47e3b58b149.md) | 48 | `result-track:32061b90bb3fb47e3b58b149c1f2341153ced21b86aa9ef782c30b9d43de19af` |
| 3 | `theorem` | [star_univ](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-univ--8de3f3b61949e8d34249a700.md) | 51 | `result-track:8de3f3b61949e8d34249a7008697ee2d20ed4cf93c23fec6d69b6ce559e93f0e` |
| 4 | `theorem` | [nonempty_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/nonempty-star--fc40363b10b250c5e925f5b5.md) | 54 | `result-track:fc40363b10b250c5e925f5b5bda130281fbb01f94467bb07abdd1517b6461a63` |
| 5 | `theorem` | [Nonempty.star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/nonempty-star--36a00d6ce7c24ae439ecf4c2.md) | 57 | `result-track:36a00d6ce7c24ae439ecf4c2f4f988b95297bd61eea389f00e3a20363e7e7075` |
| 6 | `theorem` | [mem_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/mem-star--731462be5c56b898ae6d2763.md) | 61 | `result-track:731462be5c56b898ae6d2763ea6b8408c5c6202d8fcefbd824399bdb19485f76` |
| 7 | `theorem` | [star_mem_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-mem-star--bca2ca9cc3c6a1ec6012f65f.md) | 63 | `result-track:bca2ca9cc3c6a1ec6012f65f492b5b653a82c2547857997b90003f8cd3fc8f2d` |
| 8 | `theorem` | [star_preimage](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-preimage--3eeab10393d097ed691af7d2.md) | 66 | `result-track:3eeab10393d097ed691af7d23ed87a75e85253cab65c235bfafa45b8dc5cdfc4` |
| 9 | `theorem` | [image_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/image-star--512add28764e26dcc102cd66.md) | 69 | `result-track:512add28764e26dcc102cd662269e76eb21347ffb75414f7c291c22312273ff4` |
| 10 | `theorem` | [inter_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/inter-star--f1ad886057159a20102c541c.md) | 74 | `result-track:f1ad886057159a20102c541cdcedadf617b24070de5f17b1f7b2eb2f018d4b08` |
| 11 | `theorem` | [union_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/union-star--5bc2c6de79570b4930850ee8.md) | 77 | `result-track:5bc2c6de79570b4930850ee8dd170e6408efb174d3f76871274c141d0b256a05` |
| 12 | `theorem` | [iInter_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/iinter-star--0f6a949cc10ee43a2876ba6a.md) | 80 | `result-track:0f6a949cc10ee43a2876ba6ae15096c2f28f6a2b6a09b0907feba0dd567ff804` |
| 13 | `theorem` | [iUnion_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/iunion-star--737d12362833a92105b4cbdb.md) | 84 | `result-track:737d12362833a92105b4cbdb803172c13ebbc577bd342ea3c70fdb0f6f577f24` |
| 14 | `theorem` | [compl_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/compl-star--a5ef83d79807860133bfc8c9.md) | 88 | `result-track:a5ef83d79807860133bfc8c90ccce6acf68b6953444b14df520bf86657cc2aed` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/instance--daac10b349380eabb45735e5.md) | 91 | `declaration-track:daac10b349380eabb45735e5d8d63f46cdc49aab166b6ee58b3ec5c3216fc1f4` |
| 16 | `theorem` | [star_subset_star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-subset-star--30271496fca6ad247c45c245.md) | 96 | `result-track:30271496fca6ad247c45c24551f8c522600eb6c13d19e6881b76d967e77cc58c` |
| 17 | `theorem` | [star_subset](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-subset--0d9c471f448dc479facfbe4b.md) | 99 | `result-track:0d9c471f448dc479facfbe4b4f5694fe15bd1b0ddb86f9f0351722d7df05b346` |
| 18 | `theorem` | [Finite.star](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/finite-star--c84f1ca5dfedaedc2312d836.md) | 102 | `result-track:c84f1ca5dfedaedc2312d8367428d17a1869a776b221698c736cf37e0395af33` |
| 19 | `theorem` | [star_singleton](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-singleton--abc0aa85e437bd6a286f348d.md) | 105 | `result-track:abc0aa85e437bd6a286f348d35427db8c3867f8c77a9ec23ecb279e1713b6d1a` |
| 20 | `theorem` | [star_mul](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-mul--cff1bb42742a233eee66c799.md) | 109 | `result-track:cff1bb42742a233eee66c799e8c93102e3f3427cf48258d783712d882b91227d` |
| 21 | `theorem` | [star_add](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-add--93e78fa9038bfd5cb4eb0c1c.md) | 113 | `result-track:93e78fa9038bfd5cb4eb0c1c0f38ad69a8ba2af9052e1edecea730a0f8a7cc2f` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/instance--a76fba92eea1ad745bd8d763.md) | 118 | `declaration-track:a76fba92eea1ad745bd8d763125d3e19fad9312e833b92976e2844c286967b39` |
| 23 | `theorem` | [star_inv](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-inv--a6cf445229526bb0d8f7be15.md) | 124 | `result-track:a6cf445229526bb0d8f7be15819cc58d37a4efc7a5eea172c59f4936829e2e79` |
| 24 | `theorem` | [star_inv'](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/star-inv--2f50b92cabe176baeb0da6fc.md) | 128 | `result-track:2f50b92cabe176baeb0da6fc97120ffc68f6f0e62844701ed12719f071d0bd0b` |
| 25 | `lemma` | [StarMemClass.star_coe_eq](../../../../mathematics/Algebra/Pointwise/Variantf2e371afc17ff6f3dc16638d002df816c28c62b01f1b70d71f0d9787e7e4134d.lean/declarations/starmemclass-star-coe-eq--549d08e947d4cee196a66310.md) | 135 | `result-track:549d08e947d4cee196a66310f49c26fb73447fd796aad5e6b27f06aac3f06f3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
