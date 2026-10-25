# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulBEqTactics.Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40b20c4afc6aeae7d9142ed2138248cd7b596f39",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40b20c4afc6aeae7d9142ed2138248cd7b596f39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 10; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro--f774d2fd1feac590daf886b9.md) | 18 | `declaration-track:f774d2fd1feac590daf886b95489b101f2a97f608ad94d5287970c1068679ba9` |
| 2 | `theorem` | [and_true_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/and-true-curry--cb92ad5e8bf4bc903c171b19.md) | 25 | `result-track:cb92ad5e8bf4bc903c171b19c1bd9c5d90d4927b072fde6dd01788f975754d0d` |
| 3 | `theorem` | [deriving_lawful_beq_helper_dep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/deriving-lawful-beq-helper-dep--74a97b28ca1de20e018341b9.md) | 32 | `result-track:74a97b28ca1de20e018341b9ccc918571362311247ea19d1014241270aac6b4d` |
| 4 | `theorem` | [deriving_lawful_beq_helper_nd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/deriving-lawful-beq-helper-nd--daf45105596281b2a0717926.md) | 48 | `result-track:daf45105596281b2a071792635f9c57e54a63c1c94f0f514765ccb6b76d3a095` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/syntax--1dbd9a2cd441feaeff3493d5.md) | 61 | `declaration-track:1dbd9a2cd441feaeff3493d55b4f1c43c4c0392c1bb9b000549e7eca7d09ca1c` |
| 6 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro-rules--7cb7b2722b216696a93a0136.md) | 62 | `declaration-track:7cb7b2722b216696a93a013663630f16c1450a1bd56b391cd4cb98722ac1cbc3` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro-rules--ddc34fc85ec330ee8f9670cb.md) | 65 | `declaration-track:ddc34fc85ec330ee8f9670cb093e4d6ac9aa97bb02c4aad49e65831c0c96b8d3` |
| 8 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro-rules--ddaa253667658dff07cf903b.md) | 74 | `declaration-track:ddaa253667658dff07cf903bf65012af1cc6a93c9d6ff08d200a01193182acf3` |
| 9 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro-rules--113e00ea759388bdd8cee3f1.md) | 82 | `declaration-track:113e00ea759388bdd8cee3f1fbde7e16d6a731351e2c140370e25845d3859d47` |
| 10 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro-rules--753eac47507ae0504fb178f9.md) | 86 | `declaration-track:753eac47507ae0504fb178f9d5592a02d20d154fb18412a95b8d87c937492457` |
| 11 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro-rules--a2d761a3087050250d2b1667.md) | 89 | `declaration-track:a2d761a3087050250d2b1667decf89d4e1eac9846617dd521fa59ba530955493` |
| 12 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/declarations/macro--495dddeccbdc273e78f2fc65.md) | 93 | `declaration-track:495dddeccbdc273e78f2fc65bf144357f2a38dbbea0f1669b3368b18e2513126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
