# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b78b4148b5f62190ecb2fd9c634e11537d4841a3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b78b4148b5f62190ecb2fd9c634e11537d4841a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean.json)

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
| 1 | `theorem` | [biSup_measure_Iic](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/bisup-measure-iic--a1edc3881b47c89a2086edec.md) | 44 | `result-track:a1edc3881b47c89a2086edec076455a953c47e1661429e56f17a7fe8204d3445` |
| 2 | `theorem` | [tendsto_measure_Ico_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/tendsto-measure-ico-attop--12c66f6ef608f31cd12dbe7f.md) | 53 | `result-track:12c66f6ef608f31cd12dbe7fa7866717afcccd6dcf23ddf39b2ac436bbd89b88` |
| 3 | `theorem` | [tendsto_measure_Ioc_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/tendsto-measure-ioc-atbot--bb70e8b9740c492755d3de99.md) | 59 | `result-track:bb70e8b9740c492755d3de99631f87ff045ce11f51d11c3e9d5c8b90fbdebbb1` |
| 4 | `theorem` | [tendsto_measure_Iic_atTop](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/tendsto-measure-iic-attop--cf18db27733e187a306237a0.md) | 65 | `result-track:cf18db27733e187a306237a09ddf09cab5193cb5e93084b2c30b31d415d0bdbd` |
| 5 | `theorem` | [tendsto_measure_Ici_atBot](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/tendsto-measure-ici-atbot--0f3aa3c34a7059670b4be742.md) | 70 | `result-track:0f3aa3c34a7059670b4be7428f01ffff64e09956cfe6031d5a78f4b7389887d7` |
| 6 | `theorem` | [Iio_ae_eq_Iic'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/iio-ae-eq-iic--2ff2ed9c6aec93adf4e07309.md) | 80 | `result-track:2ff2ed9c6aec93adf4e0730914a366682e2826b3ce97decd9334d02844fd08c1` |
| 7 | `theorem` | [Ioi_ae_eq_Ici'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ioi-ae-eq-ici--c19670cc556e5246650b1c3a.md) | 83 | `result-track:c19670cc556e5246650b1c3a92bbae95871f4d093891ac1b1d6619bc600b30c5` |
| 8 | `theorem` | [Ioo_ae_eq_Ioc'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ioo-ae-eq-ioc--0bb985aae82dfc2cc9f6deb6.md) | 86 | `result-track:0bb985aae82dfc2cc9f6deb62e9d7046157ddf838ca75bce244b73964a4080a5` |
| 9 | `theorem` | [Ioc_ae_eq_Icc'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ioc-ae-eq-icc--a73b4dbb4e67e0183b359429.md) | 89 | `result-track:a73b4dbb4e67e0183b359429c2bd608e0978dcad8714672474b62d8274734390` |
| 10 | `theorem` | [Ioo_ae_eq_Ico'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ioo-ae-eq-ico--e8952c09ada7c8b4021db67d.md) | 92 | `result-track:e8952c09ada7c8b4021db67d9e15d068772a1ae07672560f767dde08f190e777` |
| 11 | `theorem` | [Ioo_ae_eq_Icc'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ioo-ae-eq-icc--2054e625d729866a903ba57a.md) | 95 | `result-track:2054e625d729866a903ba57aa93c76701f7a377a312dbc28a38ac2b16f0d0e96` |
| 12 | `theorem` | [Ico_ae_eq_Icc'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ico-ae-eq-icc--00a84195d8fc70da0a3c5488.md) | 98 | `result-track:00a84195d8fc70da0a3c54883a03ebb55e8e47c371271a1484d67858723c51f8` |
| 13 | `theorem` | [Ico_ae_eq_Ioc'](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant83677532f9039285036f6690fdeacd64b8a9c6b0c104ef1af179e045f45e87b0.lean/declarations/ico-ae-eq-ioc--955e5b506b8ef19aafb8aa0c.md) | 101 | `result-track:955e5b506b8ef19aafb8aa0c338a9c138c0c483d7df27234cbc7cdec839282e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
