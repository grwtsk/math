# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FromToJson.Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42cc26efa81fa904c18973f67b4f9951ee53021d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42cc26efa81fa904c18973f67b4f9951ee53021d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean.json)

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
| 1 | `def` | [mkToJsonHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsonheader--58082d49f1c7c5cf6f606901.md) | 28 | `declaration-track:58082d49f1c7c5cf6f606901edda44463743de86fe06e47242f0970b549af754` |
| 2 | `def` | [mkFromJsonHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsonheader--c8ce67a8bd9a048eb5a6d766.md) | 31 | `declaration-track:c8ce67a8bd9a048eb5a6d7661fa4b32c886f13bba1a4dd934b3cb1f6b650325d` |
| 3 | `def` | [mkJsonField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkjsonfield--09a664749a064ff266b646b8.md) | 37 | `declaration-track:09a664749a064ff266b646b8b54dc73dd6dc35fd1ae4ce9e3cc41dcd9285289a` |
| 4 | `def` | [mkToJsonBodyForStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsonbodyforstruct--09e266c7cebbf73888d4f615.md) | 42 | `declaration-track:09e266c7cebbf73888d4f615d6d8759b91f74891d05986a4bb1c10c1faf8dc2a` |
| 5 | `def` | [mkToJsonBodyForInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsonbodyforinduct--98c29c4d191461fdc39e3933.md) | 51 | `declaration-track:98c29c4d191461fdc39e393364edce82cb9edd1c3929f108f2e5c40a80d8105f` |
| 6 | `def` | [mkFromJsonBodyForStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsonbodyforstruct--804bb438686ff1b229cbde07.md) | 107 | `declaration-track:804bb438686ff1b229cbde07a8e44e1cfc594fb134e4dfa02f24eaeead34b686` |
| 7 | `def` | [mkFromJsonBodyForInduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsonbodyforinduct--65c6ede08eb01a9139b218c3.md) | 119 | `declaration-track:65c6ede08eb01a9139b218c3cb79d56d5b44a847d24b516d30741449323931ce` |
| 8 | `def` | [mkToJsonBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsonbody--5f79f2fac5c1ddd828617094.md) | 169 | `declaration-track:5f79f2fac5c1ddd828617094fb401d353e2d649c5358fa54ddc1b29ee96e08d3` |
| 9 | `def` | [mkToJsonAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsonauxfunction--4bb5a87ab6181c831aca00a1.md) | 176 | `declaration-track:4bb5a87ab6181c831aca00a13c425a8461cb83f01e98764e491acfc60f71caf7` |
| 10 | `def` | [mkFromJsonBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsonbody--7b9fe77ae0ff56c86d70fe22.md) | 190 | `declaration-track:7b9fe77ae0ff56c86d70fe224f995e11d0d37ab6e0042107019b64b673435e40` |
| 11 | `def` | [mkFromJsonAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsonauxfunction--f24374cdca667e04278e8a12.md) | 197 | `declaration-track:f24374cdca667e04278e8a12605c35f08c24198f74235439be95de77cdd54928` |
| 12 | `def` | [mkToJsonMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsonmutualblock--98e94b0c73c41ef72c362112.md) | 213 | `declaration-track:98e94b0c73c41ef72c362112354869eb7728eaf3f14dff0925f42fc27a68086e` |
| 13 | `def` | [mkFromJsonMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsonmutualblock--baf679e1b2af59485a1460de.md) | 221 | `declaration-track:baf679e1b2af59485a1460de72c8be3c39828c1282bc224448033331d6052938` |
| 14 | `def` | [mkToJsonInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsoninstance--924c941b70bf4e205895fced.md) | 229 | `declaration-track:924c941b70bf4e205895fced5e1017598511e9a5872884cc362c635ed871ff5b` |
| 15 | `def` | [mkFromJsonInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsoninstance--679c6c9b19ee44e91fc9b759.md) | 235 | `declaration-track:679c6c9b19ee44e91fc9b759dab8c023694c98995a94219e07eacc5a81cdc4d7` |
| 16 | `def` | [mkToJsonInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mktojsoninstancehandler--a37a184eb13a4ce6c9aaa4ce.md) | 241 | `declaration-track:a37a184eb13a4ce6c9aaa4ce5d7971c092fd816075566ab6b7092f8af5eacf66` |
| 17 | `def` | [mkFromJsonInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/mkfromjsoninstancehandler--2db8b662e6eca83d07f996ed.md) | 250 | `declaration-track:2db8b662e6eca83d07f996edd58c7c4ddcdc360cb50b9b80fa2644be2adff193` |
| 18 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromToJson/Variant7fac8f0db1b49707b4afdcb2641190630c3f3f12ca016e5170cf15906522f71a.lean/declarations/builtin-initialize--53898f194d111d809f0601ee.md) | 259 | `declaration-track:53898f194d111d809f0601ee50db44b34aa6910550a17e50b5453f262caeea34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
