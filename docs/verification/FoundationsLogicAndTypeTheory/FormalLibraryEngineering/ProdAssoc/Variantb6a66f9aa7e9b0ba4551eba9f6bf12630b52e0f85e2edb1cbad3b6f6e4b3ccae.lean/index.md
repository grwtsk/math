# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03e779259f1e496183e71c02c8a909a822cecfba",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03e779259f1e496183e71c02c8a909a822cecfba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree--e3e4e9d485bb1f8f1b60000a.md) | 33 | `declaration-track:e3e4e9d485bb1f8f1b60000ae70ae45ef131724399530a88d6c6a49706e3eacd` |
| 2 | `def` | [ProdTree.getType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree-gettype--8d345d70215b0d4f108b7081.md) | 39 | `declaration-track:8d345d70215b0d4f108b7081bee6f537d9db9f8dfb829baede3449911d195fe0` |
| 3 | `def` | [ProdTree.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree-size--24082ec7c9797b0cba47ad83.md) | 44 | `declaration-track:24082ec7c9797b0cba47ad83042b3b121148e183fc643f3bd56e66fc97598fce` |
| 4 | `def` | [ProdTree.components](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree-components--5fe0f5b8eef62d03be768461.md) | 49 | `declaration-track:5fe0f5b8eef62d03be7684613bb52456e484c3cfb483e162f13af41345e7579f` |
| 5 | `def` | [mkProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/mkprodtree--9b3ee12fef433fb7da6c6086.md) | 54 | `declaration-track:9b3ee12fef433fb7da6c608640ec76d3f4e8dcb969ffa1b1afa053cffe98d853` |
| 6 | `def` | [ProdTree.unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree-unpack--1ed5193c9ea279eae67d3b04.md) | 71 | `declaration-track:1ed5193c9ea279eae67d3b047107a5954041dee91a69541bbf9243096acb5be0` |
| 7 | `def` | [ProdTree.pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree-pack--192ba13120eea065c53a3fb3.md) | 80 | `declaration-track:192ba13120eea065c53a3fb3f6e8ffeb0fba31fd4649516ad10c77c0a8c66a13` |
| 8 | `def` | [ProdTree.convertTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/prodtree-convertto--656c927a70902f5186a61e2b.md) | 98 | `declaration-track:656c927a70902f5186a61e2b1902fc5846b8277022335864d9474c632afe102d` |
| 9 | `def` | [mkProdFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/mkprodfun--f2c5d32361b9f3c69fcac73a.md) | 103 | `declaration-track:f2c5d32361b9f3c69fcac73a65003859585a49674ea3ec137428246d9893b8ef` |
| 10 | `def` | [mkProdEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/mkprodequiv--9855de801f837170fcdb0cd7.md) | 116 | `declaration-track:9855de801f837170fcdb0cd7c493b48a79862e28f7abb6999cef11c34ea77530` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/syntax--3ccda36d5fb8beb9056d6b20.md) | 129 | `declaration-track:3ccda36d5fb8beb9056d6b201fc7b28479f9e77b7adc6693118b5593b7b4c730` |
| 12 | `def` | [elabProdAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/elabprodassoc--f0aa260b47d37f6800ecfa91.md) | 134 | `declaration-track:f0aa260b47d37f6800ecfa912ff4d993e9cc6f9a77061e51ca2e10cb202ddb31` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/declarations/macro--8ed209b666ad7350f9cebac7.md) | 157 | `declaration-track:8ed209b666ad7350f9cebac78127bda90aa061f8f34904b75a0e3a6f0dd5c08e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
