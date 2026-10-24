# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "855304b0778653b77043cd653e3cc3556634cf8a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `855304b0778653b77043cd653e3cc3556634cf8a`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generateFrom_prod_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/generatefrom-prod-eq--799e5db9365439d634b67c23.md) | 33 | `result-track:799e5db9365439d634b67c2380c97dc58931d6025a65dbfd868a8347c38f4f36` |
| 2 | `theorem` | [generateFrom_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/generatefrom-eq-prod--8c151855ff0f1a9ece0770b1.md) | 62 | `result-track:8c151855ff0f1a9ece0770b199d2698fd10623fd3591790f9c2357b1c4bf0023` |
| 3 | `lemma` | [generateFrom_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/generatefrom-prod--4896598902b7865b6722819c.md) | 69 | `result-track:4896598902b7865b6722819c4b21a8cd1669d9e988024f06200af307478db7ed` |
| 4 | `lemma` | [isPiSystem_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/ispisystem-prod--f518a65678cda01d7255bf81.md) | 76 | `result-track:f518a65678cda01d7255bf8194cc78e4f8441371ec66aade2dd58f63633ad07d` |
| 5 | `lemma` | [MeasurableEmbedding.prodMap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/measurableembedding-prodmap--e12bf3f1897f862642e9946b.md) | 80 | `result-track:e12bf3f1897f862642e9946b277620fa15d9ed8b211c7ea0aebe5655de248ab8` |
| 6 | `lemma` | [MeasurableEmbedding.prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/measurableembedding-prodmk-left--1c312814e5b289afbe70ddfe.md) | 104 | `result-track:1c312814e5b289afbe70ddfe903b2bf606dc48fb0e4ecdce4cf4cb40c9f781cd` |
| 7 | `lemma` | [measurableEmbedding_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/measurableembedding-prodmk-left--4083fa7ca25c5b7e35a6b982.md) | 122 | `result-track:4083fa7ca25c5b7e35a6b982fe6bf688c2351cae0a988073d4017148e0ff48aa` |
| 8 | `lemma` | [MeasurableEmbedding.prodMk_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/measurableembedding-prodmk-right--f8ffdfe798db28907b8faa14.md) | 129 | `result-track:f8ffdfe798db28907b8faa14db515c5bbef84342f332d8d58b9dd80d26b9c929` |
| 9 | `lemma` | [measurableEmbedding_prod_mk_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/declarations/measurableembedding-prod-mk-right--69a27dd364aa337592f06ae6.md) | 138 | `result-track:69a27dd364aa337592f06ae6c9a53f2e720859ec0049e32f9146aec62737b16b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
