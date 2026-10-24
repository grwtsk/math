# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac794b619300ac597451f90c29f639a0857e2294",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac794b619300ac597451f90c29f639a0857e2294`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/rel--e1153df7873ca13ce2422227.md) | 51 | `declaration-track:e1153df7873ca13ce2422227e2a178de7aa946fa896359210e7985953769f379` |
| 2 | `theorem` | [rel_of_colimitTypeRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/rel-of-colimittyperel--8a40f7e1928470032a356ed5.md) | 54 | `result-track:8a40f7e1928470032a356ed591257bc1d2245adce2678fec21f08b3321a784dd` |
| 3 | `theorem` | [eqvGen_colimitTypeRel_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/eqvgen-colimittyperel-of-rel--6595378e3f64f36c27fda848.md) | 58 | `result-track:6595378e3f64f36c27fda848e4ce065f4be8a77e41cd1c7016b77da0f59ddb41` |
| 4 | `def` | [isColimitOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/iscolimitof--f0e2152ed440ba0257eeae49.md) | 67 | `declaration-track:f0e2152ed440ba0257eeae49b78b6f6e42ed3eeebda786c2d9ac01b18ca5b7f2` |
| 5 | `def` | [isColimitOf'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/iscolimitof--5f3d967f310a52e14e9241b8.md) | 104 | `declaration-track:5f3d967f310a52e14e9241b8b9fa2718b423ec5c7b5c394183996c6a0b6c8e39` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/rel-equiv--056eeb47185ec2e5686705b1.md) | 113 | `result-track:056eeb47185ec2e5686705b157bd2a2491b93fed6ee0ad9642d2b1541f3fa4a9` |
| 7 | `theorem` | [rel_eq_eqvGen_colimitTypeRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/rel-eq-eqvgen-colimittyperel--908a72aa77286a934d7c26d6.md) | 129 | `result-track:908a72aa77286a934d7c26d6b98c47421e52155c8ada3df37b04cb6998dbd65a` |
| 8 | `theorem` | [colimit_eq_iff_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/colimit-eq-iff-aux--38d9e85ff383bbb717e21b2c.md) | 139 | `result-track:38d9e85ff383bbb717e21b2c54d13dcfa2abde43729e49ba3abcef5c41d585a7` |
| 9 | `theorem` | [isColimit_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/iscolimit-eq-iff--841ab7df7e7fc5043baa8985.md) | 146 | `result-track:841ab7df7e7fc5043baa898505571b14d8d53b0bb665d724270bbfcf5fcafd22` |
| 10 | `theorem` | [isColimit_eq_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/iscolimit-eq-iff--1f30a88c6db35c668c0daf04.md) | 158 | `result-track:1f30a88c6db35c668c0daf044520766777d9f9a49ce3c547fbc5f16534a831cf` |
| 11 | `theorem` | [colimit_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/colimit-eq-iff--e975cfee1f83f52edbaa9a68.md) | 169 | `result-track:e975cfee1f83f52edbaa9a68f8f476332797da4f891d87c6a684d8df6a909f0f` |
| 12 | `lemma` | [jointly_surjective_of_isColimit₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant503ba041e5ef112431d7d6f495e4904fb6e58414c06ede8572630a47fe4e8d84.lean/declarations/jointly-surjective-of-iscolimit--cca091133fb1475b3f5b51d0.md) | 176 | `result-track:cca091133fb1475b3f5b51d04937479bd5fcecf323b82613b7db006901fd0faa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
