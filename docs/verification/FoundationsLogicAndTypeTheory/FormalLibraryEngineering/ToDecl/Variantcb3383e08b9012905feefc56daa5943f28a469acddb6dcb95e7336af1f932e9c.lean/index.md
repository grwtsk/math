# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDecl.Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca68757c58e03d31c29d547b6cd4323f82caf302",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca68757c58e03d31c29d547b6cd4323f82caf302`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.Options` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Transform` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.MatcherInfo` — import line 17; external provider; requires a separately pinned dependency.
- `Init.While` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ExportAttr` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [macroInline](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/macroinline--3c4f419b559bdf60e8daf2aa.md) | 30 | `declaration-track:3c4f419b559bdf60e8daf2aad7b50630e3c616016ab6aef96bbc3bf8a8b0652f` |
| 2 | `def` | [normalizeAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/normalizealt--ab80f0b1d8c35cf2f39a66ab.md) | 37 | `declaration-track:ab80f0b1d8c35cf2f39a66ab3e3d6add3184be9b7551169268fe1c21cb03ee20` |
| 3 | `def` | [inlineMatchers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/inlinematchers--51802e258094e9de5a98eb50.md) | 52 | `declaration-track:51802e258094e9de5a98eb503257fbfb8e92150d496ca814f2f5ff2542d4682c` |
| 4 | `def` | [replaceUnsafeRecNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/replaceunsaferecnames--1936b8a6dbfc322b8dc3ffde.md) | 93 | `declaration-track:1936b8a6dbfc322b8dc3ffde20a544372a0e5979ae7b378e4d4800d2256d81cd` |
| 5 | `def` | [getDeclInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/getdeclinfo--fcca7006d2f4f5c150378aa1.md) | 108 | `declaration-track:fcca7006d2f4f5c150378aa1e96e42bff4182106985b6158c048c072dd203806` |
| 6 | `def` | [declIsNotUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/declisnotunsafe--40aa9e483002cd2b9715d896.md) | 112 | `declaration-track:40aa9e483002cd2b9715d896e95dc561a339656fb9fef433b8146b3505ed5a95` |
| 7 | `def` | [toDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantcb3383e08b9012905feefc56daa5943f28a469acddb6dcb95e7336af1f932e9c.lean/declarations/todecl--a8252c410582a918742757ea.md) | 133 | `declaration-track:a8252c410582a918742757eaafebe22b83f9275eac49f8ead556a68012b357b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
