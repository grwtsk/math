# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa8096638db852948e1e578a2c7bdd6cfe2f3422",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa8096638db852948e1e578a2c7bdd6cfe2f3422`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SetNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/topologicalspace--54276f13ee570fbf223bcffb.md) | 64 | `declaration-track:54276f13ee570fbf223bcffbc6e0a6deaa0be50d4e9d25176536738df2264c11` |
| 2 | `def` | [IsOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isopen--a739a833e8223faaa277da43.md) | 85 | `declaration-track:a739a833e8223faaa277da43348084fa8ca8dd1ae83f8f544e0b59905edc6964` |
| 3 | `theorem` | [isOpen_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isopen-univ--4799ff5231e138602d8a62f9.md) | 87 | `result-track:4799ff5231e138602d8a62f9730309da5181f097664035d6eaff6498dd8e80ed` |
| 4 | `theorem` | [IsOpen.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isopen-inter--57645d2fcfebdecda89681ff.md) | 89 | `result-track:57645d2fcfebdecda89681ff2adf937eddb9642846b7e6f98191e8325184068a` |
| 5 | `theorem` | [isOpen_sUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isopen-sunion--95c427149405555379007130.md) | 92 | `result-track:95c427149405555379007130a6690dedee5929b800aacc18fc1f22d99bafcda6` |
| 6 | `class` | [IsClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isclosed--6fa87efb83b81afe25397ce6.md) | 96 | `declaration-track:6fa87efb83b81afe25397ce6e8fb326c9d007740eaf5300f89354e9eb5ebaf79` |
| 7 | `def` | [IsClopen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isclopen--9d1f66d4b2e4ce598ba55c46.md) | 101 | `declaration-track:9d1f66d4b2e4ce598ba55c46356612e6eb0b9546fb90f086329e53ccfa5e73a0` |
| 8 | `def` | [IsLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/islocallyclosed--f20fe7db74fc8f3dc02339ea.md) | 108 | `declaration-track:f20fe7db74fc8f3dc02339eab9b77a4977384a4ee5c3205803b2e70b79ad6638` |
| 9 | `def` | [interior](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/interior--74efcedb3b7447e25d0bd932.md) | 111 | `declaration-track:74efcedb3b7447e25d0bd932bdcc5be70127b575212b289ac8f513d43056fb6e` |
| 10 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/closure--83830f8978b49d74424e97d0.md) | 115 | `declaration-track:83830f8978b49d74424e97d092d39d7294546a0605c7fa2bcec8dfbbbe68f934` |
| 11 | `def` | [frontier](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/frontier--77cb216572c04b7c04e49ceb.md) | 119 | `declaration-track:77cb216572c04b7c04e49ceb73a661a444b51d8fcd0a31b4c59403fcf85c2677` |
| 12 | `def` | [coborder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/coborder--45b76730c4b9c3d36682ebf9.md) | 131 | `declaration-track:45b76730c4b9c3d36682ebf9a40f9b958ac124c0515b1ee931a73b41931b8c33` |
| 13 | `def` | [Dense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/dense--1f02121126dd0451cb500dfd.md) | 135 | `declaration-track:1f02121126dd0451cb500dfd29b7b6acc1541b1d5d3da4f6fea6b37e2c9e3c09` |
| 14 | `def` | [DenseRange](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/denserange--c0b839d9c0607106986ccd9b.md) | 139 | `declaration-track:c0b839d9c0607106986ccd9b3e2d03105f4b40651bb622d6103dd24a382a55fa` |
| 15 | `structure` | [Continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/continuous--3a55e92387f5392d684afda3.md) | 144 | `declaration-track:3a55e92387f5392d684afda33c0efa6631f76b1f15bc4bc81da38ce030a57089` |
| 16 | `def` | [IsOpenMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isopenmap--1863139338f5488a3b99dc63.md) | 151 | `declaration-track:1863139338f5488a3b99dc6371b538d1089d762b18368b23ced188957d40dfe3` |
| 17 | `def` | [IsClosedMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isclosedmap--f6357512bca2768d37e54b14.md) | 155 | `declaration-track:f6357512bca2768d37e54b14c083508bb940b4f57318920a9de7190ae2a3521b` |
| 18 | `structure` | [IsOpenQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/isopenquotientmap--8ddb94f7b3cce1095236b7d0.md) | 171 | `declaration-track:8ddb94f7b3cce1095236b7d0e637e0d557727093eb50254941ac8d415d71db93` |
| 19 | `class` | [BaireSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant144f61c513a3a1e6981e834fde4787d8d12543d0794b4b87e8b070ef0c004e45.lean/declarations/bairespace--1ebacc90c44bbf1e278cdeda.md) | 200 | `declaration-track:1ebacc90c44bbf1e278cdeda955aa3c56616eef9ec76cb6526cba772f46f337a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
