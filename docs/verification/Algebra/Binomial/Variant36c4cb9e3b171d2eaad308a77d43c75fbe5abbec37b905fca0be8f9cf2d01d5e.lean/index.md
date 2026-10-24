# Verification target: GRWTSK.Algebra.Binomial.Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57269dd00db4f80d58a1c70cd0d803ddee0c7a3",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57269dd00db4f80d58a1c70cd0d803ddee0c7a3`.

Source path: `GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean.json)

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
| 1 | `class` | [BinomialRing](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/binomialring--be77adf57c7ccc0fb178a95f.md) | 84 | `declaration-track:be77adf57c7ccc0fb178a95fe106d4241639ef52e92b73f77611f925e299f936` |
| 2 | `def` | [multichoose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose--23c09e81213ff125c4f4ea12.md) | 108 | `declaration-track:23c09e81213ff125c4f4ea1256612c575f8227f09fc55fc4acd8e66ad5ae2682` |
| 3 | `theorem` | [multichoose_eq_multichoose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-eq-multichoose--556d180ec3bea154b6e8f05b.md) | 111 | `result-track:556d180ec3bea154b6e8f05b2bccd7f1f71cba1d98284ceef942ad4e49ddfb9d` |
| 4 | `theorem` | [factorial_nsmul_multichoose_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/factorial-nsmul-multichoose-eq-ascpochhammer--482db21af27ea851fa902662.md) | 114 | `result-track:482db21af27ea851fa902662d5f59d5555bc281d3151ad8560e8ce9dfc04c8de` |
| 5 | `theorem` | [multichoose_zero_right'](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-zero-right--625a0503eb80348fa2c1c4fe.md) | 119 | `result-track:625a0503eb80348fa2c1c4feee27a5dc7ea0d4b62a7d098cdd6a5922df10a2e6` |
| 6 | `theorem` | [multichoose_zero_right](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-zero-right--158e5283d7d87c1e207aa1d4.md) | 123 | `result-track:158e5283d7d87c1e207aa1d496529667924dbe93f8d04a97e088191d30ea630e` |
| 7 | `theorem` | [multichoose_one_right'](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-one-right--5904c0cae673a9e57ed68082.md) | 128 | `result-track:5904c0cae673a9e57ed680825442bb9171abb185bdfdd8f5c8d7896232fa036b` |
| 8 | `theorem` | [multichoose_one_right](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-one-right--216bd11bc16440596e34b376.md) | 133 | `result-track:216bd11bc16440596e34b376b7046c0eaf53403c3b3b1bfeb24e5a99259e50b0` |
| 9 | `theorem` | [multichoose_zero_succ](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-zero-succ--438bdad31b08b18129ae81be.md) | 139 | `result-track:438bdad31b08b18129ae81bec9dec4c04d9fb5603b5eb404a2ef9dfa0b834d79` |
| 10 | `theorem` | [ascPochhammer_succ_succ](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/ascpochhammer-succ-succ--656aaf4a0e513e5f68261110.md) | 144 | `result-track:656aaf4a0e513e5f6826111096e547156398cc187d37e9261528dde4cb01262f` |
| 11 | `theorem` | [multichoose_succ_succ](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-succ-succ--45d5a2c2a920a3d091cba547.md) | 155 | `result-track:45d5a2c2a920a3d091cba5472b1b21fcadf23ff9cacd089419796062c18db435` |
| 12 | `theorem` | [multichoose_one](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-one--f63b81ff3ab10f7d87612495.md) | 162 | `result-track:f63b81ff3ab10f7d876124953362d776c9e7f80982c71f7ced64392ea7a174ab` |
| 13 | `theorem` | [multichoose_two](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-two--52e33a0466c954598a10d4b5.md) | 169 | `result-track:52e33a0466c954598a10d4b5f5b1a0f110ddcb8c43c57c8043b1514b38716a21` |
| 14 | `lemma` | [map_multichoose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/map-multichoose--8b1b40359d0471f986e6cb03.md) | 178 | `result-track:8b1b40359d0471f986e6cb03c59f0c2f78ab29a8753ff55e84c94af49371f0bd` |
| 15 | `theorem` | [ascPochhammer_smeval_cast](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/ascpochhammer-smeval-cast--38765d70993204c5d17ca218.md) | 196 | `result-track:38765d70993204c5d17ca2185160dda8d52cbedcfa70627ab5fd5a394b16b291` |
| 16 | `theorem` | [ascPochhammer_smeval_eq_eval](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/ascpochhammer-smeval-eq-eval--ecbea9e0ea52914764fb88a9.md) | 208 | `result-track:ecbea9e0ea52914764fb88a96662d6cc21733c88b111e751afedaa72bcb43327` |
| 17 | `theorem` | [descPochhammer_smeval_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/descpochhammer-smeval-eq-ascpochhammer--c2af0b302e660f340d9e9980.md) | 214 | `result-track:c2af0b302e660f340d9e9980a614f285b0edcb3bdd899f8cf47a0377b36ffb11` |
| 18 | `theorem` | [descPochhammer_smeval_eq_descFactorial](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/descpochhammer-smeval-eq-descfactorial--c1102f22ff34b845eed35e2c.md) | 224 | `result-track:c1102f22ff34b845eed35e2c3fc2c74709d58350d8e12ed573c2d94088c477b8` |
| 19 | `theorem` | [ascPochhammer_smeval_neg_eq_descPochhammer](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/ascpochhammer-smeval-neg-eq-descpochhammer--03822c6a5b73834cf6181d2e.md) | 236 | `result-track:03822c6a5b73834cf6181d2e0cf36098865ef433679a502aee5cdafab9eb0b3a` |
| 20 | `instance` | [Nat.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/nat-instbinomialring--0309093714ff26e7f96cc379.md) | 255 | `declaration-track:0309093714ff26e7f96cc3797b24f4a1faca52f0aa7f75e59ae8c72983fc482f` |
| 21 | `def` | [Int.multichoose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/int-multichoose--cee7d90234b1d2e0e7850a0a.md) | 262 | `declaration-track:cee7d90234b1d2e0e7850a0a31360d599fcb99a7f15ac66ec6c3f22ed7066b98` |
| 22 | `instance` | [Int.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/int-instbinomialring--08c2835cb0be6cfcaecb3398.md) | 267 | `declaration-track:08c2835cb0be6cfcaecb3398650bb3d0f5f8295962125a84cb1c0d12bfb5fc89` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/instance--e2b4671124eb1611aa2129e6.md) | 285 | `declaration-track:e2b4671124eb1611aa2129e64496f719983b88e0a119baf960a2adc18b56f837` |
| 24 | `theorem` | [smeval_ascPochhammer_self_neg](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/smeval-ascpochhammer-self-neg--8f02ee2138391d59a2c01c22.md) | 302 | `result-track:8f02ee2138391d59a2c01c225504e0b6ea2906fdd5b1cd805f7a5a9431049a8c` |
| 25 | `theorem` | [smeval_ascPochhammer_succ_neg](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/smeval-ascpochhammer-succ-neg--6850751f7166e3ced916e16d.md) | 315 | `result-track:6850751f7166e3ced916e16d5db5112cbc1e203dac5574f2a7afab932f19ff57` |
| 26 | `theorem` | [smeval_ascPochhammer_neg_add](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/smeval-ascpochhammer-neg-add--0de562a22d274f77bec1b990.md) | 320 | `result-track:0de562a22d274f77bec1b9902f9562975662f9aa4cdda2f231326bde41df4360` |
| 27 | `theorem` | [smeval_ascPochhammer_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/smeval-ascpochhammer-neg-of-lt--6b45131bfdd2071a4afba432.md) | 329 | `result-track:6b45131bfdd2071a4afba4323861edd9cc4a386a904984731a02f60b5a71f345` |
| 28 | `theorem` | [smeval_ascPochhammer_nat_cast](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/smeval-ascpochhammer-nat-cast--80a77936c4a904f6e3bec481.md) | 333 | `result-track:80a77936c4a904f6e3bec481168453fed154414db5b1b547f7e23fc23bf29665` |
| 29 | `theorem` | [multichoose_neg_self](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-neg-self--9781dd90f50783ecc11fb5ce.md) | 337 | `result-track:9781dd90f50783ecc11fb5cee41777222a9d9fcbb71af90b5c407d8dbcd92246` |
| 30 | `theorem` | [multichoose_neg_succ](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-neg-succ--73fc5cac37ea84bdc2a6fbb1.md) | 343 | `result-track:73fc5cac37ea84bdc2a6fbb1cecfdd16c673db5bc133895f9a1a085120a0b449` |
| 31 | `theorem` | [multichoose_neg_add](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-neg-add--099931225d15c0706628c5a4.md) | 347 | `result-track:099931225d15c0706628c5a42eb96ede02c90b888030c71cdcfc92edfbce6190` |
| 32 | `theorem` | [multichoose_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-neg-of-lt--6b4b5107ba0efdda0c2d9f15.md) | 352 | `result-track:6b4b5107ba0efdda0c2d9f151d95cf45da8d612048cf4ace11f10d95753184bb` |
| 33 | `theorem` | [multichoose_succ_neg_natCast](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-succ-neg-natcast--ab8f96b8be9edd40b4ba6868.md) | 356 | `result-track:ab8f96b8be9edd40b4ba686827798be0facaa692f57035ffe642bd58763e2d31` |
| 34 | `theorem` | [smeval_ascPochhammer_int_ofNat](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/smeval-ascpochhammer-int-ofnat--9b504411e7bfb927bd9e7b64.md) | 362 | `result-track:9b504411e7bfb927bd9e7b64ba21cf7030e6734fd53da9b5f77b252c5bdeb028` |
| 35 | `def` | [choose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose--5791d746288b13c012314ca8.md) | 388 | `declaration-track:5791d746288b13c012314ca8dcccb5a89b5a49a0072b162dac4120be13b0c58a` |
| 36 | `theorem` | [multichoose_eq](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/multichoose-eq--0fc267031c9a995b7d230fea.md) | 393 | `result-track:0fc267031c9a995b7d230fea41abbda6812c86f4c8c1831280f6c48ef64c17af` |
| 37 | `theorem` | [descPochhammer_eq_factorial_smul_choose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/descpochhammer-eq-factorial-smul-choose--16567d8a8e93c9519972424b.md) | 398 | `result-track:16567d8a8e93c9519972424bd2404f8da6ba2a095813d7698062d699e4974f19` |
| 38 | `theorem` | [choose_natCast](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-natcast--90033c7c406d3f475e197a98.md) | 407 | `result-track:90033c7c406d3f475e197a98f9e960a6f0d40b95dc0c8b6b3bbdc0c0bddab8bb` |
| 39 | `theorem` | [choose_zero_right'](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-zero-right--b23df23cd6890c62b4ccd3d1.md) | 413 | `result-track:b23df23cd6890c62b4ccd3d15431d8a8b288b6bf429d502d923df42a0ef6c4f7` |
| 40 | `theorem` | [choose_zero_right](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-zero-right--a85957402ad7fbb74f214c51.md) | 418 | `result-track:a85957402ad7fbb74f214c51857715bcbf5737fae427ceee21da562d2e190a11` |
| 41 | `theorem` | [choose_zero_succ](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-zero-succ--05e53f1b30d52bcbdf765909.md) | 422 | `result-track:05e53f1b30d52bcbdf76590909bfeb993c6ec72419db9824b0a67a67376d80d8` |
| 42 | `theorem` | [choose_zero_pos](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-zero-pos--a42cd08c356f4e3576ec4082.md) | 426 | `result-track:a42cd08c356f4e3576ec40827c9971d190c7c60adc57f10681212dc755c5fdce` |
| 43 | `theorem` | [choose_zero_ite](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-zero-ite--7e4133d5ac74adf6a1302cad.md) | 430 | `result-track:7e4133d5ac74adf6a1302cad13ddf52ee4606f9ecc5e862149bc47d0f368c976` |
| 44 | `theorem` | [choose_one_right'](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-one-right--a5a7164646a705d26b7743cd.md) | 437 | `result-track:a5a7164646a705d26b7743cdc23d4049d823cfb2bb3be7c4bd9ab31d12e2ff87` |
| 45 | `theorem` | [choose_one_right](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-one-right--8ba8f567743894e3e04fe632.md) | 440 | `result-track:8ba8f567743894e3e04fe632d5130ed9de9c40c1a5e47dd871f449b6c80ecd51` |
| 46 | `theorem` | [choose_neg](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-neg--eaa7e1b1894f06c15c6e1252.md) | 443 | `result-track:eaa7e1b1894f06c15c6e125273938a7c5dba32d9cae27af3bd25c1d8917f4e1c` |
| 47 | `theorem` | [choose_neg'](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-neg--18b0a3abf66761a1ba9107cf.md) | 450 | `result-track:18b0a3abf66761a1ba9107cf5e849c3dd79c366c72eb6804b66da1e1989c362e` |
| 48 | `theorem` | [descPochhammer_succ_succ_smeval](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/descpochhammer-succ-succ-smeval--c8c2ea18b875adb4eccfd14d.md) | 454 | `result-track:c8c2ea18b875adb4eccfd14d696cd1ba1ab321f56cb1a6279f3e6ede082c9ca6` |
| 49 | `theorem` | [choose_succ_succ](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-succ-succ--edb2815796c8681a9be66860.md) | 465 | `result-track:edb2815796c8681a9be6686073c25c88422e8d8f8d60e04425c0a6c820822f44` |
| 50 | `theorem` | [choose_smul_choose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-smul-choose--f38456681caf3877fc131ab9.md) | 472 | `result-track:f38456681caf3877fc131ab9020e8c33d3bd140d4b62177b5e807c2ed7274f45` |
| 51 | `theorem` | [choose_add_smul_choose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-add-smul-choose--6afdd0a6dd1cd9b5cd034802.md) | 483 | `result-track:6afdd0a6dd1cd9b5cd034802e8c0793b3c03709c7be40245784fb3236f52370a` |
| 52 | `theorem` | [choose_eq_smul](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/choose-eq-smul--f13478b5a9dc2b21deb050ad.md) | 490 | `result-track:f13478b5a9dc2b21deb050adc87f8e9e2383766960cbca252f0c4c5df23ec72d` |
| 53 | `theorem` | [descPochhammer_smeval_add](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/descpochhammer-smeval-add--c053c2059e086625fad2fa93.md) | 498 | `result-track:c053c2059e086625fad2fa93488e7b1140f3e0568040aa0ca4d6a966fc609d8f` |
| 54 | `theorem` | [add_choose_eq](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/add-choose-eq--79e245147b1fac849ae1f843.md) | 527 | `result-track:79e245147b1fac849ae1f843f865059b69278750213da9bc84260574291c9b75` |
| 55 | `lemma` | [map_choose](../../../../mathematics/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/declarations/map-choose--0395e389ee99d34d3b83e712.md) | 541 | `result-track:0395e389ee99d34d3b83e71292752b96fec31365d47e58cd8446248a4e043033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
