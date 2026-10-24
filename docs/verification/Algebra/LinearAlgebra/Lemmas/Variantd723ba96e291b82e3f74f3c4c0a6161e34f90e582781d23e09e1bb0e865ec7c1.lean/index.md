# Verification target: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c592adb9eb5e1eec28da9bfa3ec335213e6977d0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c592adb9eb5e1eec28da9bfa3ec335213e6977d0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-lt--e97db12661aa0db8ec13a0b3.md) | 50 | `result-track:e97db12661aa0db8ec13a0b3506eda1bc52985de4e78b3f74a2630588f38da76` |
| 2 | `theorem` | [finrank_sup_add_finrank_inf_eq](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-sup-add-finrank-inf-eq--fbaac959e27cc25e3ff25658.md) | 56 | `result-track:fbaac959e27cc25e3ff2565810f731de7ac9fe8788953e1df2d1b083c219a61f` |
| 3 | `theorem` | [finrank_add_le_finrank_add_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-add-le-finrank-add-finrank--ab4501890eb06808c70503fa.md) | 64 | `result-track:ab4501890eb06808c70503fa24d16a9cf9df7b817c086adbff6ca0da730258c3` |
| 4 | `theorem` | [finrank_add_finrank_le_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-add-finrank-le-of-disjoint--b466555948fc2523f95ad6af.md) | 69 | `result-track:b466555948fc2523f95ad6afce0b7d503e2e54eb166a97e9777c592a00bbc609` |
| 5 | `theorem` | [eq_top_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/eq-top-of-disjoint--dbd5cd01bd1576966ca8e0e5.md) | 75 | `result-track:dbd5cd01bd1576966ca8e0e50f634c1ea0444687b28cd4ab3e381b14e3fa2e56` |
| 6 | `theorem` | [isCompl_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/iscompl-iff-disjoint--52d541daabd7feb0820ffb01.md) | 88 | `result-track:52d541daabd7feb0820ffb015864c79488ecf4839120094f5919d93ad458024f` |
| 7 | `def` | [LinearEquiv.quotEquivOfEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/linearequiv-quotequivofequiv--96893bf5306f821258d560c1.md) | 108 | `declaration-track:96893bf5306f821258d560c1868abdb0d8258f58dcac7a3ecb06a51473a29964` |
| 8 | `def` | [LinearEquiv.quotEquivOfQuotEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/linearequiv-quotequivofquotequiv--5e9c491935b567af5943d25c.md) | 118 | `declaration-track:5e9c491935b567af5943d25cf05f760cae47112c22d1c52a55b134d8ff426059` |
| 9 | `theorem` | [finrank_range_add_finrank_ker](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-range-add-finrank-ker--89cc3285ef74cc0e5bba0948.md) | 139 | `result-track:89cc3285ef74cc0e5bba09484d953a2f7472f05e32d97eff72e7f769c13e9a71` |
| 10 | `lemma` | [ker_ne_bot_of_finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/ker-ne-bot-of-finrank-lt--e683b3a8da6388c96b3f70f8.md) | 144 | `result-track:e683b3a8da6388c96b3f70f8759ddcc85bbe7d1ad4248074747892972ca61552` |
| 11 | `theorem` | [injective_iff_surjective_of_finrank_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/injective-iff-surjective-of-finrank-eq-finrank--f6af5b647e14daa737075088.md) | 163 | `result-track:f6af5b647e14daa737075088deffdb1dfab6b439fd997adc87096d028a2629eb` |
| 12 | `theorem` | [ker_eq_bot_iff_range_eq_top_of_finrank_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/ker-eq-bot-iff-range-eq-top-of-finrank-eq-finrank--baef7fd2b78c96d039f051e7.md) | 173 | `result-track:baef7fd2b78c96d039f051e7a17fcdc0f806cbb4c8c80a45afadbe62ae03e3c1` |
| 13 | `def` | [linearEquivOfInjective](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/linearequivofinjective--f78342343224fb36514a981e.md) | 181 | `declaration-track:f78342343224fb36514a981e60d908721a906f726c73096b647962ec309756a3` |
| 14 | `theorem` | [linearEquivOfInjective_apply](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/linearequivofinjective-apply--514a0e3715efa501da3c41a5.md) | 187 | `result-track:514a0e3715efa501da3c41a5452d2e4066374caef48bde4c54710c4fa67d03fa` |
| 15 | `theorem` | [finrank_lt_finrank_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-lt-finrank-of-lt--43ac25bd5cbc9ae49487cbb0.md) | 201 | `result-track:43ac25bd5cbc9ae49487cbb0da01470fb5ea8d01cc2250b5b1516d8c0f502ef8` |
| 16 | `theorem` | [finrank_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-strictmono--88a350e9d26bdecd7b29f03b.md) | 206 | `result-track:88a350e9d26bdecd7b29f03b7c8e394d8077d6d3d76d74ec60d591284ce0de79` |
| 17 | `theorem` | [finrank_add_eq_of_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finrank-add-eq-of-iscompl--20f7783e192c0d76ed6c3b7e.md) | 209 | `result-track:20f7783e192c0d76ed6c3b7e6e1d21500d1f507523b90e07024d6137355f7391` |
| 18 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank'](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/linearindependent-span-eq-top-of-card-eq-finrank--cc840ba805b34e37bc9e7e6d.md) | 225 | `result-track:cc840ba805b34e37bc9e7e6d496348d210909b37f5470d70801dee1df1a0c67f` |
| 19 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/linearindependent-span-eq-top-of-card-eq-finrank--40a30aa31191d2c408a57449.md) | 232 | `result-track:40a30aa31191d2c408a57449d16df95d423e619deddf34e290960374e76e4fc6` |
| 20 | `def` | [basisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/basisoflinearindependentofcardeqfinrank--cc9a5711712e7ba7278a79cc.md) | 240 | `declaration-track:cc9a5711712e7ba7278a79ccc13a714672d2cdb0952e29f0574964fb74562a5f` |
| 21 | `theorem` | [coe_basisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/coe-basisoflinearindependentofcardeqfinrank--115fb14c79c9d3d1afe51e83.md) | 246 | `result-track:115fb14c79c9d3d1afe51e834485c31876156edf324bc74a932d21748e830bb9` |
| 22 | `def` | [basisOfPiSpaceOfLinearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/basisofpispaceoflinearindependent--6446029931e755bff01cde1c.md) | 252 | `declaration-track:6446029931e755bff01cde1cea79291fce8b7380c954ce9b037996f7c7bcfc45` |
| 23 | `theorem` | [coe_basisOfPiSpaceOfLinearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/coe-basisofpispaceoflinearindependent--430027c24f02166f8f25e624.md) | 262 | `result-track:430027c24f02166f8f25e62466ca546b5480e296f7244482edb64304524c0a3b` |
| 24 | `def` | [finsetBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/finsetbasisoflinearindependentofcardeqfinrank--27577e15e0dff8c503d7a914.md) | 273 | `declaration-track:27577e15e0dff8c503d7a914ed139c3fdb108d247e7e7804a057715ea7689e49` |
| 25 | `theorem` | [coe_finsetBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/coe-finsetbasisoflinearindependentofcardeqfinrank--e63edb6daa4fd24002eb3e30.md) | 279 | `result-track:e63edb6daa4fd24002eb3e30e16bc1f144db6c88332c4a04dbeb94d2f5aa0ec9` |
| 26 | `def` | [setBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/setbasisoflinearindependentofcardeqfinrank--4262043017f7c378901388d1.md) | 286 | `declaration-track:4262043017f7c378901388d1827158ff7d535c171d2c8bc064371deae99587c9` |
| 27 | `theorem` | [coe_setBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/coe-setbasisoflinearindependentofcardeqfinrank--99e6a003b139e3543c453aec.md) | 292 | `result-track:99e6a003b139e3543c453aec81de6b8a65b2aad94d13d545657e4508297abb87` |
| 28 | `theorem` | [is_simple_module_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/is-simple-module-of-finrank-eq-one--1e9ac7be4dc9618293c110aa.md) | 306 | `result-track:1e9ac7be4dc9618293c110aa7cafa4f97c9842ef49af020848aa85affb32d695` |
| 29 | `theorem` | [Subalgebra.isSimpleOrder_of_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/subalgebra-issimpleorder-of-finrank--8865b1140b430831e451652b.md) | 325 | `result-track:8865b1140b430831e451652bd5f3ff9b47304c99752afafe2cfad62a329d1537` |
| 30 | `theorem` | [exists_ker_pow_eq_ker_pow_succ](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/exists-ker-pow-eq-ker-pow-succ--7a40000d283ebb344d29c41b.md) | 353 | `result-track:7a40000d283ebb344d29c41bc57b6cf3f0e83aac7926fdac7bbc2f93add59745` |
| 31 | `theorem` | [ker_pow_eq_ker_pow_finrank_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/ker-pow-eq-ker-pow-finrank-of-le--c70c1aeeafd6796563a01fd6.md) | 380 | `result-track:c70c1aeeafd6796563a01fd688212b244da4ef5797d72a60c72c33a4718c6ac5` |
| 32 | `theorem` | [ker_pow_le_ker_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variantd723ba96e291b82e3f74f3c4c0a6161e34f90e582781d23e09e1bb0e865ec7c1.lean/declarations/ker-pow-le-ker-pow-finrank--5590f43c16ea30627538c118.md) | 392 | `result-track:5590f43c16ea30627538c11895089afe2d4bf5cb1c056e7d89366c1852f76da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
