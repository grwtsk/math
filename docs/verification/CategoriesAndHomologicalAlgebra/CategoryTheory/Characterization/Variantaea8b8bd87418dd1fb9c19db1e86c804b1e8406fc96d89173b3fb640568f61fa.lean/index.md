# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Characterization.Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deb0ba0adcbda9749960c136f060d75f4aee1723",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deb0ba0adcbda9749960c136f060d75f4aee1723`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Discrete.Colimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Discrete.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete--46d45bb5ac28db2a17317a03.md) | 43 | `declaration-track:46d45bb5ac28db2a17317a03d7eebc338caa718a899c095ba754c49b86a89e97` |
| 2 | `lemma` | [mem_locallyConstant_essImage_of_isColimit_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/mem-locallyconstant-essimage-of-iscolimit-mapcocone--a083475ef6e85e249b7e0235.md) | 51 | `result-track:a083475ef6e85e249b7e0235a0ceadad3203572152daa1e827183e34e663795c` |
| 3 | `abbrev` | [LocallyConstant.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/locallyconstant-adjunction--a67eea70f0b53220a482bfaa.md) | 69 | `declaration-track:a67eea70f0b53220a482bfaaed237caf796e444aefdd40ac62572ea04b2c2fea` |
| 4 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete-tfae--0d8419eaf710b6b54d5d9da7.md) | 77 | `result-track:0d8419eaf710b6b54d5d9da77963e9b18973d837f2c13c6d75ce7bcb7b7262a9` |
| 5 | `lemma` | [isDiscrete_iff_isDiscrete_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete-iff-isdiscrete-forget--c019f845fc168e21b20567a1.md) | 116 | `result-track:c019f845fc168e21b20567a15a43f237317e0b022fcb1c5fe661d982fa846d2a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/instance--e648deefe3c03dabbf06a3f1.md) | 121 | `declaration-track:e648deefe3c03dabbf06a3f1eb8e02093e1d3d220ea324683c341748d2ee598d` |
| 7 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete-tfae--852d90cc46ad7bd092802e2f.md) | 125 | `result-track:852d90cc46ad7bd092802e2f80a3ecb8b2a993d5b13565f761eedf3e4f8dd0d4` |
| 8 | `abbrev` | [IsDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete--bcd296589538e9581ecb5580.md) | 174 | `declaration-track:bcd296589538e9581ecb5580415bd1cef5d5da671ef281b0dc26de2dde51cc70` |
| 9 | `lemma` | [mem_locallyConstant_essImage_of_isColimit_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/mem-locallyconstant-essimage-of-iscolimit-mapcocone--586a332ee58d1127a2732f1e.md) | 180 | `result-track:586a332ee58d1127a2732f1e0c212883084ad4964167e8a0e2e9f97f7c7368d5` |
| 10 | `abbrev` | [LocallyConstant.adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/locallyconstant-adjunction--c5810a3f5c270ee5da0e7dd2.md) | 196 | `declaration-track:c5810a3f5c270ee5da0e7dd2b458879d9887fd7eaef27785ca5ba49ff9526984` |
| 11 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete-tfae--b9c555ddbef53d1d7b656368.md) | 202 | `result-track:b9c555ddbef53d1d7b656368a64c7c272461c78bcb8d3eb60dd43638d4ed3033` |
| 12 | `lemma` | [isDiscrete_iff_isDiscrete_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete-iff-isdiscrete-forget--5b5924b0ee888c26d8cf128b.md) | 234 | `result-track:5b5924b0ee888c26d8cf128b52564eabc2158ebee71ce970307a586c0228044a` |
| 13 | `theorem` | [isDiscrete_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantaea8b8bd87418dd1fb9c19db1e86c804b1e8406fc96d89173b3fb640568f61fa.lean/declarations/isdiscrete-tfae--e4db7fa58ac8806cc9f7bfce.md) | 240 | `result-track:e4db7fa58ac8806cc9f7bfce281a95f84eb27671cbdc3eea8a251be221e697f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
