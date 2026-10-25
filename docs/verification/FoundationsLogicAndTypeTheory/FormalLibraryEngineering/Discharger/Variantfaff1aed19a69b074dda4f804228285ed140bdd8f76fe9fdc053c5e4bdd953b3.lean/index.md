# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Discharger.Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaf5c1f9127ce5af84dd38e10791ac38b91aad1f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaf5c1f9127ce5af84dd38e10791ac38b91aad1f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DischargeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/dischargeresult--dabcc2fcf84496cb3d76a83e.md) | 51 | `declaration-track:dabcc2fcf84496cb3d76a83edad1e1df220b5251f89c730964869573fbcc3c10` |
| 2 | `abbrev` | [Discharger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/discharger--c231560d1496ee8158fdb557.md) | 67 | `declaration-track:c231560d1496ee8158fdb5570a655468c7c8f0815b99e3a69cceaa9f44a1760c` |
| 3 | `def` | [resultToDischargeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/resulttodischargeresult--fa45895496ede671b59346d7.md) | 69 | `declaration-track:fa45895496ede671b59346d7245bddf9117d4058213fec9ad720cd51d8dcd724` |
| 4 | `def` | [mkDischargerFromSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/mkdischargerfromsimproc--aeaa8cb49c5cb4a707a1a03e.md) | 96 | `declaration-track:aeaa8cb49c5cb4a707a1a03ed79aff01ff8efd4b5fb04b3ca8fa04b25ada45f9` |
| 5 | `def` | [dischargeSimpSelf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/dischargesimpself--32031b906040d2b198ffc1d1.md) | 112 | `declaration-track:32031b906040d2b198ffc1d1a6a4393c1074e462ab1c73b13251614bf79928b0` |
| 6 | `def` | [dischargeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/dischargenone--32589570cf422c49feb036f6.md) | 130 | `declaration-track:32589570cf422c49feb036f65c6cff50789bfdbbc39b39be942fb35b7fcd9d2f` |
| 7 | `def` | [dischargeAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/declarations/dischargeassumption--f2cb605201746a73bdb4dfa3.md) | 137 | `declaration-track:f2cb605201746a73bdb4dfa32bf6485227e7b17f520165087a5039a94d17af9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
