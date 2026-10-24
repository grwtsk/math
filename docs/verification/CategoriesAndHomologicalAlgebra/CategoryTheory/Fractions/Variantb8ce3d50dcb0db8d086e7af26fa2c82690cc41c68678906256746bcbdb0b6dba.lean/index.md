# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fractions.Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0778f696c4f7da9cd99328263f40aba8e02396ce",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0778f696c4f7da9cd99328263f40aba8e02396ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.CalculusOfFractions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftFraction₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/leftfraction--51435a841a703eab49b7c61d.md) | 50 | `declaration-track:51435a841a703eab49b7c61d33a71638d91e2fb0386fb171afe1f7eee94b91b7` |
| 2 | `structure` | [LeftFraction₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/leftfraction--2d98fbb0163b4edeb3aa6151.md) | 64 | `declaration-track:2d98fbb0163b4edeb3aa6151abbfdf4efd0c01102d56f94654aff5a1685749c5` |
| 3 | `structure` | [RightFraction₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/rightfraction--5f9bf6dd93f5f3873b41dc7d.md) | 80 | `declaration-track:5f9bf6dd93f5f3873b41dc7d2ae8cc670c93c0d2b96c6effb0762582a0c95185` |
| 4 | `def` | [LeftFraction₂Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/leftfraction-rel--54dcbe9cbd41ff20aa9347ad.md) | 97 | `declaration-track:54dcbe9cbd41ff20aa9347ad543d82d29d6471545f6a4d944909d9437501faf7` |
| 5 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/fst--421d472aa9683abc124b01f2.md) | 106 | `declaration-track:421d472aa9683abc124b01f27550c4fe3732cb643cd84d5011c849b69e2563e1` |
| 6 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/snd--1c882d048aca97519f4c20e7.md) | 113 | `declaration-track:1c882d048aca97519f4c20e742171f090c9d7b093c32786061a7a19b755d878d` |
| 7 | `abbrev` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/symm--accaa3e1ffa17efc001ef018.md) | 120 | `declaration-track:accaa3e1ffa17efc001ef018afbfe72c1ecb73d41dfc638835046869fd4a329c` |
| 8 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/fst--5a6f12f4c530cfa6726ef51c.md) | 134 | `declaration-track:5a6f12f4c530cfa6726ef51cb8ced17d95dde6abb42815f5c02544804ef95301` |
| 9 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/snd--76a0af5695c2e2a65f7c9255.md) | 141 | `declaration-track:76a0af5695c2e2a65f7c925578b53447898756902bcddcc1f3eab0908eb2f103` |
| 10 | `abbrev` | [thd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/thd--17c9b8c07d8f2a5ac3008595.md) | 148 | `declaration-track:17c9b8c07d8f2a5ac300859577d9eeca4caaa586151e7a710410ff0158f4e35e` |
| 11 | `abbrev` | [forgetFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/forgetfst--b039950c30ab6cfc2f6f1db8.md) | 155 | `declaration-track:b039950c30ab6cfc2f6f1db8734b26d51189a45ff0b18b99a53abd791fc276d9` |
| 12 | `abbrev` | [forgetSnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/forgetsnd--ea608b586f913b958be9aeca.md) | 163 | `declaration-track:ea608b586f913b958be9aeca04d85c6c0b26a9b41e3816bcafb485c9d747fad2` |
| 13 | `abbrev` | [forgetThd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/forgetthd--131c9e17c1b73394d7dfa247.md) | 171 | `declaration-track:131c9e17c1b73394d7dfa247ff5c801a5d95638b68e7aa3e5e92812a4c354295` |
| 14 | `lemma` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/fst--8ecc54bb45c83e1647839be2.md) | 184 | `result-track:8ecc54bb45c83e1647839be22745aaa094565fe5a35832eba8f443e35e618be7` |
| 15 | `lemma` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/snd--034109e28be69be90638a49b.md) | 188 | `result-track:034109e28be69be90638a49b6e70b58e91678afacb04ba29e3637676226dcef2` |
| 16 | `lemma` | [map_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/map-eq-iff--7b62aa7423cf9ed63a40cccd.md) | 199 | `result-track:7b62aa7423cf9ed63a40cccd83175355d8cfdd23f80bcf9f13c89a086b1c9096` |
| 17 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/fst--4da245530d21e97595ee7ed2.md) | 233 | `declaration-track:4da245530d21e97595ee7ed237a98d0d852821ee262c71b0e82a0b57bf81738f` |
| 18 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/snd--fc28275284fb1afe74c339a4.md) | 240 | `declaration-track:fc28275284fb1afe74c339a429321f8db48270c291462a20ecbb85d5f2a7f26e` |
| 19 | `lemma` | [exists_leftFraction₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/exists-leftfraction--b3e784c2c4ff66b4234d49fe.md) | 246 | `result-track:b3e784c2c4ff66b4234d49fe0a59f3a9f834d012bf564634f83c5fd80ea72fd9` |
| 20 | `lemma` | [exists_leftFraction₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/exists-leftfraction--155e987fe052d72ae22b93fc.md) | 269 | `result-track:155e987fe052d72ae22b93fc4cc90ed96499ba150d2b3e9ccc8dfece850301d3` |
| 21 | `lemma` | [exists_leftFraction₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fractions/Variantb8ce3d50dcb0db8d086e7af26fa2c82690cc41c68678906256746bcbdb0b6dba.lean/declarations/exists-leftfraction--873e85fc8f2ea473b76a1c54.md) | 295 | `result-track:873e85fc8f2ea473b76a1c5494c192851a4603305ef10b8155aaa1efe39809dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
