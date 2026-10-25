# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SizeOf.Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b52efc590d22e34cd03f60d5bc83d0910187e48",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b52efc590d22e34cd03f60d5bc83d0910187e48`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Tactics` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/sizeof--efa948ee946fa43c6108efb5.md) | 38 | `declaration-track:efa948ee946fa43c6108efb52f1b06a74e814f00eefe87f4a1b09c44ee004007` |
| 2 | `def` | [default.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/default-sizeof--6a8e0a73ad729c3e07e1fa7e.md) | 54 | `declaration-track:6a8e0a73ad729c3e07e1fa7e5df0af813ed8987126ea028002ec54f16fead84f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/instance--3d58074df122258af88bdc9b.md) | 61 | `declaration-track:3d58074df122258af88bdc9bdecd6e3e8546ee10f041d3d3f7a6e443b8b8d3ad` |
| 4 | `theorem` | [sizeOf_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/sizeof-default--ae6fbe8ada21c1166ca9285a.md) | 64 | `result-track:ae6fbe8ada21c1166ca9285a73a98b8c02d1934345937596f0013d5d8076e205` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/instance--063a0fa4af9299044fd6ff3d.md) | 66 | `declaration-track:063a0fa4af9299044fd6ff3d439dfd2eea6d03d2fbf03b5799c457ef3d78b724` |
| 6 | `theorem` | [sizeOf_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/sizeof-nat--0b34bc0ac3149735e1f25065.md) | 69 | `result-track:0b34bc0ac3149735e1f25065a9809af41874ff9a10b5defc93865eae8fcc75c5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/instance--a3e0e195d25b7221a3bb04a7.md) | 71 | `declaration-track:a3e0e195d25b7221a3bb04a79ca9770246e1e73428432874732cc43b2b4e0491` |
| 8 | `theorem` | [sizeOf_thunk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/sizeof-thunk--7af2ccea8dd508eefaf4dd74.md) | 74 | `result-track:7af2ccea8dd508eefaf4dd749e8e3291324f846b1251ec463040387fe93b4b5d` |
| 9 | `theorem` | [Unit.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/unit-sizeof--17fe6c0c73fba7778324aef2.md) | 104 | `result-track:17fe6c0c73fba7778324aef2f405b0ee19eccaa17213b1f626e8505a3a56cb2b` |
| 10 | `theorem` | [Bool.sizeOf_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/bool-sizeof-eq-one--a98a758fa25216332fb01c83.md) | 105 | `result-track:a98a758fa25216332fb01c836ea138ae787d78b91bb318b25a4d6fe8ef2346e0` |
| 11 | `def` | [Name.sizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/name-sizeof--c15d2d26f221c431d61002ca.md) | 113 | `declaration-track:c15d2d26f221c431d61002cab478f51811309cd2b269559224b719b37328cbaa` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/instance--0c90ec529f5eed7a33ff1adf.md) | 118 | `declaration-track:0c90ec529f5eed7a33ff1adfef5f7648c6520c6e3061f9ac9750e1eba263df4a` |
| 13 | `theorem` | [Name.anonymous.sizeOf_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/name-anonymous-sizeof-spec--289abd40a3431347cd2ece59.md) | 121 | `result-track:289abd40a3431347cd2ece592b520901a9fcc33905610459bd65608ea11c31fe` |
| 14 | `theorem` | [Name.str.sizeOf_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/name-str-sizeof-spec--a813bd5ca4d3e403efb5873a.md) | 123 | `result-track:a813bd5ca4d3e403efb5873a3c43cacc08048d2aa96c02a6437e788db96fdd29` |
| 15 | `theorem` | [Name.num.sizeOf_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant29c39e2be0074d9d89f658c644daa8edb06a97e36121adcbc1cef79740d56a5d.lean/declarations/name-num-sizeof-spec--d8949f22a5dca98f01b0e3a5.md) | 125 | `result-track:d8949f22a5dca98f01b0e3a5583aeff101a8bd8b87258f0a20907ec272a2fb83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
