# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CountableSupClosed.Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c417fd39791090d1e049fbbf79221ab2c46fbc2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c417fd39791090d1e049fbbf79221ab2c46fbc2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Lattice` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CountableSupClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed--5f1f0117530fd45ec0cad58c.md) | 52 | `declaration-track:5f1f0117530fd45ec0cad58c0a2c55d7865f894013ea0c73d40f6f192b33b032` |
| 2 | `structure` | [CountableInfClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countableinfclosed--6d9b87cafba0f66fad94ea3f.md) | 58 | `declaration-track:6d9b87cafba0f66fad94ea3f897c188e9efb10a38ec4d13faccd01a8d9408d39` |
| 3 | `lemma` | [CountableSupClosed.iSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-isup-mem--e00e9b6023f34d9db4e4ecf9.md) | 62 | `result-track:e00e9b6023f34d9db4e4ecf9f181e95af834d1949a37615f4b5eb029d2a5e1be` |
| 4 | `lemma` | [CountableSupClosed.of_iSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-of-isup-mem--8178b8bb5ef3cf3e1c28092f.md) | 70 | `result-track:8178b8bb5ef3cf3e1c28092fb53019fd939b6d2f2de2b8c3b9ca1ff40ead3a5a` |
| 5 | `lemma` | [CountableSupClosed.sSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-ssup-mem--c0786c8780cf0ace8dd64ed3.md) | 79 | `result-track:c0786c8780cf0ace8dd64ed3dee951ce9584514833b8196d145c5c4d08ebd2f2` |
| 6 | `lemma` | [CountableSupClosed.supClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-supclosed--af75a3531ad5738a0779d0d5.md) | 88 | `result-track:af75a3531ad5738a0779d0d5414f21b2aa6196a0e206b12046ac18dcb737ae4b` |
| 7 | `lemma` | [CountableSupClosed.singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-singleton--86b28c40ec783e08b7f8dd47.md) | 92 | `result-track:86b28c40ec783e08b7f8dd476344340793a48819c6c41997ec4d39a0bd2bbf5c` |
| 8 | `lemma` | [CountableSupClosed.univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-univ--432e8b4ab9c972348dd96a17.md) | 106 | `result-track:432e8b4ab9c972348dd96a173a6c9be57d8037f8644a1190f2440072c5783308` |
| 9 | `lemma` | [CountableSupClosed.empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-empty--132dc1bf33f1330a1fe33666.md) | 111 | `result-track:132dc1bf33f1330a1fe336662762d33811df5e5abeeced005300584927c39cfd` |
| 10 | `lemma` | [CountableSupClosed.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-inter--c4fd47152f6e4f682a7294f8.md) | 116 | `result-track:c4fd47152f6e4f682a7294f8b730d1b04a11b7461b949777e51379ae553e4088` |
| 11 | `lemma` | [CountableSupClosed.sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-sinter--fc02eb7e4d0cd4bf050c8820.md) | 124 | `result-track:fc02eb7e4d0cd4bf050c88209c1d395e1983e8a8cf58dafcc9970a870aaabcc1` |
| 12 | `lemma` | [CountableSupClosed.iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-iinter--ef580f83b051e257eb8fd3ea.md) | 131 | `result-track:ef580f83b051e257eb8fd3ead6045fe67f8ae6300205f661db1013d1e6c7aa6d` |
| 13 | `lemma` | [CountableSupClosed.directedOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-directedon--c6c5e50cf39585dc0303d2cf.md) | 137 | `result-track:c6c5e50cf39585dc0303d2cf3bdc509628974785c2b55b2b0c15731110bdc3e4` |
| 14 | `lemma` | [CountableSupClosed.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-prod--97089488d0a3f8013a7ce9df.md) | 141 | `result-track:97089488d0a3f8013a7ce9df0dad4b23e70174db6baed2e7f501f642b1a8ef94` |
| 15 | `lemma` | [CountableSupClosed.finsetSup'_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-finsetsup-mem--700bdf62ea1470f1e8ec3ecc.md) | 156 | `result-track:700bdf62ea1470f1e8ec3ecc4a071802e1d5a76f9a381b8f80019b5f229e1d90` |
| 16 | `lemma` | [CountableSupClosed.finsetSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-finsetsup-mem--8fd56236465d480cecc1c055.md) | 162 | `result-track:8fd56236465d480cecc1c0555c35a89c52dfd9d70c2cc5b6cec306a8cddc2b5c` |
| 17 | `lemma` | [countableSupClosed_preimage_toDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-preimage-todual--dbba5e4d78c2a9dfb923bfbf.md) | 171 | `result-track:dbba5e4d78c2a9dfb923bfbff7ec62fd169500578007f83573cc586d0131c0dd` |
| 18 | `lemma` | [countableSupClosed_preimage_ofDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-preimage-ofdual--4b3989744fe0774575c850f3.md) | 175 | `result-track:4b3989744fe0774575c850f37529542d0adc4814f46ac29f6c1f5dbd8884fd23` |
| 19 | `def` | [countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure--bf26098d2bfd3b59eeff04d8.md) | 189 | `declaration-track:bf26098d2bfd3b59eeff04d823a3ff61b3d73564d5045ddbf2e6c56afe771c13` |
| 20 | `lemma` | [subset_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/subset-countablesupclosure--768cd8f3ab111fc44f66ac30.md) | 209 | `result-track:768cd8f3ab111fc44f66ac30e44357d3912b84ca8623ad9e4d77e8e2b1300c53` |
| 21 | `lemma` | [countableSupClosure_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-min--d8df122b88abd93e8bb9433d.md) | 213 | `result-track:d8df122b88abd93e8bb9433d91ad4380822ac7b38ec8138dcc88a20ed07e769d` |
| 22 | `lemma` | [countableSupClosed_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosed-countablesupclosure--51bb3f1fd75de3a5fc7a58eb.md) | 216 | `result-track:51bb3f1fd75de3a5fc7a58eb463201a2b950ad9eccf122ccfcdde32d95032176` |
| 23 | `lemma` | [countableSupClosure_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-mono--3fb47039832042e349ef692e.md) | 220 | `result-track:3fb47039832042e349ef692e738990d7890821f9c8a116cc6cbdcc2d19f511f0` |
| 24 | `lemma` | [countableSupClosure_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-eq-self--87ea8d606891fa82b21e1948.md) | 223 | `result-track:87ea8d606891fa82b21e1948329a3ec8b380000b786e6635faf3017d2ef7fa5a` |
| 25 | `lemma` | [countableSupClosure_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-idem--5170283c23a518015092fe9e.md) | 230 | `result-track:5170283c23a518015092fe9e47e09ba63b2905faf8c576803ea707cb595690d2` |
| 26 | `lemma` | [countableSupClosure_eq_sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-eq-sinter--6f7836cc8cbb4a0dd2bb117e.md) | 235 | `result-track:6f7836cc8cbb4a0dd2bb117ee49c55b689fbe39dc9d9a8beead55b6be5ce9d00` |
| 27 | `lemma` | [mem_countableSupClosure_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/mem-countablesupclosure-iff--1f48c74ad1cae6cb326ff19c.md) | 246 | `result-track:1f48c74ad1cae6cb326ff19c3b4501e927024a80f8c3dcc366e9cb67df2fc484` |
| 28 | `lemma` | [countableSupClosure_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-univ--704b4a58c1d6f5fbea161ccb.md) | 250 | `result-track:704b4a58c1d6f5fbea161ccbe365b0b24f58099bddc9dee1f79abb6fe78ffe53` |
| 29 | `lemma` | [countableSupClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-empty--a19ed693f4b05abeeb487cf0.md) | 253 | `result-track:a19ed693f4b05abeeb487cf025f3275f0262623c4c5af698eccaafe91b2771dd` |
| 30 | `lemma` | [upperBounds_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/upperbounds-countablesupclosure--7f557e05583481ec82e21510.md) | 256 | `result-track:7f557e05583481ec82e21510ddfa973676369c4220d90fc5c1268d65a64ac809` |
| 31 | `lemma` | [isLUB_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/islub-countablesupclosure--2822926e131a11b46a8e5dbd.md) | 265 | `result-track:2822926e131a11b46a8e5dbda665860a5b5fb842a4be9b9e9dfe8f8b277d830e` |
| 32 | `lemma` | [countableSupClosure_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-prod--2dac28c6febfe4cd1e7c2e5f.md) | 268 | `result-track:2dac28c6febfe4cd1e7c2e5f1c1ad9c1e2cb18463176178779e25877b29f59f5` |
| 33 | `lemma` | [mem_countableSupClosure_iff_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/mem-countablesupclosure-iff-isup--74fc14f9975ee46961254a19.md) | 284 | `result-track:74fc14f9975ee46961254a195433fa2e90fd8fc04eb7071704dca760d98d8d8b` |
| 34 | `lemma` | [supClosed_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/supclosed-countablesupclosure--fc59acde0894be5a7c1d3f5a.md) | 297 | `result-track:fc59acde0894be5a7c1d3f5a9b4050975341fdf1487d7e256b792eb9dfa1d488` |
| 35 | `lemma` | [countableSupClosure_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/countablesupclosure-singleton--1fe02855949073e2dd3c9ee9.md) | 301 | `result-track:1fe02855949073e2dd3c9ee9a5cfef3ab9c50f00574cc38f26278fdecbfc7844` |
| 36 | `lemma` | [sup_mem_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/sup-mem-countablesupclosure--9e0e8a9a1874db8cb7af8eca.md) | 305 | `result-track:9e0e8a9a1874db8cb7af8eca19ce5f7893e148fe4d1c532c387e4f1060d9f3f1` |
| 37 | `lemma` | [iSup_mem_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/isup-mem-countablesupclosure--f75e85c8d853027837f1ca95.md) | 310 | `result-track:f75e85c8d853027837f1ca95bc1e248f6157fe057a47c8c9b829332c88a1f879` |
| 38 | `lemma` | [finsetSup'_mem_countableSupClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/finsetsup-mem-countablesupclosure--aa0ba8d8fbb78f0698bcc3e8.md) | 316 | `result-track:aa0ba8d8fbb78f0698bcc3e8508895221262265e449f3070ae0086449c526d3d` |
| 39 | `lemma` | [SupClosed.countableInfClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant3cc552ae07c4cb4733871c392f22acaf37b853cbe17fb1d1aec3764b7c17e4de.lean/declarations/supclosed-countableinfclosure--2d97c996dfe78ac021278c3e.md) | 326 | `result-track:2d97c996dfe78ac021278c3e011d540f58d4b3a941f132dc57e511850bdb19e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
