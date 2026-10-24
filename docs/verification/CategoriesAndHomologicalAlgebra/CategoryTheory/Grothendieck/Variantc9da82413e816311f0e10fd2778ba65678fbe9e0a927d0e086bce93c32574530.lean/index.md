# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b7fce224c7590c982ee74210221e8726437cdea",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b7fce224c7590c982ee74210221e8726437cdea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Grothendieck` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasColimit_ι_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/hascolimit-comp--60818b9b543eb8ee7c2cf05b.md) | 48 | `result-track:60818b9b543eb8ee7c2cf05beee16a9a7a987dc242cacb7d82b5c7b08705c71f` |
| 2 | `def` | [fiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/fiberwisecolimit--fe586bd7a058f04d157c1192.md) | 55 | `declaration-track:fe586bd7a058f04d157c1192ea34e326a63dc811e37e641e93131d363b863a97` |
| 3 | `def` | [fiberwiseColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/fiberwisecolim--dc73aced2278dfc3c74d8139.md) | 90 | `declaration-track:dc73aced2278dfc3c74d8139995d24d2267cf09bf70c2966ddbe2fba1250accc` |
| 4 | `def` | [natTransIntoForgetCompFiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/nattransintoforgetcompfiberwisecolimit--073668bf0d035a57cb6bcee6.md) | 101 | `declaration-track:073668bf0d035a57cb6bcee6f041fddcf114cfe1d15f8230c9a4d8fff4f0b47b` |
| 5 | `def` | [coconeFiberwiseColimitOfCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/coconefiberwisecolimitofcocone--0a84c3c9f234aa79579eb2fe.md) | 118 | `declaration-track:0a84c3c9f234aa79579eb2fe7c82b700c4d4e9618faa162c4065a34503b6ad92` |
| 6 | `def` | [isColimitCoconeFiberwiseColimitOfCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/iscolimitcoconefiberwisecolimitofcocone--07fc11e8270842af43982f94.md) | 126 | `declaration-track:07fc11e8270842af43982f942ce17d262d44386ad9c21064232071f2f579f68b` |
| 7 | `lemma` | [hasColimit_fiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/hascolimit-fiberwisecolimit--4328d22927f9bb1f7b4f93fa.md) | 140 | `result-track:4328d22927f9bb1f7b4f93fa364dc85805b1b8df2c6a48ea2c1074fc68071817` |
| 8 | `def` | [coconeOfCoconeFiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/coconeofcoconefiberwisecolimit--f45acee7e83417abf160e77f.md) | 148 | `declaration-track:f45acee7e83417abf160e77f5bdaf119cfda1a5cce3a3ff394626a2dcd92ddcf` |
| 9 | `def` | [isColimitCoconeOfFiberwiseCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/iscolimitcoconeoffiberwisecocone--e180831058220429dca3138d.md) | 162 | `declaration-track:e180831058220429dca3138d49a0249bcac53ada70cd9675f27fa8b2fd6b59cf` |
| 10 | `lemma` | [hasColimit_of_hasColimit_fiberwiseColimit_of_hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/hascolimit-of-hascolimit-fiberwisecolimit-of-hascolimit--67d24d1b4434bcabd60ae525.md) | 184 | `result-track:67d24d1b4434bcabd60ae525160deb8167c9d7dbe2f4dc0add82c8b2b62f797e` |
| 11 | `def` | [colimitFiberwiseColimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/colimitfiberwisecolimitiso--2c9a72247d9345049cc1b8cd.md) | 190 | `declaration-track:2c9a72247d9345049cc1b8cd339b953584cef779c684fff5a0e877d59a4efd19` |
| 12 | `lemma` | [ι_colimitFiberwiseColimitIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/colimitfiberwisecolimitiso-hom--6d90731affe32889ab8a3d58.md) | 195 | `result-track:6d90731affe32889ab8a3d587401a8601efbf7fe3fa56c3ab0e206214ced1afc` |
| 13 | `lemma` | [ι_colimitFiberwiseColimitIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/colimitfiberwisecolimitiso-inv--df68e6eef222b270833b9c08.md) | 201 | `result-track:df68e6eef222b270833b9c08f9410213544ec18ad345d17f64f4c206901512c0` |
| 14 | `theorem` | [hasColimitsOfShape_grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/hascolimitsofshape-grothendieck--68e282ca72fc6978480617a0.md) | 211 | `result-track:68e282ca72fc6978480617a02512ff28b44939681e7e51896664c161558943f8` |
| 15 | `def` | [fiberwiseColimCompColimIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/fiberwisecolimcompcolimiso--d8be4d02da5156909c7e83b5.md) | 222 | `declaration-track:d8be4d02da5156909c7e83b5fffa63446849198a54d41c9b030220bdaa85d2c2` |
| 16 | `def` | [fiberwiseColimCompEvaluationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc9da82413e816311f0e10fd2778ba65678fbe9e0a927d0e086bce93c32574530.lean/declarations/fiberwisecolimcompevaluationiso--587f2a9e9b03998af5153de5.md) | 229 | `declaration-track:587f2a9e9b03998af5153de5e4310afc7fc3711e33385db2641152713edf5eae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
