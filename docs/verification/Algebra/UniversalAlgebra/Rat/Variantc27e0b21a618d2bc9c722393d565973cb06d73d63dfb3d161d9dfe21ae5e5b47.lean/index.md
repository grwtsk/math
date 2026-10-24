# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a72b468f572059f8fad4af6c9de7b8c958f536b0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a72b468f572059f8fad4af6c9de7b8c958f536b0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mkRat_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-nonneg--526ad939ad1056eca4f12858.md) | 35 | `result-track:526ad939ad1056eca4f1285864d3d930dad5d6daa664a3571f11a1e3b93e39f2` |
| 2 | `theorem` | [ofScientific_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/ofscientific-nonneg--c067285ead7a0ba63e33ee2d.md) | 38 | `result-track:c067285ead7a0ba63e33ee2d948dfd7764f4021c09384ff50b5b942f2953fe3b` |
| 3 | `instance` | [_root_.NNRatCast.toOfScientific](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/root-nnratcast-toofscientific--cd7a416c6a7baa80382c5afa.md) | 45 | `declaration-track:cd7a416c6a7baa80382c5afacbbaac188913e90ca5d5a899474a5ba53d348428` |
| 4 | `theorem` | [_root_.NNRatCast.toOfScientific_def](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/root-nnratcast-toofscientific-def--ec6f99774f60b4ea493258d8.md) | 49 | `result-track:ec6f99774f60b4ea493258d8f46119d2724cfc618c8c95aca0e8c051e204fc24` |
| 5 | `theorem` | [_root_.NNRat.cast_ofScientific](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/root-nnrat-cast-ofscientific--ff3ff2dc421cc4ce4283e2db.md) | 56 | `result-track:ff3ff2dc421cc4ce4283e2dbf37f85eb3d89bc080278adf73dcd6f2e40082015` |
| 6 | `lemma` | [divInt_le_divInt](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/divint-le-divint--b904718f7689f012ae98bbf9.md) | 60 | `result-track:b904718f7689f012ae98bbf931edc9d2a0bf410c9a6aef86babc73f5c88bd139` |
| 7 | `lemma` | [lt_iff_le_not_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/lt-iff-le-not-ge--a7aefa1f8751e4687369a49b.md) | 65 | `result-track:a7aefa1f8751e4687369a49b9106dd16fedd541b2a67697da8a26f07f5b36245` |
| 8 | `instance` | [linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/linearorder--8e92878e5cfe06cd733beacf.md) | 68 | `declaration-track:8e92878e5cfe06cd733beacff73c22d716fd799b56d5d389ad46c24843373c8c` |
| 9 | `theorem` | [mkRat_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-nonneg-iff--81617442c21b8001f7fe4d79.md) | 78 | `result-track:81617442c21b8001f7fe4d79ee60b49bbddd0f724a5eb54d6bfaf1abb8421590` |
| 10 | `theorem` | [mkRat_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-pos-iff--3d1df3768ee052c6dae43c30.md) | 81 | `result-track:3d1df3768ee052c6dae43c302890878c3bcb256da7d0a84c7c9c64405b33c4a5` |
| 11 | `theorem` | [mkRat_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-pos--72a18f795d08434a21af5c10.md) | 84 | `result-track:72a18f795d08434a21af5c10c5e8cf8e3ab2d75fdfaff71224d8cd1c0b648844` |
| 12 | `theorem` | [mkRat_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-nonpos-iff--03ce8b501ad6c5bb47a72396.md) | 87 | `result-track:03ce8b501ad6c5bb47a72396daf36a7fe75e81ed34c2a989852ffb4c2d542349` |
| 13 | `theorem` | [mkRat_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-nonpos--e64a28286d8bbb33c0796a74.md) | 90 | `result-track:e64a28286d8bbb33c0796a746669bbfc49b2c634021ebe08b81b020af00addb1` |
| 14 | `theorem` | [mkRat_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-neg-iff--9cb2e5a0e2f184f6fac828d7.md) | 95 | `result-track:9cb2e5a0e2f184f6fac828d77f8db790fbe1f8aecc94e618835b07cd21b8a15c` |
| 15 | `theorem` | [mkRat_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/mkrat-neg--41c23c953607319458659f4c.md) | 98 | `result-track:41c23c953607319458659f4ca4ff05e1c4617246ce8869d3ca44d3460fdc05db` |
| 16 | `instance` | [instDistribLattice](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instdistriblattice--dbdfededd6de45efe2b87328.md) | 107 | `declaration-track:dbdfededd6de45efe2b873283a74ef153a2cbb2c41c7779dd812ed2303fa1a15` |
| 17 | `instance` | [instLattice](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instlattice--3b333f5002dfcd8003fbe2c1.md) | 108 | `declaration-track:3b333f5002dfcd8003fbe2c18bc02f328ed2aba9ae468c853ac28a1da5bb5a0d` |
| 18 | `instance` | [instSemilatticeInf](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instsemilatticeinf--558d45251a76a9adf8bbae81.md) | 109 | `declaration-track:558d45251a76a9adf8bbae81be7fcb90b5d69f61cd31b8c40cd1f7de08a19901` |
| 19 | `instance` | [instSemilatticeSup](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instsemilatticesup--cfc37206dc7cab0232805eb7.md) | 110 | `declaration-track:cfc37206dc7cab0232805eb760f7c7545d59cba8d7544116422759a6e1281bbb` |
| 20 | `instance` | [instInf](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instinf--5716a775fd4995f238f53882.md) | 111 | `declaration-track:5716a775fd4995f238f53882548d8f764a485eca17716d9d1041427a45762806` |
| 21 | `instance` | [instSup](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instsup--a80e5dfdd2ad7fcf418ccca2.md) | 112 | `declaration-track:a80e5dfdd2ad7fcf418ccca23354fb34888e9f4742d550003b88b2dfb1e1563f` |
| 22 | `instance` | [instPartialOrder](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instpartialorder--c08e1f2b1b4bb482716c15fb.md) | 113 | `declaration-track:c08e1f2b1b4bb482716c15fbd21f7ef39d91b31b746a4496d591cb1bf37ee118` |
| 23 | `instance` | [instPreorder](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instpreorder--ecf487257d0f26dba91aafb9.md) | 114 | `declaration-track:ecf487257d0f26dba91aafb92349c70e4c33accee92d386ba60aeda7b2a6cd87` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/instance--08cd26849b3e19a5f01c24fb.md) | 118 | `declaration-track:08cd26849b3e19a5f01c24fbbd6944d6c9f60116833389512caef425af9d8841` |
| 25 | `lemma` | [num_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/num-nonpos--60eb4491ecc163348f13221b.md) | 121 | `result-track:60eb4491ecc163348f13221b531c23fc123eda2266df006e974c7bb9095717ee` |
| 26 | `lemma` | [num_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/num-pos--9b86b7f8a6f9beaeec75d5e1.md) | 123 | `result-track:9b86b7f8a6f9beaeec75d5e1df8d6ff4480e56a956e0882d683ebdf2b13d7907` |
| 27 | `lemma` | [num_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/num-neg--6096152f1c8696b5c3736ed8.md) | 124 | `result-track:6096152f1c8696b5c3736ed81a0f92bf7c978cade5c4b54f7e3ac98dfcb31c3a` |
| 28 | `theorem` | [div_lt_div_iff_mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/div-lt-div-iff-mul-lt-mul--b62ff981111622732b84029f.md) | 126 | `result-track:b62ff981111622732b84029f39eb08f98c058e905a220d213917d2b90304236f` |
| 29 | `theorem` | [num_le_denom_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/num-le-denom-iff--41cbbe8060e8ea3a46af3810.md) | 134 | `result-track:41cbbe8060e8ea3a46af3810c283d6208305ce67eb2dc964725f1b8bad13df36` |
| 30 | `theorem` | [num_lt_denom_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/num-lt-denom-iff--51d28be673cd0fb263c32020.md) | 136 | `result-track:51d28be673cd0fb263c32020d2d156f991c9b34c169d067d1b945b78a145cf02` |
| 31 | `theorem` | [abs_def](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/abs-def--548ec3eae80868c5fe4456a5.md) | 138 | `result-track:548ec3eae80868c5fe4456a513cffc7a16decedb261d85b3148da08ea8c82d36` |
| 32 | `theorem` | [abs_def'](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/abs-def--66735534ed96d894a407850c.md) | 141 | `result-track:66735534ed96d894a407850cfcf6f49e4b9371c96b167a5b2f54778b16c98ead` |
| 33 | `theorem` | [num_abs_eq_abs_num](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/num-abs-eq-abs-num--d350f2f614b42d52af195417.md) | 148 | `result-track:d350f2f614b42d52af19541753eac344d5b1bd5096bd7b1afec911f0142b9335` |
| 34 | `theorem` | [den_abs_eq_den](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantc27e0b21a618d2bc9c722393d565973cb06d73d63dfb3d161d9dfe21ae5e5b47.lean/declarations/den-abs-eq-den--c1c5cbac83fbad390e49e835.md) | 152 | `result-track:c1c5cbac83fbad390e49e8350fc03fc9f5741036493ff1fe3a71fd04fbc5d8ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
