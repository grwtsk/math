# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HerglotzRepresentation.Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b390cbbf52679e4166ef4d08b7b937db05b605e6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b390cbbf52679e4166ef4d08b7b937db05b605e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [herglotzIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/herglotzintegrand--6407382278dfcf422ea15c6e.md) | 42 | `declaration-track:6407382278dfcf422ea15c6e5638c1db3f9df2ead7763a46d0a139291a75fdf6` |
| 2 | `structure` | [Representation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/representation--19508759409993f67b6b4a51.md) | 47 | `declaration-track:19508759409993f67b6b4a518fda6d895b88cc2756f17bac8be36fad4a6c0723` |
| 3 | `constant` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/constant--c77da7fd0fad154cbc83b2e5.md) | 48 | `declaration-track:c77da7fd0fad154cbc83b2e52f86590d3d12ec594964d092c4758360054b58a5` |
| 4 | `def` | [HerglotzRepresentationTheorem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/herglotzrepresentationtheorem--bbe0e0d1b291fd7898537592.md) | 63 | `declaration-track:bbe0e0d1b291fd7898537592edbe0a38a1e9f0dae411f4f91605fb6be039fcc0` |
| 5 | `def` | [IsPurelyAtomic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/ispurelyatomic--3b3c086312aae3d823e462a4.md) | 68 | `declaration-track:3b3c086312aae3d823e462a473141e14f09f88bb5733a79f01ed1e96f553173c` |
| 6 | `def` | [ConductorThreeAtomsMatchXiDivisor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/conductorthreeatomsmatchxidivisor--d81f809ff8a0c204fc7f57ee.md) | 78 | `declaration-track:d81f809ff8a0c204fc7f57eedd1194cdce12100d16d590c00259912eb584749b` |
| 7 | `def` | [ConductorThreeHerglotzAtomTheorem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant933d07cfc970bdfe6355681a459081e137cfb35a56ee52da347138c305253f60.lean/declarations/conductorthreeherglotzatomtheorem--1f84b355b62804b529891256.md) | 90 | `declaration-track:1f84b355b62804b52989125699ead982695ba7a82d4552f1a71acef665b5ae8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
