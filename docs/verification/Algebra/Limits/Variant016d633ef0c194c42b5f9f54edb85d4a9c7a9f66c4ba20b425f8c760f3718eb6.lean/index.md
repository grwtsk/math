# Verification target: GRWTSK.Algebra.Limits.Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13db172ab3dcb34239288a9a37d1afa260d037af",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13db172ab3dcb34239288a9a37d1afa260d037af`.

Source path: `GRWTSK/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Under.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Over` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Flat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Equalizer` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFan](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/pifan--2a0c1f4c4d84422733981e68.md) | 48 | `declaration-track:2a0c1f4c4d84422733981e68e7aa4f0cd8f3b1e8c9f2a3302c369837a7208065` |
| 2 | `def` | [piFanIsLimit](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/pifanislimit--7394edeac4ad450536c5d9db.md) | 53 | `declaration-track:7394edeac4ad450536c5d9db67c847356b810ea97574c590f0ebe45f80123e77` |
| 3 | `def` | [tensorProductFan](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorproductfan--7ca89ff8245a8bc338974332.md) | 60 | `declaration-track:7ca89ff8245a8bc338974332492b48c001370fee1930bc9cb8b4bc3db8936ba4` |
| 4 | `def` | [tensorProductFan'](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorproductfan--9e225a23c8ef3b4a05ca9499.md) | 67 | `declaration-track:9e225a23c8ef3b4a05ca949911e6eb3823ba8d5c17e8292fdfe3bc9fe920785e` |
| 5 | `def` | [tensorProductFanIso](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorproductfaniso--a4e0535068a7bb2a1ca48eb8.md) | 72 | `declaration-track:a4e0535068a7bb2a1ca48eb8d2f8ee607b78260d4b9c2afdaa8b05db9ba65fdf` |
| 6 | `def` | [tensorProductFanIsLimit](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorproductfanislimit--fb229471258eceef21e83c43.md) | 88 | `declaration-track:fb229471258eceef21e83c43e9c6bf8aae695acc0ddbdffe1a3556df49dbcd7a` |
| 7 | `def` | [piFanTensorProductIsLimit](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/pifantensorproductislimit--a97394112ae3ba3cd546968f.md) | 94 | `declaration-track:a97394112ae3ba3cd546968f7b61bc1efc607b15b2cd23bcb402c35ee2792917` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/instance--54419f7a729190e62568e746.md) | 97 | `declaration-track:54419f7a729190e62568e746e2a41282ba358dd16904462413d41cf717596d2d` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/instance--42aab575c849a4784b2fbf27.md) | 103 | `declaration-track:42aab575c849a4784b2fbf27b2fa9fe9d2ba503c4b00ef14da37fd70a39e47c0` |
| 10 | `lemma` | [equalizer_comp](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizer-comp--c5078e31703bdab7c34f63cc.md) | 114 | `result-track:c5078e31703bdab7c34f63cc87323131cae5256db606b378b8f97208bb7bc3ab` |
| 11 | `def` | [equalizerFork](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerfork--160cf74f8913fe99ce8de671.md) | 121 | `declaration-track:160cf74f8913fe99ce8de671e85de63cb8976d63c0ea57deec8d23c416561759` |
| 12 | `lemma` | [equalizerFork_ι](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerfork--96b311f6dd855a6afe23988e.md) | 127 | `result-track:96b311f6dd855a6afe23988ef02e5848696296006733ef5f7580e8c668b759f4` |
| 13 | `def` | [equalizerFork'](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerfork--8b31db7787e73c7b3e968518.md) | 132 | `declaration-track:8b31db7787e73c7b3e968518e8934e07bd1c6b8f89921a0177424ff065462b43` |
| 14 | `lemma` | [equalizerFork'_ι](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerfork--020e3a319e33bcf80abde1d9.md) | 138 | `result-track:020e3a319e33bcf80abde1d9deb2a81b97a6475e3c50d81edae2d9abb30e7318` |
| 15 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerforkislimit--b5f9212a5b6884b77fc79125.md) | 144 | `declaration-track:b5f9212a5b6884b77fc79125a241798df1c88c929adfbc506b448a869b6db253` |
| 16 | `def` | [equalizerFork'IsLimit](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerfork-islimit--2221acec274185089d099d55.md) | 151 | `declaration-track:2221acec274185089d099d558e9e120598fb56245d07c10e671f2433ada47313` |
| 17 | `def` | [tensorProdEqualizer](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorprodequalizer--3ba0b8a4d09f73fccc0e99c1.md) | 157 | `declaration-track:3ba0b8a4d09f73fccc0e99c12b0447fda9ca0284a804259be2d5764aed8ed22e` |
| 18 | `lemma` | [tensorProdEqualizer_ι](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorprodequalizer--9a5cbe0969eccc26dbbd4ef9.md) | 164 | `result-track:9a5cbe0969eccc26dbbd4ef9d318d3e405673ecde5ac997ee39d74915ab5a83c` |
| 19 | `def` | [equalizerForkTensorProdIso](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/equalizerforktensorprodiso--6c1b8a70c6e9eb4504f060fd.md) | 171 | `declaration-track:6c1b8a70c6e9eb4504f060fd77ac3165d3e477ac130417c52b33ae4cc92e359e` |
| 20 | `def` | [tensorProdMapEqualizerForkIsLimit](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/tensorprodmapequalizerforkislimit--f5a2551c2e3cb84f2801bfcb.md) | 181 | `declaration-track:f5a2551c2e3cb84f2801bfcb44dff661866d70ff198942f4c5f327ba676a4658` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/instance--496ff9cda979e039dd4594ca.md) | 187 | `declaration-track:496ff9cda979e039dd4594caf77db8a1cd501c03b837789bdb19376397340a02` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/instance--c9573a8f49d1ba6e9498cda6.md) | 195 | `declaration-track:c9573a8f49d1ba6e9498cda6ac81ceb7343fd34275627c1f3739d0bede9d9b71` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/instance--9bbf627aeb5c5111804b0e22.md) | 199 | `declaration-track:9bbf627aeb5c5111804b0e225f2cd515e06deb99987e6d2664ba6bdc8b30dc26` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/instance--5952f60e33a499ac0d835769.md) | 209 | `declaration-track:5952f60e33a499ac0d835769153b3860f5200e9d7c024b2851dc07899467677b` |
| 25 | `lemma` | [preservesFiniteLimits_of_flat](../../../../mathematics/Algebra/Limits/Variant016d633ef0c194c42b5f9f54edb85d4a9c7a9f66c4ba20b425f8c760f3718eb6.lean/declarations/preservesfinitelimits-of-flat--adb4240fe471fb48def5b804.md) | 215 | `result-track:adb4240fe471fb48def5b8042cdbf5a8ab2c497578b38702eaca80d87d762b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
