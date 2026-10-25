# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.GoldenRatio.Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ced5bcffce056033dc8d8fa97b6b7c13a9801f36",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ced5bcffce056033dc8d8fa97b6b7c13a9801f36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.LinearRecurrence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatFib` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [goldenRatio](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldenratio--5fd5a673543ef5b28481c9f0.md) | 31 | `declaration-track:5fd5a673543ef5b28481c9f05ed4590aea8242d2ccf3671b7727136a15f72b3a` |
| 2 | `abbrev` | [goldenConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldenconj--b777628de1c48ec09f180886.md) | 34 | `declaration-track:b777628de1c48ec09f180886d84f4d01f26917e2cb82f153ed0b191291b3c0a5` |
| 3 | `theorem` | [inv_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/inv-gold--364d821173d64c89dddfc0e6.md) | 41 | `result-track:364d821173d64c89dddfc0e65c44b68e1e878366da32630e56d50a530e46595c` |
| 4 | `theorem` | [inv_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/inv-goldconj--ae013edf857187b208d08fcb.md) | 47 | `result-track:ae013edf857187b208d08fcb698d5b90316d00981e44a2fa711bdf5f88b422cb` |
| 5 | `theorem` | [gold_mul_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-mul-goldconj--2671e3ab2f20d5527d3be0df.md) | 52 | `result-track:2671e3ab2f20d5527d3be0df58975c0fe68563172fef40bd8d22ba1a531d8fe6` |
| 6 | `theorem` | [goldConj_mul_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldconj-mul-gold--57b86cf8004f1afabf943aff.md) | 58 | `result-track:57b86cf8004f1afabf943aff06721513e4ce96f1bc687f94512d8cd51d44b498` |
| 7 | `theorem` | [gold_add_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-add-goldconj--5b859e8f66baf0cf193e9145.md) | 63 | `result-track:5b859e8f66baf0cf193e9145fb2fb26a8b290e16f473369edeadfd858218d6c1` |
| 8 | `theorem` | [one_sub_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/one-sub-goldconj--4c137e81de59b7ffbdd0cfc1.md) | 67 | `result-track:4c137e81de59b7ffbdd0cfc146da986b9d5c75630586a80a3174e61288b5c8c9` |
| 9 | `theorem` | [one_sub_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/one-sub-gold--d2c0871fb31ad632235a12ed.md) | 70 | `result-track:d2c0871fb31ad632235a12ed8422299f7d387ec7e34721d2d31cf515fad4afc1` |
| 10 | `theorem` | [gold_sub_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-sub-goldconj--2aff63aef8c95a5e4395c60d.md) | 74 | `result-track:2aff63aef8c95a5e4395c60d39c4ef6d857927a7612508d09d2946cc3c0d7c40` |
| 11 | `theorem` | [gold_pow_sub_gold_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-pow-sub-gold-pow--8f162f09773ae9a53add4fd2.md) | 76 | `result-track:8f162f09773ae9a53add4fd2224ccfef28ffc032a1811ea6bd98420cc0c43508` |
| 12 | `theorem` | [gold_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-sq--e87fe9e7a75efca103d0497b.md) | 80 | `result-track:e87fe9e7a75efca103d0497ba8424215daa77fef052c7aa5ec9b5073612cbc22` |
| 13 | `theorem` | [goldConj_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldconj-sq--35e57232cc5cd3d89278a55e.md) | 86 | `result-track:35e57232cc5cd3d89278a55ef7a2f2f709f8f2a1690970c5040920cdbe3f8e2e` |
| 14 | `theorem` | [gold_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-pos--f37649519eed704be24ef4f6.md) | 91 | `result-track:f37649519eed704be24ef4f6888eb2a183722fb24660ff22422d1ca2ac44f5a3` |
| 15 | `theorem` | [gold_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-ne-zero--7f62d6dceeceb9b6ebce95d8.md) | 94 | `result-track:7f62d6dceeceb9b6ebce95d8d852082b1b70b92c4cea98c3a694ec9105dc9dc5` |
| 16 | `theorem` | [one_lt_gold](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/one-lt-gold--3b134f3524fb1c70952f7a9e.md) | 97 | `result-track:3b134f3524fb1c70952f7a9e7aa07f67c5dc542917366c6128d20b651ba35155` |
| 17 | `theorem` | [gold_lt_two](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-lt-two--034d9ee476abf3b05107b6f3.md) | 101 | `result-track:034d9ee476abf3b05107b6f3969314e0124194839b355e4dee18c100f6cbb735` |
| 18 | `theorem` | [goldConj_neg](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldconj-neg--8a301146e4f341d42b2ac82e.md) | 105 | `result-track:8a301146e4f341d42b2ac82e6bf41ed01378c989348413f3d15def3f306eeb03` |
| 19 | `theorem` | [goldConj_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldconj-ne-zero--9383ab56a15ac9415407fa9a.md) | 108 | `result-track:9383ab56a15ac9415407fa9a7dca22198e45d2409d74717e02903994ca53293e` |
| 20 | `theorem` | [neg_one_lt_goldConj](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/neg-one-lt-goldconj--8f1d84663bb1a4ae711e2e4b.md) | 111 | `result-track:8f1d84663bb1a4ae711e2e4bae3e871fe8988ba611c0cd2d96f0eb57b5010732` |
| 21 | `theorem` | [gold_irrational](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/gold-irrational--4d9c3c3850279616e0082ea4.md) | 121 | `result-track:4d9c3c3850279616e0082ea4768da4e9083c1caff7152a9a540131bc713c09b6` |
| 22 | `theorem` | [goldConj_irrational](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/goldconj-irrational--674b99f98aaab2f5fecd075b.md) | 129 | `result-track:674b99f98aaab2f5fecd075b0f39cb162e7322508339cf7848f2f198e2259b01` |
| 23 | `def` | [fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/fibrec--5e3ae4c7756da7edafb369b9.md) | 145 | `declaration-track:5e3ae4c7756da7edafb369b96ea152f30f9c17ee65904cbc48a911e90ca9d131` |
| 24 | `theorem` | [fibRec_charPoly_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/fibrec-charpoly-eq--86843ff9ecd6fd371cdab3aa.md) | 154 | `result-track:86843ff9ecd6fd371cdab3aae22501de29987219647bba5c6d6fb165b9cf3b28` |
| 25 | `theorem` | [fib_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/fib-issol-fibrec--aa83b210b66f233476c962bd.md) | 162 | `result-track:aa83b210b66f233476c962bdcad4800599015060469e6fd0fb7688cb93cb2531` |
| 26 | `theorem` | [geom_gold_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/geom-gold-issol-fibrec--a132cfb711d72397a43cb9fa.md) | 170 | `result-track:a132cfb711d72397a43cb9fac18ebe8291f91d6b9738fa8b26f8e0870867fe2d` |
| 27 | `theorem` | [geom_goldConj_isSol_fibRec](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/geom-goldconj-issol-fibrec--aac7197ce0079c6bd6d3e371.md) | 175 | `result-track:aac7197ce0079c6bd6d3e371ca0e1e5d1c186829858d8721d56e3910a5e67632` |
| 28 | `theorem` | [Real.coe_fib_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/real-coe-fib-eq--c4434dfbd68336ca5ec56474.md) | 182 | `result-track:c4434dfbd68336ca5ec5647462b759bda2d18a3dc9f2cd13fa03447eff2528bd` |
| 29 | `theorem` | [Real.coe_fib_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/real-coe-fib-eq--2ceda458dc6d2d301e0d9a1a.md) | 203 | `result-track:2ceda458dc6d2d301e0d9a1a88506db8d2489397144a59d560259cb2edf87947` |
| 30 | `theorem` | [fib_golden_conj_exp](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/fib-golden-conj-exp--02a1e2df7942c251002f008c.md) | 207 | `result-track:02a1e2df7942c251002f008cf0367afdc7c76e71f734cc50ef7b35b74c4f92bc` |
| 31 | `theorem` | [fib_golden_exp'](../../../../mathematics/FoundationsLogicAndTypeTheory/GoldenRatio/Variantc2c78502055c0606555598828a17c5dc604fc8a7d59787afebbbe71cd540531e.lean/declarations/fib-golden-exp--b684751c5157bfb0bf8f43f1.md) | 215 | `result-track:b684751c5157bfb0bf8f43f1ea99eb5ee920b7f5daecce8b93da043aaf919272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
