# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bffb598da2adc49466d696c633cd230561b96a55",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bffb598da2adc49466d696c633cd230561b96a55`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Preadditive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/instance--1031831978d3f3a2055d4b4d.md) | 30 | `declaration-track:1031831978d3f3a2055d4b4d100caa245f335d37edcaeb958ca27d3c92304199` |
| 2 | `lemma` | [smul_τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/smul--fb9e15cf7c57b8cb5133ec1c.md) | 36 | `result-track:fb9e15cf7c57b8cb5133ec1c930d03fef6ab1fddd6061eb9f054635e71a5d4ea` |
| 3 | `lemma` | [smul_τ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/smul--13f642277197494b58e7ae1f.md) | 37 | `result-track:13f642277197494b58e7ae1f9ff3387d1b33eb60024c2be9c28cdefcfb89e61d` |
| 4 | `lemma` | [smul_τ₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/smul--d400debff438ed86a4181654.md) | 38 | `result-track:d400debff438ed86a4181654990a6da83966776c940e7c681166fae62d38d7ab` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/instance--a718a0eab6c2c3baad03b158.md) | 40 | `declaration-track:a718a0eab6c2c3baad03b15839ef5f9c5d3a00073ef1137da28aeb31d49922e9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/instance--640991c41b4cc88824cfbf89.md) | 48 | `declaration-track:640991c41b4cc88824cfbf89912ebf7cf1ea4d3b4cec3f12ae57fb627ddfdf32` |
| 7 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/smul--9be71cb88924b1e746f8bbf9.md) | 61 | `declaration-track:9be71cb88924b1e746f8bbf92c85eb984dec6f8a6bcfeb464cdd732ee3c3eff2` |
| 8 | `lemma` | [leftHomologyMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/lefthomologymap-smul--959b1633b9e2b0cefffd8321.md) | 71 | `result-track:959b1633b9e2b0cefffd83217f087113616b591d59206977ccb5f353430d7400` |
| 9 | `lemma` | [cyclesMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/cyclesmap-smul--9d500cde813568051c6f281c.md) | 77 | `result-track:9d500cde813568051c6f281cd3ed3fb77145cdfa00b45f6d173fbab162c7f4f0` |
| 10 | `lemma` | [leftHomologyMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/lefthomologymap-smul--c42216ee9c0f9d8941fbba28.md) | 87 | `result-track:c42216ee9c0f9d8941fbba28441e58bcf099f1789d876edf67e321334ccf4715` |
| 11 | `lemma` | [cyclesMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/cyclesmap-smul--cd9ac985df74a6f219951e0d.md) | 91 | `result-track:cd9ac985df74a6f219951e0dc66b1841b7a0f53d88544452b5c82488420c1eac` |
| 12 | `instance` | [leftHomologyFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/lefthomologyfunctor-linear--2497a4830f01bf0d113ae1e6.md) | 96 | `declaration-track:2497a4830f01bf0d113ae1e60f895eb76a24f5dd4d4589f237598108250395ae` |
| 13 | `instance` | [cyclesFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/cyclesfunctor-linear--97bafa6c209bde07b9d304cb.md) | 99 | `declaration-track:97bafa6c209bde07b9d304cbceadfaeda93a1e260e01405e1ad39c881faeffe2` |
| 14 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/smul--09aa6680dc34c6c41b801bcc.md) | 115 | `declaration-track:09aa6680dc34c6c41b801bcc78b4d6e47ac4471c694627cbed66903fa2b6c1ef` |
| 15 | `lemma` | [rightHomologyMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/righthomologymap-smul--ac47d1cb00bcf752be3f48ed.md) | 125 | `result-track:ac47d1cb00bcf752be3f48ed0f31d4065cfde4c609982e1663f39c84c9884c43` |
| 16 | `lemma` | [opcyclesMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/opcyclesmap-smul--d904b3fc1cadcc95b37b605a.md) | 131 | `result-track:d904b3fc1cadcc95b37b605ac4a3b2cc42198c70680fdf8a053848ebc0db8f43` |
| 17 | `lemma` | [rightHomologyMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/righthomologymap-smul--c27d136b705a33f21ead85f2.md) | 141 | `result-track:c27d136b705a33f21ead85f29b548f24c85daaf2252a40072e7eab1c2b268e8d` |
| 18 | `lemma` | [opcyclesMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/opcyclesmap-smul--a244be0aed2cf53a2235a91e.md) | 145 | `result-track:a244be0aed2cf53a2235a91ed771b31070669432b651638bc04f56a920c14c66` |
| 19 | `instance` | [rightHomologyFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/righthomologyfunctor-linear--74a686aa87a4a428b0a2bffe.md) | 150 | `declaration-track:74a686aa87a4a428b0a2bffeabf497cc7a8511a1730852353bde726136fbdcdb` |
| 20 | `instance` | [opcyclesFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/opcyclesfunctor-linear--5c42bcbdaafc7f669667b3c4.md) | 153 | `declaration-track:5c42bcbdaafc7f669667b3c40548c5d9ed662dbb7784da8e4bf7c06d249ab329` |
| 21 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/smul--2334a835e7c74f6101990737.md) | 169 | `declaration-track:2334a835e7c74f61019907376bbef1461d9c246766772f224068cc286b692768` |
| 22 | `lemma` | [homologyMap'_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/homologymap-smul--b88afd6de0f212e192d04c52.md) | 179 | `result-track:b88afd6de0f212e192d04c52ffa3cdb86abc162bb336384bbadd47a8b59bce3e` |
| 23 | `lemma` | [homologyMap_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/homologymap-smul--155ae66a8744adc5c0fe3e3e.md) | 186 | `result-track:155ae66a8744adc5c0fe3e3ecc188c2f4a02e3508d856e2993e22ddd6b54452b` |
| 24 | `instance` | [homologyFunctor_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/homologyfunctor-linear--dcd7da5a8a00c7cf2347590e.md) | 190 | `declaration-track:dcd7da5a8a00c7cf2347590ed9ee390e247a006fb26c01392d77d7e0b1d317b7` |
| 25 | `def` | [Homotopy.smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf8a8c36dbfe0323166a74191c9fa1384b817aa485d0df57bfdd40cced5d3f90c.lean/declarations/homotopy-smul--4cd476430a4c34ef3a92bd4f.md) | 197 | `declaration-track:4cd476430a4c34ef3a92bd4f890e196bb978102f1e31028e5141564488b6fd41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
