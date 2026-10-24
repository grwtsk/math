# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multivariate.Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Fin2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.TypeVec` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/mvfunctor--ac14435057346213a402911e.md) | 29 | `declaration-track:ac14435057346213a402911e7bc8662b490391064169aadc84a4ef175f004571` |
| 2 | `def` | [LiftP](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftp--9a422faf37f08547f998a1a3.md) | 44 | `declaration-track:9a422faf37f08547f998a1a3b285a66b6b97edb47f5fa641477673fb9878efdd` |
| 3 | `def` | [LiftR](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftr--f7530b5946834dd7350ffc01.md) | 49 | `declaration-track:f7530b5946834dd7350ffc018777738cce552075ce44ccbd815943d5b9486478` |
| 4 | `def` | [supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/supp--a9c2ea0dd0491fe4ff8d5a5b.md) | 57 | `declaration-track:a9c2ea0dd0491fe4ff8d5a5bf03c868a763f22c0e8dd7fd0a94488202c618a1e` |
| 5 | `theorem` | [of_mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/of-mem-supp--4f558074615f16c2184ac4c5.md) | 61 | `result-track:4f558074615f16c2184ac4c544e5116511e5b5db27b226419cb961f139122a61` |
| 6 | `class` | [LawfulMvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/lawfulmvfunctor--50beaf1a4fdad85ef2727e2c.md) | 70 | `declaration-track:50beaf1a4fdad85ef2727e2c3b3805537af8a8ca3ea22c8289343fe96a2a944a` |
| 7 | `def` | [LiftP'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftp--175e7e8a1df021f0d40faed9.md) | 93 | `declaration-track:175e7e8a1df021f0d40faed901cbf8e8c510d0e82c2ebacbd8eb78d8c41301f3` |
| 8 | `def` | [LiftR'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftr--19de889df91de70dbf6ba8d5.md) | 99 | `declaration-track:19de889df91de70dbf6ba8d59effd6020eed4689b92ef51299247880cec85ea8` |
| 9 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/id-map--9082beb4f358d89c6e25a3bf.md) | 106 | `result-track:9082beb4f358d89c6e25a3bf05443b159e6f84b3dd9c33ece737492721f55e2f` |
| 10 | `theorem` | [id_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/id-map--deb4faf9a01d2259573be020.md) | 111 | `result-track:deb4faf9a01d2259573be020f7dacc260e8e94956ff0bf93ca996b1e34fd293c` |
| 11 | `theorem` | [map_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/map-map--3a6bf4060f3fbbb4d729241f.md) | 115 | `result-track:3a6bf4060f3fbbb4d729241f091a89297fc8603bc55d4e17e5864d956f3396a7` |
| 12 | `theorem` | [exists_iff_exists_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/exists-iff-exists-of-mono--6c9c5e05c814d45cf91d454a.md) | 123 | `result-track:6c9c5e05c814d45cf91d454ae7cc48d0bce5bf9af80af568c701c959333e2b8e` |
| 13 | `theorem` | [LiftP_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftp-def--bab563a06aed164d5d1892a0.md) | 138 | `result-track:bab563a06aed164d5d1892a003edf119f977dbe6c09e6db3349ec9178faf8738` |
| 14 | `theorem` | [LiftR_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftr-def--6924ebaf593c30f5d8ddcff3.md) | 142 | `result-track:6924ebaf593c30f5d8ddcff3c27e3d7f978ade249042d2149bb95f119d0a8dbe` |
| 15 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/f--cce69bc438002be9da76ac3b.md) | 171 | `declaration-track:cce69bc438002be9da76ac3bbe72f8f2cecbd67a0eecd89629a08f164b46e395` |
| 16 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/g--ad3fbc7fc8345b58b2940949.md) | 179 | `declaration-track:ad3fbc7fc8345b58b29409498c38a156e6947cb27255407478aaf5ca89b0ebb4` |
| 17 | `theorem` | [LiftP_PredLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftp-predlast-iff--71453763c9726aa799b05733.md) | 187 | `result-track:71453763c9726aa799b057330a5eb62874a4067c609f089b9133f233feb22016` |
| 18 | `def` | [f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/f--acbea7eae6e746201476b010.md) | 206 | `declaration-track:acbea7eae6e746201476b010aa8468acb1219cb5f0a7356ff3e8d15247078645` |
| 19 | `def` | [g'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/g--d868b326c2b6cce22c6026cd.md) | 215 | `declaration-track:d868b326c2b6cce22c6026cde491c745b5f7504b4cf064ceff16220d9627d880` |
| 20 | `theorem` | [LiftR_RelLast_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/declarations/liftr-rellast-iff--9daad14cd612bfe899db48c6.md) | 224 | `result-track:9daad14cd612bfe899db48c64658962fc514bec0f4e6936a2b444ba079b411ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
