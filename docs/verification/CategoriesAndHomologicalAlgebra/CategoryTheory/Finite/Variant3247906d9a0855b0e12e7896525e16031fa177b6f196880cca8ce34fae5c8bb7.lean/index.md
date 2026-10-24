# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40f9ac24716ac51f6998dbd8ef4995e461d85765",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40f9ac24716ac51f6998dbd8ef4995e461d85765`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.AsType` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CreatesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitelimits--3e515d6824d40e5131fd138f.md) | 37 | `declaration-track:3e515d6824d40e5131fd138f958e26796d164520758bee569898b147f8dec6cd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--23fcb92cfcb019c029f05e1b.md) | 46 | `declaration-track:23fcb92cfcb019c029f05e1bcd95a4b95ca1c0c2e5e5dd2e83c02f24075582cb` |
| 3 | `def` | [CreatesLimitsOfSize.createsFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createslimitsofsize-createsfinitelimits--835eb14a6b0a5e5ae99d46e7.md) | 53 | `declaration-track:835eb14a6b0a5e5ae99d46e708666271b2315065aafae26db89b44107648a8dc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--cdb542c3bd3b7770cad77dcd.md) | 58 | `declaration-track:cdb542c3bd3b7770cad77dcdedb87d8b60446cbada56d2f4f4588facf0608e44` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--8d7524a0c28f60ff1f481904.md) | 62 | `declaration-track:8d7524a0c28f60ff1f481904a75828bc87d0f3ac066cf5d8819480fe27999a1e` |
| 6 | `def` | [createsFiniteLimitsOfCreatesFiniteLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitelimitsofcreatesfinitelimitsofsize--91ce5211c37831271b6eef58.md) | 67 | `declaration-track:91ce5211c37831271b6eef5863dbcb10060c1d19cec45ff996c1e20ba664aaf8` |
| 7 | `instance` | [compCreatesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/compcreatesfinitelimits--873419ac6b7da11d9bb37439.md) | 74 | `declaration-track:873419ac6b7da11d9bb374390e91c4ca445ed709c6e75c928c97962e4bd0dd0e` |
| 8 | `def` | [createsFiniteLimitsOfNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitelimitsofnatiso--bd377032fb910cee8c54192b.md) | 79 | `declaration-track:bd377032fb910cee8c54192b000382631553c7d02304e9c733e8d2e7e1585c86` |
| 9 | `theorem` | [hasFiniteLimits_of_hasLimitsLimits_of_createsFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/hasfinitelimits-of-haslimitslimits-of-createsfinitelimits--9ecaeefc3f3551bb993e8df1.md) | 83 | `result-track:9ecaeefc3f3551bb993e8df1f77183d9a4586c1d1abfa5c0afdb1500400a411e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--2d454132dc6616fea4d7b4da.md) | 87 | `declaration-track:2d454132dc6616fea4d7b4daf941012a1ce2933108b5edb1c487428afdee01a1` |
| 11 | `class` | [CreatesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfiniteproducts--83841818adbfa79640b1da52.md) | 95 | `declaration-track:83841818adbfa79640b1da521ea568e15b9d7cc0d97ccf12d55e615a4edf296e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--4b33021fb5b87f5c16f7950f.md) | 104 | `declaration-track:4b33021fb5b87f5c16f7950f638985ed040b57a371a99ee9b48bc18f12f21e4c` |
| 13 | `instance` | [compCreatesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/compcreatesfiniteproducts--1652e39f77bdb78cd88a5610.md) | 109 | `declaration-track:1652e39f77bdb78cd88a561074a2a2c226ec36496a10b7d2cf9045e57602d792` |
| 14 | `def` | [createsFiniteProductsOfNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfiniteproductsofnatiso--f53768ca82b92301a4e35f17.md) | 114 | `declaration-track:f53768ca82b92301a4e35f1799c36000833347ccdf37ec191a4b04d39a53c795` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--35e1b2b6049d217bade9622d.md) | 118 | `declaration-track:35e1b2b6049d217bade9622d2857afb3e95c6e9e2174edc84a13b7227d24af62` |
| 16 | `class` | [CreatesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitecolimits--f6dd198b1a6cd9bd0f5c2a3b.md) | 125 | `declaration-track:f6dd198b1a6cd9bd0f5c2a3b766b5f1acba311bf027dd553e01b92460b14359e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--b749a82c042a0c9b4f3e6465.md) | 134 | `declaration-track:b749a82c042a0c9b4f3e64651431091ed5de691dbb09f3a3b4ea8bd26a2d2a9b` |
| 18 | `def` | [CreatesColimitsOfSize.createsFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createscolimitsofsize-createsfinitecolimits--542431a3469167336cbae9a3.md) | 141 | `declaration-track:542431a3469167336cbae9a3ff8115aeac7e602bb77e69523990420c976feb87` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--edc51abb017fceadc74e2afd.md) | 146 | `declaration-track:edc51abb017fceadc74e2afdc172bca04fb2c96908b9c74648eb1d523ef058ed` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--96d7426d30b586cb0bf6061c.md) | 150 | `declaration-track:96d7426d30b586cb0bf6061c38a765ff273305c9e7ed353bbc27b2df487a5894` |
| 21 | `def` | [createsFiniteColimitsOfCreatesFiniteColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitecolimitsofcreatesfinitecolimitsofsize--dd7683f93abf4baf8ed93b05.md) | 155 | `declaration-track:dd7683f93abf4baf8ed93b059ccc703c5241fd6aec821f9aa54005d803061cd9` |
| 22 | `instance` | [compCreatesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/compcreatesfinitecolimits--a992b5426e46d52265bf69f7.md) | 162 | `declaration-track:a992b5426e46d52265bf69f74a819c8fbf11bab0741daf20ee4c69d65a2c4926` |
| 23 | `def` | [createsFiniteColimitsOfNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitecolimitsofnatiso--1466747009a9c70ea49ebc7e.md) | 167 | `declaration-track:1466747009a9c70ea49ebc7eaa3488712f542cd2481190109f969c8d71b778bd` |
| 24 | `theorem` | [hasFiniteColimits_of_hasColimits_of_createsFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/hasfinitecolimits-of-hascolimits-of-createsfinitecolimits--ac86bf2e27e0e34c0dfe84d9.md) | 171 | `result-track:ac86bf2e27e0e34c0dfe84d92d5f919de797e9bbbd41baac0df5ccdb2338fd97` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--9669841afc111ffbe4491ef2.md) | 175 | `declaration-track:9669841afc111ffbe4491ef2d7e55f847efc9c996e994ce8638f601f2529013b` |
| 26 | `class` | [CreatesFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitecoproducts--75f6baee7d00d56294678dcf.md) | 183 | `declaration-track:75f6baee7d00d56294678dcfebb378c30104a7577467286da41c33f6a0efb4c4` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--9e77fe15f9ce0f448e8ab4e0.md) | 192 | `declaration-track:9e77fe15f9ce0f448e8ab4e01d42ac5cc98a49b54b82df53b9c56cb90181ecac` |
| 28 | `instance` | [compCreatesFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/compcreatesfinitecoproducts--d71bed745b4007a444b567f1.md) | 197 | `declaration-track:d71bed745b4007a444b567f1d57325caf3defb0f2f151144da53c89d13577428` |
| 29 | `def` | [createsFiniteCoproductsOfNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/createsfinitecoproductsofnatiso--76546f5bec113be4b6ba331e.md) | 202 | `declaration-track:76546f5bec113be4b6ba331e77d0f0cdf1a60d785923df31294ac00dc8297eca` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant3247906d9a0855b0e12e7896525e16031fa177b6f196880cca8ce34fae5c8bb7.lean/declarations/instance--0c7e2e676ebcfd63b51f54ab.md) | 206 | `declaration-track:0c7e2e676ebcfd63b51f54ab1979591a60afb730d0f76c41c556d469023d8d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
