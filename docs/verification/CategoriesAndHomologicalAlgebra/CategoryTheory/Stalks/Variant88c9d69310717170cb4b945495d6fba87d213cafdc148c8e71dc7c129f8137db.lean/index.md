# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Stalks.Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `707578ef8e78fc69c0dfc2ac61b9acfc2a85be4b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/stalk--59765ba07090563909daacfe.md) | 42 | `declaration-track:59765ba07090563909daacfe87f6d25fe0a37265f42be07697a3ff329d94c4f1` |
| 2 | `def` | [stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/stalkmap--46f5f8b946cd6af4c0881a5a.md) | 49 | `declaration-track:46f5f8b946cd6af4c0881a5a0050a82a2b68acc23c8507253a98deca48c56a5b` |
| 3 | `theorem` | [stalkMap_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/stalkmap-germ--d4e576d5421a4442cd6806b9.md) | 56 | `result-track:d4e576d5421a4442cd6806b9c2a84d548e8a733637c1f467cecec7731e29444b` |
| 4 | `def` | [restrictStalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/restrictstalkiso--068508abac63385129425a5b.md) | 68 | `declaration-track:068508abac63385129425a5b5e5c85e28a4de0004e310f5df9df784f551adef3` |
| 5 | `theorem` | [restrictStalkIso_hom_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/restrictstalkiso-hom-eq-germ--dbae74df3e0b48413a01e54f.md) | 80 | `result-track:dbae74df3e0b48413a01e54f9e270af40c0104347bf663bb1c90a1c403e8f9c4` |
| 6 | `theorem` | [restrictStalkIso_inv_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/restrictstalkiso-inv-eq-germ--3dfa35add5212fa7e7170732.md) | 92 | `result-track:3dfa35add5212fa7e71707321cb67a093dbc4ccdb3c5d2b6f8265bdaca5b87d5` |
| 7 | `theorem` | [restrictStalkIso_inv_eq_ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/restrictstalkiso-inv-eq-ofrestrict--a2f77c647081590f1062702e.md) | 101 | `result-track:a2f77c647081590f1062702ee7fc3a34d4d4a8c7fa8beeea6db59e25e702f0d5` |
| 8 | `instance` | [ofRestrict_stalkMap_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/ofrestrict-stalkmap-isiso--1bbb84f276b3cb2afec39a4e.md) | 118 | `declaration-track:1bbb84f276b3cb2afec39a4e578e8cb569c3b6689c37edb23018c4db1f6b0b80` |
| 9 | `theorem` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/id--a76f187f18218a8ff9acef8a.md) | 130 | `result-track:a76f187f18218a8ff9acef8a3245e676a804ab1b3408b9e4f68a109433827ea7` |
| 10 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/comp--0dc64a2cf39b05070080de17.md) | 143 | `result-track:0dc64a2cf39b05070080de17021f891a3ab988e21833831d7f21f83218641317` |
| 11 | `theorem` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/congr--d27c0282453ac8449d5f8a9d.md) | 164 | `result-track:d27c0282453ac8449d5f8a9d2b5fc040913bb724dce936495a6674c8b4864916` |
| 12 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/congr-hom--8490daa98d445d34d0a94650.md) | 174 | `result-track:8490daa98d445d34d0a946505799f1e361c7f418463b23eca0631b095b70f0eb` |
| 13 | `theorem` | [congr_point](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/congr-point--f5ecad8e1f84d61ff3e1e03b.md) | 181 | `result-track:f5ecad8e1f84d61ff3e1e03b65c2cf0cb0164ef3c273b6252a680f8cd6f04175` |
| 14 | `instance` | [isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/isiso--0210d2ab8d96e9c281686127.md) | 189 | `declaration-track:0210d2ab8d96e9c2816861276a9bbfca61d5e0455e8174667557cbc2cbe0b924` |
| 15 | `def` | [stalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/stalkiso--70552a7e09513b08782fc480.md) | 215 | `declaration-track:70552a7e09513b08782fc480686a606cd8278d5ed7cc30cf50d43576b9476e18` |
| 16 | `theorem` | [stalkSpecializes_stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant88c9d69310717170cb4b945495d6fba87d213cafdc148c8e71dc7c129f8137db.lean/declarations/stalkspecializes-stalkmap--e1f2e333e1a8492a72856018.md) | 222 | `result-track:e1f2e333e1a8492a728560189002ad8149c1712b802a2386b8d050f875d59a7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
