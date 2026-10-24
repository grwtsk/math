# Verification target: GRWTSK.Analysis.MeasureTheory.ZeroOne.Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c524b48a7c53861c70411f74d632b4bddee922a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c524b48a7c53861c70411f74d632b4bddee922a`.

Source path: `GRWTSK/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean.json)

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
| 1 | `class` | [IsZeroOneMeasure](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/iszeroonemeasure--a66e3fd3eec9fc4ad100a4b5.md) | 37 | `declaration-track:a66e3fd3eec9fc4ad100a4b571316730fa2ebf70c6a31b75f4cd5ff0645889e8` |
| 2 | `lemma` | [Measure.zero_one](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/measure-zero-one--ed823082a3aa69f95c06efff.md) | 40 | `result-track:ed823082a3aa69f95c06efff53a05811a7c3c481723b48d98275cb82efed30ee` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/instance--74d3be003d9a6c2e2b2db7ff.md) | 51 | `declaration-track:74d3be003d9a6c2e2b2db7ff1a5e72b92de71b577d2da2e63761c191b31c9a11` |
| 4 | `lemma` | [exists_measure_eq_one_iff_measure_univ_eq_one](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/exists-measure-eq-one-iff-measure-univ-eq-one--9fae4eebd232468c056ef7c9.md) | 56 | `result-track:9fae4eebd232468c056ef7c9dab4d1aa2b34a507323d6622c309e57baec0922e` |
| 5 | `lemma` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/measure-univ--9fd3fc40225df3cfacbc2b4f.md) | 67 | `result-track:9fd3fc40225df3cfacbc2b4fd5335363fcec9562f87c9835a668530cfd18868a` |
| 6 | `lemma` | [measure_inter_eq_one](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/measure-inter-eq-one--91d9a4f2cc15a06d7db30953.md) | 70 | `result-track:91d9a4f2cc15a06d7db309539045e98c93aa75516c447b0e033e4fdde3bb0ce6` |
| 7 | `lemma` | [measure_inter_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/measure-inter-eq-prod--7f94937ce6645706c9f01421.md) | 89 | `result-track:7f94937ce6645706c9f0142124993c0007bf8ec5d16bcc7d0f74fca172794d3b` |
| 8 | `theorem` | [exists_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantcf26c32851f83542d444fd1d0bc178b7b08032f07dfcf2ec22f6d705e0b007f0.lean/declarations/exists-eq-dirac--70250712e1e4000273317985.md) | 98 | `result-track:70250712e1e4000273317985e1f7ad3184548d456b3f129f79e8abaddf9db0dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
