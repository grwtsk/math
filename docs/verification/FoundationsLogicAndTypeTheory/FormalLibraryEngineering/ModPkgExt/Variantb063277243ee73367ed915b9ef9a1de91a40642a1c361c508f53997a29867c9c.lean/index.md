# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModPkgExt.Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86a2686e37d4a681f100e9c84bc49ee56cf2ca8b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86a2686e37d4a681f100e9c84bc49ee56cf2ca8b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.NameMangling` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ModuleEnvExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/moduleenvextension--1f832fa72ea1894018ee27b0.md) | 17 | `declaration-track:1f832fa72ea1894018ee27b043e10dc5e0a5abcfcf7599cb04192b9d176676e8` |
| 2 | `def` | [registerModuleEnvExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/registermoduleenvextension--5d4351588d308689988777ba.md) | 19 | `declaration-track:5d4351588d308689988777ba4b4f8713fc1a82514cd1b03c39753cf48dd8eeaa` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/instance--1a077e38e237ac98669475fe.md) | 32 | `declaration-track:1a077e38e237ac98669475feee919fd8ed48b00248699b38428d6e83dc1c104d` |
| 4 | `def` | [getStateByIdx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/getstatebyidx--b27d9aed957eb31762bae233.md) | 35 | `declaration-track:b27d9aed957eb31762bae233672158789b3857081fe4130ac09d5041b98f8354` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/initialize--04b57e0ea54404bb01388a7b.md) | 40 | `declaration-track:04b57e0ea54404bb01388a7b1262c72f8227853dc60414ea572bfd7775e0d1c6` |
| 6 | `def` | [Environment.getModulePackageByIdx?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/environment-getmodulepackagebyidx--7592cfe858eaeb2a72df6721.md) | 44 | `declaration-track:7592cfe858eaeb2a72df67213d5b0355861638aec75664367edbd310749c405d` |
| 7 | `def` | [Environment.getModulePackage?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/environment-getmodulepackage--d006c493f892ed2734bcad32.md) | 48 | `declaration-track:d006c493f892ed2734bcad32a4d1b1d0245498d3d130e0a89434e0f2d98c3c5d` |
| 8 | `def` | [Environment.setModulePackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/environment-setmodulepackage--36c83ce419cdeb19f8f890e4.md) | 52 | `declaration-track:36c83ce419cdeb19f8f890e4a4f7eb1d65c7114ef7093748ee10492ce3d5b70e` |
| 9 | `def` | [getSymbolStem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModPkgExt/Variantb063277243ee73367ed915b9ef9a1de91a40642a1c361c508f53997a29867c9c.lean/declarations/getsymbolstem--4d02ed3664f61c1c50da002c.md) | 64 | `declaration-track:4d02ed3664f61c1c50da002cedd269a03aff89a16725da9334bbd5b7565456de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
