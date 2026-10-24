# Verification target: GRWTSK.Algebra.Basic.Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd48246f0933581fb943de9f95c382ec5612e44d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd48246f0933581fb943de9f95c382ec5612e44d`.

Source path: `GRWTSK/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/mulleft--4f26409d92a47a1a32be69ff.md) | 31 | `declaration-track:4f26409d92a47a1a32be69ff3e6f1c887da20a43f63d9174c5d9a6033a4590d0` |
| 2 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/mulright--649e0702383c2c5063d21496.md) | 38 | `declaration-track:649e0702383c2c5063d21496f8884f62945f47e2d2353c18efc152e0b81e5739` |
| 3 | `theorem` | [map_bit0](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/map-bit0--1f2e4b41678686733a872965.md) | 52 | `result-track:1f2e4b41678686733a872965b45e971db22616e5e772a375b0d7e3c29724147f` |
| 4 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/mulleft--16c3cdfa74e73cd2d1132589.md) | 61 | `declaration-track:16c3cdfa74e73cd2d11325891f0ed0faf5970efbae12f16c58fa20d1803ecb86` |
| 5 | `theorem` | [coe_mulLeft](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/coe-mulleft--6be7180b684792ef9c8abbe4.md) | 68 | `result-track:6be7180b684792ef9c8abbe42fe4c87cb2f51c2daff40155b31d3dcd3bee6be5` |
| 6 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/mulright--b944c8f8c38c48e84fee17b4.md) | 74 | `declaration-track:b944c8f8c38c48e84fee17b4531105b028565d966b876ce6dc6dd7116c410968` |
| 7 | `theorem` | [coe_mulRight](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/coe-mulright--7fa04c6f189a0a46c0ed1a3d.md) | 81 | `result-track:7fa04c6f189a0a46c0ed1a3d16158b0e2f6d3899a7fd78644590eb0e5a5f9ca9` |
| 8 | `theorem` | [mulRight_apply](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/mulright-apply--e25e90247f07e1962f668e3b.md) | 86 | `result-track:e25e90247f07e1962f668e3b4e8e7fa0ed37cdabfa7bdf925e1457c896992944` |
| 9 | `instance` | [hasDistribNeg](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/hasdistribneg--fbd9def62682673fb150cc6d.md) | 101 | `declaration-track:fbd9def62682673fb150cc6d56a1d883b52f4a0a5de8d00a74dcdff92cdcf355` |
| 10 | `theorem` | [inv_neg'](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/inv-neg--a11eaac53a09cdfc7347e18e.md) | 113 | `result-track:a11eaac53a09cdfc7347e18ed38006e5654e286a1b668651cfd525c18a59be54` |
| 11 | `theorem` | [vieta_formula_quadratic](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/vieta-formula-quadratic--1b0cf099ad54d89e71d2ba03.md) | 131 | `result-track:1b0cf099ad54d89e71d2ba03ab8e8c77cc3a12d5480e1dd29cc50b0e919ecaf1` |
| 12 | `theorem` | [succ_ne_self](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/succ-ne-self--0f96561988d654e88177f220.md) | 141 | `result-track:0f96561988d654e88177f220e0a6a9d4ffeab640118a616da1ae5da3b671b228` |
| 13 | `theorem` | [pred_ne_self](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/pred-ne-self--6fdc1b07b2d3d5cf2192156a.md) | 145 | `result-track:6fdc1b07b2d3d5cf2192156a3bcc48617ebefc02e4bc7e8739e21647f047e258` |
| 14 | `lemma` | [IsLeftCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/isleftcancelmulzero-to-nozerodivisors--79962bb14b5c29a4f1d0571e.md) | 153 | `result-track:79962bb14b5c29a4f1d0571e83dba2f2ae4316df714c984ba9e72c2ea133fff8` |
| 15 | `lemma` | [IsRightCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/isrightcancelmulzero-to-nozerodivisors--8512fe1dac552f62d453e80e.md) | 165 | `result-track:8512fe1dac552f62d453e80e3f85390209cf84dd0ed7fc78e2363be342b07927` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/instance--e4c53a6acf843ce0fa57b0e9.md) | 177 | `declaration-track:e4c53a6acf843ce0fa57b0e968216c9af17e04acc6f89d40be09b2520b647258` |
| 17 | `lemma` | [NoZeroDivisors.to_isDomain](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/nozerodivisors-to-isdomain--6b8a81346739f3ae89144719.md) | 187 | `result-track:6b8a81346739f3ae89144719e511657ae23a541888f4e918fcaea1edb7d3c8df` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77.lean/declarations/instance--3e743f1827e07e128cf834dc.md) | 192 | `declaration-track:3e743f1827e07e128cf834dc4cd67234fea0e056b05db3055e49d3ce918c5942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
