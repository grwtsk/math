# Verification target: GRWTSK.Algebra.GroupTheory.SMulWithZero.Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ad86458b88df160b9450c0ec0ed37d57acf6718",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ad86458b88df160b9450c0ec0ed37d57acf6718`.

Source path: `GRWTSK/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean.json)

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
| 1 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/smulzeroclass--a6675138424753cfcb69264f.md) | 44 | `declaration-track:a6675138424753cfcb69264fdb2b1cf8a42199b4d94ca4e14444888785e3ef90` |
| 2 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/coe-smul--61ebb4030d92303c1ae7d551.md) | 56 | `result-track:61ebb4030d92303c1ae7d551a5206adda3426ce30098f0da65d1c0db7adb85aa` |
| 3 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/smul-apply--966adb644558e185714e5c3a.md) | 59 | `result-track:966adb644558e185714e5c3ac540243ec93682b02e81a35874eb3156f0e0b271` |
| 4 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/instsmulwithzero--6430fea265e233d3ebeffbce.md) | 63 | `declaration-track:6430fea265e233d3ebeffbce6f5eb3f46ec976b1ce68e4bbc69677f2d37c5940` |
| 5 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/distribsmul--6f0cd10040ccfa174e0cd98d.md) | 68 | `declaration-track:6f0cd10040ccfa174e0cd98d333c4d0260caa75e113f6ab1d005685bb87a6900` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/isscalartower--d04dd79406214b78583dfb31.md) | 72 | `declaration-track:d04dd79406214b78583dfb316261e1655e64b03571e87b3885ca69033affd707` |
| 7 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/smulcommclass--203b56d558a545cbd9d76866.md) | 76 | `declaration-track:203b56d558a545cbd9d76866ee7de62312171a82c65ad38cfdc4c15c5c7c07bd` |
| 8 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/iscentralscalar--c86b9360a1305fae16b40ed6.md) | 80 | `declaration-track:c86b9360a1305fae16b40ed6210280cf6854957f7d34e5887911d1398370cc1f` |
| 9 | `theorem` | [support_smul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/support-smul--744db46bb71bf36524b06e39.md) | 86 | `result-track:744db46bb71bf36524b06e3996d16b7d88dc797950e5a58569f1e160ff5e51d5` |
| 10 | `theorem` | [smul_single](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/smul-single--fa6c65bb6379d3732f8514fd.md) | 92 | `result-track:fa6c65bb6379d3732f8514fdcb599fcaccf33f9cd1b7abaf9262e5434ae93ef8` |
| 11 | `theorem` | [mapRange_smul'](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/maprange-smul--ab7c96396da29875e6d5b37e.md) | 96 | `result-track:ab7c96396da29875e6d5b37ecc299376baaeb93781ef7c476c6f88329643f5c0` |
| 12 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variante9338f4edb040e77cf57c12113a576511bb190d91156d59a24bbb24feae74f4b.lean/declarations/maprange-smul--db417e455b5f403d9da2cf37.md) | 102 | `result-track:db417e455b5f403d9da2cf3775ef64a4f44955ac7aa8bfb0ad75b926aeb1b5cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
