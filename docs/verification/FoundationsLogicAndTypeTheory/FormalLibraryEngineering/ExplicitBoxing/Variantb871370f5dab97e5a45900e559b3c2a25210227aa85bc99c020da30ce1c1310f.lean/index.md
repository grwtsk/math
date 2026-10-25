# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExplicitBoxing.Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d36b3223bd202cd176ea6d7d6cbac1bfdc1c87b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d36b3223bd202cd176ea6d7d6cbac1bfdc1c87b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.ElimDead` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.AuxDeclCache` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Runtime` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [requiresBoxedVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/requiresboxedversion--a6869b8d3e79f65146e8b716.md) | 30 | `declaration-track:a6869b8d3e79f65146e8b7160b2ea543295503265c8187fa126693afa0980d1e` |
| 2 | `def` | [mkBoxedVersion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/mkboxedversion--707e11a10ed37a9e8fbdbd00.md) | 46 | `declaration-track:707e11a10ed37a9e8fbdbd00993525db2bfc3ef4761ec0f2a1426cd5047d3f16` |
| 3 | `def` | [addBoxedVersions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/addboxedversions--d0cef4f10278a053d907a7d7.md) | 80 | `declaration-track:d0cef4f10278a053d907a7d7c9788e39b6b50ab65afbcd854edb769ed17854e2` |
| 4 | `structure` | [Ctx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/ctx--c47b030e663d4c7ecb48a0a6.md) | 89 | `declaration-track:c47b030e663d4c7ecb48a0a66bbcd011e1597632e2bad12402c7652cb09831b3` |
| 5 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/state--eaec5cd67dabacc1338dbff4.md) | 99 | `declaration-track:eaec5cd67dabacc1338dbff4dcfb2902e6c0bccc61caf9585b16d737051dcfcf` |
| 6 | `abbrev` | [BoxM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/boxm--a12f45cba363d7a83f2d0d57.md) | 116 | `declaration-track:a12f45cba363d7a83f2d0d5706d8b45182b32b960a6f12311b16827bb297ccd7` |
| 7 | `def` | [getResultType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/getresulttype--e0b0c7efaab605043c9eead3.md) | 119 | `declaration-track:e0b0c7efaab605043c9eead31f7d7411adea1df72c546afdda716bb0f42a1298` |
| 8 | `def` | [typesEqvForBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/typeseqvforboxing--3c4e3ff98182291ed1af0e38.md) | 121 | `declaration-track:3c4e3ff98182291ed1af0e38f69f42db2ec39de74cd8cf921099f7f01f9e9457` |
| 9 | `def` | [isExpensiveConstantValueBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/isexpensiveconstantvalueboxing--fec98bb793291eebe188b943.md) | 129 | `declaration-track:fec98bb793291eebe188b943ab4d9a4461d070e8bcf33843278afe7d1b3e30de` |
| 10 | `def` | [mkCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/mkcast--09d4216f9757567e8ebe165d.md) | 145 | `declaration-track:09d4216f9757567e8ebe165d9e03c04cd4dc16ed1a2ae3df7365fc16f475dd52` |
| 11 | `def` | [castVarIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/castvarifneeded--1204dc48ac2f81349ebf1bde.md) | 185 | `declaration-track:1204dc48ac2f81349ebf1bde731d9a8e6c6bfb4037c6c0a5ad76daf10fc61c4c` |
| 12 | `def` | [castArgIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/castargifneeded--63d034eafc0b5e115e32c39f.md) | 196 | `declaration-track:63d034eafc0b5e115e32c39f3eb70edae80a51d1561c32c9aefd44865be0aa7b` |
| 13 | `def` | [castArgsIfNeededAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/castargsifneededaux--33d3c54d0becec43c2e90ae5.md) | 202 | `declaration-track:33d3c54d0becec43c2e90ae51c4718fc37100eae73a2f13cd322efd594e421b9` |
| 14 | `def` | [castArgsIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/castargsifneeded--a0342edd851fa218e719f7bb.md) | 223 | `declaration-track:a0342edd851fa218e719f7bb675efe05ab0bcf950da60e0265ac105d00d3c53e` |
| 15 | `def` | [boxArgsIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/boxargsifneeded--76f6c952a5c5245b9ff3a9b1.md) | 230 | `declaration-track:76f6c952a5c5245b9ff3a9b1fdc8ae297c32b09c90ec8b7a89f0ba0ad91d26cc` |
| 16 | `def` | [unboxResultIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/unboxresultifneeded--cf9c1d9e0881fb93d0096339.md) | 236 | `declaration-track:cf9c1d9e0881fb93d0096339df681e4f16d127c9ecadb16d133fe96f2cc69918` |
| 17 | `def` | [castResultIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/castresultifneeded--e708565fa519bdaa66feb5cb.md) | 245 | `declaration-track:e708565fa519bdaa66feb5cb6f7ba707547febaf2f57edb8c2a2fc7fd109e0ed` |
| 18 | `def` | [Code.explicitBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/code-explicitboxing--e85519b4b1d01afc2fb26c19.md) | 261 | `declaration-track:e85519b4b1d01afc2fb26c1928d6c62bcfb87f11f6fe5cb7a7c68e51a66078b4` |
| 19 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/run--96abac7621cb920323fcd485.md) | 355 | `declaration-track:96abac7621cb920323fcd485751bbf5ddd7c983e0cc91cb1208a28b837cea733` |
| 20 | `def` | [explicitBoxing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/explicitboxing--e0a791da0b32c22d959653ec.md) | 369 | `declaration-track:e0a791da0b32c22d959653eca2fe9bd56153dc17728cd4bf069d62a4eeb7e60a` |
| 21 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/declarations/builtin-initialize--82749ef264ce3b57645dd1e3.md) | 375 | `declaration-track:82749ef264ce3b57645dd1e35b10c4fa68b26297e7e1c00419c1d69c53e9b0cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
