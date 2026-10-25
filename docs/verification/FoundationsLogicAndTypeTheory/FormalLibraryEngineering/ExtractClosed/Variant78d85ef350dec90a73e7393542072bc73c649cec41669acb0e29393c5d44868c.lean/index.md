# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractClosed.Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be8f79d3b2433196daea26d4cfddfe21e55cc3d6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be8f79d3b2433196daea26d4cfddfe21e55cc3d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.ElimDead` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.DependsOn` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExtractM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/extractm--2d059678945a9f53f2ae8be3.md) | 22 | `declaration-track:2d059678945a9f53f2ae8be3d022e6c80c9bf2a45c9b991a4ccfbfa28dbd9bcc` |
| 2 | `def` | [extractLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/extractletvalue--3d4425bac2e1aad68b9ad8c2.md) | 26 | `declaration-track:3d4425bac2e1aad68b9ad8c2145eed9538ca5ac9ba24d229b049a3d21fd4e6fb` |
| 3 | `def` | [extractArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/extractarg--ff758a25c91a0e0024a23610.md) | 35 | `declaration-track:ff758a25c91a0e0024a2361099a7040c92d28b0e5475f13877e9d1d5f1aa6ed6` |
| 4 | `def` | [extractFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/extractfvar--be219337e44962dae350b121.md) | 40 | `declaration-track:be219337e44962dae350b121c58910550e99d42bd33b819af5f8490fae32a0a4` |
| 5 | `def` | [isIrrelevantArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/isirrelevantarg--e04a39aadfecd2a681850636.md) | 47 | `declaration-track:e04a39aadfecd2a681850636b0d79c0e0803f26ed919547f0ff14e404a61cef2` |
| 6 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/context--9bac7b840f0f209d9070c232.md) | 52 | `declaration-track:9bac7b840f0f209d9070c23289732e0c488ad646b9a45e7a1ecdb5d7f4f9e742` |
| 7 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/state--1ab64083c2c07d8444f69426.md) | 56 | `declaration-track:1ab64083c2c07d8444f69426d503bfa15101fe65a4ad32ab9dd8efb85a4ff7b1` |
| 8 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/m--244081e88318242e1b332b81.md) | 63 | `declaration-track:244081e88318242e1b332b81f76d9123ba202c235662127633425029f71c7c0c` |
| 9 | `def` | [shouldExtractLetValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/shouldextractletvalue--741fd933928e8c08aa72a68c.md) | 67 | `declaration-track:741fd933928e8c08aa72a68cf486550aa72c9722409503c64514b571f0c6da63` |
| 10 | `def` | [shouldExtractArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/shouldextractarg--5c11bdb131ea03fcff91d7ec.md) | 96 | `declaration-track:5c11bdb131ea03fcff91d7ecff659808e1f3b9c56dbb202b341d08200a4e2a8a` |
| 11 | `def` | [shouldExtractFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/shouldextractfvar--3fb84d52c365a92da9f29760.md) | 101 | `declaration-track:3fb84d52c365a92da9f29760f29b89900c7d91bea34884e69c0f624382d23488` |
| 12 | `def` | [searchArrayLiteral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/searcharrayliteral--1fd4ed6b7309144c6fc8b655.md) | 127 | `declaration-track:1fd4ed6b7309144c6fc8b65583428b160429e8fd5c6b960e62016026893cba87` |
| 13 | `def` | [visitCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/visitcode--b2b5272ce857e2f4e6713be8.md) | 168 | `declaration-track:b2b5272ce857e2f4e6713be80b6e3f661cb80123c889c7ce30a0abed05e52cfb` |
| 14 | `def` | [visitDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/visitdecl--f63a480daffe13c8a3f40f39.md) | 238 | `declaration-track:f63a480daffe13c8a3f40f392c0d278c09903d3a61e7f4d20c803aa90e909f30` |
| 15 | `def` | [Decl.extractClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/decl-extractclosed--063f2594d519dba88e36a511.md) | 244 | `declaration-track:063f2594d519dba88e36a51144570ee58ad28cb6ca346f0e923a255e68025acf` |
| 16 | `def` | [extractClosed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/extractclosed--2e0a729a2bb9ed5f49463598.md) | 252 | `declaration-track:2e0a729a2bb9ed5f49463598d5546b68bb1a22b0bbf595873ee3c787897d7f52` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractClosed/Variant78d85ef350dec90a73e7393542072bc73c649cec41669acb0e29393c5d44868c.lean/declarations/builtin-initialize--1a49f79ad901d939fcb60701.md) | 262 | `declaration-track:1a49f79ad901d939fcb60701119827f6a94f6aff81d0a1f16f14a118ac0dc195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
