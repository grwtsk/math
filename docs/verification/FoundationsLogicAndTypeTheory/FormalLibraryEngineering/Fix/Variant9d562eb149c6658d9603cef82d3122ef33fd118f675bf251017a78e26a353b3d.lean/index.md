# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bff860fd7742a7d8ab962178719c76b7512d3f9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bff860fd7742a7d8ab962178719c76b7512d3f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Part` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Upto` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/fix--dd6ed8f114d0f77fdb5d5aa3.md) | 42 | `declaration-track:dd6ed8f114d0f77fdb5d5aa362ea6382e021942f0993b5d0cce70be19c8c3680` |
| 2 | `def` | [Fix.approx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/fix-approx--74544aa1cb82c76ce5ecd647.md) | 57 | `declaration-track:74544aa1cb82c76ce5ecd647083cb83ae5725a2f1d4b45a9baceef246e42bf5e` |
| 3 | `def` | [fixAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/fixaux--49fc0112cc95a9ded1219ad6.md) | 63 | `declaration-track:49fc0112cc95a9ded1219ad65bd89d3527f82e497079b157fa0fee2426b44aea` |
| 4 | `def` | [fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/fix--5c35d6ad5bd4cd9968dd7e99.md) | 76 | `declaration-track:5c35d6ad5bd4cd9968dd7e99182a564b1b094631fd2ac3d7f2e3ff28852c03e2` |
| 5 | `theorem` | [fix_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/fix-def--95320eafcdfb806a4bbe2fe9.md) | 81 | `result-track:95320eafcdfb806a4bbe2fe90e0cb631fdc83fc83248c761eceedaf42c69ae8b` |
| 6 | `theorem` | [fix_def'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/fix-def--9899fda9bbe01eb8fd2150a4.md) | 118 | `result-track:9899fda9bbe01eb8fd2150a4f91691626bf78ba4b78cbeab4e3e06d1532b3722` |
| 7 | `instance` | [hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/hasfix--8939b0d6fcee0f91b9e4f95a.md) | 129 | `declaration-track:8939b0d6fcee0f91b9e4f95abd3d48a74287bdbddbdc2b34eae0c2f58e0f8a9b` |
| 8 | `instance` | [Part.hasFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d.lean/declarations/part-hasfix--99267f86deef26e0bbf4c195.md) | 139 | `declaration-track:99267f86deef26e0bbf4c1958684d9f23c63553ef8125c71cdf0ab8e07335264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
