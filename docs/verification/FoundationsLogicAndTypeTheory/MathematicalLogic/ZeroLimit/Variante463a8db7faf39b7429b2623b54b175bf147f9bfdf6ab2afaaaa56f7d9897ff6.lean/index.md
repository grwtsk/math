# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZeroLimit.Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57430aabe171d6e98db2df68b986943b13fe667c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57430aabe171d6e98db2df68b986943b13fe667c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/instance--7e6cf2affb93fb1138465c3d.md) | 36 | `declaration-track:7e6cf2affb93fb1138465c3daa79b9e88526028d0378470c60b83198796ea32b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/instance--714ebbd503b8e46387611b2a.md) | 39 | `declaration-track:714ebbd503b8e46387611b2a680cb39b8894fedff632244fea17bbb327316e19` |
| 3 | `theorem` | [GoodProducts.linearIndependentEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/goodproducts-linearindependentempty--9f0f348dcc7903b33c63ea08.md) | 44 | `result-track:9f0f348dcc7903b33c63ea08ab3a2a234a17a67cf5edeb78b7fe1acdeff2c3b0` |
| 4 | `def` | [Products.nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/products-nil--6ed8e4bfe20c0cf81ed4e8bb.md) | 48 | `declaration-track:6ed8e4bfe20c0cf81ed4e8bbd52c1451b8e3c84b673c50f67ea0e2043c638260` |
| 5 | `theorem` | [Products.lt_nil_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/products-lt-nil-empty--8cd15bf1b9447e7e7e58a91d.md) | 50 | `result-track:8cd15bf1b9447e7e7e58a91d090f84f4da78a93352fe363f1b695eb82ecbe7ad` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/instance--a73f6a30676aa8dfff04a19b.md) | 55 | `declaration-track:a73f6a30676aa8dfff04a19bfe8c2a084efd70afbbcedd5d55b2e91f88c1a995` |
| 7 | `theorem` | [Products.isGood_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/products-isgood-nil--2ed017efc7019e35dcf98c5d.md) | 58 | `result-track:2ed017efc7019e35dcf98c5d885bf71205fc06915588aee624df01502237302f` |
| 8 | `theorem` | [Products.span_nil_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/products-span-nil-eq-top--f695947f16da4dfa06a1d1e5.md) | 63 | `result-track:f695947f16da4dfa06a1d1e5ca5ebbdb39aceb56743326fb9aca454d70d17823` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/instance--b974c65c356dad6d003f4d3f.md) | 76 | `declaration-track:b974c65c356dad6d003f4d3ffd9dad8a1a9f80aa818c7fe9564a883594e8952c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/instance--fe14ec01fb9bf7875f791d77.md) | 91 | `declaration-track:fe14ec01fb9bf7875f791d779dc5d02efddef46c4a537621b4a3037524da1c7f` |
| 11 | `theorem` | [GoodProducts.linearIndependentSingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/goodproducts-linearindependentsingleton--69fe44b00b3ff7cdace424d8.md) | 101 | `result-track:69fe44b00b3ff7cdace424d8fafb8f21c5d4442d7869cbf18d77ecf4011e0f10` |
| 12 | `def` | [smaller](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/smaller--0c832f2d00bc146e1ec2660b.md) | 146 | `declaration-track:0c832f2d00bc146e1ec2660bd4fb6b1a47125d3310b5ead39882b452ce8b054c` |
| 13 | `def` | [range_equiv_smaller_toFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/range-equiv-smaller-tofun--9bf900334329e5610124604f.md) | 154 | `declaration-track:9bf900334329e5610124604f2f170871d36d799390751c062ca3f913f560e28d` |
| 14 | `theorem` | [range_equiv_smaller_toFun_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/range-equiv-smaller-tofun-bijective--c1e3ea472ce591e8c1277e31.md) | 157 | `result-track:c1e3ea472ce591e8c1277e311f535c246c519b184b83c89d69a0e76f4a5af472` |
| 15 | `def` | [range_equiv_smaller](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/range-equiv-smaller--7ba81052c43701bd67d1ddd6.md) | 172 | `declaration-track:7ba81052c43701bd67d1ddd6d2639f1762e14e4216e0c9f1c637441142ceadbf` |
| 16 | `theorem` | [smaller_factorization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/smaller-factorization--7ed55b5e62057f7027f1c0b4.md) | 175 | `result-track:7ed55b5e62057f7027f1c0b49a5507a1e06aa523d13558ba9847c3512c28a3d8` |
| 17 | `theorem` | [linearIndependent_iff_smaller](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/linearindependent-iff-smaller--831c981172c96e025b7a19d2.md) | 179 | `result-track:831c981172c96e025b7a19d2cd5f2e5da6fe2cec2556c15c62f1008669cedbb0` |
| 18 | `theorem` | [smaller_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/smaller-mono--d6633182fb0f110e16bc5afc.md) | 187 | `result-track:d6633182fb0f110e16bc5afc842b57f4606611ca7927d8ffc478bc35d3a6cbee` |
| 19 | `theorem` | [Products.limitOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/products-limitordinal--f4b29f80ccd3a60b194fabff.md) | 205 | `result-track:f4b29f80ccd3a60b194fabff0d75f47b48e035f2d056925eee6f57d00bd32b8d` |
| 20 | `theorem` | [GoodProducts.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/goodproducts-union--b44b8159fa51a5a839ee0b8f.md) | 223 | `result-track:b44b8159fa51a5a839ee0b8f24a2a1de74c7a7c3365595ed0806c6a08fbf1b6f` |
| 21 | `def` | [GoodProducts.range_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/goodproducts-range-equiv--99bd6d1f1136c7394d2b414a.md) | 241 | `declaration-track:99bd6d1f1136c7394d2b414a2461f5cc4bd6b0791b7c2f9246be008ecace8279` |
| 22 | `theorem` | [GoodProducts.range_equiv_factorization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/goodproducts-range-equiv-factorization--475bd1c18d2bea950acbdd06.md) | 244 | `result-track:475bd1c18d2bea950acbdd064f5f3e8de95b754f4723286557e883f3d34bc19a` |
| 23 | `theorem` | [GoodProducts.linearIndependent_iff_union_smaller](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/declarations/goodproducts-linearindependent-iff-union-smaller--1379865d4cf3ee5492fdc13a.md) | 248 | `result-track:1379865d4cf3ee5492fdc13ab6382fb4aad453e44c0853d8e29f8c82b167274e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
