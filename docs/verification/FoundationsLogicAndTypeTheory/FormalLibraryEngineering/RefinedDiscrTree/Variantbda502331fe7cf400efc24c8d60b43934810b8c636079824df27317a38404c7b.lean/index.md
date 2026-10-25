# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefinedDiscrTree.Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecb15d2661d0890f3a884d5279d28f48f27aea2e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecb15d2661d0890f3a884d5279d28f48f27aea2e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Meta.RefinedDiscrTree.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree.Encode` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertInArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/insertinarray--987f72aafe8dc8df896dbfc2.md) | 119 | `declaration-track:987f72aafe8dc8df896dbfc21bc627c769be482a81a04e168a56f2134b239b50` |
| 2 | `def` | [insertInTrie](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/insertintrie--1d5acc632fc2e1adbdb42909.md) | 132 | `declaration-track:1d5acc632fc2e1adbdb42909775db85e17c628273cc45ef0d9f24d93688abd91` |
| 3 | `def` | [insertInRefinedDiscrTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/insertinrefineddiscrtree--b8d2897bf3f7f9f1e862ba24.md) | 157 | `declaration-track:b8d2897bf3f7f9f1e862ba24324270f9610463942ce368e1fc5da1896ef6f364` |
| 4 | `def` | [insertDTExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/insertdtexpr--cdca9b619230845ee882f8bc.md) | 172 | `declaration-track:cdca9b619230845ee882f8bcaf585b577aaf8e08b5366c27ba0dea3cb656c24a` |
| 5 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/insert--932d4f7b8d422369aac31b45.md) | 181 | `declaration-track:932d4f7b8d422369aac31b4557b45a726ff42001508bf3dd973d43fd280ede5e` |
| 6 | `def` | [insertEqn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/inserteqn--1ea3a2dff82e8366e355b75a.md) | 189 | `declaration-track:1ea3a2dff82e8366e355b75a14e2877d85ca13fb00ff58de93b73f835e9c77ce` |
| 7 | `def` | [Trie.mapArraysM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/trie-maparraysm--940fc10156c1b4a629d7b3db.md) | 205 | `declaration-track:940fc10156c1b4a629d7b3dbde1cabc2f879aa0a3b497b9002a68cb0bd6156f7` |
| 8 | `def` | [mapArraysM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/maparraysm--4b0e8f0dc29fbc137c1d0a8f.md) | 216 | `declaration-track:4b0e8f0dc29fbc137c1d0a8f01a4734d8fb0ebc19b97775a7268bf4d3e69e80d` |
| 9 | `def` | [mapArrays](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variantbda502331fe7cf400efc24c8d60b43934810b8c636079824df27317a38404c7b.lean/declarations/maparrays--8df31972fcfaaa5a51d6728f.md) | 220 | `declaration-track:8df31972fcfaaa5a51d6728f18a1cd611be14c7526dd5baef2e84ffef64aeb13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
