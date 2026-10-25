# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormSimp.Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66bcd52058f46c89ee84487896e69224ee5e31b0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66bcd52058f46c89ee84487896e69224ee5e31b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean.json)

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
| 1 | `def` | [getSimpEntriesFromPropConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/declarations/getsimpentriesfrompropconst--50a84bd7e8f25c910617b7ff.md) | 25 | `declaration-track:50a84bd7e8f25c910617b7ffcbd286d791d2600d1a67745d75831841e9a6085e` |
| 2 | `def` | [getSimpEntriesForConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/declarations/getsimpentriesforconst--869c285cdc0755e5071d09e7.md) | 30 | `declaration-track:869c285cdc0755e5071d09e7eb2548e14e79f5bbf8bdc04d28169d2a4cd51a75` |
| 3 | `def` | [PhaseSpec.getSimpPrio](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/declarations/phasespec-getsimpprio--ec63153b89184e7762bac18e.md) | 39 | `declaration-track:ec63153b89184e7762bac18ec99af80375c822342ec0e0408c14761b543f6109` |
| 4 | `def` | [simpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/declarations/simpcore--415240bd7acc8d33864bf075.md) | 49 | `declaration-track:415240bd7acc8d33864bf07592e85be2146f38245582a9ff52f4b6499f00a464` |
| 5 | `def` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845.lean/declarations/simp--feb8d0ef1e255f750e85621b.md) | 58 | `declaration-track:feb8d0ef1e255f750e85621b3c4d0a5d674deee481e9fde5131a436a1b384ec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
