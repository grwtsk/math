# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveShrinkable.Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "463aa70935651665d60b3a9fc74a3dc790dd03da",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `463aa70935651665d60b3a9fc74a3dc790dd03da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Plausible.Shrinkable` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/initialize--786c86249a629a51074995be.md) | 52 | `declaration-track:786c86249a629a51074995bedd8fab4ea49aff4adba78113e3b995ab7550fd6f` |
| 2 | `def` | [getCtorArgsNamesAndTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/getctorargsnamesandtypes--c0816e0a2b6f3cd2498e9897.md) | 62 | `declaration-track:c0816e0a2b6f3cd2498e9897f6f361d92cb9151c802bc693eb59174edde75766` |
| 3 | `def` | [mkShrinkableHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkshrinkableheader--5ea6e5eb7f363e8ac908afdb.md) | 78 | `declaration-track:5ea6e5eb7f363e8ac908afdbe0ea8771e91088d6fd5b0b741ad7576f8f2281a4` |
| 4 | `def` | [mkCtorShrinkExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkctorshrinkexpr--0998b5a97458df746d1bb14c.md) | 92 | `declaration-track:0998b5a97458df746d1bb14c47619644fe9e08791318840c147ccbc949acfb7a` |
| 5 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkauxfunction--0b21a3238baa6331e8781cde.md) | 131 | `declaration-track:0b21a3238baa6331e8781cde90d545fdfd2e29a0be7e273d5f03e7f5367cbe53` |
| 6 | `def` | [mkMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkmutualblock--90807c3c0b445f04689329d4.md) | 171 | `declaration-track:90807c3c0b445f04689329d4e8289b214f5e31660541ec41a439affdd666c63e` |
| 7 | `def` | [mkShrinkableInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkshrinkableinstancecmds--47b6e8ba03067fec468b2c93.md) | 179 | `declaration-track:47b6e8ba03067fec468b2c9302ad0796bd2ca02d9f73ba0e19f74e7cdb01127e` |
| 8 | `def` | [mkShrinkableInstanceCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkshrinkableinstancecmd--22082dfba620526da5e79ff9.md) | 196 | `declaration-track:22082dfba620526da5e79ff978b08d3d69169e0523a69aec9fe039f90dd54fda` |
| 9 | `def` | [mkShrinkableInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/mkshrinkableinstancehandler--b830fee6b077ff5b77bfec9b.md) | 203 | `declaration-track:b830fee6b077ff5b77bfec9b68085f43bf3c2eefa697fc4b535bf397ff7e072f` |
| 10 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variant8549157113d9a7a313ff826686c4400746be95eeba2c3ea4627f8ec74b11d939.lean/declarations/initialize--5717c49d98d40da422a73d3e.md) | 215 | `declaration-track:5717c49d98d40da422a73d3ee4053c2b88ec1f8cca20c9b0f735170d18760b4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
