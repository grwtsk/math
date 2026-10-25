# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertExistsExt.Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9523cda5a2e050b435667a1e9e59801b8211504e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9523cda5a2e050b435667a1e9e59801b8211504e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Environment` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssertExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean/declarations/assertexists--6da88bfb19c54c2586de8cfa.md) | 30 | `declaration-track:6da88bfb19c54c2586de8cfa87ce8a822767a5ff08224f600ac35cab5864af11` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean/declarations/initialize--21b366621fabe3ab2c34cf2c.md) | 41 | `declaration-track:21b366621fabe3ab2c34cf2c6c8b4d47f04d1aebc7aba7f1a36cf435db2fa617` |
| 3 | `def` | [addDeclEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean/declarations/adddeclentry--0c1555ccb6a091b524f0da7a.md) | 54 | `declaration-track:0c1555ccb6a091b524f0da7a9097ed6c9a873adced29d7fd6a03a52d579b81c8` |
| 4 | `def` | [Lean.Environment.getSortedAssertExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variant51283c602ed430397b69fd871ef3f4890b7900f4de335eb393bb8b02112705d2.lean/declarations/lean-environment-getsortedassertexists--f9c8818fc16f2248113c7ab6.md) | 63 | `declaration-track:f9c8818fc16f2248113c7ab6e7fd14a171e3b686f1e6fd0b0419fa0d652071a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
