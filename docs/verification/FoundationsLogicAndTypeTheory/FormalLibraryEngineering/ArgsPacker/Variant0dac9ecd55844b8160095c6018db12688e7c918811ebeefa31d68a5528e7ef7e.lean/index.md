# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArgsPacker.Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.
- `Init.While` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/packtype--b01c3581ecd3ca7504532138.md) | 64 | `declaration-track:b01c3581ecd3ca7504532138b5a5e1df350d750796e112b69f9bcf27fb1202dd` |
| 2 | `def` | [pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/pack--ed69d835a511ccf30f51fb6d.md) | 77 | `declaration-track:ed69d835a511ccf30f51fb6d6e6e6a3db934512b70be16206c207187c524b100` |
| 3 | `def` | [unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/unpack--685f28c23561f5faef00a18c.md) | 102 | `declaration-track:685f28c23561f5faef00a18c496ccbb3cc8698f643c641772dc649f47d5264ed` |
| 4 | `def` | [mkTupleElems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/mktupleelems--e5aac5caee00f3a32493da3d.md) | 120 | `declaration-track:e5aac5caee00f3a32493da3d20576d8df70795044523583ee7e6f15a40f3fb9d` |
| 5 | `def` | [uncurryType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrytype--72f6c3b3876f6c02263b0cc3.md) | 133 | `declaration-track:72f6c3b3876f6c02263b0cc317ccd857ae02e2b6950d0944b02ca7a53332b7f7` |
| 6 | `def` | [casesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/caseson--80c264fc5562073195fc6255.md) | 151 | `declaration-track:80c264fc5562073195fc625508209cb1884f0499d5243f4f980b130b49152f12` |
| 7 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurry--c86dcb11d9ab38c03355e376.md) | 173 | `declaration-track:c86dcb11d9ab38c03355e3760e2abf7b03e4acb3332bbeb9cef4897475b62885` |
| 8 | `def` | [curryType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/currytype--5b55a5150171a500f6878f7e.md) | 189 | `declaration-track:5b55a5150171a500f6878f7e570fcf889f8599f189b58d9326b54dd5c0be24b5` |
| 9 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/curry--14b58537eb779b8b648bfa82.md) | 215 | `declaration-track:14b58537eb779b8b648bfa8207d9d172ace23ffa49a92a5091a102c2b001b1e6` |
| 10 | `def` | [packType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/packtype--e68f3a989cd459b4683c9e86.md) | 249 | `declaration-track:e68f3a989cd459b4683c9e86dd30e0afa7e2cc197a7619b5274eb762d216b843` |
| 11 | `def` | [unpackType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/unpacktype--d17cee5e5d7310fd286d9fbf.md) | 256 | `declaration-track:d17cee5e5d7310fd286d9fbf638aa01bdd8325234c9498815786463b7708644e` |
| 12 | `def` | [pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/pack--3590bfd9ceb7c78cf5bd558e.md) | 270 | `declaration-track:3590bfd9ceb7c78cf5bd558ec9cc3b03504935e4814ffbd9ea8d588108d9b475` |
| 13 | `def` | [unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/unpack--621de06ad3950ad75d286467.md) | 291 | `declaration-track:621de06ad3950ad75d286467c565dc184330920c0b50c0fad8ad0d3b6b36b056` |
| 14 | `def` | [mkCodomain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/mkcodomain--747f60afaeced0320a8ca039.md) | 313 | `declaration-track:747f60afaeced0320a8ca03942d4215229a716d2ec9a5dca1340b78ec040f8c7` |
| 15 | `def` | [uncurryType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrytype--3601e53dedbe56c24235e64e.md) | 346 | `declaration-track:3601e53dedbe56c24235e64e77bf5004e53061afc2cbbed37ae218d5a21446a7` |
| 16 | `def` | [uncurryTypeND](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrytypend--965f1a216e214d13fca133ba.md) | 364 | `declaration-track:965f1a216e214d13fca133ba9c951a234c7312427ab108df449c403f84ed3f54` |
| 17 | `def` | [casesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/caseson--c138730bcec1fda0409e1a09.md) | 386 | `declaration-track:c138730bcec1fda0409e1a091983278ba1faa9311e303e82c493e606f37335ad` |
| 18 | `def` | [uncurryWithType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrywithtype--d18de3de533b68b5ff061e85.md) | 412 | `declaration-track:d18de3de533b68b5ff061e850d45ecbcb69e12819c92d5fd09e50ec84772b0ec` |
| 19 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurry--c2208d347984b42bb62efa5d.md) | 418 | `declaration-track:c2208d347984b42bb62efa5de4e84ac676b4b8a65497a5401170c5f8d2f26df8` |
| 20 | `def` | [uncurryND](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrynd--993a759ad03e4f9f51002890.md) | 430 | `declaration-track:993a759ad03e4f9f51002890d8fba68a83390a479630fc91091234854825eb53` |
| 21 | `def` | [curryType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/currytype--4a498bc89a6fee247e984108.md) | 444 | `declaration-track:4a498bc89a6fee247e984108b123c790129a5a578df87b893bd1fb79ac8515b4` |
| 22 | `def` | [numFuncs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/numfuncs--f729155e0d374583c81b070e.md) | 458 | `declaration-track:f729155e0d374583c81b070ed19ddf0647e4e64df8e16316f3c9f0c0848741ed` |
| 23 | `def` | [arities](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/arities--6d66f24d65127ffea38d53c7.md) | 461 | `declaration-track:6d66f24d65127ffea38d53c74965a8c4bf466ab8ef6518c4bff27f68b87dd869` |
| 24 | `def` | [onlyOneUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/onlyoneunary--38a977535084cfe1bf40b62c.md) | 463 | `declaration-track:38a977535084cfe1bf40b62c1352bc2dca554c1c5cb52f02a8854b93112b41d1` |
| 25 | `def` | [pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/pack--45a9c7a27263765028c487f5.md) | 467 | `declaration-track:45a9c7a27263765028c487f56b8441ea0e86d5691eb07b877b600ed5d40366a2` |
| 26 | `def` | [unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/unpack--e48c7f89a49ca2da06fdafc1.md) | 483 | `declaration-track:e48c7f89a49ca2da06fdafc1c969bbe4c5223e2340f2d1dff683c64124fdee49` |
| 27 | `def` | [uncurryType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrytype--bd1ce50c63a8bd75172c4ef7.md) | 494 | `declaration-track:bd1ce50c63a8bd75172c4ef79f42bfa21c426b295c01bb8e7b9cf2fd8c19409f` |
| 28 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurry--e172dddaf5d90aa681755f11.md) | 505 | `declaration-track:e172dddaf5d90aa681755f1104d0e1f313ea902f6ea72ff52d5900cbc6d94614` |
| 29 | `def` | [uncurryWithType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrywithtype--0eb1d6429e89d0a7c84274ff.md) | 509 | `declaration-track:0eb1d6429e89d0a7c84274ff1e20322062691e476e1c95d4b209ba8176d6ef13` |
| 30 | `def` | [uncurryND](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/uncurrynd--649659ff5f40665738dbfdd0.md) | 520 | `declaration-track:649659ff5f40665738dbfdd04eb9292c577dd3a785bd85d68f1de381e7e36ce5` |
| 31 | `def` | [curryProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/curryproj--2cdde7fc68e87d3072b051f2.md) | 531 | `declaration-track:2cdde7fc68e87d3072b051f2c7ef988b5eecc2c24a40d0ce0228eb4c52da4f7e` |
| 32 | `def` | [curryType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/currytype--558788421379928382dd8b43.md) | 555 | `declaration-track:558788421379928382dd8b43ba26f37e883cb218608f598c5c44dd3d9ebf844e` |
| 33 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/curry--63242fbc0d9fb41c2ec690a1.md) | 566 | `declaration-track:63242fbc0d9fb41c2ec690a106f66fc062c498353946cdcf131f401d9f87f646` |
| 34 | `def` | [withCurriedDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/withcurrieddecl--716274c5db89234fa45fb91e.md) | 577 | `declaration-track:716274c5db89234fa45fb91ef8edf418ce62c42959b2c5bda260b0db807a90ff` |
| 35 | `def` | [curryParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/declarations/curryparam--06949b05d82522417405fb5c.md) | 604 | `declaration-track:06949b05d82522417405fb5c205cd52a3766e2bef9a7376045bed73b9be26880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
