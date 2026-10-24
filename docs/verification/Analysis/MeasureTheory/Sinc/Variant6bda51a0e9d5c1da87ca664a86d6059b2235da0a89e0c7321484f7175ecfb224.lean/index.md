# Verification target: GRWTSK.Analysis.MeasureTheory.Sinc.Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19a421b63d2c4641772b39c8ba2fdb65bcdab732",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19a421b63d2c4641772b39c8ba2fdb65bcdab732`.

Source path: `GRWTSK/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [measurable_sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/measurable-sinc--1796ced5412abdfb7d4872f5.md) | 35 | `result-track:1796ced5412abdfb7d4872f50e5b2835486171ed1be02127768702738a1390e3` |
| 2 | `lemma` | [stronglyMeasurable_sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/stronglymeasurable-sinc--40510262657ddfe3ab2b6512.md) | 38 | `result-track:40510262657ddfe3ab2b65120479f1f5ee08e994e705b4a26a5d5404ca1bb513` |
| 3 | `lemma` | [integrable_sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/integrable-sinc--732a388f2a24baf61ce36004.md) | 41 | `result-track:732a388f2a24baf61ce360042607a0cfcf43c75267acea7f41a31c1915c68424` |
| 4 | `theorem` | [Measurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/measurable-sinc--bf3a9d4006f1cca3b045317e.md) | 52 | `result-track:bf3a9d4006f1cca3b045317e8c1823f33948af41d9096786eddb2d54fc789055` |
| 5 | `theorem` | [AEMeasurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/aemeasurable-sinc--7cdf152a956da5cc7860a721.md) | 56 | `result-track:7cdf152a956da5cc7860a7212174be16b80aa04a6c189200203f8f00c87376bc` |
| 6 | `theorem` | [MeasureTheory.StronglyMeasurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/measuretheory-stronglymeasurable-sinc--159d2eec7a2a29687e6600af.md) | 60 | `result-track:159d2eec7a2a29687e6600af5ca8f518aad3d5c86721a6127ec3a3e57dcc4618` |
| 7 | `theorem` | [MeasureTheory.AEStronglyMeasurable.sinc](../../../../../mathematics/Analysis/MeasureTheory/Sinc/Variant6bda51a0e9d5c1da87ca664a86d6059b2235da0a89e0c7321484f7175ecfb224.lean/declarations/measuretheory-aestronglymeasurable-sinc--92a2f0a7177d9d4fd628ea23.md) | 65 | `result-track:92a2f0a7177d9d4fd628ea23c1f3a1df2533102d14903a14b4be6ac1b3d3763b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
