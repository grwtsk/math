# Verification target: GRWTSK.Topology.GeneralTopology.Infinite.Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9523833f551d886ec45d137d31d72c4f83cbbea`.

Source path: `GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean.json)

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
| 1 | `lemma` | [fixingSubgroup_isClosed](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/fixingsubgroup-isclosed--ab8d29a2a1729404b50fc319.md) | 64 | `result-track:ab8d29a2a1729404b50fc3196b781c9e6f46e73d48f542dd85d0ab040b1a0c1b` |
| 2 | `lemma` | [fixedField_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/fixedfield-fixingsubgroup--05724638cfe661d85afdf38b.md) | 85 | `result-track:05724638cfe661d85afdf38b211ecea950b101eaf9f31d1a6588dbccfe10117e` |
| 3 | `lemma` | [fixedField_bot](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/fixedfield-bot--10ea80f0ce0128571f7b85e1.md) | 106 | `result-track:10ea80f0ce0128571f7b85e135ed29713523f064651a6b6b966c3fb19f1f4c03` |
| 4 | `theorem` | [mem_bot_iff_fixed](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/mem-bot-iff-fixed--fd96bd7063525f23ba130b96.md) | 110 | `result-track:fd96bd7063525f23ba130b967bfec7376d48871709c5560048f9b60e5c4e2bee` |
| 5 | `theorem` | [mem_range_algebraMap_iff_fixed](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/mem-range-algebramap-iff-fixed--476605ebfad2a58dd1da2b80.md) | 114 | `result-track:476605ebfad2a58dd1da2b808a18312553fbc7999d2c0fb3764ad50e60754954` |
| 6 | `lemma` | [restrict_fixedField](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/restrict-fixedfield--92ffe6676a5a0b0b60c64b86.md) | 121 | `result-track:92ffe6676a5a0b0b60c64b86dff78081c479802929abc860723ba44eb8ef5ee0` |
| 7 | `lemma` | [fixingSubgroup_fixedField](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/fixingsubgroup-fixedfield--6651614eef6a5ae05950bfbb.md) | 146 | `result-track:6651614eef6a5ae05950bfbb4e1ef915d6d1a6672444692504a99377d104a612` |
| 8 | `def` | [IntermediateFieldEquivClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/intermediatefieldequivclosedsubgroup--1b21c954c8beb59ab1b40366.md) | 196 | `declaration-track:1b21c954c8beb59ab1b403668a1f563893872860952f9a023659bb48f0a1b0e2` |
| 9 | `def` | [GaloisInsertionIntermediateFieldClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/galoisinsertionintermediatefieldclosedsubgroup--5d37616f68257fa5b9ad93ca.md) | 209 | `declaration-track:5d37616f68257fa5b9ad93cac7c94ea597f300bb78a0d9b3528e87adb2d7648e` |
| 10 | `def` | [GaloisCoinsertionIntermediateFieldSubgroup](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/galoiscoinsertionintermediatefieldsubgroup--52e5278ff375b46f8afada61.md) | 217 | `declaration-track:52e5278ff375b46f8afada61c1e3fb9259a7228551bc20b17bc58e3daaef2065` |
| 11 | `def` | [normalAutEquivQuotient](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/normalautequivquotient--02779f1f48445c9077cb0e4f.md) | 228 | `declaration-track:02779f1f48445c9077cb0e4fd159998e4872016626a61e470fe22878a9b0ce86` |
| 12 | `lemma` | [normalAutEquivQuotient_apply](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/normalautequivquotient-apply--fa8d5b2f5c99c8d04b52aaf2.md) | 235 | `result-track:fa8d5b2f5c99c8d04b52aaf2e56cade9c4894f15170be7e1317cebb80f9bb1d0` |
| 13 | `theorem` | [isOpen_iff_finite](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/isopen-iff-finite--7da0c70e6292890124cd3d7b.md) | 241 | `result-track:7da0c70e6292890124cd3d7b148e47dd2992d2830af512040831682d0307965c` |
| 14 | `theorem` | [normal_iff_isGalois](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/normal-iff-isgalois--c198b2fecd2d55f3a526276c.md) | 261 | `result-track:c198b2fecd2d55f3a526276c11c613fb33f08dc616307621274c715e6d268da1` |
| 15 | `theorem` | [isOpen_and_normal_iff_finite_and_isGalois](../../../../../mathematics/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/declarations/isopen-and-normal-iff-finite-and-isgalois--c3e71549b6d00594c4a1c472.md) | 288 | `result-track:c3e71549b6d00594c4a1c4724629db88eba659ef7be41a2682bd0061727c3211` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
