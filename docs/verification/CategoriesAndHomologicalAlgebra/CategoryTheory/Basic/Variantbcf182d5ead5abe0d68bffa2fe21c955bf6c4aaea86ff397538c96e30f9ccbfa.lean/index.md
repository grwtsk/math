# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de589023f3196b8667508250019f62638c0192df",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de589023f3196b8667508250019f62638c0192df`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Paths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/paths--c7195a4da9d683bfb76da84a.md) | 38 | `declaration-track:c7195a4da9d683bfb76da84a22212aca1e8e238e194c19706ae383480889073e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/instance--2a46e400cf5525796dd6cca3.md) | 40 | `declaration-track:2a46e400cf5525796dd6cca3dc24fdc84bc642445bb134bef6da07d1b450d6d4` |
| 3 | `instance` | [categoryPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/categorypaths--906654ab265910bdc52190dc.md) | 46 | `declaration-track:906654ab265910bdc52190dc51688402dba19d4532cf113f11f3cf3a615d4206` |
| 4 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/of--6a73ddaf0e3b451aff09b562.md) | 54 | `declaration-track:6a73ddaf0e3b451aff09b56217a503449f14a8cf15d97b8d25d04801b810603b` |
| 5 | `lemma` | [induction_fixed_source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/induction-fixed-source--ac1231a075db9a7eb263b5f6.md) | 63 | `result-track:ac1231a075db9a7eb263b5f6f8003aeb5933b720e41d25578c1e6bc98b47050a` |
| 6 | `lemma` | [induction_fixed_target](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/induction-fixed-target--f9538fde10d820d096a3c20e.md) | 75 | `result-track:f9538fde10d820d096a3c20e572fb1c4dcf5231baee1bb297cbecc66aa002bf2` |
| 7 | `lemma` | [induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/induction--16cc844fce4ad67765601b0b.md) | 91 | `result-track:16cc844fce4ad67765601b0b279a9a34538fee98a1862ca6d295e261a35aad84` |
| 8 | `lemma` | [induction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/induction--1ff07522bab117b99b1e51c2.md) | 100 | `result-track:1ff07522bab117b99b1e51c288ada7e6ae4d987aebc76fe4fbe8464dcf9bb104` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/lift--bbc6916aa70ecb47e7d47088.md) | 112 | `declaration-track:bbc6916aa70ecb47e7d47088ffcde269ba6d0b9d7a210d45bcc4357bc5479d2a` |
| 10 | `theorem` | [lift_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/lift-nil--a13f82957e98f23cd2e0b4fe.md) | 130 | `result-track:a13f82957e98f23cd2e0b4fe66113b16ec9ee900b967af949a4b6bda455bfb47` |
| 11 | `theorem` | [lift_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/lift-cons--af3df8dc3db1c40756d40c4a.md) | 134 | `result-track:af3df8dc3db1c40756d40c4ae683886cae1e9ff017d5da3bd028e84c0f739ec8` |
| 12 | `theorem` | [lift_toPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/lift-topath--f63f368e84301ab15e2d8f9d.md) | 138 | `result-track:f63f368e84301ab15e2d8f9d08dad24a8f6561558f4fe08f0034198cacb2a8da` |
| 13 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/lift-spec--597051c9238e27519e48e276.md) | 143 | `result-track:597051c9238e27519e48e2764b2dcbdb937210d487ed9794ef28d95604bb6eff` |
| 14 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/lift-unique--bf088d8627ecb0e827495e2e.md) | 152 | `result-track:bf088d8627ecb0e827495e2ea20f2c5aa2e43442f577d70a80e5b927e98f2684` |
| 15 | `theorem` | [ext_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/ext-functor--6f70393fbffd946da34ec57a.md) | 174 | `result-track:6f70393fbffd946da34ec57a704316842f6013f671e4fc7be6eca78a8cc99be2` |
| 16 | `theorem` | [Prefunctor.mapPath_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/prefunctor-mappath-comp--b59137d6bda3133e4c7179f8.md) | 194 | `result-track:b59137d6bda3133e4c7179f8cfd868a78200ad4ef06e4b7a9df4aed8b95922b8` |
| 17 | `def` | [composePath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath--6cf1b9ac1cbc79580ec8ab6a.md) | 210 | `declaration-track:6cf1b9ac1cbc79580ec8ab6af4bbffb04e956ac1347e475d4aac1c13f6668e8f` |
| 18 | `lemma` | [composePath_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath-nil--c2089ac1550e6532b214c216.md) | 214 | `result-track:c2089ac1550e6532b214c2165296e04554921a7fcc7adb4613f32a963527cc3d` |
| 19 | `lemma` | [composePath_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath-cons--352b06f39f525a94261326c6.md) | 216 | `result-track:352b06f39f525a94261326c6047d49597e90a2b0782b56c3c0f10ed6b5c4df0b` |
| 20 | `theorem` | [composePath_toPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath-topath--066cde2331fd9d59c3396072.md) | 220 | `result-track:066cde2331fd9d59c3396072c9923a82eae1c4b5cc7c14d8ba09b6a0a0ecb8c6` |
| 21 | `theorem` | [composePath_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath-comp--8f47b0ea772ce5bf7d78f133.md) | 223 | `result-track:8f47b0ea772ce5bf7d78f133bd78d0972307828d33c08ef8eb744f6ba58d4147` |
| 22 | `theorem` | [composePath_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath-id--db0a9dd819ffed6b810bc11a.md) | 231 | `result-track:db0a9dd819ffed6b810bc11a24b2048c0da8c1e12feb1d507513746ad9b4cc1d` |
| 23 | `theorem` | [composePath_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/composepath-comp--1fd79ad455051e10b19143b5.md) | 234 | `result-track:1fd79ad455051e10b19143b52724860810ae6a223792ab2bc3f2adc57e3b111d` |
| 24 | `def` | [pathComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/pathcomposition--11c7f62d3751ce40936ecc76.md) | 242 | `declaration-track:11c7f62d3751ce40936ecc76eaad6eea7c87085d824ee7ace08b93ba264b2e84` |
| 25 | `def` | [pathsHomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/pathshomrel--f539daaa8821b859948f204d.md) | 253 | `declaration-track:f539daaa8821b859948f204d5e38073b81deb848905d3e7b87e3129399e93dac` |
| 26 | `def` | [toQuotientPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/toquotientpaths--65c41d9e6930e0e5cd883a3c.md) | 258 | `declaration-track:65c41d9e6930e0e5cd883a3c7136dd47e2415e01d0646e7c5672220514c45439` |
| 27 | `def` | [quotientPathsTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/quotientpathsto--0432707bf9ce8a1c8533f428.md) | 267 | `declaration-track:0432707bf9ce8a1c8533f428596ca67e2ee34c0e4b3569a8a781d7942dcbf623` |
| 28 | `def` | [quotientPathsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbcf182d5ead5abe0d68bffa2fe21c955bf6c4aaea86ff397538c96e30f9ccbfa.lean/declarations/quotientpathsequiv--aec636ba413cb3d8bb1f58d4.md) | 272 | `declaration-track:aec636ba413cb3d8bb1f58d4dde9c10f5b050261c181f957b9b669fd8bff289c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
