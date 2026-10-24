# Verification target: GRWTSK.Algebra.Binomial.Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d5c1bbe25c7ace25ed26d2cddb97b62e32a0f95",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d5c1bbe25c7ace25ed26d2cddb97b62e32a0f95`.

Source path: `GRWTSK/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Smeval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BinomialRing](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/binomialring--9167dce5eb6876beb8ebfd73.md) | 70 | `declaration-track:9167dce5eb6876beb8ebfd737f887973eff4d88a8c9617e98e1c48bc7781ec7a` |
| 2 | `def` | [multichoose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose--56d2ced4fbffdb646fc6ef2f.md) | 87 | `declaration-track:56d2ced4fbffdb646fc6ef2f779733bcfb6c4773ae2de8669fc38f9001ca0ff9` |
| 3 | `theorem` | [multichoose_eq_multichoose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-eq-multichoose--eb31f58d1fdcd13fbea8e6e9.md) | 90 | `result-track:eb31f58d1fdcd13fbea8e6e9cd37fdf596f9dbe4fab3b2b00584a5596ae071ad` |
| 4 | `theorem` | [factorial_nsmul_multichoose_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/factorial-nsmul-multichoose-eq-ascpochhammer--02448ba7537b1da513d3965e.md) | 93 | `result-track:02448ba7537b1da513d3965ea64c0b999fd7e0365b6bd09151a17fe278999844` |
| 5 | `theorem` | [multichoose_zero_right'](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-zero-right--e014c4b18e68ad373e617f4b.md) | 98 | `result-track:e014c4b18e68ad373e617f4b0c013fa5cb7994a6c5ab2943aa397515421b3051` |
| 6 | `theorem` | [multichoose_zero_right](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-zero-right--6cdc856165a30c64dfa4861b.md) | 102 | `result-track:6cdc856165a30c64dfa4861bc4c5bf3989664af87e9ff3c009b7ed15f67031b5` |
| 7 | `theorem` | [multichoose_one_right'](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-one-right--8667f9266980013666f2b808.md) | 107 | `result-track:8667f9266980013666f2b808c74ba6d35bb926e4667fbdd85c109d683ee5345a` |
| 8 | `theorem` | [multichoose_one_right](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-one-right--3bdc488f7fda7713b85457fc.md) | 112 | `result-track:3bdc488f7fda7713b85457fc84789745360f60246a0779a9b2ea1bab5447425d` |
| 9 | `theorem` | [multichoose_zero_succ](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-zero-succ--50ac8c8240705479f3bb835b.md) | 118 | `result-track:50ac8c8240705479f3bb835bbf3e5e1abb9bdc248bbe114868a804515f1b3095` |
| 10 | `theorem` | [ascPochhammer_succ_succ](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/ascpochhammer-succ-succ--ac9c802df22f27ebc68c1a91.md) | 123 | `result-track:ac9c802df22f27ebc68c1a91da6ded863066cfe18b44233340034eba96fed0c6` |
| 11 | `theorem` | [multichoose_succ_succ](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-succ-succ--6d9c7ce71d55049549724a6f.md) | 134 | `result-track:6d9c7ce71d55049549724a6f04bd2387c40be5af8039f5bfb2b0f3add5473f35` |
| 12 | `theorem` | [multichoose_one](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-one--4b9f341bf85d790165ae890b.md) | 141 | `result-track:4b9f341bf85d790165ae890b2bee04b3dbb222393020b159faa447e1da56bc08` |
| 13 | `theorem` | [multichoose_two](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-two--656cadade6eba87917875e31.md) | 148 | `result-track:656cadade6eba87917875e31c4950c243603ffadadf430ee0e2c2e7e274b6a98` |
| 14 | `theorem` | [ascPochhammer_smeval_cast](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/ascpochhammer-smeval-cast--a1ede151d39424d89f7f8e93.md) | 165 | `result-track:a1ede151d39424d89f7f8e9309b0eed754f880071c29bf8432fb5396527e92a9` |
| 15 | `theorem` | [ascPochhammer_smeval_eq_eval](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/ascpochhammer-smeval-eq-eval--e3aa17ecc9b0f8760525e1d1.md) | 177 | `result-track:e3aa17ecc9b0f8760525e1d1d3f492a68ae42bdf4f40c6b04b53f5a1d55c1b18` |
| 16 | `theorem` | [descPochhammer_smeval_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/descpochhammer-smeval-eq-ascpochhammer--e94923de6b6e139baf53d6ae.md) | 183 | `result-track:e94923de6b6e139baf53d6ae5ea5dbfd9cd9451c15b8fda42c71c41d284d725a` |
| 17 | `theorem` | [descPochhammer_smeval_eq_descFactorial](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/descpochhammer-smeval-eq-descfactorial--6a8aa460f6cc2b0fa0251b53.md) | 193 | `result-track:6a8aa460f6cc2b0fa0251b53f04f6714be73dcab8a1e74123d03f7d9c4099569` |
| 18 | `theorem` | [ascPochhammer_smeval_neg_eq_descPochhammer](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/ascpochhammer-smeval-neg-eq-descpochhammer--7f9dfbcf2ac11e4795134640.md) | 205 | `result-track:7f9dfbcf2ac11e4795134640ed8b44bdeeb1c573f20e52db2ab23e4bad10a514` |
| 19 | `instance` | [Nat.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/nat-instbinomialring--1a23841467c4eae9f5041b70.md) | 224 | `declaration-track:1a23841467c4eae9f5041b706b8effea696815d8cf4d8b2abcc59ea9c810e83e` |
| 20 | `def` | [Int.multichoose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/int-multichoose--b3c51403ffa75d93ac3ca71a.md) | 232 | `declaration-track:b3c51403ffa75d93ac3ca71ad33928d3ea8fe18cfcec8531e8a1179848ea7546` |
| 21 | `instance` | [Int.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/int-instbinomialring--3f8b6ed44fcca2a5e5919db1.md) | 237 | `declaration-track:3f8b6ed44fcca2a5e5919db1b81e8bde25681d185171289a3229a5fb81985743` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/instance--8947a0d068b5e6d3880b7ec8.md) | 254 | `declaration-track:8947a0d068b5e6d3880b7ec854e1dbcf6b057f20767d71c05df8f76b7c95d8a4` |
| 23 | `theorem` | [smeval_ascPochhammer_self_neg](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/smeval-ascpochhammer-self-neg--11fcfb2203f031bafe24ceb8.md) | 274 | `result-track:11fcfb2203f031bafe24ceb843677628de3844e458aae2d80ec87733318a710d` |
| 24 | `theorem` | [smeval_ascPochhammer_succ_neg](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/smeval-ascpochhammer-succ-neg--0137b87308b5388e05f52543.md) | 287 | `result-track:0137b87308b5388e05f5254356736f5ef3955f592f60965ea2a267ed306148b5` |
| 25 | `theorem` | [smeval_ascPochhammer_neg_add](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/smeval-ascpochhammer-neg-add--c8c248b44d23b2f001eec495.md) | 292 | `result-track:c8c248b44d23b2f001eec495b9ebfdf8a01a21d121fd3349b9491a530aa90189` |
| 26 | `theorem` | [smeval_ascPochhammer_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/smeval-ascpochhammer-neg-of-lt--777b29b87ad22d71d858fa81.md) | 301 | `result-track:777b29b87ad22d71d858fa8138ec7755a66404e570bc261502ac32c4cc841721` |
| 27 | `theorem` | [smeval_ascPochhammer_nat_cast](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/smeval-ascpochhammer-nat-cast--475e7008999c92388f3d6a80.md) | 305 | `result-track:475e7008999c92388f3d6a8058712d773bedf0677ef9e60eee12afec4de56e85` |
| 28 | `theorem` | [multichoose_neg_self](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-neg-self--aa698ec2c58f4f4017e1144a.md) | 309 | `result-track:aa698ec2c58f4f4017e1144a01f8ea4c363f1a9e44674044a045b39cf0b41fd9` |
| 29 | `theorem` | [multichoose_neg_succ](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-neg-succ--12df5b61954d8161027ec138.md) | 315 | `result-track:12df5b61954d8161027ec138f956280566d29fe33fb12bd2c178e21d188c8f92` |
| 30 | `theorem` | [multichoose_neg_add](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-neg-add--e067ac1a6d9d54e33afb725d.md) | 319 | `result-track:e067ac1a6d9d54e33afb725de1c5515c377680e66e71bbcf2801690eda0c3510` |
| 31 | `theorem` | [multichoose_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-neg-of-lt--26b3effede1889b288a471b0.md) | 324 | `result-track:26b3effede1889b288a471b04cea6a07a09a4aad3bf787f3125b3ccb0c6c7874` |
| 32 | `theorem` | [multichoose_succ_neg_natCast](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/multichoose-succ-neg-natcast--b8387486cc58807b00e5e59e.md) | 328 | `result-track:b8387486cc58807b00e5e59e9fededef68ef66fbde5e59cc5a6be7c0f94e1bc7` |
| 33 | `theorem` | [smeval_ascPochhammer_int_ofNat](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/smeval-ascpochhammer-int-ofnat--c81fa00241458e299e25425b.md) | 334 | `result-track:c81fa00241458e299e25425bdee7c3dfcc132681daea8d21a2f17000c113cc06` |
| 34 | `def` | [choose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose--81407ea0bdd6b9798a7c3550.md) | 360 | `declaration-track:81407ea0bdd6b9798a7c35505a0838cfb862f6860e94718ebde99e9a016fe680` |
| 35 | `theorem` | [descPochhammer_eq_factorial_smul_choose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/descpochhammer-eq-factorial-smul-choose--87fef842c22e9a4b119adcd1.md) | 365 | `result-track:87fef842c22e9a4b119adcd153d843541d3aa25b40fdf0a880512f2b1a7f9503` |
| 36 | `theorem` | [choose_natCast](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-natcast--57f53109aabf5b40dee2d48f.md) | 374 | `result-track:57f53109aabf5b40dee2d48f446bfac524e8c82047fb96ee51d6512f8b9606c4` |
| 37 | `theorem` | [choose_zero_right'](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-zero-right--c06b82fc3861827730bb8fb8.md) | 380 | `result-track:c06b82fc3861827730bb8fb88a5dccf0b6df40cb0d99719d66827d1de9bcf9db` |
| 38 | `theorem` | [choose_zero_right](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-zero-right--4e50cdf7747ba181afbe0697.md) | 385 | `result-track:4e50cdf7747ba181afbe06971d49226de2dae39b8d05d118507ae78bee702410` |
| 39 | `theorem` | [choose_zero_succ](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-zero-succ--07c6e8f93d5d496d897bcf99.md) | 389 | `result-track:07c6e8f93d5d496d897bcf9938efbe90c714c6166a32ec98cdb000900047c090` |
| 40 | `theorem` | [choose_zero_pos](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-zero-pos--3f02db228eb58a180ab7f58d.md) | 393 | `result-track:3f02db228eb58a180ab7f58d65c51e282e31fc538ee6d8ef7e6a271bf9e55b84` |
| 41 | `theorem` | [choose_zero_ite](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-zero-ite--bfda359e1b5c5752cf6d9b02.md) | 397 | `result-track:bfda359e1b5c5752cf6d9b02d83686f04bf33dd9dbf54e7361da229f586eb8b8` |
| 42 | `theorem` | [choose_one_right'](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-one-right--025e122654eb099d158c2722.md) | 404 | `result-track:025e122654eb099d158c27223cfe2301f5dc0dbe84469d73cea10ff864b7b654` |
| 43 | `theorem` | [choose_one_right](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-one-right--5d6975110c4dbe389cd313c6.md) | 407 | `result-track:5d6975110c4dbe389cd313c672c068c7ca67b709cd36126d579102ad1cc86ca0` |
| 44 | `theorem` | [choose_neg](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-neg--22db011c83cc448c8af645b7.md) | 410 | `result-track:22db011c83cc448c8af645b76de3c495ca8c626af48bfcc688e852fba30afe37` |
| 45 | `theorem` | [descPochhammer_succ_succ_smeval](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/descpochhammer-succ-succ-smeval--7d8c56b337be75cdc7501a68.md) | 417 | `result-track:7d8c56b337be75cdc7501a6874e70ce41bb7453d0e48696cb7d5c5a3bdc15c9f` |
| 46 | `theorem` | [choose_succ_succ](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-succ-succ--3b39b4f5395b6b822ab6d72e.md) | 428 | `result-track:3b39b4f5395b6b822ab6d72e14cc216ff6eb5bb0921863667cc515ac3480ecc5` |
| 47 | `theorem` | [choose_eq_nat_choose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-eq-nat-choose--c7c9cdd42d016050a383d88a.md) | 435 | `result-track:c7c9cdd42d016050a383d88a479ae35f08040482e6f35ce83265cb9bad1d61eb` |
| 48 | `theorem` | [choose_smul_choose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-smul-choose--4813659d0983548ca0d41166.md) | 444 | `result-track:4813659d0983548ca0d41166f95ae619bae38b6e695627819a2c69a3d8266f09` |
| 49 | `theorem` | [choose_add_smul_choose](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/choose-add-smul-choose--8cd603588a28f8aca179ddcd.md) | 455 | `result-track:8cd603588a28f8aca179ddcd27cb2a1abe616f0e758d3eb9d8070dce25f6c79e` |
| 50 | `theorem` | [descPochhammer_smeval_add](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/descpochhammer-smeval-add--5ba1ea0911da6be089868edd.md) | 465 | `result-track:5ba1ea0911da6be089868edd4ee76e610f4362d71e81253ec0614dcbc12421ac` |
| 51 | `theorem` | [add_choose_eq](../../../../mathematics/Algebra/Binomial/Variantfb10ef411c1253eb0e95d7b2df528a1f265dff1a1f67ce188d0359d87b09510c.lean/declarations/add-choose-eq--85aaf6ef76e864079f333992.md) | 494 | `result-track:85aaf6ef76e864079f33399239960aacb6aea380a11c7470428c5a1356496370` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
