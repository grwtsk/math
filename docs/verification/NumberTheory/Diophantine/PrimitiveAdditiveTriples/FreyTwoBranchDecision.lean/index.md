# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoBranchDecision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99857f53e9a4104f4462ad5e2f0c21048b94df5d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99857f53e9a4104f4462ad5e2f0c21048b94df5d`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.C6ModEight`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoMinimalBudget`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoMinimalBudget.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.Tactic.SplitIfs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/instance--a3023cd0fd73fc600c61c309.md) | 28 | `declaration-track:a3023cd0fd73fc600c61c309ef046dad38a430c5baab7dcb205503b8d5f55645` |
| 2 | `def` | [c6Shape](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/c6shape--efb29006b78b11a70e1738f8.md) | 31 | `declaration-track:efb29006b78b11a70e1738f8d4c794e5cb3edf09c9e30eb21b8a97e7326387a6` |
| 3 | `theorem` | [raw_c6](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/raw-c6--327d247c85977e2db66b86d7.md) | 34 | `result-track:327d247c85977e2db66b86d76233f02f08a84065affc54df157d470be9baf087` |
| 4 | `def` | [modEight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/modeight--7a81cc86e1dd99ac32fa7697.md) | 45 | `declaration-track:7a81cc86e1dd99ac32fa76972dd9f54629beadae0c2b599b2b1e5103dd389586` |
| 5 | `theorem` | [modEight_int](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/modeight-int--467d6b57be461fc91412f7e4.md) | 51 | `result-track:467d6b57be461fc91412f7e44710660aee77e6c4cbde8500177923b0e3ced4c3` |
| 6 | `theorem` | [scale_one_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/scale-one-unit--8abf1a98e216c3477e37ee38.md) | 55 | `result-track:8abf1a98e216c3477e37ee38d3d4b711be957fd1c0561fb9e1a09b48d507fa51` |
| 7 | `theorem` | [scale_one_c4_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/scale-one-c4-unit--ed57d380e71e203db6ee13ff.md) | 71 | `result-track:ed57d380e71e203db6ee13ff3cb855f7581b69b2771bf10d1551041be77c86db` |
| 8 | `theorem` | [scale_one_obstruction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/scale-one-obstruction--9323d310f8c9f805be67556b.md) | 89 | `result-track:9323d310f8c9f805be67556b027c80373949c8cf496882e4e3c1e1ac9e98e2ba` |
| 9 | `def` | [Descends](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/descends--6bbae12680961256007016d1.md) | 104 | `declaration-track:6bbae12680961256007016d1af4d9cad2eda6bff8a4ff4255640ff15bd1dd1a1` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/instance--0d180ff7504d7c61353ba675.md) | 108 | `declaration-track:0d180ff7504d7c61353ba675d8adfd64cf0d269b13588449cc9153259dd71a9c` |
| 11 | `theorem` | [descends_chambers](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/descends-chambers--b5752289c89b76bef7895f97.md) | 112 | `result-track:b5752289c89b76bef7895f9792b5d41d4f116eb51367fda5e1f0e1c3790bdb8a` |
| 12 | `def` | [toEight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/toeight--0eeab55dd89e29e3d250b963.md) | 118 | `declaration-track:0eeab55dd89e29e3d250b9638221cd1b4223756655debe77f57b2833f157d521` |
| 13 | `def` | [toFour](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/tofour--e0d8723c4f9d03088d7463d2.md) | 119 | `declaration-track:e0d8723c4f9d03088d7463d254be725cbe8f25190d0b3125aab95225df83771b` |
| 14 | `def` | [toTwo](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/totwo--1734d36b9e6032b7e314a7ce.md) | 120 | `declaration-track:1734d36b9e6032b7e314a7ce100030ce1d7068ff6b2b89d791cb71a47860f999` |
| 15 | `theorem` | [residue_table](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/residue-table--9f0f7566d8e95ee6d833939e.md) | 126 | `result-track:9f0f7566d8e95ee6d833939e3c1a67fb58ac42611077b89eac2da080076a1506` |
| 16 | `theorem` | [nat_mod_four](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/nat-mod-four--c5512c9a6c0e32fb8b24b01c.md) | 132 | `result-track:c5512c9a6c0e32fb8b24b01c617abf908171491ccedd048eb87e86b2854f0dad` |
| 17 | `theorem` | [int_mod_four](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/int-mod-four--3927a678f93ef3648a1a609f.md) | 141 | `result-track:3927a678f93ef3648a1a609fa443d8a2cf3a41e7035c502abab5ee89553911c5` |
| 18 | `theorem` | [obstruction_iff_descends](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/obstruction-iff-descends--8de9e2622897d537674116da.md) | 145 | `result-track:8de9e2622897d537674116da3236ce61a29bf509c6cd08b8d9f6ceb131b52cfe` |
| 19 | `theorem` | [correction_twelve_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/correction-twelve-iff--b3b221f5530a6d876c068964.md) | 173 | `result-track:b3b221f5530a6d876c068964c76d96f56b242eed4930c42147ff0cf935b06224` |
| 20 | `theorem` | [correction_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/correction-zero-iff--cd2655701fa604c52bec0b8f.md) | 192 | `result-track:cd2655701fa604c52bec0b8f3b17bdb2b2285a6322ae80726473f80ff14bf788` |
| 21 | `theorem` | [correction_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/correction-formula--affca0efd49e51e60363af43.md) | 205 | `result-track:affca0efd49e51e60363af4310a8bfc0cc58e6bce0a5a8d6df32597628e15b99` |
| 22 | `theorem` | [minimum_formula](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/minimum-formula--74ccca3a43135bc169ceac36.md) | 212 | `result-track:74ccca3a43135bc169ceac366f2089d2bb36b8b21387d7e28c989e72428b7054` |
| 23 | `theorem` | [raw_minimal_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/raw-minimal-iff--23b8c1ea8fbd397d19e23ebd.md) | 221 | `result-track:23b8c1ea8fbd397d19e23ebd2452cc32a8bcd63d47950685606bbf5e619e4a49` |
| 24 | `theorem` | [raw_additive_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/raw-additive-iff--c1a35a971f44daa095eb2c86.md) | 255 | `result-track:c1a35a971f44daa095eb2c86d04dec0562f56469f88e0f2412935a5786961506` |
| 25 | `def` | [selectedChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selectedchange--b97273544b90b3d34153a4e2.md) | 272 | `declaration-track:b97273544b90b3d34153a4e209e1ef0d4b54367d4d6998d9b0dd3605503d083b` |
| 26 | `def` | [selectedCurve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selectedcurve--eb1166d8134123145deece76.md) | 279 | `declaration-track:eb1166d8134123145deece76859e10b6a77bcfbb6d7cd3c5232bd6c29a557ad5` |
| 27 | `theorem` | [selected_minimal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-minimal--26bb5cc8ad68a226df265423.md) | 282 | `result-track:26bb5cc8ad68a226df2654231f2e98c09e9cabb7dc2d3ad427940256dc5e5fb6` |
| 28 | `theorem` | [selected_exponent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-exponent--be66df29e9720db522c8b754.md) | 293 | `result-track:be66df29e9720db522c8b754f2755dc34eaa91395d5f3c7af9c82370b82aa6c3` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/instance--e9c150f2a02206a096fc167d.md) | 297 | `declaration-track:e9c150f2a02206a096fc167d9442453f27965ec76a08c504c44123d15bdb753d` |
| 30 | `theorem` | [selected_j](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-j--a687259ba78f14a141198189.md) | 302 | `result-track:a687259ba78f14a141198189e1c6e550efa78d83f881b460a35bf4d7bbc68454` |
| 31 | `theorem` | [selected_scale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-scale--761f3b3619878795156facb1.md) | 306 | `result-track:761f3b3619878795156facb11d5a81da47148a683e35c0a69d0686bef6873c77` |
| 32 | `theorem` | [selected_c4_value](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-c4-value--b972c59da05104fa294e245c.md) | 312 | `result-track:b972c59da05104fa294e245cd30987a0bb91c3c6e1404d8023a369fb9112d110` |
| 33 | `theorem` | [selected_additive_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-additive-iff--c859c141609abc406d54d577.md) | 330 | `result-track:c859c141609abc406d54d577d79e41ea522e2e030e47bff1fe03aae34527629e` |
| 34 | `theorem` | [selected_good_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-good-iff--f11932400d14ca0990cadaad.md) | 346 | `result-track:f11932400d14ca0990cadaadb51431e8f1915ddedd67b53ec24a7f484c603bd4` |
| 35 | `theorem` | [selected_multiplicative_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/declarations/selected-multiplicative-iff--f4960b8d3bf733701e955961.md) | 371 | `result-track:f4960b8d3bf733701e9559612eba67eb275a041335e593e91beeb554df07d0be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
