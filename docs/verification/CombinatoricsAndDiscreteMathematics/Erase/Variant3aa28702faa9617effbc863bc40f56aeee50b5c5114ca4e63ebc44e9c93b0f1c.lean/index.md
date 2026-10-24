# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b744a657d03d0365cfb3751ed186bffddd849c60",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b744a657d03d0365cfb3751ed186bffddd849c60`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Filter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase--74a94191368f6f4e529cb885.md) | 53 | `declaration-track:74a94191368f6f4e529cb8853c0f85c34b8cabe9e57aa912ec8e0c2ca14334c3` |
| 2 | `theorem` | [erase_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-val--c51d0007676b308238ac6e7e.md) | 57 | `result-track:c51d0007676b308238ac6e7e7792b99a8d6eabe9cf71fd9a38727084820e5ae2` |
| 3 | `theorem` | [mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/mem-erase--596e529dffe53f2c5af0c1ca.md) | 61 | `result-track:596e529dffe53f2c5af0c1ca6b0b32c24c6a741aea89c37d65c53c6487fe4595` |
| 4 | `theorem` | [notMem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/notmem-erase--a5ec81495b09538945138849.md) | 64 | `result-track:a5ec81495b09538945138849bbc8d7d0244e172b45f522db4ae740d6d654a366` |
| 5 | `theorem` | [ne_of_mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/ne-of-mem-erase--b381234b074b69e60865ed52.md) | 69 | `result-track:b381234b074b69e60865ed527fabffe4c156f800e32f4e537f4cd5203f5cc981` |
| 6 | `theorem` | [mem_of_mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/mem-of-mem-erase--bc0a26a438229e8c7bf13c88.md) | 71 | `result-track:bc0a26a438229e8c7bf13c884112e8d57f2ca887e5b9ba8f2ed905441f3140d5` |
| 7 | `theorem` | [mem_erase_of_ne_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/mem-erase-of-ne-of-mem--9e80d2e73aed6501e37ae640.md) | 74 | `result-track:9e80d2e73aed6501e37ae6402717e9dfe485742071933f8dc1aab6fe691e29c6` |
| 8 | `theorem` | [eq_of_mem_of_notMem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/eq-of-mem-of-notmem-erase--9d42d75343e4b41a8d5ee8fd.md) | 78 | `result-track:9d42d75343e4b41a8d5ee8fd2b26cf2902aad8e2f0086601fa9a9eda0a1b6314` |
| 9 | `theorem` | [erase_eq_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-eq-of-notmem--62666ad7815063440ab3dd2d.md) | 85 | `result-track:62666ad7815063440ab3dd2d02a7e252988b1cee970c9e78a1e1f332b3fb9926` |
| 10 | `theorem` | [erase_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-eq-self--0fb707c25043e7fcaf215792.md) | 91 | `result-track:0fb707c25043e7fcaf215792fe9f4b7be266e370854c45652e0dfdb4f2d40fc8` |
| 11 | `theorem` | [erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-ne-self--12b8eceac100daf67c3c0b0b.md) | 94 | `result-track:12b8eceac100daf67c3c0b0b56321c99130ceff4e7133a3cf8ac6ab0df152a0a` |
| 12 | `theorem` | [erase_subset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-subset-erase--c2a728abdd59a65df3a940c1.md) | 97 | `result-track:c2a728abdd59a65df3a940c1f0c033db04aff8fbeee30242c7330ea5c91b223b` |
| 13 | `theorem` | [erase_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-subset--942e0a2e8e05cddde4aa14a0.md) | 100 | `result-track:942e0a2e8e05cddde4aa14a0466c14d3c3435953b8ec9e85a79515e570e46f32` |
| 14 | `theorem` | [subset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/subset-erase--b303b6a3838de06037ed65d7.md) | 103 | `result-track:b303b6a3838de06037ed65d778aca9c8674649e969cc4b05b8944484b3a4532a` |
| 15 | `theorem` | [coe_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/coe-erase--a21c24db274230fa8e5efd0a.md) | 108 | `result-track:a21c24db274230fa8e5efd0a7a92d6eec2586c6dcdf6a36816526be0edf9b5f0` |
| 16 | `theorem` | [erase_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-idem--4516828fadc88e054a9b0c8a.md) | 111 | `result-track:4516828fadc88e054a9b0c8a3362e5d87570ae582988bbbf527ef662b188b9ac` |
| 17 | `theorem` | [erase_right_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-right-comm--c15f7ea8c1fbadad38914123.md) | 113 | `result-track:c15f7ea8c1fbadad3891412354fbc2103b316d56cfd48e58f8bfb686613f7311` |
| 18 | `theorem` | [erase_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-inj--94eaa65baf6dd1ba95d31b8f.md) | 118 | `result-track:94eaa65baf6dd1ba95d31b8f4908021d9305c2aa11370ccf2194f114fab15f8f` |
| 19 | `theorem` | [erase_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variant3aa28702faa9617effbc863bc40f56aeee50b5c5114ca4e63ebc44e9c93b0f1c.lean/declarations/erase-injon--1feca4233f6a043dd3c37db0.md) | 123 | `result-track:1feca4233f6a043dd3c37db023cfb92d4c68bb9e560f616bce9a693782b3a5e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
