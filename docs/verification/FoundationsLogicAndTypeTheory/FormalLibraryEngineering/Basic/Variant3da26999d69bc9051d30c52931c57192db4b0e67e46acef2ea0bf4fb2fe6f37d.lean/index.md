# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1d7c0ce0ce60741e0cf56ce2077e9ef288d3cb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1d7c0ce0ce60741e0cf56ce2077e9ef288d3cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Normalize` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.PureCoherence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bicategoryNf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean/declarations/bicategorynf--f49ba075650fdd9497014bc7.md) | 39 | `declaration-track:f49ba075650fdd9497014bc731ba499799d7e1e03bae7c4a1a0bb69497b8a685` |
| 2 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean/declarations/elab--47fa64cdea86f740e4ece229.md) | 43 | `declaration-track:47fa64cdea86f740e4ece2290aaca25bf8a43ed3e0363ad1e99e33ac7399549f` |
| 3 | `def` | [bicategory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean/declarations/bicategory--d41bae8ff64a89562dee36b8.md) | 56 | `declaration-track:d41bae8ff64a89562dee36b8d000b01f7ec44ca349a497dd2cc7a86297a4a907` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3da26999d69bc9051d30c52931c57192db4b0e67e46acef2ea0bf4fb2fe6f37d.lean/declarations/elab--fc948c95bc2c047b29b4a0cd.md) | 60 | `declaration-track:fc948c95bc2c047b29b4a0cdaf3e221f1012811f2fae7421b658b128a908adc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
