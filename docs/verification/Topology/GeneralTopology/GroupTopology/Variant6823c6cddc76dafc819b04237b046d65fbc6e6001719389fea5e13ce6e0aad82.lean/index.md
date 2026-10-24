# Verification target: GRWTSK.Topology.GeneralTopology.GroupTopology.Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84ac5f039fe7b5befca15a0003d11eabbfa8528f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84ac5f039fe7b5befca15a0003d11eabbfa8528f`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroupTopology](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/grouptopology--7f0c6033900e6b0a61e4e7d2.md) | 30 | `declaration-track:7f0c6033900e6b0a61e4e7d232733ed90467371d9067550750b9a450f7cd3d2f` |
| 2 | `structure` | [AddGroupTopology](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/addgrouptopology--c5d4fb270d4aacf734d3c83d.md) | 35 | `declaration-track:c5d4fb270d4aacf734d3c83d342b2a1936f1e0358af038758db7b638711dd26c` |
| 3 | `theorem` | [continuous_mul'](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/continuous-mul--c14cbbb39b5f0d74a4b2cfa1.md) | 46 | `result-track:c14cbbb39b5f0d74a4b2cfa11e63652d11086f916c4d7029bbd7cd5fbe6de6ea` |
| 4 | `theorem` | [continuous_inv'](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/continuous-inv--8a11c03ca5dd7a767d784eca.md) | 55 | `result-track:8a11c03ca5dd7a767d784ecaf2710dacc8d6e92f708725740036810660389b92` |
| 5 | `theorem` | [toTopologicalSpace_injective](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-injective--f3f6789e0807cd85f56aa2d5.md) | 63 | `result-track:f3f6789e0807cd85f56aa2d547f31ae64ad9171ea083ea6721d5d59b85893bc1` |
| 6 | `theorem` | [ext'](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/ext--cefd26eecfff06c8783afda8.md) | 71 | `result-track:cefd26eecfff06c8783afda89ca790fa9408b555b00513b429b1a5eb68c93b5f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--03d1019a5e70cc8325eb4084.md) | 79 | `declaration-track:03d1019a5e70cc8325eb40847ac1939aa0aeb59989ea64eb59c92697684e31f0` |
| 8 | `theorem` | [toTopologicalSpace_le](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-le--41b193eca3fa0f4e1be3365f.md) | 83 | `result-track:41b193eca3fa0f4e1be3365fab7668b9124b15810546d5b84f3b74969e02c01c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--6cdb342087c6ecce849ea03d.md) | 88 | `declaration-track:6cdb342087c6ecce849ea03d2f9ab03ffacf6e628ba61f5b506350144358e8c2` |
| 10 | `theorem` | [toTopologicalSpace_top](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-top--7f65c8ed523cf96d6ee6a082.md) | 94 | `result-track:7f65c8ed523cf96d6ee6a082a764e2f7a2a9b7ad0f1ca294c077d83d2745b4f2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--6e40cc7a90d23de2d0e4e510.md) | 98 | `declaration-track:6e40cc7a90d23de2d0e4e510d4f64f438f8c91d7e506ec457bfa433e83107256` |
| 12 | `theorem` | [toTopologicalSpace_bot](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-bot--73db1a56dfcd24489f5cb2a0.md) | 106 | `result-track:73db1a56dfcd24489f5cb2a0e28081f0623e462be94119c905e110d33c8534b1` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--df8cab02dbbfe3143b0c8967.md) | 110 | `declaration-track:df8cab02dbbfe3143b0c896752a01a2a917b58a1dfee99fc71135b801ee5e1e4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--1b4aad0247a485b14ea10154.md) | 117 | `declaration-track:1b4aad0247a485b14ea101545ea75dda76981ed6e6e70c35348d1f11fc683f06` |
| 15 | `theorem` | [toTopologicalSpace_inf](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-inf--5fc2bde75309e16ab7062823.md) | 120 | `result-track:5fc2bde75309e16ab7062823d59d5f2095205b557cf4b5d2ef1d2e6f9ab2bcb2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--6c0802aa803594517686d8c3.md) | 125 | `declaration-track:6c0802aa803594517686d8c32aff65112ed2e74873f8fcead812bf7c31e56d14` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--a1053f3f6bac5b5d06d905f4.md) | 129 | `declaration-track:a1053f3f6bac5b5d06d905f4e0c7a481ccebcfd32258b6836614bd3a76a06c40` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--590b6999203d09960dd7557e.md) | 134 | `declaration-track:590b6999203d09960dd7557e8a32ff6f3bbbde4fc0e3be7d498e3f766f26d03c` |
| 19 | `theorem` | [toTopologicalSpace_sInf](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-sinf--a38388373468321bbf4e026b.md) | 139 | `result-track:a38388373468321bbf4e026bd2689597f6fd065814ed9f5f129425dc9c7c01e4` |
| 20 | `theorem` | [toTopologicalSpace_iInf](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/totopologicalspace-iinf--a48f7ee65a1096cf9ebd4ac6.md) | 143 | `result-track:a48f7ee65a1096cf9ebd4ac6ec80c2c9721f453bc24ac4a20e84644a721894fa` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--0c4745a6a2688b4c422dc016.md) | 164 | `declaration-track:0c4745a6a2688b4c422dc016a78f4f56453430a96f6fd4e1f9771eafda9aaf25` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/instance--b3dbcef1c57e1f7ccaa255ca.md) | 175 | `declaration-track:b3dbcef1c57e1f7ccaa255ca3832019b72fe3d72fccdab35c9484fc3e7385bbe` |
| 23 | `def` | [coinduced](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/coinduced--c6c0e7a8eaed48c57bd62f3b.md) | 188 | `declaration-track:c6c0e7a8eaed48c57bd62f3b986ebf71fd93d2b1970c1c0383c2528ec450ddea` |
| 24 | `theorem` | [coinduced_continuous](../../../../../mathematics/Topology/GeneralTopology/GroupTopology/Variant6823c6cddc76dafc819b04237b046d65fbc6e6001719389fea5e13ce6e0aad82.lean/declarations/coinduced-continuous--04fa817a6944c4640d7d709d.md) | 192 | `result-track:04fa817a6944c4640d7d709dfda6af796a10260e974f9ef1c8ea81bd4fbc2fd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
