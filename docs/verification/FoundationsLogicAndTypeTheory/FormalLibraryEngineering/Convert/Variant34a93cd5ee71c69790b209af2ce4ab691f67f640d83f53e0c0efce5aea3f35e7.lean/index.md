# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Convert.Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17baa946a720006dfcd45a77660f04d20901a51c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17baa946a720006dfcd45a77660f04d20901a51c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CongrExclamation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.MVarId.convert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/lean-mvarid-convert--9725a33235de69d42949e611.md) | 23 | `declaration-track:9725a33235de69d42949e611ab1724578c844abe485e4c2dc99ec5b176946bf4` |
| 2 | `def` | [Lean.MVarId.convertLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/lean-mvarid-convertlocaldecl--f9f9617e790b320d861f8524.md) | 44 | `declaration-track:f9f9617e790b320d861f8524e96bb308ce8f1a520f6effc80dce20e0a2b1aa65` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/syntax--a292cb70d33aaeef9f666a36.md) | 120 | `declaration-track:a292cb70d33aaeef9f666a368b90a55a397b825a94a9932b1f16eb6270baaba5` |
| 4 | `def` | [elabTermForConvert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/elabtermforconvert--b24b30c152d70f2b19a38ca9.md) | 127 | `declaration-track:b24b30c152d70f2b19a38ca9e9a8d3c64063ffb1671ea3861f0ef80e22e00d85` |
| 5 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/elab-rules--6863130a451e2dbabd6f4bfa.md) | 139 | `declaration-track:6863130a451e2dbabd6f4bfad3717993d492efd095a5a71fc5b109c3e258b1c0` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/syntax--fef3aacb713eebdb1f32a67c.md) | 177 | `declaration-track:fef3aacb713eebdb1f32a67cfac34840087d211bef8aa134954a7cfcf6504fa5` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/elab-rules--6eb3d09da9713eaaace94bbf.md) | 180 | `declaration-track:6eb3d09da9713eaaace94bbf23702724c3b06325b2ea7a1d1f565990112d26ca` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/syntax--f12f30775acb18ab9c5be7fd.md) | 208 | `declaration-track:f12f30775acb18ab9c5be7fd249ae3437f937ecfcdb8a96056ecd4536dd901d2` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant34a93cd5ee71c69790b209af2ce4ab691f67f640d83f53e0c0efce5aea3f35e7.lean/declarations/macro-rules--3f97002528b325d6dd97c025.md) | 210 | `declaration-track:3f97002528b325d6dd97c025cf72a8bc4aca68e41ca3a8ecf06e55281b01886d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
