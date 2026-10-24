# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa7216b813107a880f73100ab5a34e8d0e0af0fa",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa7216b813107a880f73100ab5a34e8d0e0af0fa`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback--c754dee6bda1067f607af623.md) | 45 | `declaration-track:c754dee6bda1067f607af62340011d2c725193fff8a34e7485813ff362244f1e` |
| 2 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-fst--5ec390f3d057d1712a7fb371.md) | 55 | `declaration-track:5ec390f3d057d1712a7fb37184e4f884b657e368f4e9f2115010bcf893e5f6c2` |
| 3 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-snd--16bc3cbc5a6f4721191010be.md) | 62 | `declaration-track:16bc3cbc5a6f4721191010bea808adad5cdac5aaa305bec06bf8dea1a49b28e8` |
| 4 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-condition--f4d5a29474cae8d811219a33.md) | 67 | `result-track:f4d5a29474cae8d811219a332460ee44a6a186ba00f0b5581e109f887fb50311` |
| 5 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-lift--3494b939eed2fcdbe0a297c3.md) | 75 | `declaration-track:3494b939eed2fcdbe0a297c3258b3012e526ca81bacbbba2b6fe0a008e2364a6` |
| 6 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-lift-fst--8727491d9074e285ac54d033.md) | 84 | `result-track:8727491d9074e285ac54d0338c8400abd7cca7f8d3ba4f25876ee1d6b288e3cc` |
| 7 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-lift-snd--0f82999fbd1a36d1f71beaee.md) | 88 | `result-track:0f82999fbd1a36d1f71beaee8705ad436d2ff71b85a646235a503df75a77d319` |
| 8 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-hom-ext--3d47a94565ef109423de6422.md) | 91 | `result-track:3d47a94565ef109423de64227052716dbf128e729ead732080e13302a85a0ca3` |
| 9 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-cone--74faa8161e500aeb9a75ac81.md) | 105 | `declaration-track:74faa8161e500aeb9a75ac81e9606ebfccf59bb42397e9ad2115853ebb8da133` |
| 10 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-islimit--b240e15481749478a9adaac5.md) | 112 | `declaration-track:b240e15481749478a9adaac5a6a2ec869bd4d85848893e09fa11ade06536fd25` |
| 11 | `def` | [pullbackIsoPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullbackisopullback--e6aba538722b02521fb2049f.md) | 123 | `declaration-track:e6aba538722b02521fb2049faafb1d9d04d9428f344d9f4a34267512515a5a7d` |
| 12 | `def` | [pullbackHomeoPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullbackhomeopullback--b2fe95b733553d506425b4a1.md) | 128 | `declaration-track:b2fe95b733553d506425b4a1b4a6165475fcbac1982ebbce7eb17676a9153152` |
| 13 | `theorem` | [pullback_fst_eq](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-fst-eq--6c61e0aaa9c9ff2663617791.md) | 131 | `result-track:6c61e0aaa9c9ff26636177916cc0323554c0b7fd66d10bb0a40f2f0f70e17db2` |
| 14 | `theorem` | [pullback_snd_eq](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/pullback-snd-eq--5133e347e84c699233df9537.md) | 136 | `result-track:5133e347e84c699233df9537ca888d06bd556c9df901b6ab4bb040a7badc2cce` |
| 15 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct--858946e3d8f0224cc6d5adb7.md) | 153 | `declaration-track:858946e3d8f0224cc6d5adb7d34eac1667a2bdadd4d65eaa7144797bfae9ded1` |
| 16 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct--88073d5ed90b139fa04256ad.md) | 158 | `declaration-track:88073d5ed90b139fa04256ada7290790bec3d0df4af3944bcd893d608951fdf2` |
| 17 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-desc--28eb9bdbc0a474dcbdfbac48.md) | 167 | `declaration-track:28eb9bdbc0a474dcbdfbac48b0861404119c430fa48b64d5f036de876ba3a1c8` |
| 18 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-desc--ee209aa37ff61cbaf347b125.md) | 175 | `result-track:ee209aa37ff61cbaf347b12584e94aba7a3415be15c0b61f8808293b0b51a4d8` |
| 19 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-hom-ext--b62ab97e7442e7ce2d2571f1.md) | 178 | `result-track:b62ab97e7442e7ce2d2571f11d8c0fb35f6588b81f194ab1bcfe6424cbc71813` |
| 20 | `def` | [finiteCoproduct.cocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-cocone--dc9cce3f0ffe886c7854e017.md) | 189 | `declaration-track:dc9cce3f0ffe886c7854e0179fee407414c56d02df58c4b49a55b9ef5907d3fa` |
| 21 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-iscolimit--96ee5dca2a2f3ead8072badd.md) | 197 | `declaration-track:96ee5dca2a2f3ead8072baddd937d52fcf25ed9a0e44cd58b6a12570806eca80` |
| 22 | `def` | [coproductIsoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/coproductisocoproduct--5f7483feed5452a3c4b8241f.md) | 210 | `declaration-track:5f7483feed5452a3c4b8241fad04048fe0778884058a73322349f455fc8ac1f0` |
| 23 | `theorem` | [Sigma.ι_comp_toFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/sigma-comp-tofinitecoproduct--cd2e4d58c2fbbf4177e9336e.md) | 213 | `result-track:cd2e4d58c2fbbf4177e9336e8ffdb2b9622276789ea965448f4a773f6cabc988` |
| 24 | `def` | [coproductHomeoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/coproducthomeocoproduct--da5b5a5cd8d3a7e9cd15cd8f.md) | 221 | `declaration-track:da5b5a5cd8d3a7e9cd15cd8f993bae61f587fa1f04f5ca782d5185a32af8119b` |
| 25 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-injective--901cc058ef3ff6621466c53e.md) | 226 | `result-track:901cc058ef3ff6621466c53e5c1dc3ddd9dca8d0d3cc795100ba557b7f370199` |
| 26 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-jointly-surjective--7e76e6a8b926bebe41378a39.md) | 230 | `result-track:7e76e6a8b926bebe41378a3981409be3a59090ba9ae1f9773399804db2e85ded` |
| 27 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant26e148e839717dc786db7ea0afb834009f3687d7b2e910bc62b103e96f0e2b5a.lean/declarations/finitecoproduct-desc-apply--9e5a758201f086e8c0b473dd.md) | 233 | `result-track:9e5a758201f086e8c0b473dd4ef1bf85e4be899015db5bc1150dc8edf9b3887d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
