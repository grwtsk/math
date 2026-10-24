# Verification target: GRWTSK.Algebra.Basic.Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda`.

Source path: `GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean.json)

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
| 1 | `def` | [ord](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord--a60e34622d09e7a5736d3490.md) | 36 | `declaration-track:a60e34622d09e7a5736d3490b82a8011ea6a2756a341f952e74e216200b1c038` |
| 2 | `lemma` | [ord_one](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-one--0d554dd7633512733be2c56c.md) | 39 | `result-track:0d554dd7633512733be2c56cd6a4b6754a18f33dce25eff2209e2b5c520b08cc` |
| 3 | `def` | [Ideal.mulQuot](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ideal-mulquot--66c765de870d14fb97e629b4.md) | 50 | `declaration-track:66c765de870d14fb97e629b4c3e2d9e3e44cde2b1b0a5d0cf2c7d4accb92aeb9` |
| 4 | `lemma` | [Ideal.mulQuot_injective](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ideal-mulquot-injective--995e558c02445fd0a850c007.md) | 58 | `result-track:995e558c02445fd0a850c007b15b19ad261152bbd2da804c64edd8029ee8cff1` |
| 5 | `def` | [Ideal.quotOfMul](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ideal-quotofmul--044ffbd6ddd25778865854b1.md) | 73 | `declaration-track:044ffbd6ddd25778865854b176b2013ba21d87282211bbd0e39837ca002d9d74` |
| 6 | `lemma` | [Ideal.quotOfMul_surjective](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ideal-quotofmul-surjective--2c3fb6e67d28fc50bd1dd739.md) | 80 | `result-track:2c3fb6e67d28fc50bd1dd7399bf1aaab00ab0f80b35c4ddc6bcbe5397576ded9` |
| 7 | `lemma` | [Ideal.exact_mulQuot_quotOfMul](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ideal-exact-mulquot-quotofmul--8a70a30db182ccf409e106ff.md) | 91 | `result-track:8a70a30db182ccf409e106ff7d3b9f9973e45b5870e805523cac208ea89377dc` |
| 8 | `theorem` | [ord_mul](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-mul--467b0908c115807cb9058ffc.md) | 107 | `result-track:467b0908c115807cb9058ffcaf39b96601ebead09e22fa90a911711adbfd74ff` |
| 9 | `lemma` | [ord_mul'](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-mul--005d19bffdb05e2f3c9a7bd8.md) | 125 | `result-track:005d19bffdb05e2f3c9a7bd8ff789c19a5e9bbb1ff4eea820d8e219899ab9888` |
| 10 | `lemma` | [ord_zero](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-zero--e3a2caca76b1e944c5788771.md) | 133 | `result-track:e3a2caca76b1e944c57887710d5c589f11ae68655ab9ad8da7c333c584c82407` |
| 11 | `theorem` | [ord_pow](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-pow--c348afc7c1fb16b2b4d36e0d.md) | 144 | `result-track:c348afc7c1fb16b2b4d36e0dc7794972491bcb9db8fd9c1aa95e3cb18ba7eaa1` |
| 12 | `lemma` | [ord_mul_of_isUnit_left](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-mul-of-isunit-left--d603b92ea6d4c7c9d1881888.md) | 152 | `result-track:d603b92ea6d4c7c9d1881888ac830194b753e30a7f238c6d6052c7cc9f66eeb1` |
| 13 | `lemma` | [ord_mul_of_isUnit_right](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-mul-of-isunit-right--13db375ccabf5a05097125ab.md) | 156 | `result-track:13db375ccabf5a05097125ab5382457b257b1e04124f27fe0caa776c5ca64a2d` |
| 14 | `lemma` | [ord_eq_of_associated](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-eq-of-associated--247171e4a7f90cfc4eb922d2.md) | 159 | `result-track:247171e4a7f90cfc4eb922d2ec6276273109f3806e2e7d1cb9cde071337e2cf0` |
| 15 | `lemma` | [ord_neg](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-neg--98d9f07a4e659f98954c6845.md) | 164 | `result-track:98d9f07a4e659f98954c68455c7cd148f97baa4401711a2e599aa28efbdf466b` |
| 16 | `lemma` | [ord_smul_of_isUnit](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-smul-of-isunit--645af308dbb8f4dad5b844e1.md) | 172 | `result-track:645af308dbb8f4dad5b844e144506345792892c41a2c732c274848497e8b4f19` |
| 17 | `lemma` | [ord_le_ord_mul](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-le-ord-mul--d2265611a00e7e97eedbaad2.md) | 181 | `result-track:d2265611a00e7e97eedbaad2a5979ad07b26a1e6538754b43256c7f2a9f75f21` |
| 18 | `lemma` | [ord_le_ord_of_dvd](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-le-ord-of-dvd--c3f91bc247ecb0d9a32ba343.md) | 189 | `result-track:c3f91bc247ecb0d9a32ba34327358dd3bcea92da1b4c8f2a6d8c4655a8b2c55b` |
| 19 | `lemma` | [ord_le_smul](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-le-smul--27fb4ec136d13dedd73942a5.md) | 199 | `result-track:27fb4ec136d13dedd73942a5a45e4c8ce9a3e6f833a1ccedc97a6684c7b2b9e3` |
| 20 | `lemma` | [ord_of_isUnit](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-of-isunit--ca87305f46e60de6ca189b13.md) | 206 | `result-track:ca87305f46e60de6ca189b13dc1e109ba7bba520f6cd0358fb8e956d6f7fe5a8` |
| 21 | `theorem` | [ord_of_irreducible](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-of-irreducible--bafa2bc5af940edadbd0a546.md) | 216 | `result-track:bafa2bc5af940edadbd0a546c85f14236783e14d63b1d50fa09e8e33d5904c81` |
| 22 | `def` | [ordMonoidWithZeroHom](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordmonoidwithzerohom--fbe51c85c3dbe4ab1dbb1a13.md) | 239 | `declaration-track:fbe51c85c3dbe4ab1dbb1a1309d2503f6bda49fd298590417102630e0e176df4` |
| 23 | `lemma` | [ordMonoidWithZeroHom_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordmonoidwithzerohom-eq-zero-iff--66b765216baaba7f91f443aa.md) | 258 | `result-track:66b765216baaba7f91f443aafd2a4ca10a4550d4bad5a1512ce241ed4172af2e` |
| 24 | `theorem` | [ordMonoidWithZeroHom_eq_ord](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordmonoidwithzerohom-eq-ord--b5abb6669b20a8cfad15e53d.md) | 271 | `result-track:b5abb6669b20a8cfad15e53dbf05e5dc6570953e00d681693fa29853aac6228d` |
| 25 | `lemma` | [ordMonoidWithZeroHom_eq_coe](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordmonoidwithzerohom-eq-coe--7f93af16b44e4c392176c9e3.md) | 275 | `result-track:7f93af16b44e4c392176c9e3a2d65ad4036cb5126b81351691358c936799fc5d` |
| 26 | `theorem` | [ordMonoidWithZeroHom_eq_zero](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordmonoidwithzerohom-eq-zero--9156b875b6c14713f420cebb.md) | 285 | `result-track:9156b875b6c14713f420cebb27e706fec3782d1d543756de729ddac734bed1c8` |
| 27 | `theorem` | [_root_.isFiniteLength_quotient_span_singleton](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/root-isfinitelength-quotient-span-singleton--48ee247e891cbbb28eb2b6f0.md) | 292 | `result-track:48ee247e891cbbb28eb2b6f0049f345afc91e0fc4c5d1c676741dd1ec7505fa7` |
| 28 | `lemma` | [ord_ne_top](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-ne-top--1301d2132eecd7288c382172.md) | 307 | `result-track:1301d2132eecd7288c382172c787485a96c88de55e6f00307e9701b68f38ef45` |
| 29 | `lemma` | [ord_lt_top](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ord-lt-top--2e8243c980c2b0e641981339.md) | 311 | `result-track:2e8243c980c2b0e641981339b987208090d662fcf90a58c34c07157e17d80084` |
| 30 | `lemma` | [ordMonoidWithZeroHom_isUnit](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordmonoidwithzerohom-isunit--02fa02b5bcea71ee1b6bd68d.md) | 315 | `result-track:02fa02b5bcea71ee1b6bd68dd63483a07cfce6dcc78713560ea0be1840e03041` |
| 31 | `def` | [ordFrac](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordfrac--2b0642ab455e42de82ac2884.md) | 324 | `declaration-track:2b0642ab455e42de82ac288446de84d690d309886150b75c352f014c16c34bb3` |
| 32 | `lemma` | [ordFrac_eq_ord](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordfrac-eq-ord--c6fa1abd44d60bb4d9bb7d79.md) | 328 | `result-track:c6fa1abd44d60bb4d9bb7d79c30d26cff32bcf86f1b71f13dc844844a0406f4d` |
| 33 | `lemma` | [ordFrac_eq_div](../../../../mathematics/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean/declarations/ordfrac-eq-div--f2f1cb4187e68f42a2a70eeb.md) | 334 | `result-track:f2f1cb4187e68f42a2a70eebfea76f3ae3c3b9170c41e7d56c39dcf4aaa310d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
