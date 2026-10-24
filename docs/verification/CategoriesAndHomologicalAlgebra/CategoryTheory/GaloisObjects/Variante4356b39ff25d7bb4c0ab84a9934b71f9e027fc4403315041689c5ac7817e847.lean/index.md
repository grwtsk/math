# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GaloisObjects.Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7528fd8a3d49b146ad217b61c8b7a0635e4a2b6c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7528fd8a3d49b146ad217b61c8b7a0635e4a2b6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FintypeCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SingleObj` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/instance--a9bf143d65a0d6601db83e12.md) | 37 | `declaration-track:a9bf143d65a0d6601db83e126fe5b6c783e68888136b2661b84596c65f4f2980` |
| 2 | `class` | [IsGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/isgalois--b97529411f6996ed26273e38.md) | 43 | `declaration-track:b97529411f6996ed26273e38c659978290666abfc1b7b05c31efa6023e3e3dca` |
| 3 | `instance` | [autMulFiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmulfiber--e89eba464c99236cbf3475b6.md) | 50 | `declaration-track:e89eba464c99236cbf3475b65b592a948452738b18c9e841ff825e2801bc3043` |
| 4 | `def` | [quotientByAutTerminalEquivUniqueQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/quotientbyautterminalequivuniquequotient--4f3e71ef79c82cd928fe9eda.md) | 63 | `declaration-track:4f3e71ef79c82cd928fe9eda6f6789c26e2886b09a82122de116d45205887267` |
| 5 | `lemma` | [isGalois_iff_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/isgalois-iff-aux--e9a56d06d733bd45c8f2494a.md) | 76 | `result-track:e9a56d06d733bd45c8f2494adfc6452c3baf239e6488a90db65bbbc3fee5d1fa` |
| 6 | `theorem` | [isGalois_iff_pretransitive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/isgalois-iff-pretransitive--a7ed3b6f2e71139e50d8d2f1.md) | 82 | `result-track:a7ed3b6f2e71139e50d8d2f18444598c9146f2a41f78c21cb6e59dbd72ecf0bb` |
| 7 | `def` | [isTerminalQuotientOfIsGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/isterminalquotientofisgalois--b62890a282df7ed3eb3f9955.md) | 88 | `declaration-track:b62890a282df7ed3eb3f995524961bcab8e78ed28573755ea792c11be7c5c7e4` |
| 8 | `instance` | [isPretransitive_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/ispretransitive-of-isgalois--a248974f4dfe241a043aaeeb.md) | 94 | `declaration-track:a248974f4dfe241a043aaeeb8f30de3091685f2108c46ca8899b6658a82398b4` |
| 9 | `lemma` | [stabilizer_normal_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/stabilizer-normal-of-isgalois--15116c0fe5c64362e42b3f78.md) | 99 | `result-track:15116c0fe5c64362e42b3f78ce8b9dcb77d2c1563f55c82666fdb11e7e97b150` |
| 10 | `theorem` | [evaluation_aut_surjective_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/evaluation-aut-surjective-of-isgalois--5065fb71fcd0dd5794377673.md) | 110 | `result-track:5065fb71fcd0dd57943776735baa8b2440f871711c893c0d6f9e2351856685d7` |
| 11 | `theorem` | [evaluation_aut_bijective_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/evaluation-aut-bijective-of-isgalois--cf39129128df07d29658973c.md) | 114 | `result-track:cf39129128df07d29658973c1c17d5f6d18923f149ef623c8ef4ac18d19dc4f8` |
| 12 | `def` | [evaluationEquivOfIsGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/evaluationequivofisgalois--ea5e5bf2c37a5affe089d2f3.md) | 119 | `declaration-track:ea5e5bf2c37a5affe089d2f3d041ec99637bb6643f2714c556223c99b381b3cf` |
| 13 | `lemma` | [evaluationEquivOfIsGalois_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/evaluationequivofisgalois-apply--edf6a1726fcf5e6e8171ef6f.md) | 123 | `result-track:edf6a1726fcf5e6e8171ef6f6f6cb609c6303c901172a00d40f7946277331a31` |
| 14 | `lemma` | [evaluationEquivOfIsGalois_symm_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/evaluationequivofisgalois-symm-fiber--2f99f667aab403ae5d50733d.md) | 128 | `result-track:2f99f667aab403ae5d50733dc19354a8f0edbd9f464cac951589228f8b0ad9cd` |
| 15 | `lemma` | [exists_autMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/exists-autmap--13d5586299b87c38e2f7fbde.md) | 137 | `result-track:13d5586299b87c38e2f7fbded40889871560d32c9afb2b3b612d5a5b58a6494b` |
| 16 | `def` | [autMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmap--0c926e2cbea427797f0e581c.md) | 151 | `declaration-track:0c926e2cbea427797f0e581cf953206f2e5e493a1e9dc51cc586f9aeda835c3b` |
| 17 | `lemma` | [comp_autMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/comp-autmap--180ffda04d6a29d9df4a4786.md) | 156 | `result-track:180ffda04d6a29d9df4a478632f99ae24a3a3ad9385c87f02fdc76e376645508` |
| 18 | `lemma` | [comp_autMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/comp-autmap-apply--c975f82d8b32b3f0ce91c95e.md) | 161 | `result-track:c975f82d8b32b3f0ce91c95ee7e5daa53a00600905c8c04ad5a2f73b0d9abd61` |
| 19 | `lemma` | [autMap_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmap-unique--2068cbcb42c86cbc8cc37efd.md) | 167 | `result-track:2068cbcb42c86cbc8cc37efd82f61688cbf84f811b6f9397b85a2d41b7b494aa` |
| 20 | `lemma` | [autMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmap-id--b096cec5275bc0308c5bc682.md) | 173 | `result-track:b096cec5275bc0308c5bc68215588f90d549061d5c36ecc0df81acfaf8331235` |
| 21 | `lemma` | [autMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmap-comp--a01e3fe76194a3be8dd02741.md) | 177 | `result-track:a01e3fe76194a3be8dd027416d2c7912529070c1a3e09ca96baac6ce32d9542e` |
| 22 | `lemma` | [autMap_surjective_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmap-surjective-of-isgalois--7daaffc2f01cb0b2caecd41e.md) | 184 | `result-track:7daaffc2f01cb0b2caecd41e48ec1ddff2530d4fbb774b1a2c59fbe828c58e6a` |
| 23 | `lemma` | [autMap_apply_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmap-apply-mul--368a1c7b15eac128039136f6.md) | 196 | `result-track:368a1c7b15eac128039136f699910015874b8346dc65cd38fc4993706431f18c` |
| 24 | `def` | [autMapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/declarations/autmaphom--00b770a9f1269b11152bc59b.md) | 205 | `declaration-track:00b770a9f1269b11152bc59b1e4d2d3e1cfb4d921be8759ad4bb3554a00d9082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
