# Verification target: GRWTSK.Analysis.MeasureTheory.FactorsThrough.Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bb1c098a421eede4024b267f137cc7075dc468b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bb1c098a421eede4024b267f137cc7075dc468b`.

Source path: `GRWTSK/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Polish.StronglyMeasurable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Process.Filtration` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.Measurable.factorsThrough](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasurablefactorsthrough-variant5--a788e40a5e7263da6ef8cfd5.md) | 41 | `result-track:a788e40a5e7263da6ef8cfd5a39621b0304b93ee5319708aab47d5f7b168e0f2` |
| 2 | `theorem` | [StronglyMeasurable.factorsThrough](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/stronglymeasurable-factorsthrough--484f30256d60f9b0c74626b8.md) | 53 | `result-track:484f30256d60f9b0c74626b88b920ad38c8b4c373e33ab75b9f43b283a3749ca` |
| 3 | `theorem` | [StronglyMeasurable.exists_eq_measurable_comp](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/stronglymeasurable-exists-eq-measurable-comp--18713e2451d784821d8c07aa.md) | 61 | `result-track:18713e2451d784821d8c07aaec26363e1835b487c037b964b6cae7e3296b0d70` |
| 4 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.Measurable.exists_eq_measurable_comp](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasurablefactorsthrough-variant5--08d6f66a76bb00742979f38c.md) | 82 | `result-track:08d6f66a76bb00742979f38c53cad6e9b3037ad3f1805fbb9de39273c3a1457a` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.Measurable.dependsOn_of_piLE](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasurablefactorsthrough-variant5--a2b7d80d5b73b4613e999663.md) | 99 | `result-track:a2b7d80d5b73b4613e999663d3789f8fe6516765cecc344b146359370de5cbba` |
| 6 | `theorem` | [StronglyMeasurable.dependsOn_of_piLE](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/stronglymeasurable-dependson-of-pile--150b52cc0ee9f20b4f451355.md) | 105 | `result-track:150b52cc0ee9f20b4f45135581da7f7e77d0eb02df1ab1c3f671b4162be11724` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant546d00e5bd2024db416a12c06579458749848663221a065c73917345b8704553.Measurable.dependsOn_of_piFinset](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasurablefactorsthrough-variant5--23b3a57a69637d127e8ed5b6.md) | 117 | `result-track:23b3a57a69637d127e8ed5b6127b1a5e7106d817df22152d203081a6c2d6911b` |
| 8 | `theorem` | [StronglyMeasurable.dependsOn_of_piFinset](../../../../../mathematics/Analysis/MeasureTheory/FactorsThrough/Variante96c28083ffe643445843055624112de892f4d5e51caee86b0febe7043f8acac.lean/declarations/stronglymeasurable-dependson-of-pifinset--dd6b89e3537c181e76e9b8ed.md) | 123 | `result-track:dd6b89e3537c181e76e9b8edf5fab5727cd527627470e21261b6ced3a4e3fe90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
