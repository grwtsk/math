# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Endomorphism.Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58fe5c569d5dd9b26c5c776959ac598383cdc04a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58fe5c569d5dd9b26c5c776959ac598383cdc04a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [End](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/end--f192b887549b3a009ce2d4f9.md) | 29 | `declaration-track:f192b887549b3a009ce2d4f9413cd3baccc3494c72a7133a0e83b4619c572425` |
| 2 | `instance` | [one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/one--e9b43b3b88b36f9c58efd7b0.md) | 38 | `declaration-track:e9b43b3b88b36f9c58efd7b0dd3b7f1a4b805748e198a45cfba181cb747cd95b` |
| 3 | `instance` | [inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/inhabited--aa2a8a15cf64753d70d72f00.md) | 41 | `declaration-track:aa2a8a15cf64753d70d72f00ea0155639aec9a28c75b9a2d21d3ec34eeab3c2b` |
| 4 | `instance` | [mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/mul--c00ab1654031dc68abbcb0c7.md) | 46 | `declaration-track:c00ab1654031dc68abbcb0c7e16e1b7ab8a9ac583e0a73930355eebc6ed248aa` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/of--bed0d0d6fe482ff049dedf4f.md) | 52 | `declaration-track:bed0d0d6fe482ff049dedf4f433fc50cf75920bfbae573abfaf92eebc090c819` |
| 6 | `def` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/ashom--5c55ff70f0567a266dcb2e15.md) | 57 | `declaration-track:5c55ff70f0567a266dcb2e1554ce91c2fb7be152e192dd70507485ea615b7857` |
| 7 | `theorem` | [one_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/one-def--0387a42f25cf53ec97f56bc2.md) | 61 | `result-track:0387a42f25cf53ec97f56bc2dea12dcb8e8a53628cee849afb6741782039e3a0` |
| 8 | `theorem` | [mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/mul-def--4a227aa2a0d165fe4db5a68f.md) | 65 | `result-track:4a227aa2a0d165fe4db5a68fc8ccba38f424eb97eac33668d5cdedc65005a2df` |
| 9 | `instance` | [monoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/monoid--1c7510436ffd583f02e4c2d3.md) | 71 | `declaration-track:1c7510436ffd583f02e4c2d30314392f22a4a68df94a6d43630aa4d51ddac3de` |
| 10 | `instance` | [mulActionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/mulactionright--a580b236d682a558c984e83d.md) | 83 | `declaration-track:a580b236d682a558c984e83d095260d84fd5fa5f49261c59131501a1793874d3` |
| 11 | `instance` | [mulActionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/mulactionleft--0e68670ce493ff98a13ede9c.md) | 89 | `declaration-track:0e68670ce493ff98a13ede9c20786d2f7a82cb5b52ba42839aa7f8a3321a41a7` |
| 12 | `theorem` | [smul_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/smul-right--569346c576c098146239b70e.md) | 95 | `result-track:569346c576c098146239b70e14b042258ae97b51c935a92afe6b0bfd7aaad29f` |
| 13 | `theorem` | [smul_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/smul-left--f891d0ba7eb3f88e6d20206a.md) | 99 | `result-track:f891d0ba7eb3f88e6d20206afa05e9a2c8f9d5eec24e5bbeecb8dc847dfed611` |
| 14 | `instance` | [group](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/group--7af40447928be4d385c2695b.md) | 106 | `declaration-track:7af40447928be4d385c2695bdf994a434c5b9e2e038b443c38c33444446a3a1c` |
| 15 | `theorem` | [isUnit_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/isunit-iff-isiso--9861ed01e621c002a1b9c606.md) | 113 | `result-track:9861ed01e621c002a1b9c6061358a8b2c57d8eea0786015111676e4174e37555` |
| 16 | `def` | [Aut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/aut--7b0307fada1528fd02c1d5b2.md) | 126 | `declaration-track:7b0307fada1528fd02c1d5b207dd4ff8669fa2b4c554183c061e404d59aac7f7` |
| 17 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/ext--a1b3571e09f23e265b5b1896.md) | 134 | `result-track:a1b3571e09f23e265b5b1896da869b151e172dc8b54e0572b49035c1770d57fe` |
| 18 | `instance` | [inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/inhabited--869d9d35d0d029760b0550d5.md) | 137 | `declaration-track:869d9d35d0d029760b0550d52e3c2a1c75be43b55a74c6e07b9f59172a14b4b9` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/instance--e3da08fc87e4038893c6c51a.md) | 141 | `declaration-track:e3da08fc87e4038893c6c51a9d85dd3987960dbe8b33dd68401ccc293d19b51d` |
| 20 | `theorem` | [Aut_mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/aut-mul-def--da001a597bdce6ffe3611741.md) | 150 | `result-track:da001a597bdce6ffe3611741c3682b93818ad4e3a0a02f2af80fcc805aaf9fe5` |
| 21 | `theorem` | [Aut_inv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/aut-inv-def--806dcfd997977567207e2f02.md) | 154 | `result-track:806dcfd997977567207e2f02086674084915009878098bf6dfc26844f0d1b6e4` |
| 22 | `def` | [unitsEndEquivAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/unitsendequivaut--4cc67300b832a3c7c594ad7f.md) | 161 | `declaration-track:4cc67300b832a3c7c594ad7fe239412c169b6420fc95c892dfdf8d71bfb81c05` |
| 23 | `def` | [autMulEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/autmulequivofiso--9169b5e8a685d37188667a5c.md) | 171 | `declaration-track:9169b5e8a685d37188667a5cff69cf2384fbc91611d5c9be2bf420edf163af78` |
| 24 | `def` | [mapEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/mapend--cdc4a648b2091f37aecefa3e.md) | 188 | `declaration-track:cdc4a648b2091f37aecefa3e62e1faf0113e4d0d2943bfbddf6d2b0dc8df894e` |
| 25 | `def` | [mapAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variantb55ca702ca9c45a8bd1cdc8d52eb659e71347820cd9df36768a8078fd583426d.lean/declarations/mapaut--17b91e27f47366b15eeffaf5.md) | 195 | `declaration-track:17b91e27f47366b15eeffaf56fe59b73dce6cb0d975a5209ec537213b30163a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
