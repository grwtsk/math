# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Normed.Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8426243a8b556cc84511d1eacc240a612c0f661",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8426243a8b556cc84511d1eacc240a612c0f661`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/normed--3cf47f59ec2041601602f9e9.md) | 28 | `declaration-track:3cf47f59ec2041601602f9e935c63a2039ce5a21162b6252f07b369d3a040b22` |
| 2 | `theorem` | [normed_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/normed-def--5a273fc392ff3fae4170b029.md) | 30 | `result-track:5a273fc392ff3fae4170b02978b9048f97a967a81be3ca733177595f8b4cbfa6` |
| 3 | `theorem` | [nonneg_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/nonneg-normed--66214c383e3b38118261b73d.md) | 33 | `result-track:66214c383e3b38118261b73dd5816598f1b362b776c209727716ec5642050718` |
| 4 | `theorem` | [contDiff_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/contdiff-normed--d41911727a3397c21d089fee.md) | 36 | `result-track:d41911727a3397c21d089fee494c71cbdf657a6f49bb7b80fabacbc80b692a28` |
| 5 | `theorem` | [continuous_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/continuous-normed--358e30a51168156d17131bbf.md) | 39 | `result-track:358e30a51168156d17131bbf5eea471daad9890cb81ce7ec982e36fe6f3f0b0a` |
| 6 | `theorem` | [normed_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/normed-sub--f657c14bded6b8228fc09229.md) | 42 | `result-track:f657c14bded6b8228fc092295b257354fe0debfaa1b407b5c7a8da6ab1037a77` |
| 7 | `theorem` | [normed_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/normed-neg--f5334abe238138c69c7edc6d.md) | 45 | `result-track:f5334abe238138c69c7edc6d706aaaf8214a69b15698a929340b21b1c9c104ba` |
| 8 | `theorem` | [integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/integrable--f4a6f60a933ee8d7aea7774a.md) | 50 | `result-track:f4a6f60a933ee8d7aea7774adc19098c6407ca1d74953b7d455fdaa94fc7a17e` |
| 9 | `theorem` | [integrable_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/integrable-normed--8ae7574455fd6424e33e76c5.md) | 53 | `result-track:8ae7574455fd6424e33e76c5d43ad1f9ea84f98d17f4fa263c0f421bc1920daa` |
| 10 | `theorem` | [integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/integral-pos--c61017c85f9bf6481dde604a.md) | 59 | `result-track:c61017c85f9bf6481dde604abba55ba86f1d8f9c0cac140fbdc554561743eb5e` |
| 11 | `theorem` | [integral_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/integral-normed--b94909538c52b8a856f86207.md) | 64 | `result-track:b94909538c52b8a856f86207b1826d9b5ef4420e1491d3fd7b5be6e4df0269df` |
| 12 | `theorem` | [support_normed_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/support-normed-eq--76317ee4b88fd9bae1e39008.md) | 68 | `result-track:76317ee4b88fd9bae1e39008e8e5de7487aab6fdf2f0e0d61010d125d9108870` |
| 13 | `theorem` | [tsupport_normed_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/tsupport-normed-eq--d0728986c03fc23317b017ae.md) | 72 | `result-track:d0728986c03fc23317b017aebb6b3cca3fec10d07274ff34e925ca81ed8d47de` |
| 14 | `theorem` | [hasCompactSupport_normed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/hascompactsupport-normed--f7bd3ee743aa00da16929b4b.md) | 75 | `result-track:f7bd3ee743aa00da16929b4bb199cd92ee8057354add6afa1a4b5e8b718d388c` |
| 15 | `theorem` | [tendsto_support_normed_smallSets](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/tendsto-support-normed-smallsets--0e441d4308bf1325a4446d78.md) | 78 | `result-track:0e441d4308bf1325a4446d788fc0752a15db3c190522881f9849b0eb2e7ea02c` |
| 16 | `theorem` | [integral_normed_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/integral-normed-smul--ee31f747ef8caad5d85976b4.md) | 90 | `result-track:ee31f747ef8caad5d85976b4c4fc233df81a5cc7d903ecd066972f63865a8d2e` |
| 17 | `theorem` | [measure_closedBall_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/measure-closedball-le-integral--f2928b10b9b263c1cdd3d029.md) | 98 | `result-track:f2928b10b9b263c1cdd3d0290691850519cc383a6de531b36e9a9ed55bf41ccd` |
| 18 | `theorem` | [normed_le_div_measure_closedBall_rIn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/normed-le-div-measure-closedball-rin--c84c5c44ecc24a6cb286cd2e.md) | 104 | `result-track:c84c5c44ecc24a6cb286cd2e8bf39c609509e91a10bc8b456a47195f16d85a33` |
| 19 | `theorem` | [integral_le_measure_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/integral-le-measure-closedball--5b6b63646f28df3fcf646376.md) | 112 | `result-track:5b6b63646f28df3fcf646376f6cb9a0c8a5a3bd6aa7886eecffcdb439797c0c2` |
| 20 | `theorem` | [measure_closedBall_div_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/measure-closedball-div-le-integral--97443cc10f7a35c149fd85c8.md) | 122 | `result-track:97443cc10f7a35c149fd85c8b78a22624b0d3d15e1a39d6f71a47b311915dbf8` |
| 21 | `theorem` | [normed_le_div_measure_closedBall_rOut](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Normed/Variant4b456f7fe1b89b123e3ba4cc93c7442a8dbd534133cfaab7e8b28396de278ee6.lean/declarations/normed-le-div-measure-closedball-rout--6e837364390481af888dc718.md) | 133 | `result-track:6e837364390481af888dc718ff537ae3912837f24150ef73107b5f1281fc95a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
