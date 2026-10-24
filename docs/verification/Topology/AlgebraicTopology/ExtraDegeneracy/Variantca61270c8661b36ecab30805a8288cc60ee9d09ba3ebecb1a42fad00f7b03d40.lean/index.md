# Verification target: GRWTSK.Topology.AlgebraicTopology.ExtraDegeneracy.Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3f477b8fce655263952684b0f4563ec9874815",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3f477b8fce655263952684b0f4563ec9874815`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.AlternatingFaceMapComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.CechNerve` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy--58c52a892a562f7d7788b0be.md) | 62 | `declaration-track:58c52a892a562f7d7788b0beb8006717435b701bbc5743c0403d0ca0eed9f4c8` |
| 2 | `def` | [map](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/map--fd97be77543e89b600dee417.md) | 82 | `declaration-track:fd97be77543e89b600dee417ebab0e984943bf2a727237c1b6c01f278530cfea` |
| 3 | `def` | [ofIso](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/ofiso--c3a63e833092a5b894120332.md) | 107 | `declaration-track:c3a63e833092a5b89412033282023f6b46cf9b1a6534ca3431a12bc49fbb7d61` |
| 4 | `def` | [shiftFun](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/shiftfun--ccb538c6da10d7dd33ed1475.md) | 148 | `declaration-track:ccb538c6da10d7dd33ed1475cc01354e0d528c7d640b382e180439ab826d6873` |
| 5 | `theorem` | [shiftFun_0](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/shiftfun-0--bbbd28c70d25302f66438dd4.md) | 154 | `result-track:bbbd28c70d25302f66438dd4e488277550719e47d9bee9f833c758e7fdb5d016` |
| 6 | `theorem` | [shiftFun_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/shiftfun-succ--263d263c10294689aba6e517.md) | 160 | `result-track:263d263c10294689aba6e51795371b186d213b1cb8cfcb38a07da240b142b76c` |
| 7 | `def` | [shift](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/shift--ac988791ac7fcec1dd3d1f30.md) | 173 | `declaration-track:ac988791ac7fcec1dd3d1f304647be037159311cd36d163f0136685efafb127d` |
| 8 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy--5b4065425f5d9945084348cb.md) | 193 | `declaration-track:5b4065425f5d9945084348cbd2f716cfd05d2dcdc1d1fe9012cfb5eb07755db1` |
| 9 | `instance` | [nonempty_extraDegeneracy_standardSimplex](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/nonempty-extradegeneracy-standardsimplex--f6823fd7ccaf5d4cf5f50c3a.md) | 237 | `declaration-track:f6823fd7ccaf5d4cf5f50c3ae6ec1f49153daa559170b32419977f49fb730680` |
| 10 | `def` | [ExtraDegeneracy.s](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy-s--e2b906e492eb95f1cc706dcb.md) | 264 | `declaration-track:e2b906e492eb95f1cc706dcb5ea5a7a9ee188e76f2646f07852cdaeaec246372` |
| 11 | `theorem` | [ExtraDegeneracy.s_comp_π_0](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy-s-comp-0--e2ef5d36e6ed9d9ca8a3cab4.md) | 280 | `result-track:e2ef5d36e6ed9d9ca8a3cab4c3954f9c22daf297d3a4cf93ba8dcfb162472d80` |
| 12 | `theorem` | [ExtraDegeneracy.s_comp_π_succ](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy-s-comp-succ--13f114b93435759079f0b989.md) | 289 | `result-track:13f114b93435759079f0b9898ac4de342d436ccb0a4be45082005f219989ae54` |
| 13 | `theorem` | [ExtraDegeneracy.s_comp_base](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy-s-comp-base--dc261e1dd3eb547c31851392.md) | 300 | `result-track:dc261e1dd3eb547c31851392b18ee1c380862901a0b1cad308255ea1b98a1b37` |
| 14 | `def` | [extraDegeneracy](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/extradegeneracy--e319c4b065276ce05e0239d1.md) | 306 | `declaration-track:e319c4b065276ce05e0239d1d396b7216225afae676e2d5282e7486d02ce3f51` |
| 15 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/declarations/homotopyequiv--a8a3cf8f990b69c5a83e0463.md) | 380 | `declaration-track:a8a3cf8f990b69c5a83e046335d4814ba441280d9b5ad9dda7344a9cde0773cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
