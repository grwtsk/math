# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b85e2adadfb3f1d155656274b6574134278b9173",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b85e2adadfb3f1d155656274b6574134278b9173`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Comp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpiFamilyStructOfEquivalence_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/effectiveepifamilystructofequivalence-aux--d340a9731e314dfb28212db9.md) | 34 | `result-track:d340a9731e314dfb28212db9208753aaa596282bf1bb14d5b26d25eec945b2a4` |
| 2 | `def` | [effectiveEpiFamilyStructOfEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/effectiveepifamilystructofequivalence--278611c0fc19d40316140fac.md) | 47 | `declaration-track:278611c0fc19d40316140face3f7cb000ecdd2e9602862f623d11a2194407769` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--5fc7bae0163e805b9b10c6bb.md) | 71 | `declaration-track:5fc7bae0163e805b9b10c6bb9c167ed0cd9d19b266be10f8e46cdd76a2036d66` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/example--7eb97bccc3531e49f837ebe0.md) | 75 | `declaration-track:7eb97bccc3531e49f837ebe046f6e5f87cde045c267cba0c606c765d32fe443b` |
| 5 | `class` | [PreservesEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/preserveseffectiveepis--8acbff89268469ce12ea3644.md) | 89 | `declaration-track:8acbff89268469ce12ea3644760a33a81363aa86831c1a9ce419cd13e335afdb` |
| 6 | `instance` | [map_effectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/map-effectiveepi--8ff0991200818a44979f2c43.md) | 96 | `declaration-track:8ff0991200818a44979f2c431222a38cc9f8777f0f8cbe628e51c3eeda0fdb72` |
| 7 | `class` | [PreservesEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/preserveseffectiveepifamilies--772c42ec656278594b233920.md) | 103 | `declaration-track:772c42ec656278594b2339206ff655a7bf8c80621cc59be81f78e3f713c9f6f8` |
| 8 | `instance` | [map_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/map-effectiveepifamily--d12b40dee305b7f7a1a27ee4.md) | 111 | `declaration-track:d12b40dee305b7f7a1a27ee4c3edce4e7b40ec7d1dbb1dda524d263d8eb1a9a3` |
| 9 | `class` | [PreservesFiniteEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/preservesfiniteeffectiveepifamilies--020a5fb5547eaad445152ca1.md) | 119 | `declaration-track:020a5fb5547eaad445152ca1fea2c721ae73800b384c4a72f3909ae730ed708b` |
| 10 | `instance` | [map_finite_effectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/map-finite-effectiveepifamily--ae5cbee7f91a304d0c46f634.md) | 128 | `declaration-track:ae5cbee7f91a304d0c46f634df1db7f60fbf5be7f8ce39de07799ce0d087d51c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--6c02dacecbdf1346f206e042.md) | 133 | `declaration-track:6c02dacecbdf1346f206e0424f0782edfe1c715a7f84bb67b94769749116b0a8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--719c064e08200e43abdd82ad.md) | 137 | `declaration-track:719c064e08200e43abdd82ad6f00417641c6a29ceb95e8a814718e2bcd20c99f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--55c32b69b3af298e1658ee0e.md) | 140 | `declaration-track:55c32b69b3af298e1658ee0ea0fd5613f16cd4a37763b55f12b952a109b85f81` |
| 14 | `class` | [ReflectsEffectiveEpis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/reflectseffectiveepis--6e0c9561b4b9c850654967cf.md) | 150 | `declaration-track:6e0c9561b4b9c850654967cf531736cda44cfc4d4f7aa6c885af4b1fd711a3cb` |
| 15 | `lemma` | [effectiveEpi_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/effectiveepi-of-map--77cf07b6744bbc4eeaac8fc1.md) | 157 | `result-track:77cf07b6744bbc4eeaac8fc1303278ad7b4308fa8743bca9a22c0f2a939c0762` |
| 16 | `class` | [ReflectsEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/reflectseffectiveepifamilies--b88a39c78c5709023c7fc31d.md) | 164 | `declaration-track:b88a39c78c5709023c7fc31df7e309839a917d3c1f96cbf105efe1b028d10df5` |
| 17 | `lemma` | [effectiveEpiFamily_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/effectiveepifamily-of-map--3442229998995b682f476296.md) | 173 | `result-track:3442229998995b682f47629637165cd47afb99c0543d328fceda272383f46f43` |
| 18 | `class` | [ReflectsFiniteEffectiveEpiFamilies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/reflectsfiniteeffectiveepifamilies--672ea7595f784367d742bad9.md) | 182 | `declaration-track:672ea7595f784367d742bad96450ed0c2b3a3f38d0fc548c07ab418dc17df81f` |
| 19 | `lemma` | [finite_effectiveEpiFamily_of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/finite-effectiveepifamily-of-map--7f03e7c44564f42c44600789.md) | 191 | `result-track:7f03e7c44564f42c44600789fe9a38edb0a633f6794485e0528930e2a20f0530` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--cf5eb19768a6c744aa14d5fd.md) | 197 | `declaration-track:cf5eb19768a6c744aa14d5fddffd50137867a13c3bea659145555f8c1c86424f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--c6ce1be7551c9d363626584d.md) | 203 | `declaration-track:c6ce1be7551c9d363626584d521da1967b31e5ca768105e2f79bbdf3054667ec` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--85bc390add3a757b713f783e.md) | 209 | `declaration-track:85bc390add3a757b713f783ef9527b39f1cf8cf94a6e3163251a6b137232dfeb` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3145680ac5fedb5974dceceddf0a2fdf3029da9a96dc1884cf0dc1ed3483aa95.lean/declarations/instance--312e3943d9cb3ff6115ffa76.md) | 212 | `declaration-track:312e3943d9cb3ff6115ffa76c19752023ef6da94de5233cad70a9f3e54ec8ef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
