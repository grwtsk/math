# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2dc998f6d8b83e1f1219ea7a610e8b14b77250",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2dc998f6d8b83e1f1219ea7a610e8b14b77250`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RegularMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularmono--139e8ce8a859bb7c63e9f92d.md) | 52 | `declaration-track:139e8ce8a859bb7c63e9f92d79ff9c263eb53cbd5dd8e215e127fd31386a99c9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--0129d709dcb0188dc22582d4.md) | 68 | `declaration-track:0129d709dcb0188dc22582d4364577edaaa1ea1e9dff56ecf334f58e5b782802` |
| 3 | `instance` | [equalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/equalizerregular--c8d5fbf11e4d87ea2891c89b.md) | 72 | `declaration-track:c8d5fbf11e4d87ea2891c89b70e5aaa3ccfb2de0e38877f5532d47a7f72dfe83` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--6b5d9f09a07b9adb4ba2f389.md) | 85 | `declaration-track:6b5d9f09a07b9adb4ba2f38926196371de5d0cbc51c9d6ae9cabe0743daf4daf` |
| 5 | `def` | [RegularMono.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularmono-lift--0651b63069d1621e1c1b102d.md) | 95 | `declaration-track:0651b63069d1621e1c1b102d8d7e6211d3ad0250b49ba49415c402abf063248f` |
| 6 | `def` | [regularOfIsPullbackSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularofispullbacksndofregular--4dd075484762acec8e37d5f3.md) | 106 | `declaration-track:4dd075484762acec8e37d5f3376c3fc6e00fdb15b453bedde0aa97df84dc7f06` |
| 7 | `def` | [regularOfIsPullbackFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularofispullbackfstofregular--879d43de6a458a7d362ce715.md) | 137 | `declaration-track:879d43de6a458a7d362ce71540f2f7dda04cd782c197476af56db84cc872452b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--296216104f55a4c207658866.md) | 143 | `declaration-track:296216104f55a4c2076588669cb5ba1e44fe665ea582b173eb71bc8596d7a000` |
| 9 | `theorem` | [isIso_of_regularMono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/isiso-of-regularmono-of-epi--dcd0d4de2bfe615ebb683bcd.md) | 156 | `result-track:dcd0d4de2bfe615ebb683bcdee61ddc2973c69d816608b66dff4882be7456ea0` |
| 10 | `class` | [RegularMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularmonocategory--3f93d3d428241bd625b1fbf0.md) | 165 | `declaration-track:3f93d3d428241bd625b1fbf0cfb624340cd26f5b15057d4431f93078e4eeeefb` |
| 11 | `def` | [regularMonoOfMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularmonoofmono--8a4622396f50f8e00732db3f.md) | 174 | `declaration-track:8a4622396f50f8e00732db3f1eeac8755298d0e41796614cd680682255d86046` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--c867c2ea00cb3c7e9d6b9bda.md) | 178 | `declaration-track:c867c2ea00cb3c7e9d6b9bda1d9e4e4f7c897cb1d2a17520a7cf7efbec1c96ae` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--d9785a548bee2bde14eaafbd.md) | 185 | `declaration-track:d9785a548bee2bde14eaafbdab7c651a3bc664eb12cbcf4ddebcc2c144a9a836` |
| 14 | `class` | [RegularEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularepi--5be491e9e79163ed61b93698.md) | 193 | `declaration-track:5be491e9e79163ed61b93698de0fe34187788eef6ec425edf44aad9ce59d9a78` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--61c83a8ea0593a6a9689504b.md) | 207 | `declaration-track:61c83a8ea0593a6a9689504bcf3b0ecb2dfa6086a65a0e8039343c19519c9b50` |
| 16 | `instance` | [coequalizerRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/coequalizerregular--fc8294a06e76e5ca2bc60fe2.md) | 211 | `declaration-track:fc8294a06e76e5ca2bc60fe2b3c16cd8e0a7703f4b286400c4816cbbaa5aff42` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--0615e349c81cebb42b85f786.md) | 224 | `declaration-track:0615e349c81cebb42b85f786ff2543ef019fdd1c0926e3ef98dc0149d101fc36` |
| 18 | `def` | [RegularEpi.desc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularepi-desc--d1fa12e80fb65085e7c4ddfd.md) | 234 | `declaration-track:d1fa12e80fb65085e7c4ddfd1552eb850ee01a5560e6eb6e14a8bc2be3d51315` |
| 19 | `def` | [regularOfIsPushoutSndOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularofispushoutsndofregular--1acd86b3c0ecaacb0087ccaf.md) | 245 | `declaration-track:1acd86b3c0ecaacb0087ccaf661d6eb2e3cec79c8ea512739c1757e66b71ac8b` |
| 20 | `def` | [regularOfIsPushoutFstOfRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularofispushoutfstofregular--bbc9e7f46968f58118946815.md) | 275 | `declaration-track:bbc9e7f46968f58118946815ac2df5f9523518e87172a175ed1b602f5819614c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--5449943da220700726fda3ea.md) | 281 | `declaration-track:5449943da220700726fda3eab1b4c7d29b84c511553348e7a71e1c05afd767eb` |
| 22 | `theorem` | [isIso_of_regularEpi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/isiso-of-regularepi-of-mono--1e6a51ca1e70895de2ff0d6e.md) | 297 | `result-track:1e6a51ca1e70895de2ff0d6e5cda6138e2cb827e0aac8e60fcafab6e4edbbb61` |
| 23 | `class` | [RegularEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularepicategory--904d5f6d2973f593a5ba1c02.md) | 306 | `declaration-track:904d5f6d2973f593a5ba1c020bb625392285019a3d5c1bd0e95623c5e7f116bd` |
| 24 | `def` | [regularEpiOfEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/regularepiofepi--0d50a3fe12539181107b312a.md) | 315 | `declaration-track:0d50a3fe12539181107b312aada61e4b740a8794c1a3df0416bbcc07988ba7d4` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--cecf0e362b3afa177209cd17.md) | 319 | `declaration-track:cecf0e362b3afa177209cd1799037fa7011c7b97f30cc42301df676fbd84d4d6` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5f1c199941fd6e9d4a45956c0ac82abb46d3ea463a5bba816dc7568f34d1fe6d.lean/declarations/instance--3205c9b487b698dc0836f008.md) | 326 | `declaration-track:3205c9b487b698dc0836f00863ac2e24a197b08c5c6fb5c248bc76a1ee5cad78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
