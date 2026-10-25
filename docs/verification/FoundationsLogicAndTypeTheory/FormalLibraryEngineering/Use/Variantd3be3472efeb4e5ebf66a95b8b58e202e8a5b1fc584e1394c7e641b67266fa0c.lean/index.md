# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Use.Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f1ea20e38ddafdcd2c5d7d39191c8211e9d970e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f1ea20e38ddafdcd2c5d7d39191c8211e9d970e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.WithoutCDot` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Util` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/initialize--b5c9b6562901ff4799718c95.md) | 34 | `declaration-track:b5c9b6562901ff4799718c959e373bd7156aaf0ed64b2a18ef21104a1629aaf0` |
| 2 | `def` | [applyTheConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/applytheconstructor--7848bad6d7a3391fdfce2bda.md) | 48 | `declaration-track:7848bad6d7a3391fdfce2bda54a10531de7850254df793b93106ae387650ecbf` |
| 3 | `def` | [useLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/useloop--b6ce2e178494d30a66efdece.md) | 90 | `declaration-track:b6ce2e178494d30a66efdeceba143a71f1864a728aacce47653b9b1875037738` |
| 4 | `def` | [runUse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/runuse--8d17470b2ce6b105bd631120.md) | 125 | `declaration-track:8d17470b2ce6b105bd631120c21674ca1f76a5967fd6743319aa5c60eedfbe74` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/syntax--4f8f764a866001be3d7606eb.md) | 147 | `declaration-track:4f8f764a866001be3d7606eb7bc36722ebc34c5dac742c0d9aecd8cfb9c75dee` |
| 6 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/macro-rules--8933cd9690864d572580915a.md) | 149 | `declaration-track:8933cd9690864d572580915a6bade66f4eadfd2d0da14686f9e23e36278c7d79` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/macro-rules--f721c050f5d1e478bfcd7309.md) | 150 | `declaration-track:f721c050f5d1e478bfcd730925ccc575e8068d450443e7d20808875b6f052ad1` |
| 8 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/macro-rules--c10448bb311589847028b09f.md) | 151 | `declaration-track:c10448bb311589847028b09fef65ad1f40666fa995897839364eb2c3b4904209` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/macro-rules--d91172ba90417201635413bf.md) | 152 | `declaration-track:d91172ba90417201635413bffc0b15d1058fd4e47a4cf70fd1ad784f42dd04ca` |
| 10 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/macro-rules--11cf6d5ce168f0530e8abf7b.md) | 153 | `declaration-track:11cf6d5ce168f0530e8abf7b5377a3b2c62352247de0d9a6656623adb4fa4121` |
| 11 | `def` | [mkUseDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/mkusedischarger--5c90501d30fb461e265383eb.md) | 157 | `declaration-track:5c90501d30fb461e265383eb207640f0c80188dc45e4d1897066e001c80a8a9d` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/elab--fdc7167a588cd46dc0a59865.md) | 206 | `declaration-track:fdc7167a588cd46dc0a59865189c6f40bce2f89e5adbeafd4ee12b8628335917` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Use/Variantd3be3472efeb4e5ebf66a95b8b58e202e8a5b1fc584e1394c7e641b67266fa0c.lean/declarations/elab--c5bed17cf07ab0fd5eaa9c8d.md) | 211 | `declaration-track:c5bed17cf07ab0fd5eaa9c8d998312d9a5b355506dc534c7dcfa68c37ac0c628` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
