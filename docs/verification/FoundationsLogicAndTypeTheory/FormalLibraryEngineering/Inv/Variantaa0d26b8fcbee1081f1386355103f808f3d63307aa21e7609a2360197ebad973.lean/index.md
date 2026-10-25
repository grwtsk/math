# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inv.Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca1143d63c7614482be7e8fa219baac93a3565da",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca1143d63c7614482be7e8fa219baac93a3565da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkvars--5e64c5c8af750d368d5544e3.md) | 21 | `declaration-track:5e64c5c8af750d368d5544e3ad90687c4f6c4ad06586747827fc5c8df1cce01b` |
| 2 | `def` | [checkPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkpoly--f91ccd96da7e5c2663dd8b2a.md) | 33 | `declaration-track:f91ccd96da7e5c2663dd8b2a89c614f1038a4798ea004ed77621a36e3ec10fc9` |
| 3 | `def` | [checkBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkbasis--dd3286e959596ae0eeb9ce7f.md) | 39 | `declaration-track:dd3286e959596ae0eeb9ce7fed4e8795b58e7165f127d3fcece7b64772d089ba` |
| 4 | `def` | [checkQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkqueue--cfae2bb6f60f6cc8b3692b89.md) | 45 | `declaration-track:cfae2bb6f60f6cc8b3692b8987b4969082bbe7780ccdfcb89b3ef1bc8aab98df` |
| 5 | `def` | [checkDiseqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkdiseqs--8c9e115ab44025e284f429ea.md) | 49 | `declaration-track:8c9e115ab44025e284f429ea8b305e8d707ba521de5ec8ce7994871589846384` |
| 6 | `def` | [checkRingInvs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkringinvs--d17523293eb7f39f726f0aad.md) | 53 | `declaration-track:d17523293eb7f39f726f0aad1fa8249a4474587849e175175d1ed9c6a5c094e9` |
| 7 | `def` | [checkInvariants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantaa0d26b8fcbee1081f1386355103f808f3d63307aa21e7609a2360197ebad973.lean/declarations/checkinvariants--e1dabd3cfdbe3b5d24fe770e.md) | 59 | `declaration-track:e1dabd3cfdbe3b5d24fe770ec171b00d6ba7a29db445a62dbbbcb7780d7ba405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
