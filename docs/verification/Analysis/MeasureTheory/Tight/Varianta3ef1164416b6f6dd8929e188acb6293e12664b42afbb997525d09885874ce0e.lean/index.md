# Verification target: GRWTSK.Analysis.MeasureTheory.Tight.Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "341eaa10bd3cfa56a243f7cf34a069df67ad1980",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `341eaa10bd3cfa56a243f7cf34a069df67ad1980`.

Source path: `GRWTSK/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.RegularityCompacts` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTightMeasureSet](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/istightmeasureset--2ef98b8b4d42231f9d358d6b.md) | 63 | `declaration-track:2ef98b8b4d42231f9d358d6b1b2329f3df38d06a0739bde7a5fd218409a7c329` |
| 2 | `lemma` | [isTightMeasureSet_iff_exists_isCompact_measure_compl_le](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/istightmeasureset-iff-exists-iscompact-measure-compl-le--fc5556eb9376b1ff500b8bea.md) | 68 | `result-track:fc5556eb9376b1ff500b8bea649ed4f3d5ecac5facc9269dff11816106459539` |
| 3 | `theorem` | [isTightMeasureSet_singleton_of_innerRegularWRT](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/istightmeasureset-singleton-of-innerregularwrt--d1322911699e4e3bd2d41484.md) | 80 | `result-track:d1322911699e4e3bd2d41484d8d098ab60c133d9c01d80b52fd1ef022734c25e` |
| 4 | `lemma` | [isTightMeasureSet_singleton_of_innerRegular](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/istightmeasureset-singleton-of-innerregular--9a2215454a253341781fa075.md) | 98 | `result-track:9a2215454a253341781fa0751a57d39f7f8bdc4e3738c86baad499e5c33b3085` |
| 5 | `theorem` | [isTightMeasureSet_singleton](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/istightmeasureset-singleton--98760c2e44747144aaf6d213.md) | 107 | `result-track:98760c2e44747144aaf6d2139ba396358787aa2b0d58de679ea0ebe2930b3559` |
| 6 | `lemma` | [of_compactSpace](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/of-compactspace--5bb19cd3e7be1a44bcb574d4.md) | 117 | `result-track:5bb19cd3e7be1a44bcb574d44f9c19143805746098641fc8426ef6a96519d9a6` |
| 7 | `lemma` | [subset](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/subset--a2a82d5c589a3f2a154d3c72.md) | 122 | `result-track:a2a82d5c589a3f2a154d3c72b3346e4ea5c7db9b42df9b441da4e87e70d52f96` |
| 8 | `lemma` | [union](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/union--0a70cd6ab55fca31a34398d5.md) | 127 | `result-track:0a70cd6ab55fca31a34398d5df9a3807d1db85cd6935605aa4f0608a9cffb237` |
| 9 | `lemma` | [inter](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/inter--6e20251da5f739698dee0ab2.md) | 133 | `result-track:6e20251da5f739698dee0ab282f985311d23b3413444bf0101a4004761fbcad8` |
| 10 | `lemma` | [map](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/map--adf7b3d8147a5e1d65a581e7.md) | 137 | `result-track:adf7b3d8147a5e1d65a581e702f1ea728190c687cd13226902787de00170a587` |
| 11 | `lemma` | [prodMk](../../../../../mathematics/Analysis/MeasureTheory/Tight/Varianta3ef1164416b6f6dd8929e188acb6293e12664b42afbb997525d09885874ce0e.lean/declarations/prodmk--7b9c2cc3859c20e41339c230.md) | 151 | `result-track:7b9c2cc3859c20e41339c23050812ffa44cc0af032b9fdf606af422aa644440f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
