# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FlatMap.Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2411b061bd0cd1dfa62ed912144a70ef4f94bfd3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2411b061bd0cd1dfa62ed912144a70ef4f94bfd3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.Flatten](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/iterators-types-flatten--5158c0c70730a620b6bde9b7.md) | 38 | `declaration-track:5158c0c70730a620b6bde9b7f64bc386c65d2c0a4e4ab1f59e2acf63ebb5cabe` |
| 2 | `def` | [IterM.flattenAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/iterm-flattenafter--05ef279c647a0eba5e2cb88e.md) | 46 | `declaration-track:05ef279c647a0eba5e2cb88e79a2e814b3d6086c25577e343528a916069bf878` |
| 3 | `def` | [IterM.flatMapAfterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/iterm-flatmapafterm--c4c488e16626dd7335007a37.md) | 88 | `declaration-track:c4c488e16626dd7335007a37c5034ce5f828cd9f36881f94c56b2cb4317086c5` |
| 4 | `def` | [IterM.flatMapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/iterm-flatmapm--6aa30e204063698264b7dc1c.md) | 127 | `declaration-track:6aa30e204063698264b7dc1c84ffe6442c3f0e17cb8d75dede791b1ca4712a4c` |
| 5 | `def` | [IterM.flatMapAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/iterm-flatmapafter--a82ff074db39e1b3e7e0f1a7.md) | 169 | `declaration-track:a82ff074db39e1b3e7e0f1a727b17e13ff8cb65c291aa86e190efa6d375063c6` |
| 6 | `def` | [IterM.flatMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/iterm-flatmap--52b69ecb21952c603ec2c89c.md) | 208 | `declaration-track:52b69ecb21952c603ec2c89c50e57dad379b1920c2f3a169c52be307e39acb31` |
| 7 | `inductive` | [Flatten.IsPlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-isplausiblestep--b0f1cb095dec7a7a8d6c4e64.md) | 218 | `declaration-track:b0f1cb095dec7a7a8d6c4e646c64c69eb60e291ffe8f6c23534bcba78ac39351` |
| 8 | `instance` | [Flatten.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-institerator--dbd992938a5c358dc05d3214.md) | 233 | `declaration-track:dbd992938a5c358dc05d32145a4df5346f8d64a93537a850ee643cd3ef1cd1d3` |
| 9 | `def` | [Flatten.Rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-rel--392c3c9b6af2e103c74bf6e2.md) | 260 | `declaration-track:392c3c9b6af2e103c74bf6e2ee4bbc7bb357474af6be1a0949d36232c760550e` |
| 10 | `theorem` | [Flatten.rel_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-rel-of-left--5ef458456c64621f8a688483.md) | 268 | `result-track:5ef458456c64621f8a6884837223532f1a162820d5da4244c636ce1d1cf41b6e` |
| 11 | `theorem` | [Flatten.rel_of_right₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-rel-of-right--b0a4bfb2545785a39cc9bb00.md) | 274 | `result-track:b0a4bfb2545785a39cc9bb00c1eb4464b0d716d65536fad1c3ae3dac9e8a2351` |
| 12 | `theorem` | [Flatten.rel_of_right₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-rel-of-right--63dd5a977586b74ed4f712cc.md) | 280 | `result-track:63dd5a977586b74ed4f712cc95da773bd6e450e842c629af3f6f2b1ec3af3ae0` |
| 13 | `def` | [Flatten.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-instfinitenessrelation--df2772cca84f4edc3742ef24.md) | 285 | `declaration-track:df2772cca84f4edc3742ef248b5fd23aa205685616305556e6469df9fa0eccf4` |
| 14 | `instance` | [Flatten.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-instfinite--f6f1e7b7205e26e1afda7830.md) | 312 | `declaration-track:f6f1e7b7205e26e1afda7830c10d13c58301fe98aa92cac7c83bd5c6f5b39666` |
| 15 | `def` | [Flatten.ProductiveRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-productiverel--79062e8e867528d1367a1bf1.md) | 323 | `declaration-track:79062e8e867528d1367a1bf19b4c376968cea9873600deb9cc06c162c679ce77` |
| 16 | `theorem` | [Flatten.productiveRel_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-productiverel-of-left--1c494a4d8c2f967a9629c1cf.md) | 332 | `result-track:1c494a4d8c2f967a9629c1cf5c89751d7a2b5fd1bd031ebe2a6554d3a0f7d214` |
| 17 | `theorem` | [Flatten.productiveRel_of_right₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-productiverel-of-right--e9d8e2766ba6a9e0df8b1f76.md) | 338 | `result-track:e9d8e2766ba6a9e0df8b1f76697f155f008f04efb829e9b7319d4ca49d03d899` |
| 18 | `theorem` | [Flatten.productiveRel_of_right₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-productiverel-of-right--d231e3a597770c45ab1a695d.md) | 344 | `result-track:d231e3a597770c45ab1a695df767ec52081f2a447441413633321cce4488293a` |
| 19 | `def` | [Flatten.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-instproductivenessrelation--295cfe6a7fb8bfed78496cc1.md) | 349 | `declaration-track:295cfe6a7fb8bfed78496cc1d79f3a5711262e212c1bedf49d654ab91d8a8ef0` |
| 20 | `theorem` | [Flatten.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-instproductive--c56f109ee9d0b5f8d2646fa9.md) | 372 | `result-track:c56f109ee9d0b5f8d2646fa9d55340675405d4f6f9767bf19a7c7080d1776c9a` |
| 21 | `instance` | [Flatten.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant50bd26fe1f55180d5f574159b7359c571f3a9257a5f65c16f15200d1806dc0ea.lean/declarations/flatten-institeratorloop--73ceee381e24168aff750468.md) | 378 | `declaration-track:73ceee381e24168aff7504689665d97657329963f5514f3eaf1d0a290f408a31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
