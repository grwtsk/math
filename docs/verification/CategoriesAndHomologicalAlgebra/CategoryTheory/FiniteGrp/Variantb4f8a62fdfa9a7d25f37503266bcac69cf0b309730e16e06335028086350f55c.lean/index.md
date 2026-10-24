# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28945f406077db90200ebde2fb7f6a97313678a7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28945f406077db90200ebde2fb7f6a97313678a7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/finitegrp--702d4597d52251df1a6fb23b.md) | 31 | `declaration-track:702d4597d52251df1a6fb23b78e3c6dac12eef20b715d56f4b486f39ab907ffc` |
| 2 | `structure` | [FiniteAddGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/finiteaddgrp--262c920d9ce9204138d3927a.md) | 38 | `declaration-track:262c920d9ce9204138d3927a95f7d3c389a358c32b30be8f11c2858c5840909a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/instance--4e51b945a829f302b1f4ce1f.md) | 48 | `declaration-track:4e51b945a829f302b1f4ce1f6ba5b8bd51b1a16e3baee547d5970842cd31cb0f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/instance--02d6098855c7e684acfc6c4c.md) | 52 | `declaration-track:02d6098855c7e684acfc6c4c9c35cb5bc9f17ab64f2d01f7112b34e93ea2f2c1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/instance--9f9cbec3f617bfd8424a2c93.md) | 55 | `declaration-track:9f9cbec3f617bfd8424a2c9317bdb5b656f62bef0361537fbbb2dee954bbae0a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/instance--6ebbca61e5bf82a6674d04be.md) | 58 | `declaration-track:6ebbca61e5bf82a6674d04bed735995cf07d37ccf5e89abdd902508b49454728` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/instance--3f6b24d547ed103e5823767a.md) | 61 | `declaration-track:3f6b24d547ed103e5823767a84ce85b3867eb8bc38290832422157867cd4a2aa` |
| 8 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/of--fb169fbfd4a280a97dc51479.md) | 66 | `declaration-track:fb169fbfd4a280a97dc5147938fcf37ffa6f53912c6d0d6d5e1e4ff42bd0b721` |
| 9 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/ofhom--8dd2e01398751e577127d306.md) | 72 | `declaration-track:8dd2e01398751e577127d30610700fed0c2916380fb6ec9bee271740905ad381` |
| 10 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantb4f8a62fdfa9a7d25f37503266bcac69cf0b309730e16e06335028086350f55c.lean/declarations/ofhom-apply--0084963e83e20ad6963282d0.md) | 76 | `result-track:0084963e83e20ad6963282d080a70519524191e00c76eb6da9edbac60b45c3fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
