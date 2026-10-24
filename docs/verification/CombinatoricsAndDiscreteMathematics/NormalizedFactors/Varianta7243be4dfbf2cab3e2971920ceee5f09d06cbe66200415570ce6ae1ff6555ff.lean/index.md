# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70ece8047033f2c6116dbfa2da7fb1d9cef78940",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70ece8047033f2c6116dbfa2da7fb1d9cef78940`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors--aa9acc1244eb25517b2cc268.md) | 35 | `declaration-track:aa9acc1244eb25517b2cc26877f7b6a82fa16224e2e12a8f028f933233209b63` |
| 2 | `theorem` | [factors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/factors-eq-normalizedfactors--19b4a584d930bcbc88884fab.md) | 41 | `result-track:19b4a584d930bcbc88884fabb6615f25458144fc84c7aafda050134e577cacf6` |
| 3 | `theorem` | [prod_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/prod-normalizedfactors--73ff90a9f9339c6d207e48f7.md) | 47 | `result-track:73ff90a9f9339c6d207e48f75f775901fc2db4a158f271929ba7e9c172506e5f` |
| 4 | `theorem` | [prod_normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/prod-normalizedfactors-eq--505c3a8a53db8ea76da2f321.md) | 57 | `result-track:505c3a8a53db8ea76da2f3213025716ce76864d3e737cb0641693924cb4539f7` |
| 5 | `theorem` | [prime_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/prime-of-normalized-factor--db7f19d38addf572168fd72d.md) | 65 | `result-track:db7f19d38addf572168fd72dd7faf6dcb5e5f6354bc439d5a8c8bb43df1003f2` |
| 6 | `theorem` | [irreducible_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/irreducible-of-normalized-factor--6f2d4ed1a4af669be20bed28.md) | 72 | `result-track:6f2d4ed1a4af669be20bed28a4f88e7ff0492e11428d327a94e5530f4df458c1` |
| 7 | `theorem` | [normalize_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalize-normalized-factor--c15f0f713a776bff3976e184.md) | 76 | `result-track:c15f0f713a776bff3976e1843efe9d65a9467e665fb278ba4fe193d542fdc362` |
| 8 | `theorem` | [normalizedFactors_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-irreducible--49e8619a4fdd29d40aa833e7.md) | 84 | `result-track:49e8619a4fdd29d40aa833e795f8d35969b74457466d94f33e7e02b74d7a4133` |
| 9 | `theorem` | [normalizedFactors_eq_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-eq-of-dvd--00e4ae19b7ff801db1181626.md) | 94 | `result-track:00e4ae19b7ff801db1181626231977ec6d7aabdb23e8cae09bb4093648cba7ad` |
| 10 | `theorem` | [exists_mem_normalizedFactors_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/exists-mem-normalizedfactors-of-dvd--d5f9e1c86719b99da2b95641.md) | 103 | `result-track:d5f9e1c86719b99da2b95641b775d319ba5ff9fe241be497bdb5513571decf78` |
| 11 | `theorem` | [exists_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/exists-mem-normalizedfactors--5567c0452c737e83cf59098a.md) | 120 | `result-track:5567c0452c737e83cf59098ae5bdf652c2b63f3527c5716b14b4741948c07c4c` |
| 12 | `theorem` | [normalizedFactors_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-zero--2ba142cfdb3deff175fd7195.md) | 127 | `result-track:2ba142cfdb3deff175fd7195faeb8aa8c68222ae9e0414b2130f889d07c6c31e` |
| 13 | `theorem` | [normalizedFactors_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-one--f8422b8761f3c8d3c9b245ba.md) | 131 | `result-track:f8422b8761f3c8d3c9b245ba4416d3a9cf451d6391a3f581cf3faf25596db867` |
| 14 | `theorem` | [normalizedFactors_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-mul--ef724c4282a685cdb6b67a5e.md) | 143 | `result-track:ef724c4282a685cdb6b67a5e1516c9b0368478cd72f8ec8fd72cdea84ce5d14c` |
| 15 | `theorem` | [normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-pow--9510798e9c2d1e66051b2bee.md) | 165 | `result-track:9510798e9c2d1e66051b2bee9b75d566033de625df85c33ce65b5d4e8a900266` |
| 16 | `theorem` | [_root_.Irreducible.normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/root-irreducible-normalizedfactors-pow--012bf544358162a758c13a40.md) | 174 | `result-track:012bf544358162a758c13a40a31dca6c91d0dfff6aefe516ed7ec1ac27a7b30f` |
| 17 | `theorem` | [normalizedFactors_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-prod-eq--c99dfdb8d00e7a3e549c7c62.md) | 179 | `result-track:c99dfdb8d00e7a3e549c7c6200f9278d38c33985fabe71417e33a29b7760aa74` |
| 18 | `theorem` | [dvd_iff_normalizedFactors_le_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/dvd-iff-normalizedfactors-le-normalizedfactors--9d6c78085c03a84ce905ca48.md) | 194 | `result-track:9d6c78085c03a84ce905ca4868db0dd7b358e3f70ee1c4844e92a3a9a7c2b7d8` |
| 19 | `theorem` | [_root_.Associated.normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/root-associated-normalizedfactors-eq--50844ccfec73a9be49ba822c.md) | 203 | `result-track:50844ccfec73a9be49ba822cfc14fa24f38cf6e6529be9f10f587d5db751d7d0` |
| 20 | `theorem` | [associated_iff_normalizedFactors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/associated-iff-normalizedfactors-eq-normalizedfactors--68316ea0e83d9f4d382b1e97.md) | 210 | `result-track:68316ea0e83d9f4d382b1e97a8996e58598f33571eeeebd9f5e3d444e29ccc63` |
| 21 | `theorem` | [normalizedFactors_of_irreducible_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-of-irreducible-pow--a4efbf5d559a8c379953c778.md) | 215 | `result-track:a4efbf5d559a8c379953c77812e69359955ca8a590c6b14bfb1b3ffd6e8dde35` |
| 22 | `theorem` | [zero_notMem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/zero-notmem-normalizedfactors--aabfb4638f5c7cb5219e51a1.md) | 219 | `result-track:aabfb4638f5c7cb5219e51a1a5df7f028f4b9062099811a3b85c93f67f19036c` |
| 23 | `theorem` | [ne_zero_of_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/ne-zero-of-mem-normalizedfactors--1c9bdb3be19b01571526544a.md) | 222 | `result-track:1c9bdb3be19b01571526544aced4e7935d56c19c52ed5475ff376f2ea7c2ffac` |
| 24 | `theorem` | [dvd_of_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/dvd-of-mem-normalizedfactors--b9fbe5542e4e8c63f191bbee.md) | 225 | `result-track:b9fbe5542e4e8c63f191bbeef600a9b746046baa9fdcd6dc9a900733c4ae68cb` |
| 25 | `theorem` | [mem_normalizedFactors_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/mem-normalizedfactors-iff--8ea8bca329c057914dd58a3a.md) | 230 | `result-track:8ea8bca329c057914dd58a3a9fc93f1caea53b2f82874de65470da99601d89a1` |
| 26 | `theorem` | [mem_normalizedFactors_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/mem-normalizedfactors-iff--6518d5bae31da42b28f8bd56.md) | 240 | `result-track:6518d5bae31da42b28f8bd5677d055ca6a9e18e7f18debc8004a79c8f1995165` |
| 27 | `theorem` | [disjoint_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/disjoint-normalizedfactors--7d83cdd36efbf71e19355ca8.md) | 249 | `result-track:7d83cdd36efbf71e19355ca8c74e593589487169c3bb51bbe3fc91af84aa428a` |
| 28 | `theorem` | [exists_associated_prime_pow_of_unique_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/exists-associated-prime-pow-of-unique-normalized-factor--10f1b5b3c466a11486f03fd4.md) | 257 | `result-track:10f1b5b3c466a11486f03fd459e8c4133875ec790381d57a77c26bbfce13e3e8` |
| 29 | `theorem` | [normalizedFactors_prod_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-prod-of-prime--5f4d496caabedf22d78809b5.md) | 263 | `result-track:5f4d496caabedf22d78809b5cfe5150131c49110d3ae7d681ec3e182594f28b7` |
| 30 | `theorem` | [mem_normalizedFactors_eq_of_associated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/mem-normalizedfactors-eq-of-associated--12c2b3f61cd704da5d363998.md) | 274 | `result-track:12c2b3f61cd704da5d36399888df4bc66c5a037352924afd52e1b2dda42d8919` |
| 31 | `theorem` | [normalizedFactors_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-pos--53fdc37bcbfe8c86ee79f1ba.md) | 281 | `result-track:53fdc37bcbfe8c86ee79f1ba2bafb64824ac865b3666cd06683ef7256c8a6c05` |
| 32 | `theorem` | [normalizedFactors_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-eq-zero-iff--90e48db1918b9d9eab3517ac.md) | 298 | `result-track:90e48db1918b9d9eab3517ac44ed95c68506e0da4fdddcc5fda0bd3cfb052a58` |
| 33 | `theorem` | [normalizedFactors_of_isUnit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-of-isunit--0ceb788e7992ee33c3dc0ee3.md) | 306 | `result-track:0ceb788e7992ee33c3dc0ee3f51940cd61f5e123a7f0eeffbb3b77e8b854b695` |
| 34 | `theorem` | [dvdNotUnit_iff_normalizedFactors_lt_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/dvdnotunit-iff-normalizedfactors-lt-normalizedfactors--70ac6e0ff7bf6d35efaa2a38.md) | 312 | `result-track:70ac6e0ff7bf6d35efaa2a387339f1c867305e071752a74994b59b132f3cc688` |
| 35 | `theorem` | [normalizedFactors_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-multiset-prod--572419ce04a5c923418c6412.md) | 324 | `result-track:572419ce04a5c923418c6412d01e13d5c3cd3ddce32c45a2d49992625deeab43` |
| 36 | `def` | [normalizedFactorsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactorsequiv--4d409f217a90e70dbd9d3251.md) | 348 | `declaration-track:4d409f217a90e70dbd9d3251c96880ce82c59f534774a940a69777735b521966` |
| 37 | `theorem` | [normalizedFactorsEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactorsequiv-apply--ed613dfa07561ed074dc1548.md) | 358 | `result-track:ed613dfa07561ed074dc1548a78f95f34c20035ecae0ad0542e116de5bd110ac` |
| 38 | `theorem` | [normalizedFactorsEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactorsequiv-symm-apply--fe35bdb93323824e6cf8d9ec.md) | 363 | `result-track:fe35bdb93323824e6cf8d9ec20f7f935a93063d0bc002b9f0906517be02bbed6` |
| 39 | `def` | [strongNormalizationMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/strongnormalizationmonoid--25e9308cf4b660741c7118ff.md) | 379 | `declaration-track:25e9308cf4b660741c7118ffb310238b17c33b7de9a2124b54a57f1c0dcd6cd8` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/instance--d5d1bba9815674456dc591e9.md) | 411 | `declaration-track:d5d1bba9815674456dc591e94f0bb7603df5103758ce4e23f868d6baa9ec03e4` |
| 41 | `lemma` | [normalizedFactors_prod_eq_self_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-prod-eq-self-of-subset--9f27bc31af44f82545d7f27c.md) | 422 | `result-track:9f27bc31af44f82545d7f27c6d559afbde95fa20d201f973941249ea24e8eabe` |
| 42 | `lemma` | [prod_ne_zero_of_subset_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/prod-ne-zero-of-subset-normalizedfactors--54b43c4ac73cedbd501a53e2.md) | 427 | `result-track:54b43c4ac73cedbd501a53e2bd3525ab26a8a000bbfd038eeaeaedeb67368828` |
| 43 | `lemma` | [normalizedFactors_prod_inter_eq_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/normalizedfactors-prod-inter-eq-inter--9fb39229d8cf149c44a1757b.md) | 434 | `result-track:9fb39229d8cf149c44a1757b912c6aa3f2075c966ededb2f9c900f95b513f9a0` |
| 44 | `lemma` | [prod_inter_normalizedFactors_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Varianta7243be4dfbf2cab3e2971920ceee5f09d06cbe66200415570ce6ae1ff6555ff.lean/declarations/prod-inter-normalizedfactors-ne-zero--251b2bc6de80eeb9650821de.md) | 439 | `result-track:251b2bc6de80eeb9650821de622e5b2600e7ab60760670a75996b67838563d0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
