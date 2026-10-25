# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BEq.Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "594819bbd2398692ac3ceb481901eb3851f871df",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `594819bbd2398692ac3ceb481901eb3851f871df`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CasesOnSameCtor` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkBEqHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkbeqheader--7450d8bba8cb2ba13e31b351.md) | 38 | `declaration-track:7450d8bba8cb2ba13e31b35119e2d53e995567b0687a22303ba6f991c7adf957` |
| 2 | `def` | [mkMatchOld](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkmatchold--6630ac927d950cbd7052a7d6.md) | 41 | `declaration-track:6630ac927d950cbd7052a7d68dd1c153b4983fea6d9967969f622d10853fa804` |
| 3 | `def` | [mkMatchNew](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkmatchnew--7acfc651724f8db238a5c82c.md) | 120 | `declaration-track:7acfc651724f8db238a5c82cd249763dc7be424459f82d410e035599787d21f0` |
| 4 | `def` | [mkMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkmatch--5ba6cd9e1c73343525206c02.md) | 187 | `declaration-track:5ba6cd9e1c73343525206c02cab92e396f1f7a231ed348ddb3f7b16aeb567c3c` |
| 5 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkauxfunction--32a358e21f4582626eb0a20f.md) | 194 | `declaration-track:32a358e21f4582626eb0a20f12de413bf8c7c8b8a8a8be7e37a716836b1a2b94` |
| 6 | `def` | [mkMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkmutualblock--f8802d7d587375e13cea9788.md) | 208 | `declaration-track:f8802d7d587375e13cea9788c037f4a51d481643b58855dbe567af6424fde640` |
| 7 | `def` | [mkBEqInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkbeqinstancecmds--7c9fb9af84a2c7d5b888e02a.md) | 217 | `declaration-track:7c9fb9af84a2c7d5b888e02a409b2be37100113bf5fcb5cadc3720decc2c4d35` |
| 8 | `def` | [mkBEqEnumFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkbeqenumfun--b490130ef1b49e600f57ea4c.md) | 222 | `declaration-track:b490130ef1b49e600f57ea4cfd6281f6912614cd0d0438409f255d602c92854d` |
| 9 | `def` | [mkBEqEnumCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkbeqenumcmd--ad73db919a606466c63a7f3f.md) | 226 | `declaration-track:ad73db919a606466c63a7f3fe76840cfce14190a0eb8bc06ce8b0e4f49fbd70a` |
| 10 | `def` | [mkBEqInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkbeqinstance--41269b038f147901fadea704.md) | 233 | `declaration-track:41269b038f147901fadea7041a9950db1b86d2ce8df16e5f99e9952766c24d82` |
| 11 | `def` | [mkBEqInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/mkbeqinstancehandler--95e0d8d784b64e4ee912c841.md) | 245 | `declaration-track:95e0d8d784b64e4ee912c841384aeda0d2b3d304f6bacf1d0034ea35936804ca` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant3153032b411634614f7f79ca354fdd5ebaa1a051bd9fc4a1fd3596c08172460e.lean/declarations/builtin-initialize--d4e2cdcca30b70205d5aa3a0.md) | 253 | `declaration-track:d4e2cdcca30b70205d5aa3a08d592db607b46028512e57c6b100e8349fff72dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
