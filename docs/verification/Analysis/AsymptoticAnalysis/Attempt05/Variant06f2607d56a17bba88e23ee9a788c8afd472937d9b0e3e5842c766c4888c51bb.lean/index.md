# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt05.Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c035f6cc478b72a984905c7d56da2366e273092d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c035f6cc478b72a984905c7d56da2366e273092d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/outerweight--566e7676de579f99a376b824.md) | 18 | `declaration-track:566e7676de579f99a376b8240ab1818667ae528e18e15e0c07a98828a99ee8c4` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/exponentweight--f06d5f81d5c03c73a8a69203.md) | 20 | `declaration-track:f06d5f81d5c03c73a8a6920309f2a749328533e7b342ce85cc372168b5377884` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/momentatom--7b9de472b7e1812e1590d4d0.md) | 22 | `declaration-track:7b9de472b7e1812e1590d4d06faf62c870e6df195aeb7e2b329dd24c858d88a8` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/primemomentatom--5dc90ef293dd7b4ae8a543bc.md) | 25 | `declaration-track:5dc90ef293dd7b4ae8a543bce2f565b757923af8d8680903a40a0727b7dfa4d1` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/properpowermoment--b1c3378cf02259143de47cee.md) | 27 | `declaration-track:b1c3378cf02259143de47cee3cd42f4889844b2523d49846414e93984c3bdf28` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/properpowerb1--971f0bccf32ffc443e9abf0a.md) | 29 | `declaration-track:971f0bccf32ffc443e9abf0aa8ef5aa0dbc345f6eebff067e367d558ee841233` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/properpowerb2--d890399a036d36f6aa3934ff.md) | 31 | `declaration-track:d890399a036d36f6aa3934ff0374af70c14655b488bb359c4f0522dfcabfc874` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/outerweight-nonneg--7bf2635354eed9136421fcea.md) | 33 | `result-track:7bf2635354eed9136421fcea37c0beefcf8a6d3d44163da84a312881b0417d73` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/exponentweight-nonneg--029f9a0b47ded9a2b9564a74.md) | 41 | `result-track:029f9a0b47ded9a2b9564a7469e30a7acf88392cb8bf7cd4a09023c975d47d80` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/momentatom-nonneg--60b357d23cc630e7f8074648.md) | 45 | `result-track:60b357d23cc630e7f80746487c7227051d2e0a4789ecc2bb8aef0a04d502e417` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/outerweight-summable--7435a19b6557cd867cd1b69a.md) | 53 | `result-track:7435a19b6557cd867cd1b69abac26cb8211211cc1c99296999a387897ee67292` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/exponentweight-summable--db1407a81fe0c84c41ef6a75.md) | 83 | `result-track:db1407a81fe0c84c41ef6a75104e41849ffe4d250d73f0bedd543c0b4701eaf5` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/momentatom-le-product--815168e1487c442e222eb4b0.md) | 92 | `result-track:815168e1487c442e222eb4b0f2901c9f559c588ef06fe5622511e7fcb8c3528b` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/prime-outerweight-summable--dbb2ad6875e16ab754ccdee8.md) | 113 | `result-track:dbb2ad6875e16ab754ccdee82e8157dd264dd85d66fa2f00c2e141529480e9a1` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/primemomentatom-summable--1a4d1ade00c0efe28a450a90.md) | 117 | `result-track:1a4d1ade00c0efe28a450a906540a1e75ddce530247267bbcd51df63b8a2dd74` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/primemomentatom-inner-summable--160cb62a0eb3243e40c49746.md) | 124 | `result-track:160cb62a0eb3243e40c49746f678e43ba62aee063660a21cef5a610524b3c96f` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/primemomentatom-outer-summable--c57e12e509fc7fd179dfda9b.md) | 129 | `result-track:c57e12e509fc7fd179dfda9b5278b0db63c5d0930d00950ac883dbe86c901744` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/properpowermoment-nonneg--827fd769e9f6435fb2983dce.md) | 134 | `result-track:827fd769e9f6435fb2983dce1eca9867230bec42eafb32fc030373c8fec82c50` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/finiteproperpowermoment-le-b1--40e3a7ed5bdc857dee7763ac.md) | 137 | `result-track:40e3a7ed5bdc857dee7763ac728e4997f93116b157bdc7f8f38d97c9d81676db` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/properpowerb1-gt-nine-quarters--573155446a459a6c7814ab83.md) | 167 | `result-track:573155446a459a6c7814ab83bd1b28cb2944903fe4875e32fce6bfc65fcfa54b` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/declarations/arithmeticconstant-gt-one-five-hundred--8bc0a6dbeba4849b2011ec06.md) | 170 | `result-track:8bc0a6dbeba4849b2011ec0645ea8b1e6959f7a4092319dd101b683ed40d25f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
