# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73525ada89f43f4867ddf6f8837beb2d016dffeb",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73525ada89f43f4867ddf6f8837beb2d016dffeb`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExistsMulOfLE](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/existsmulofle--2b577436c3428eab28efbab8.md) | 27 | `declaration-track:2b577436c3428eab28efbab899e41fce8e9c3f26f3a571816d6254e901b5885b` |
| 2 | `class` | [ExistsAddOfLE](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/existsaddofle--54b88f645bcdcea4d14c687f.md) | 35 | `declaration-track:54b88f645bcdcea4d14c687fdbacf656cd822e47515ca8ed1264988c100ad257` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/instance--a69697002409d54771bc6489.md) | 48 | `declaration-track:a69697002409d54771bc6489ba8846845d0cfdc7526cd7f3d791ed746ced1807` |
| 4 | `theorem` | [exists_one_lt_mul_of_lt'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/exists-one-lt-mul-of-lt--63c6a0e34f51cea02311d748.md) | 59 | `result-track:63c6a0e34f51cea02311d748d20a95b1abac92f50d2eb70a5dc82795e62224b6` |
| 5 | `theorem` | [le_of_forall_one_lt_le_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-of-forall-one-lt-le-mul--5daa188437b1be6e48ae630b.md) | 73 | `result-track:5daa188437b1be6e48ae630b7162ca2d3211d41f6a1d481dc43cd4864b9483cf` |
| 6 | `theorem` | [le_of_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-of-forall-one-lt-lt-mul--f4363606d714236838f583c2.md) | 81 | `result-track:f4363606d714236838f583c26666df1501af87fd03b178c1507d25befceaed28` |
| 7 | `theorem` | [le_iff_forall_one_lt_lt_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-iff-forall-one-lt-lt-mul--50b32235fdb68d22d9ef97f4.md) | 87 | `result-track:50b32235fdb68d22d9ef97f4322fb62771f41e23f1edb5c21fe181d9b11e8149` |
| 8 | `class` | [CanonicallyOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/canonicallyorderedaddmonoid--9610ff677addeed82379b6d6.md) | 100 | `declaration-track:9610ff677addeed82379b6d61895874331e3e69773ca273659520d2a6f2cac03` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/instance--e0e36e13d6b145ee6d400b27.md) | 111 | `declaration-track:e0e36e13d6b145ee6d400b27529cee73306c74d556acdc74fb31c46f57e0d751` |
| 10 | `class` | [CanonicallyOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/canonicallyorderedmonoid--dd078bf1f3dbacfe2d488228.md) | 126 | `declaration-track:dd078bf1f3dbacfe2d48822835d2c6d38f188163ae099e366118e4a889282285` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/instance--1333bd0064f2a70ef12f5dcb.md) | 137 | `declaration-track:1333bd0064f2a70ef12f5dcb2b188159ef07b865a56959075cf343fa7fa29e40` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/instance--af90a91f7331206ad5b35ccc.md) | 144 | `declaration-track:af90a91f7331206ad5b35ccca8ed9408c5dc2bbf9b3518f67c11d42130c0279e` |
| 13 | `theorem` | [le_self_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-self-mul--d5695fbcdbefcc4798e6746c.md) | 155 | `result-track:d5695fbcdbefcc4798e6746c526576e9bcd782b6883569deaded0e5717da7f6d` |
| 14 | `theorem` | [le_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-mul-self--55455552b23ac244ee2f02f2.md) | 161 | `result-track:55455552b23ac244ee2f02f27b67ae74c749cd49926e4ce52297f06716b4389a` |
| 15 | `theorem` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/self-le-mul-right--4669ae09c21c6421af19c30c.md) | 168 | `result-track:4669ae09c21c6421af19c30c35fe9f69d076baeae93735e648e8f737b406d013` |
| 16 | `theorem` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/self-le-mul-left--2bb39a99bc9124fc20c35414.md) | 174 | `result-track:2bb39a99bc9124fc20c35414753128aae187d4cc57b83666d6d7ccda2e41bfd1` |
| 17 | `theorem` | [le_of_mul_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-of-mul-le-left--530692584d109d1c3d43c460.md) | 180 | `result-track:530692584d109d1c3d43c4600ab953053c10a3fc3bc5f1f949563980b73e255e` |
| 18 | `theorem` | [le_of_mul_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-of-mul-le-right--60a22d55928aa4b9f9d8863e.md) | 186 | `result-track:60a22d55928aa4b9f9d8863e9831f4a6b26e2e4f6d51f8b5d7f16449807a76eb` |
| 19 | `theorem` | [le_mul_of_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-mul-of-le-left--ba23536a80d836e85359fb41.md) | 192 | `result-track:ba23536a80d836e85359fb413b8235dab0451ee83fbb52f7a69c3cd3ef4ad069` |
| 20 | `theorem` | [le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-mul-of-le-right--ba5aee31970c398a0dbadd85.md) | 198 | `result-track:ba5aee31970c398a0dbadd857df45752d6bb1a53e2bf26d5a8af0648b0d00839` |
| 21 | `theorem` | [le_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-iff-exists-mul--06a43114147f6b6fc725f13f.md) | 204 | `result-track:06a43114147f6b6fc725f13fdbdd45014e44b2e46e0a15bdd3b51009cb479ea5` |
| 22 | `theorem` | [le_iff_exists_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-iff-exists-mul--5127d480cdf82708ac7dea97.md) | 212 | `result-track:5127d480cdf82708ac7dea97a4d1af3d832a0a39b1f296391bb90798c239c900` |
| 23 | `theorem` | [one_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/one-le--6e0e44565046a891414c3c6d.md) | 218 | `result-track:6e0e44565046a891414c3c6dff5dc525cfc5dd081b6c039878c60a5ced1fb31c` |
| 24 | `theorem` | [bot_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/bot-eq-one--e949fa7c46521f0e2ad8d5b6.md) | 224 | `result-track:e949fa7c46521f0e2ad8d5b6dd7ac584d57268f6e05da3bc1073d834554fe4d5` |
| 25 | `theorem` | [mul_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/mul-eq-one-iff--90650de85633ac16f5fcc277.md) | 232 | `result-track:90650de85633ac16f5fcc27747162dbbf66982bb5c3ae10cb166f2e324009081` |
| 26 | `theorem` | [le_one_iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-one-iff-eq-one--b5f5806e786f1536b6a5fa85.md) | 238 | `result-track:b5f5806e786f1536b6a5fa854004a3b2e905ab62bdf2dc1a39ecdc4436d54fcf` |
| 27 | `theorem` | [one_lt_iff_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/one-lt-iff-ne-one--3f162343bcd719f99e679f9f.md) | 244 | `result-track:3f162343bcd719f99e679f9f844c00262ce406706cea811e53ed69509a01e799` |
| 28 | `theorem` | [eq_one_or_one_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/eq-one-or-one-lt--aedd3c78c496504f36faba42.md) | 250 | `result-track:aedd3c78c496504f36faba4227bb467a0c4f6fa9a5f03be75b34b9ad9c637b50` |
| 29 | `theorem` | [one_lt_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/one-lt-mul-iff--eb04ed9c5bee64876ed08ab5.md) | 256 | `result-track:eb04ed9c5bee64876ed08ab5e07b4d752f67f0ddfc769031d04806ce13f6f5e0` |
| 30 | `theorem` | [exists_one_lt_mul_of_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/exists-one-lt-mul-of-lt--310d31c97fb64836c235536a.md) | 262 | `result-track:310d31c97fb64836c235536aa4125859766ccfa68acfb867016469e17dacd740` |
| 31 | `theorem` | [le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-mul-left--b75a98de9f06d55800771771.md) | 271 | `result-track:b75a98de9f06d558007717713db1910b919544058582aa363e6e43c77f825e00` |
| 32 | `theorem` | [le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/le-mul-right--3d46d9bb2a63d135f9bbb18c.md) | 279 | `result-track:3d46d9bb2a63d135f9bbb18ce62c6e614193786027286d2dfa755b5fe6feb109` |
| 33 | `theorem` | [lt_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/lt-iff-exists-mul--d819e89efadbd2ad5458d4ff.md) | 287 | `result-track:d819e89efadbd2ad5458d4ffc79cd9039652b4d5af527e96fe2a4e976bf47949` |
| 34 | `theorem` | [pos_of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/pos-of-gt--2c0ac6685c09e4c20c477667.md) | 305 | `result-track:2c0ac6685c09e4c20c477667010e1aec60d7736be67f433ccb4e8d8d4189352b` |
| 35 | `theorem` | [pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/pos--26ebe988283c626ce5da2530.md) | 311 | `result-track:26ebe988283c626ce5da25309ce175c6682d98eb779e780e7f7af2fa1cd04e5d` |
| 36 | `theorem` | [of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/of-gt--ba0adeec7abdfe2c77bd63aa.md) | 315 | `result-track:ba0adeec7abdfe2c77bd63aa2b57db026bfeed35522519e36f160905ade2a844` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/instance--be123b8d5dc705a1d8913fed.md) | 322 | `declaration-track:be123b8d5dc705a1d8913fed9dfbadf2e2dad62392d088f527f4405a96d1e161` |
| 38 | `instance` | [bit0](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/bit0--c2037c0cefe9b318cba09e91.md) | 328 | `declaration-track:c2037c0cefe9b318cba09e91c646ffa2e0e9a3c7bc3a7ae4665bba63330d6dd0` |
| 39 | `class` | [CanonicallyLinearOrderedAddMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/canonicallylinearorderedaddmonoid--027266a37ccbeaebcc482bd0.md) | 336 | `declaration-track:027266a37ccbeaebcc482bd0aa87c223e3147bba393ff94dc6185cafdc1ea8b3` |
| 40 | `class` | [CanonicallyLinearOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/canonicallylinearorderedmonoid--582f7f6b08bed9b69d671bfe.md) | 343 | `declaration-track:582f7f6b08bed9b69d671bfe1a6782d4e2ec53324d0312d3914a2c4b1351cfbf` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/instance--949db819dfa35a5c69a1aee6.md) | 352 | `declaration-track:949db819dfa35a5c69a1aee68f0d31ae56a4a0faba029864cc818decd8084c98` |
| 42 | `theorem` | [min_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/min-mul-distrib--c6647d138ef297d50c47ee5e.md) | 358 | `result-track:c6647d138ef297d50c47ee5ef74a83526924fc37c687732bdc95211ca04aef8c` |
| 43 | `theorem` | [min_mul_distrib'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/min-mul-distrib--f812b45c12003fcc7a3c3cdc.md) | 368 | `result-track:f812b45c12003fcc7a3c3cdc3ad0083b70b4b16bf0ba605c61a9712ca3792390` |
| 44 | `theorem` | [one_min](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/one-min--299b75968dd5e0ea1e6f2909.md) | 375 | `result-track:299b75968dd5e0ea1e6f2909434767c2f433b0e875a770f41fb3a082326ed4c1` |
| 45 | `theorem` | [min_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/min-one--0478722e9cea1197e9e5c6c6.md) | 382 | `result-track:0478722e9cea1197e9e5c6c67b2518e7230d66a5f6abd0a9a90b980fc6a46e40` |
| 46 | `theorem` | [bot_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantbfdac256aaf8d61c4a5e6b6e441116ab765fc241a7d7ffd97ae66478eb789c2b.lean/declarations/bot-eq-one--6907d5c2596454ac6e4e8736.md) | 390 | `result-track:6907d5c2596454ac6e4e8736f237f3a84eb57aaa1c11a279f97ea44d592a9626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
