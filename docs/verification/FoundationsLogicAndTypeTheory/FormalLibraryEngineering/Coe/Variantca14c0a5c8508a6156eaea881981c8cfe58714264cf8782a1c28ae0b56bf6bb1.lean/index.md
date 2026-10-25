# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7a2b06c76242f0801d3039092f2687477984745",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7a2b06c76242f0801d3039092f2687477984745`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ExtraModUses` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/builtin-initialize--f2687cc348e125202122abb0.md) | 29 | `declaration-track:f2687cc348e125202122abb037466e358cff3932b00a18f996a9e447d3e4ecb0` |
| 2 | `def` | [isCoeDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/iscoedecl--92fa54ec5ea368059b5e590f.md) | 36 | `declaration-track:92fa54ec5ea368059b5e590fc29b836e56bebc38e3222e641286d67ad28755ea` |
| 3 | `def` | [recProjTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/recprojtarget--eb1ace0c64f9d6ba7eb5ba75.md) | 40 | `declaration-track:eb1ace0c64f9d6ba7eb5ba757664b52070a698320486dc4dcff9e298687eacda` |
| 4 | `def` | [expandCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/expandcoe--533d6c24d2c7b660aace4da9.md) | 52 | `declaration-track:533d6c24d2c7b660aace4da9faa09af2a56883dcd8248422b38343b8b4fcfb5a` |
| 5 | `def` | [coerceSimpleRecordingNames?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coercesimplerecordingnames--e0400145673a006ee427a355.md) | 86 | `declaration-track:e0400145673a006ee427a3559af61ed4b6394a3c26275d4fa1782ec76bb8e147` |
| 6 | `def` | [coerceSimple?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coercesimple--28ccb67d59e8d2e55fbd3ace.md) | 101 | `declaration-track:28ccb67d59e8d2e55fbd3acebec50dac96e2a3a1bf2554a883d2cbc48b5788b8` |
| 7 | `def` | [coerceToFunction?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coercetofunction--acdc768a8c27c36f2b1ff283.md) | 108 | `declaration-track:acdc768a8c27c36f2b1ff28349decc0f9760d217aae886001022400e5ba358e7` |
| 8 | `def` | [coerceToSort?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coercetosort--421c56c956b9f9457afa0519.md) | 122 | `declaration-track:421c56c956b9f9457afa0519a19203257aefae4c5461da15ff5e63c970ee9bc8` |
| 9 | `def` | [isTypeApp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/istypeapp--7f39a214f5e72a3187fea728.md) | 136 | `declaration-track:7f39a214f5e72a3187fea728bb6a5a583f9c1ba4da26fbea25e6958894567519` |
| 10 | `def` | [isMonadApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/ismonadapp--718ce4a2dc2a2d0dcadc7538.md) | 146 | `declaration-track:718ce4a2dc2a2d0dcadc7538cae2d17c3517105fecd760b7ca1bfea9de988863` |
| 11 | `def` | [coerceMonadLift?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coercemonadlift--87c5684ea4b9f2e185722f63.md) | 209 | `declaration-track:87c5684ea4b9f2e185722f6358801c003960f25745c7f0a9a6f8b58ecbee6693` |
| 12 | `def` | [coerceCollectingNames?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coercecollectingnames--e11da50bf36c140e76a0f6aa.md) | 267 | `declaration-track:e11da50bf36c140e76a0f6aa09db2f8166416c9df32d54531d33f0866b6c79d1` |
| 13 | `def` | [coerce?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variantca14c0a5c8508a6156eaea881981c8cfe58714264cf8782a1c28ae0b56bf6bb1.lean/declarations/coerce--3fd9324f46b33966a1f9f10e.md) | 282 | `declaration-track:3fd9324f46b33966a1f9f10eadfcb1c8332f0cd5353cbf3439d0952bd9ef9c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
