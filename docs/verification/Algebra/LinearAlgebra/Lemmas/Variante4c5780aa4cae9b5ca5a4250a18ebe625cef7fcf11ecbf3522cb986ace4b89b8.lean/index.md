# Verification target: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b40f5178b41f8e87b4c73a05bb33f11fe249e51",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b40f5178b41f8e87b4c73a05bb33f11fe249e51`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-lt--de62d3bad34fb21500c8cdc9.md) | 42 | `result-track:de62d3bad34fb21500c8cdc909519c51f1bb1ae4d5441406c9b64299a88aede9` |
| 2 | `theorem` | [finrank_sup_add_finrank_inf_eq](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-sup-add-finrank-inf-eq--b94e8fcebf42ecfff8631c5b.md) | 48 | `result-track:b94e8fcebf42ecfff8631c5b84ec63b6277a92c54b984b897b0cb7b30833f502` |
| 3 | `theorem` | [finrank_add_le_finrank_add_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-add-le-finrank-add-finrank--de3fbf442414782ba12d264d.md) | 56 | `result-track:de3fbf442414782ba12d264dbdc765751cdb517252b17fbccbe60939afae2781` |
| 4 | `theorem` | [finrank_add_finrank_le_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-add-finrank-le-of-disjoint--ed113971483e586abd34f723.md) | 61 | `result-track:ed113971483e586abd34f723f44793a615946df512ac15a721161492dd317510` |
| 5 | `theorem` | [eq_top_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/eq-top-of-disjoint--178895a0edc241434a344beb.md) | 67 | `result-track:178895a0edc241434a344beb7668b2edb353910d67a54eaeeb786d41c59e2879` |
| 6 | `theorem` | [isCompl_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/iscompl-iff-disjoint--b94daa7a8eab0c97de19230d.md) | 80 | `result-track:b94daa7a8eab0c97de19230d661c8c51b322a19044251ab20ee01645972554f6` |
| 7 | `def` | [LinearEquiv.quotEquivOfEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/linearequiv-quotequivofequiv--3cfe17f7e8035983d04b3de6.md) | 100 | `declaration-track:3cfe17f7e8035983d04b3de64fe77bc73232c92cf002e8e3a1ff78d9b103310f` |
| 8 | `def` | [LinearEquiv.quotEquivOfQuotEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/linearequiv-quotequivofquotequiv--cc61ade6eeb39be1ffc7fd03.md) | 110 | `declaration-track:cc61ade6eeb39be1ffc7fd03b5393d01da853ffb35e7d2b7efc89c59e8fa4796` |
| 9 | `theorem` | [finrank_range_add_finrank_ker](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-range-add-finrank-ker--b61790e9c3d239f355b4cac9.md) | 131 | `result-track:b61790e9c3d239f355b4cac9a4ee364e2ab9f9a48b82e0fd707b5494f6e23c1d` |
| 10 | `lemma` | [ker_ne_bot_of_finrank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/ker-ne-bot-of-finrank-lt--c05587e69a16d0461fedbaf2.md) | 136 | `result-track:c05587e69a16d0461fedbaf29286a432e4d7f58dda828298679e14e80a0d3c25` |
| 11 | `theorem` | [injective_iff_surjective_of_finrank_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/injective-iff-surjective-of-finrank-eq-finrank--a8f44c9537d4b83a647e6eb1.md) | 155 | `result-track:a8f44c9537d4b83a647e6eb13d6324be2804d77b25f41a9a60322d839682398b` |
| 12 | `theorem` | [ker_eq_bot_iff_range_eq_top_of_finrank_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/ker-eq-bot-iff-range-eq-top-of-finrank-eq-finrank--f70889f21d44efd9536b57c6.md) | 165 | `result-track:f70889f21d44efd9536b57c64cc02057f1c21d7abde0193d6aacd89408419e41` |
| 13 | `def` | [linearEquivOfInjective](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/linearequivofinjective--7b9545dbb67649de6301f544.md) | 173 | `declaration-track:7b9545dbb67649de6301f5441823dd3f173c831be99b027a5c6d3442f958002e` |
| 14 | `theorem` | [linearEquivOfInjective_apply](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/linearequivofinjective-apply--30f1701511d2f694ce448040.md) | 179 | `result-track:30f1701511d2f694ce44804056014d5e2f32ed06849daf5467cae7d1d5635b78` |
| 15 | `theorem` | [finrank_lt_finrank_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-lt-finrank-of-lt--e9d3bdb31c19a342e81ef439.md) | 193 | `result-track:e9d3bdb31c19a342e81ef4399043120851d64015cbc0e83e1eaa81a45b9049cb` |
| 16 | `theorem` | [finrank_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-strictmono--c073bcfe68a802dc25e6d359.md) | 198 | `result-track:c073bcfe68a802dc25e6d3595d75b5be243abf0dc30854d027e3f9e072001fd1` |
| 17 | `theorem` | [finrank_add_eq_of_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finrank-add-eq-of-iscompl--cae8ffba2ad2619b267c3370.md) | 201 | `result-track:cae8ffba2ad2619b267c337086000a9aa7d452fd86751335b31fbea2e1bc69a8` |
| 18 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank'](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/linearindependent-span-eq-top-of-card-eq-finrank--ac1f8081e77403ec0fc9d55a.md) | 217 | `result-track:ac1f8081e77403ec0fc9d55a686d5dd889b9a2ddc74870fc63043ac23504b4ea` |
| 19 | `theorem` | [LinearIndependent.span_eq_top_of_card_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/linearindependent-span-eq-top-of-card-eq-finrank--ecf8ceae3facc992f66ff8eb.md) | 224 | `result-track:ecf8ceae3facc992f66ff8ebb17168cb149f2369656e05c463ed101e74640eec` |
| 20 | `def` | [basisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/basisoflinearindependentofcardeqfinrank--c4c9e27b51f285ef199f88e4.md) | 232 | `declaration-track:c4c9e27b51f285ef199f88e48bd65d5e0728aa514583de5a6d858710b00d9089` |
| 21 | `theorem` | [coe_basisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/coe-basisoflinearindependentofcardeqfinrank--5fb8bfed81456b539458589c.md) | 238 | `result-track:5fb8bfed81456b539458589c000b6d0eb071db68eb5e9e968ac5516fc2e54e99` |
| 22 | `def` | [basisOfPiSpaceOfLinearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/basisofpispaceoflinearindependent--426c69d3cccf538cdda71349.md) | 244 | `declaration-track:426c69d3cccf538cdda7134933228d66bc8d588f4d6e15cae7df91c37f11fb13` |
| 23 | `theorem` | [coe_basisOfPiSpaceOfLinearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/coe-basisofpispaceoflinearindependent--2b009e1dd932698a235359bc.md) | 254 | `result-track:2b009e1dd932698a235359bca89eb66ce1e9a6dd93841a50a9c3c879c88fe5cc` |
| 24 | `def` | [finsetBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/finsetbasisoflinearindependentofcardeqfinrank--40432fa8166ade2e74f3d3ff.md) | 265 | `declaration-track:40432fa8166ade2e74f3d3ff61fd9ac15e81dab00b6cdd5f440c44768856a0a9` |
| 25 | `theorem` | [coe_finsetBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/coe-finsetbasisoflinearindependentofcardeqfinrank--75dbee4adc30aff8f912e58e.md) | 271 | `result-track:75dbee4adc30aff8f912e58ee4b2eb772a6407143c2840f6949f6a42a3a66e70` |
| 26 | `def` | [setBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/setbasisoflinearindependentofcardeqfinrank--4a1604563ee7f1cb6d630e79.md) | 278 | `declaration-track:4a1604563ee7f1cb6d630e793fb5d56c61dd2e228c66b21e42962d0e326b4d30` |
| 27 | `theorem` | [coe_setBasisOfLinearIndependentOfCardEqFinrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/coe-setbasisoflinearindependentofcardeqfinrank--c62e8ae1feb4d425ce5e6f51.md) | 284 | `result-track:c62e8ae1feb4d425ce5e6f51ee108bfce0381186b2206db5bf8742ba7266401c` |
| 28 | `theorem` | [is_simple_module_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/is-simple-module-of-finrank-eq-one--5f28e9a78ba1c665aa82ad9a.md) | 298 | `result-track:5f28e9a78ba1c665aa82ad9accce5df823f9d0d7f720e4202ca9de38dbbd8bd1` |
| 29 | `theorem` | [Subalgebra.isSimpleOrder_of_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/subalgebra-issimpleorder-of-finrank--d066e9b60f7a6db2ad9d262c.md) | 317 | `result-track:d066e9b60f7a6db2ad9d262c24c9bcfbc3c8f17069c2be808295b84530c79cf0` |
| 30 | `theorem` | [exists_ker_pow_eq_ker_pow_succ](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/exists-ker-pow-eq-ker-pow-succ--d72799a5de1779f5ee7655ca.md) | 345 | `result-track:d72799a5de1779f5ee7655ca899ac416b5f547cfe8504ce091a3705954d00208` |
| 31 | `theorem` | [ker_pow_eq_ker_pow_finrank_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/ker-pow-eq-ker-pow-finrank-of-le--07698b70670a290eabe7ba5e.md) | 372 | `result-track:07698b70670a290eabe7ba5e57b751717afec9a7c33df0cbc5e9ebd07441cc72` |
| 32 | `theorem` | [ker_pow_le_ker_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Lemmas/Variante4c5780aa4cae9b5ca5a4250a18ebe625cef7fcf11ecbf3522cb986ace4b89b8.lean/declarations/ker-pow-le-ker-pow-finrank--27af9fb99d7029dad6e9d71b.md) | 384 | `result-track:27af9fb99d7029dad6e9d71bf76a8fc533b44c8d60ce8e09d56d8a9dbab40d8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
