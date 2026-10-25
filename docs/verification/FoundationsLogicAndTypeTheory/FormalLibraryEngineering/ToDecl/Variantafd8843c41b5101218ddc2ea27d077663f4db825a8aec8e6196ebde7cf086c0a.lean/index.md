# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToDecl.Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71494c6f3ba6b15e1992051fd544564edd34936a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71494c6f3ba6b15e1992051fd544564edd34936a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.Options` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Transform` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.MatcherInfo` — import line 12; external provider; requires a separately pinned dependency.
- `Init.While` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ExportAttr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [macroInline](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/macroinline--ed5fcb010b5aa639998a49d3.md) | 22 | `declaration-track:ed5fcb010b5aa639998a49d378373c4f27ab03b8a029007faf15093c8bae54f8` |
| 2 | `def` | [normalizeAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/normalizealt--0b41378ed1ab04cd8126957e.md) | 29 | `declaration-track:0b41378ed1ab04cd8126957e6e50cf56f73cb0e2e147a9da53a91cf988b7a8d7` |
| 3 | `def` | [inlineMatchers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/inlinematchers--ade0be36bf5bd8580db5e09e.md) | 44 | `declaration-track:ade0be36bf5bd8580db5e09eb993e2c90852f7a08029f9385b6cc3cfb8881858` |
| 4 | `def` | [replaceUnsafeRecNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/replaceunsaferecnames--83251c769eabfdbd00a1206d.md) | 85 | `declaration-track:83251c769eabfdbd00a1206df64d4b09b7615c47af9d888e6cfc70765f4c277e` |
| 5 | `def` | [getDeclInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/getdeclinfo--398bbf80652c251e4a7d025e.md) | 100 | `declaration-track:398bbf80652c251e4a7d025e7767b5ae21c0b9af46a1bb1480a5b94978de0504` |
| 6 | `def` | [declIsNotUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/declisnotunsafe--bfb632f14c05a488e34e3109.md) | 104 | `declaration-track:bfb632f14c05a488e34e3109e4271964782d31feeb7c228544abe99724f16e9a` |
| 7 | `def` | [toDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToDecl/Variantafd8843c41b5101218ddc2ea27d077663f4db825a8aec8e6196ebde7cf086c0a.lean/declarations/todecl--f9df6109727634f2601ba6ba.md) | 125 | `declaration-track:f9df6109727634f2601ba6ba4237f60ceb6004163986f86851ad8e8d1d8465ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
