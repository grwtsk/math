# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousLinearMap.Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3213595b32be4d5cc6e5c9746d206229e248bc09",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3213595b32be4d5cc6e5c9746d206229e248bc09`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable--9d013532f4d5e437f69af5bc.md) | 27 | `result-track:9d013532f4d5e437f69af5bcd96246c5bff096bea42cdc0570acfb1d36190f34` |
| 2 | `theorem` | [measurable_comp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable-comp--109f267c3ea6919b8c68ca78.md) | 31 | `result-track:109f267c3ea6919b8c68ca7859307bff096ccf026c719b675be86a3407303f39` |
| 3 | `instance` | [instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/instmeasurablespace--49b1f0e5e831a7a60dd7a985.md) | 43 | `declaration-track:49b1f0e5e831a7a60dd7a985b9a2a0432b76a1cb7aa8f8d841daba4cf5cbf0a7` |
| 4 | `instance` | [instBorelSpace](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/instborelspace--fe11b97bf1760799bd44225d.md) | 46 | `declaration-track:fe11b97bf1760799bd44225d268b620dd295bd9a769a6f5818451439e5cbe1a4` |
| 5 | `theorem` | [measurable_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable-apply--891f00523448ad6d1efe2fae.md) | 50 | `result-track:891f00523448ad6d1efe2fae733751ac5c7592fadf350a046022312e11bca0d4` |
| 6 | `theorem` | [measurable_apply'](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable-apply--b23a9600eb72dded094775f7.md) | 55 | `result-track:b23a9600eb72dded094775f7e9339e00be329c81728f0a15e9ede1dff8719bc3` |
| 7 | `theorem` | [measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable-coe--0a88bf0ef5068ee5e5abdc8a.md) | 60 | `result-track:0a88bf0ef5068ee5e5abdc8a347485828a8f42f922036303f913ac54faf4b21d` |
| 8 | `theorem` | [Measurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable-apply-continuouslinearmap--6fc8bdd2a1d57c0c5ae6e363.md) | 73 | `result-track:6fc8bdd2a1d57c0c5ae6e363e3f2dcf566c430d5ab2cd057002d594e05b69409` |
| 9 | `theorem` | [AEMeasurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/aemeasurable-apply-continuouslinearmap--a71509d31123f65cda07aa60.md) | 78 | `result-track:a71509d31123f65cda07aa60c20998088ff91de8edf719388a544ed39f15bfb1` |
| 10 | `theorem` | [measurable_smul_const](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/measurable-smul-const--c46edbafa21a1fe6f42f452b.md) | 90 | `result-track:c46edbafa21a1fe6f42f452bdcb81b643bf73a9269a26af727cd5c5b75757726` |
| 11 | `theorem` | [aemeasurable_smul_const](../../../../../mathematics/Analysis/MeasureTheory/ContinuousLinearMap/Variant8969c96729c69b236c6614e23de026940c40407decc245c5792d9cd9f8c3c638.lean/declarations/aemeasurable-smul-const--6ff0c8c85e08db6bf8f0b058.md) | 94 | `result-track:6ff0c8c85e08db6bf8f0b058e21e3e4caf530996ec78170534fe37220e9b9ea8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
