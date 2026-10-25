# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49cb83d38d1bf7df0396d2890e98d1ae7cf3ecb2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49cb83d38d1bf7df0396d2890e98d1ae7cf3ecb2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Expr` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.UnusedNames` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/canlift--170fa25250bea24aaac4c807.md) | 31 | `declaration-track:170fa25250bea24aaac4c8071a694b36bee0d7ad7e996bed55b2b627ddeafb2e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/instance--9659be9f2dc27910756b8eca.md) | 35 | `declaration-track:9659be9f2dc27910756b8ecac764e4d4dcfb33bfbb92ef2272b25fb72efa963a` |
| 3 | `instance` | [Pi.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/pi-canlift--c12627e887c6c1ffd121a34e.md) | 39 | `declaration-track:c12627e887c6c1ffd121a34e60f87b7d6f8781721685831a2cefcd3d63a2a7ec` |
| 4 | `theorem` | [Subtype.exists_pi_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/subtype-exists-pi-extension--9c8c8ba1a99b514f08d9fd9a.md) | 45 | `result-track:9c8c8ba1a99b514f08d9fd9a82d6fbb62e8a20212e95ff2a34ed4a754da3faa4` |
| 5 | `instance` | [PiSubtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/pisubtype-canlift--ec2e5e09bc30be9c1625a191.md) | 52 | `declaration-track:ec2e5e09bc30be9c1625a1917285d741c010d0b188890dc406163e23e64be408` |
| 6 | `instance` | [PiSubtype.canLift'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/pisubtype-canlift--d4f93b4755751b4eeeb2ce3d.md) | 57 | `declaration-track:d4f93b4755751b4eeeb2ce3df4716e0962d2627d36fc9b8f78774969929ded40` |
| 7 | `instance` | [Subtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/subtype-canlift--66489d37eac5e9aa7c1d729d.md) | 61 | `declaration-track:66489d37eac5e9aa7c1d729d209d66941c1eaf793c299374196e8232425dc5fc` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/syntax--c3024e96e6b57477d1063e71.md) | 107 | `declaration-track:c3024e96e6b57477d1063e71e574b665a746de5ffb5e12edfee9252749675085` |
| 9 | `def` | [Lift.getInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/lift-getinst--94778d50167588aaed5d0d59.md) | 111 | `declaration-track:94778d50167588aaed5d0d59bcfe0be844f528faecfafab32b49177149fc7215` |
| 10 | `def` | [Lift.main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/lift-main--d3dc05bbcec7e08aec49bd11.md) | 119 | `declaration-track:d3dc05bbcec7e08aec49bd11e9724a97467ad1801a0e00767cd9f499f2423769` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/elab-rules--2aaa0f2beb6eadbc6337fec6.md) | 170 | `declaration-track:2aaa0f2beb6eadbc6337fec6cd3fc5a8c345765424978a3d0eddb4adce64dbf4` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/elab-rules--9e805a783ea97affabbbc50b.md) | 173 | `declaration-track:9e805a783ea97affabbbc50b03fb84b354f1977190b0789777c17f3ad2b179b6` |
| 13 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/elab-rules--f1fc5f5b0bf95c94b0def6d3.md) | 176 | `declaration-track:f1fc5f5b0bf95c94b0def6d361f0390ded22ade9ae3c89fede9a20ba8ad9ef4e` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant718209d3e655a9fb42432553a7d3f03fc23cbbc173820d391f1c657176b1bd1e.lean/declarations/elab-rules--5c7fe36e413c346e5c8bec48.md) | 179 | `declaration-track:5c7fe36e413c346e5c8bec485575576b49155a9a8083b9d7d856ce555d6f2e3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
