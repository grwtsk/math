# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f4b83458edb567d7181049875ac11b88843dec2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f4b83458edb567d7181049875ac11b88843dec2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean.json)

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
| 1 | `instance` | [instFinite](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/instfinite--153f6834971b00b7b966f67e.md) | 30 | `declaration-track:153f6834971b00b7b966f67e6db3369a6370576840157900b7bc66a820f06fc7` |
| 2 | `def` | [ιMultiDual](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/multidual--fd734e6f40e46d5e691170df.md) | 45 | `declaration-track:fd734e6f40e46d5e691170dfb7f51ff0269757279b99dad85e67dddeb176c4a6` |
| 3 | `lemma` | [ιMultiDual_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/multidual-apply-multi--b746a8c88b4cb4642e1e583e.md) | 49 | `result-track:b746a8c88b4cb4642e1e583e874d263f68a1e02dadd6d94b74c982de5d13f53f` |
| 4 | `lemma` | [ιMultiDual_apply_diag](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/multidual-apply-diag--58d7813934b10febc32470c7.md) | 57 | `result-track:58d7813934b10febc32470c70f02e914b8a1e6cd72b3446efabb80fe8909b8b8` |
| 5 | `lemma` | [ιMultiDual_apply_nondiag](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/multidual-apply-nondiag--cbeb234f4cd1fbdf1728581e.md) | 70 | `result-track:cbeb234f4cd1fbdf1728581edc36169800ca872d1e1b45ff86949c9aa14ddfda` |
| 6 | `lemma` | [ιMulti_family_linearIndependent_ofBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/multi-family-linearindependent-ofbasis--293314bbbe453caf14f34225.md) | 87 | `result-track:293314bbbe453caf14f34225d97f103a0ebb5c0fb2f34ce6b4420f965b50c3bc` |
| 7 | `def` | [_root_.Module.Basis.exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/root-module-basis-exteriorpower--ea7082941a25d196878922aa.md) | 96 | `declaration-track:ea7082941a25d196878922aac477433404f9e107090dd980bef37597ce40ef85` |
| 8 | `lemma` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/coe-basis--cedd1334fe22f6470979899c.md) | 102 | `result-track:cedd1334fe22f6470979899c2ab3d08c9278201b9d6a6627b5b52a59b6e5d4e6` |
| 9 | `lemma` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/basis-apply--fc92b1f0370646f0022361e2.md) | 106 | `result-track:fc92b1f0370646f0022361e2fa7d8e5472d1d33c082d28f6d3389fef3bf4551d` |
| 10 | `lemma` | [basis_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/basis-coord--47b939373eb1d265cbfb8913.md) | 114 | `result-track:47b939373eb1d265cbfb891353d03b3db5c61d0bb6b102ba8627e6daab014fac` |
| 11 | `lemma` | [basis_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/basis-repr-apply--3b6f3e9ba76d4c96763a2c8a.md) | 124 | `result-track:3b6f3e9ba76d4c96763a2c8a7cd4bb760445d41d5e7be33b8a3f867199da0b61` |
| 12 | `lemma` | [basis_repr_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/basis-repr-self--905a2b75fa5f4dc7f2c75249.md) | 130 | `result-track:905a2b75fa5f4dc7f2c75249a956595c5b2e6e3b3273ab935997686dc3361cee` |
| 13 | `lemma` | [basis_repr_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/basis-repr-ne--d143aeef8dee1fa692df558d.md) | 135 | `result-track:d143aeef8dee1fa692df558d7ea2f15f861f4fc8e2777b6061c55d5b5eb8e8ac` |
| 14 | `lemma` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/basis-repr--71677cfa11a83233cf9617cd.md) | 139 | `result-track:71677cfa11a83233cf9617cd896f5a06e6633bd646bd77878eb0f69ffc0f6235` |
| 15 | `lemma` | [pairingDual_apply_dualBasis_exteriorPower](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/pairingdual-apply-dualbasis-exteriorpower--c56c0863e7ee5978ffe1cb4d.md) | 146 | `result-track:c56c0863e7ee5978ffe1cb4dfbe7bc77175507e67ed7f1f4be127046dc33bb66` |
| 16 | `lemma` | [pairingDual_eq_dualBasis_constr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/pairingdual-eq-dualbasis-constr--57aac8c17ab62c05ac7173b4.md) | 150 | `result-track:57aac8c17ab62c05ac7173b47dd17eef4ab1260b75ab4971c3bd6dbde5aa9fad` |
| 17 | `instance` | [instFree](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/instfree--20f83bf9c43a7f4d68a901b6.md) | 163 | `declaration-track:20f83bf9c43a7f4d68a901b67dbb75e71449de8ffc65149249c3f8344ffa5875` |
| 18 | `lemma` | [finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/finrank-eq--3b2962e45563e12ae0ce589e.md) | 175 | `result-track:3b2962e45563e12ae0ce589e84b990e691ab1f6bf25cae331d68454646e7164f` |
| 19 | `lemma` | [bijective_pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/bijective-pairingdual--dac134e0e0541f0e3358c64c.md) | 183 | `result-track:dac134e0e0541f0e3358c64c8c6717755435f7851e8ebe840a464f8a211b97cb` |
| 20 | `lemma` | [ιMulti_family_linearIndependent_field](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant0f4126e8eef8d55f0d11a4d0cb0a6fda09f4f901a04984ad10bf00a0a73c3d01.lean/declarations/multi-family-linearindependent-field--b787e8c206094eb5d52cafac.md) | 204 | `result-track:b787e8c206094eb5d52cafac4a67cd5c0e5567a30786ef1f4508e5a0f9879663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
