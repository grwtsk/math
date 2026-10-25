# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComparison.Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6435a4dc756f9714b5164d0874b13f49a40d7342",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6435a4dc756f9714b5164d0874b13f49a40d7342`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Prismatic.PrismaticRealization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean/declarations/wittrealization--54189c4052666ba75fa4e8de.md) | 19 | `declaration-track:54189c4052666ba75fa4e8de2cb8e0b5b2a24748d8d2f9be8f96a3b4307f5601` |
| 2 | `structure` | [PrismaticWittComparison](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean/declarations/prismaticwittcomparison--532ab1800357503f8e52c9e9.md) | 24 | `declaration-track:532ab1800357503f8e52c9e9968e33db18cec8d50ce38a673b4a042b36014be9` |
| 3 | `theorem` | [prismatic_witt_comparison_has_prismatic_side](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean/declarations/prismatic-witt-comparison-has-prismatic-side--5819163943fa8e5694f588e9.md) | 29 | `result-track:5819163943fa8e5694f588e9ce7e7b07b9ebf2d6b1f97fa0a0ad887d108b0be3` |
| 4 | `theorem` | [prismatic_witt_comparison_has_witt_side](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComparison/Variant2b780db97ba3f1bcaf901abd84845104a278ce20ddfb2f4dd05cf9b0653784d8.lean/declarations/prismatic-witt-comparison-has-witt-side--5b2fc5f3fd35c7b07c3ebca5.md) | 34 | `result-track:5b2fc5f3fd35c7b07c3ebca57c6ac430550fcc5cfae7011046e5a6257bf48a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
