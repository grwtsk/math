# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RotationSignal.Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f03841838e15921b8c1d47c138ff991934e2925e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f03841838e15921b8c1d47c138ff991934e2925e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibleBanachRotation](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/admissiblebanachrotation--b2d46a267a667400f61ab62c.md) | 34 | `declaration-track:b2d46a267a667400f61ab62c65611652b0bfffcc10e310ba562dbcb37648cf87` |
| 2 | `structure` | [CubicalFaceSignal](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/cubicalfacesignal--6cc0eec0a30c4be131ad29e1.md) | 50 | `declaration-track:6cc0eec0a30c4be131ad29e16b94a3be96367cc9335da44eb00e22ffb15d8efa` |
| 3 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/instance--f7b24854caff36b46e411dd6.md) | 53 | `declaration-track:f7b24854caff36b46e411dd6c3d3e576cd5e7a4da6d507ca7d45baa46a5fddb2` |
| 4 | `def` | [allDegreeDiscrepancy](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/alldegreediscrepancy--65428a94415181b420132c19.md) | 60 | `declaration-track:65428a94415181b420132c19d5b35ce455589eb7561e923d1e854bb7ca2c3a80` |
| 5 | `def` | [allDegreeSutured](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/alldegreesutured--efba2e7d61c2e539e1fade55.md) | 69 | `declaration-track:efba2e7d61c2e539e1fade55799925b20e620502fca76a2538fc7983e81ac8d8` |
| 6 | `def` | [flipBitField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/flipbitfield--b48496f9a16d06104992d89f.md) | 77 | `declaration-track:b48496f9a16d06104992d89fc42ba2535300b3727926e0a8d6a3ecce752eee40` |
| 7 | `def` | [banachDirichletEnergy](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/banachdirichletenergy--d21698e9a45dc2e7c7384b77.md) | 84 | `declaration-track:d21698e9a45dc2e7c7384b77b4994362decf216baf170b425b8adba7cc95ce7d` |
| 8 | `def` | [allFaceDirichletResidual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/allfacedirichletresidual--bd9214bf9affcde4f369521a.md) | 96 | `declaration-track:bd9214bf9affcde4f369521ab9a3bdc1bd57867472f650ea2ec5580fdb7ac12b` |
| 9 | `theorem` | [dirichletEnergy_zero_of_allDegreeSutured](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7009f3aa0601735abee1fa0e9251eeba92c5eed215665e77c2807a85a01452d2.lean/declarations/dirichletenergy-zero-of-alldegreesutured--2f54022ee9fa1201f5e3f439.md) | 108 | `result-track:2f54022ee9fa1201f5e3f4399dc5fa058d52d3dc222205fff65fd70a7a8df876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
