# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BijectiveSplit.Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a468a01ff51da0e4c8363aa5008cc0de1ded7d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a468a01ff51da0e4c8363aa5008cc0de1ded7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuantizedSplit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/declarations/quantizedsplit--9de1a531a446c6117bf494dc.md) | 18 | `declaration-track:9de1a531a446c6117bf494dc9d2522072282caa237106392427f5110187d4eae` |
| 2 | `def` | [split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/declarations/split--d56e1ea5142ffb9dd91cdc29.md) | 27 | `declaration-track:d56e1ea5142ffb9dd91cdc29ab563b4439ec4b5333ab0040344747f44ab5bd40` |
| 3 | `def` | [reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/declarations/reconstruct--74365cd04076f1989ee90f82.md) | 39 | `declaration-track:74365cd04076f1989ee90f822e388c4269777e0394c63bca12fe4016ff57da70` |
| 4 | `theorem` | [reconstruct_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/declarations/reconstruct-split--2517b5969e939b04ef6f6b24.md) | 42 | `result-track:2517b5969e939b04ef6f6b24f822cf797dfedf512c5bd9903b352778919305a5` |
| 5 | `theorem` | [residual_lt_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BijectiveSplit/Varianta61c4bbb75339cad01f179aa63fbe9ce0a0a943a572f81d57bd5674f30e51f47.lean/declarations/residual-lt-step--38d83fac697c8101dd39c6b7.md) | 48 | `result-track:38d83fac697c8101dd39c6b7cdf003a963dfeae3be1de5a002b526decef4dc56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
