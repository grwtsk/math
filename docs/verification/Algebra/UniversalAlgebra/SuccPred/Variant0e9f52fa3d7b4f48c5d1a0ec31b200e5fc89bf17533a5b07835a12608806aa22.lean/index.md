# Verification target: GRWTSK.Algebra.UniversalAlgebra.SuccPred.Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8b916e14d71fc1902789130aaea54cb23db8796",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8b916e14d71fc1902789130aaea54cb23db8796`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean.json)

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
| 1 | `instance` | [instSuccOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/instsuccorder--12989754e51c8cb693251385.md) | 32 | `declaration-track:12989754e51c8cb6932513852d940dac328c86f824eaee1b2c00e0a6fa69a8a2` |
| 2 | `instance` | [instSuccAddOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/instsuccaddorder--dbba92b7f42fa988d2bbcf71.md) | 35 | `declaration-track:dbba92b7f42fa988d2bbcf715e41a5614dce68b5375cb657f3c12a765fa44a36` |
| 3 | `instance` | [instPredOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/instpredorder--3957c1a9cb0294a5594817b7.md) | 37 | `declaration-track:3957c1a9cb0294a5594817b7412729ba1d6b376f1cc1b6fb9210503552b823d3` |
| 4 | `instance` | [instPredSubOrder](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/instpredsuborder--8d9f7ef7e1f753f10392d817.md) | 49 | `declaration-track:8d9f7ef7e1f753f10392d8177182fca433d1b6292ffe5477133ec4370f9425a2` |
| 5 | `theorem` | [succ_eq_succ](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/succ-eq-succ--75274f4447f95644e5bb8e64.md) | 52 | `result-track:75274f4447f95644e5bb8e64a3db9e32e013ae0d35e8012bc84a70b51aee10ac` |
| 6 | `theorem` | [pred_eq_pred](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/pred-eq-pred--2bb159e9fcbbaa9e7aefdc7e.md) | 56 | `result-track:2bb159e9fcbbaa9e7aefdc7e5b4ea9d2e2793e6df723f8d4030cf566a4552449` |
| 7 | `theorem` | [succ_iterate](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/succ-iterate--16f7e417cbb3c0604f061382.md) | 59 | `result-track:16f7e417cbb3c0604f06138263593fa997468743227c867a17610a14984ac518` |
| 8 | `theorem` | [pred_iterate](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/pred-iterate--54e8bb646a62c8d3d0cfca3d.md) | 62 | `result-track:54e8bb646a62c8d3d0cfca3d0bbdd407382d927e520ebaeab8804a3ab855cb53` |
| 9 | `lemma` | [covBy_iff_add_one_eq](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/covby-iff-add-one-eq--7d5ae6e154d757fbaea856e2.md) | 69 | `result-track:7d5ae6e154d757fbaea856e280c9c8e39da5286e0042608b1eaf697595df4850` |
| 10 | `lemma` | [le_succ_iff_eq_or_le](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/le-succ-iff-eq-or-le--d01b45e6aa4eecf63386601d.md) | 71 | `result-track:d01b45e6aa4eecf63386601d636a383dd69f982b634637a2d8f887609cac4da0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/instance--1af716aedbe6e95d95984837.md) | 73 | `declaration-track:1af716aedbe6e95d959848374c5a2f56b01347ad1dbdf810f19fc3f21b40f7a5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/instance--2b5be8dafd5cd1c01dc238ae.md) | 76 | `declaration-track:2b5be8dafd5cd1c01dc238ae7d7e2095466678d6eef64e07e2fa6a99192b7bd8` |
| 13 | `lemma` | [forall_ne_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/forall-ne-zero-iff--1f5b82003bbecedb5204e77d.md) | 79 | `result-track:1f5b82003bbecedb5204e77d210842d93db167f191400fa5ab6d667258639f33` |
| 14 | `theorem` | [Fin.covBy_iff](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/fin-covby-iff--8699742921e4dcf4ee9dbdfa.md) | 85 | `result-track:8699742921e4dcf4ee9dbdfa242df3420698689c6ee4774e0ba4a239b17ce0f5` |
| 15 | `theorem` | [withBotSucc_zero](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/withbotsucc-zero--52f949af61e6bd8ba7bda544.md) | 91 | `result-track:52f949af61e6bd8ba7bda544dd2b8207a787ef9ba5620c7fa3280c61412082d9` |
| 16 | `theorem` | [withBotSucc_one](../../../../../mathematics/Algebra/UniversalAlgebra/SuccPred/Variant0e9f52fa3d7b4f48c5d1a0ec31b200e5fc89bf17533a5b07835a12608806aa22.lean/declarations/withbotsucc-one--4e3753cddb4ba0e9e4ccc2c1.md) | 94 | `result-track:4e3753cddb4ba0e9e4ccc2c1510b10b755f7d495022a33fcfc1d59066158ca79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
