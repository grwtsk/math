# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b833f2c17cf7b5f1bb87d34ee67802462c7b3f7d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b833f2c17cf7b5f1bb87d34ee67802462c7b3f7d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean.json)

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
| 1 | `lemma` | [isPullback_equalizer_prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/ispullback-equalizer-prod--88a0b988d51bf6a2415e0679.md) | 35 | `result-track:88a0b988d51bf6a2415e06795585653721ed7a47333c3920031edae3e8277cef` |
| 2 | `lemma` | [isPushout_coequalizer_coprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/ispushout-coequalizer-coprod--32ade9688138a615bf531521.md) | 48 | `result-track:32ade9688138a615bf531521ac2b165246198ee0405a0e2c473aad82118bf24f` |
| 3 | `def` | [equalizerPullbackMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/equalizerpullbackmapiso--9abf74117afa817a205adc2c.md) | 66 | `declaration-track:9abf74117afa817a205adc2c5d2a4fbce864fb795ea916154504c1e138a8487c` |
| 4 | `lemma` | [equalizerPullbackMapIso_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/equalizerpullbackmapiso-hom-fst--6a9be6b5595a03ef7987568c.md) | 95 | `result-track:6a9be6b5595a03ef7987568c2bebd7d5e649c0cc54bc804a6c5e2acac94a6e08` |
| 5 | `lemma` | [equalizerPullbackMapIso_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/equalizerpullbackmapiso-hom-snd--b5838e88274af5f06442189d.md) | 102 | `result-track:b5838e88274af5f06442189d3e5b5cdf77785941ab11889c30ac9b09fd25b405` |
| 6 | `lemma` | [equalizerPullbackMapIso_inv_ι_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/equalizerpullbackmapiso-inv-fst--4adc0d8eb003c09aa7e06256.md) | 109 | `result-track:4adc0d8eb003c09aa7e062568535fdcbab974a4b8cb4fff8f991cf661afe93a6` |
| 7 | `lemma` | [equalizerPullbackMapIso_inv_ι_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant4f89dba986842bf424271fca16b262f9a5ad07c65b1897537f195d95025af81f.lean/declarations/equalizerpullbackmapiso-inv-snd--5fafb199dbc444bf42e8f9a3.md) | 116 | `result-track:5fafb199dbc444bf42e8f9a36557ad2cfa0fa59c9e1b6d3b5c91f2be00de17ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
