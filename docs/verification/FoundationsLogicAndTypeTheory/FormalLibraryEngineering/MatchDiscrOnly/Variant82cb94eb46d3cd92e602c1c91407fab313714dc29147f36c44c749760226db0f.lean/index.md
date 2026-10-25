# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchDiscrOnly.Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32848003d4a0c4a41aefed1af086b6940193eace",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32848003d4a0c4a41aefed1af086b6940193eace`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Simproc` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Rewrite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [markAsSimpMatchDiscrsOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/declarations/markassimpmatchdiscrsonly--4120cb7c916e950650367b5a.md) | 19 | `declaration-track:4120cb7c916e950650367b5a6c9bb36822a69dc582625de1a89c5f9c5282197b` |
| 2 | `def` | [isSimpMatchDiscrsOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/declarations/issimpmatchdiscrsonly--a9e17eca85764a2232e7cf3b.md) | 22 | `declaration-track:a9e17eca85764a2232e7cf3bf976f13c1bc0d5dc8a52d0760eb1066a3d518ae9` |
| 3 | `def` | [addSimpMatchDiscrsOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/declarations/addsimpmatchdiscrsonly--cab8d7d35683616edb81e094.md) | 36 | `declaration-track:cab8d7d35683616edb81e0946bbd262193b289a5a908771962db54b6621ed38f` |
| 4 | `def` | [eraseSimpMatchDiscrsOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchDiscrOnly/Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f.lean/declarations/erasesimpmatchdiscrsonly--8057f305a4e1a66770715d37.md) | 40 | `declaration-track:8057f305a4e1a66770715d37a46953a5c5a211b1db0c855a8933d237fef1ab7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
