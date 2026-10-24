# Verification target: GRWTSK.Topology.GeneralTopology.Convolution.Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12b77e28a883b1ce5f7dcdca88f5824ea0bd5b8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12b77e28a883b1ce5f7dcdca88f5824ea0bd5b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Normed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolution_eq_right](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/declarations/convolution-eq-right--8c4de1c33c56f52b1ca15b78.md) | 53 | `result-track:8c4de1c33c56f52b1ca15b781527cd024a2c982e513229c436800a59f31a40ad` |
| 2 | `theorem` | [normed_convolution_eq_right](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/declarations/normed-convolution-eq-right--9876cf45eb391511af58dcc4.md) | 61 | `result-track:9876cf45eb391511af58dcc457cae6917b2174f4889e72a52fb43a227f24f82b` |
| 3 | `theorem` | [dist_normed_convolution_le](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/declarations/dist-normed-convolution-le--899578bc3bd0b54a81744b10.md) | 71 | `result-track:899578bc3bd0b54a81744b101fc185f58b3043dcb3a7fbf7789480938423a410` |
| 4 | `theorem` | [convolution_tendsto_right](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/declarations/convolution-tendsto-right--f178bcdc155e2995f4f84dfd.md) | 83 | `result-track:f178bcdc155e2995f4f84dfdea6e7e1f897a700c00c038a657d4ff82252d0e2f` |
| 5 | `theorem` | [convolution_tendsto_right_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/declarations/convolution-tendsto-right-of-continuous--e2e38c48ac726a9349e72701.md) | 94 | `result-track:e2e38c48ac726a9349e72701e8cae2cd5fa1794e01b805433b74274d80984b90` |
| 6 | `theorem` | [ae_convolution_tendsto_right_of_locallyIntegrable](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variant72c3fc3a40876bf5f640d3d8dd18288e03d343a50beaefa021855059afeefcf1.lean/declarations/ae-convolution-tendsto-right-of-locallyintegrable--dc610fa95dd2611638df04ff.md) | 103 | `result-track:dc610fa95dd2611638df04ff4039c999fe8e59124ed3d72b0513398b32adb5be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
