# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17f7b2842b95d1e54056498b85ffe6d89217e7d6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17f7b2842b95d1e54056498b85ffe6d89217e7d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--e9811464acaefc5bf2ee061d.md) | 31 | `declaration-track:e9811464acaefc5bf2ee061d3543ba81c76f58a73ce3cb4784a3099effbd6f6f` |
| 2 | `theorem` | [countable_iff_nonempty_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/countable-iff-nonempty-embedding--9ca7a1a75281db9553058d4d.md) | 42 | `result-track:9ca7a1a75281db9553058d4d0ff60fd6e24645b353add8d1522127357ba18f73` |
| 3 | `theorem` | [uncountable_iff_isEmpty_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/uncountable-iff-isempty-embedding--f67ed9078765a7bdad893119.md) | 45 | `result-track:f67ed9078765a7bdad8931197bc8eff3d137ed74e96458b696e9e7bc4ba3b318` |
| 4 | `theorem` | [nonempty_embedding_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/nonempty-embedding-nat--775c396afa478153a61d160f.md) | 48 | `result-track:775c396afa478153a61d160f1ebb3595e559e6ccd4cf4d576ed2c57376657bd2` |
| 5 | `theorem` | [Function.Embedding.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/function-embedding-countable--6fe6fa0c8095b855bc6cb541.md) | 51 | `result-track:6fe6fa0c8095b855bc6cb541d93991e824cee25503c38447dd223637d5b3a751` |
| 6 | `lemma` | [Function.Embedding.uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/function-embedding-uncountable--0c62aef994f20179b2cdfad5.md) | 54 | `result-track:0c62aef994f20179b2cdfad5b692d0a86f852d1fb30e8a30fdc39c75747cf4e7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--202468604ea2f46d83f9f39a.md) | 67 | `declaration-track:202468604ea2f46d83f9f39a8172a94c03b65f5470499c35b20545ea330c300a` |
| 8 | `instance` | [Sum.uncountable_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/sum-uncountable-inl--0d96684a70431f6c38bcce36.md) | 72 | `declaration-track:0d96684a70431f6c38bcce360faa48f210d14105f543aeb606ffd39405abb274` |
| 9 | `instance` | [Sum.uncountable_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/sum-uncountable-inr--6fc19790d62a6fdbd5bc1e08.md) | 75 | `declaration-track:6fc19790d62a6fdbd5bc1e08d54a9e5ac138bd0671c84fe157c16366bde4d119` |
| 10 | `instance` | [Option.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/option-instcountable--7204a6185ce4c7ec5f306fae.md) | 78 | `declaration-track:7204a6185ce4c7ec5f306fae1005f74fce9635a5aaf1a24fe297b46fc1c57c69` |
| 11 | `instance` | [WithTop.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/withtop-instcountable--827ce03bc76f7d818038dd8d.md) | 81 | `declaration-track:827ce03bc76f7d818038dd8db7c15a4daba2ac1779f6e430d5fb324d39cf6791` |
| 12 | `instance` | [WithBot.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/withbot-instcountable--ec78cd64089500d744777553.md) | 82 | `declaration-track:ec78cd64089500d744777553bb050766acc13e59111a87cdc29c9dd6b07a73ec` |
| 13 | `instance` | [ENat.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/enat-instcountable--9040bbf4f394028e71b49a72.md) | 83 | `declaration-track:9040bbf4f394028e71b49a722597efac9db85cc46afbb7b696b2286fd55d898d` |
| 14 | `instance` | [Option.instUncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/option-instuncountable--ea374dcf10ae07d9ce67f71c.md) | 85 | `declaration-track:ea374dcf10ae07d9ce67f71c408684486c1249fff7da617dbc6fdbd5516a29d1` |
| 15 | `instance` | [WithTop.instUncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/withtop-instuncountable--a707d23c3b7066cd44b4b3bf.md) | 88 | `declaration-track:a707d23c3b7066cd44b4b3bfa4ea43c7f3deb16ddbbcabbbdca76b0f10c32054` |
| 16 | `instance` | [WithBot.instUncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/withbot-instuncountable--34bd8247bb0c25ea7674b0db.md) | 89 | `declaration-track:34bd8247bb0c25ea7674b0db3ecffd8b522c8858abbda054c34e0926a43dceaf` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--fcaf47553140fe6e84942148.md) | 91 | `declaration-track:fcaf47553140fe6e84942148f75076677a454580753dd081d3eb045186cf6ffa` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--fd1689dfaae89d16c62d1d68.md) | 96 | `declaration-track:fd1689dfaae89d16c62d1d685ace88c37f8672ce160d836fb7d276cf7f425622` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--301ba086547ac079c258b85b.md) | 100 | `declaration-track:301ba086547ac079c258b85b8436ce34503f48af5d6cc6d368f26a1d4ba27bb9` |
| 20 | `lemma` | [countable_left_of_prod_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/countable-left-of-prod-of-nonempty--f7c342e2853dfa5cd6a0507a.md) | 104 | `result-track:f7c342e2853dfa5cd6a0507a09d58edf5b8b847d7b2ceefc6cb818f2178b2e12` |
| 21 | `lemma` | [countable_right_of_prod_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/countable-right-of-prod-of-nonempty--7d39f3758bc71f81bc42a633.md) | 109 | `result-track:7d39f3758bc71f81bc42a63324cb88e4026ca6077fd6ed262bd0931119b2e7a2` |
| 22 | `lemma` | [countable_prod_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/countable-prod-swap--73ab7681e333ff43c61eb6bf.md) | 114 | `result-track:73ab7681e333ff43c61eb6bff23a56ce0a21bb0aa3d9f625861a9aef383a2eb9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--7ab4df72fd75e112adef88e3.md) | 117 | `declaration-track:7ab4df72fd75e112adef88e37f8560a415f89c629f43a1d044d70c023211ddf6` |
| 24 | `lemma` | [Sigma.uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/sigma-uncountable--8a97cad57dc77b47a15548a4.md) | 122 | `result-track:8a97cad57dc77b47a15548a4def19848a00ffb59cf50c216032761781f4de246` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--a458786269c2d76fbd5d6105.md) | 125 | `declaration-track:a458786269c2d76fbd5d61059062ff46445382aee6b8a8946bafd5b22edb0d96` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--b23a092a37705ed74cc700b9.md) | 128 | `declaration-track:b23a092a37705ed74cc700b9c41b19d759f39207d88bcb0ccf739c2b0a3c15b6` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--2829da0e1742f5d7a0ac7bad.md) | 141 | `declaration-track:2829da0e1742f5d7a0ac7bad28a5c8cc8dae50c31d0faaae3de7cbee9feb739c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--2215e3594c0dda41f65ea534.md) | 144 | `declaration-track:2215e3594c0dda41f65ea534d4a59ad80ebe9d7375c452f9e905d272766f3991` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--a7e50de76369c1f63afcf754.md) | 147 | `declaration-track:a7e50de76369c1f63afcf754d4e311f9a7c5d29bb8e25aa76469a6e40c3416b5` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc5e2d736dd7d9bb157836fd383c20806d95ca24a90e6fa5406ab6d84cca4dfe0.lean/declarations/instance--55bcf13bef4b573ecfe30cee.md) | 150 | `declaration-track:55bcf13bef4b573ecfe30cee1a3488b9f676fbac01df9f66582f59803c633fa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
