# Verification target: GRWTSK.NumberTheory.Moebius.DyadicMeanMertensTwoPointPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8e744cbdb96b5038bb19c69ea1bfc2ab8e1fc53",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8e744cbdb96b5038bb19c69ea1bfc2ab8e1fc53`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicUniformMertensTwoPointPrefix`](../../../../mathematics/NumberTheory/Moebius/DyadicUniformMertensTwoPointPrefix.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MertensTwoPointShiftEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/mertenstwopointshiftenvelope--f98e9a90d5604f03ea82b852.md) | 35 | `declaration-track:f98e9a90d5604f03ea82b852f3e7218ccdc5c4d2b2d8f6fb1660664e7d1e12c9` |
| 2 | `def` | [DyadicMertensTwoPointMeanEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/dyadicmertenstwopointmeanenvelope--49fdc3c849ecc9ef181feb5f.md) | 42 | `declaration-track:49fdc3c849ecc9ef181feb5fe8e5199d65ae313c38f44c458b4470e2696e3bd8` |
| 3 | `def` | [SubpolynomialDyadicMeanMertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicmeanmertenstwopointprefix--dc731fec5a2caeccc3b776ae.md) | 51 | `declaration-track:dc731fec5a2caeccc3b776ae7149d610addb84396e6b7d6db79a1646e3e4819c` |
| 4 | `theorem` | [dyadicMertensTwoPointMeanEnvelope_of_uniform](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/dyadicmertenstwopointmeanenvelope-of-uniform--2bf22e9021e3e90f74fdddc0.md) | 59 | `result-track:2bf22e9021e3e90f74fdddc0c0dc90fea7bd411c08aabdb54aebc54fef3dc56a` |
| 5 | `theorem` | [finite_abel_prefix_mean](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/finite-abel-prefix-mean--2bae757ee04fc5dfc4d6518f.md) | 83 | `result-track:2bae757ee04fc5dfc4d6518f720ff00507191f22f59903f8561557eddd54db88` |
| 6 | `theorem` | [finite_weight_drop_telescope_mean](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/finite-weight-drop-telescope-mean--4d12182484880613e2c4a753.md) | 97 | `result-track:4d12182484880613e2c4a7538bcf65df55e0b528c2baf5ed716ed8bd6ba52328` |
| 7 | `theorem` | [abs_weighted_sum_le_of_shift_prefix_bound](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/abs-weighted-sum-le-of-shift-prefix-bound--edca522eca7f478f607e789b.md) | 110 | `result-track:edca522eca7f478f607e789bb218e808addcc60e47648cf2a9e4763af7bd1eff` |
| 8 | `theorem` | [abs_weightedMertensDyadicShiftContribution_le_of_shiftEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/abs-weightedmertensdyadicshiftcontribution-le-of-shiftenvelope--e54b7d929250511b211d069d.md) | 147 | `result-track:e54b7d929250511b211d069d961d354e6cbe1c6ea8f7d507d0aa5b3d96750ca5` |
| 9 | `theorem` | [abs_weightedMertensDyadicShiftPacket_le_of_meanEnvelope](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/abs-weightedmertensdyadicshiftpacket-le-of-meanenvelope--9f7e29fc6ba3c13dce0dac9c.md) | 197 | `result-track:9f7e29fc6ba3c13dce0dac9ca2f6287b1e22175f37705234b1f2ba041430f737` |
| 10 | `theorem` | [subpolynomialDyadicMeanMertensTwoPointPrefix_of_uniform](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicmeanmertenstwopointprefix-of-uniform--c80686aca5cc018e8f0046dd.md) | 229 | `result-track:c80686aca5cc018e8f0046dd188732a368fe544d8c379dab265f63d4331edb7c` |
| 11 | `theorem` | [subpolynomialDyadicMertensShiftPacket_of_meanTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/subpolynomialdyadicmertensshiftpacket-of-meantwopointprefix--34a1fba34e1b2cab9a8815b1.md) | 239 | `result-track:34a1fba34e1b2cab9a8815b163291446f1107c8381dd35c22a395599af9df1c0` |
| 12 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMeanMertensTwoPointPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/declarations/riemannhypothesis-of-subpolynomialdyadicmeanmertenstwopointprefix--2529dc53011c1765f2f559f1.md) | 255 | `result-track:2529dc53011c1765f2f559f10c29eed82cbd32b138c1114369a1c8f5a6c55339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
