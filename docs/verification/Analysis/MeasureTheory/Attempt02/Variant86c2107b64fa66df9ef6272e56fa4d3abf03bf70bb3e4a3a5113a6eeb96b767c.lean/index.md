# Verification target: GRWTSK.Analysis.MeasureTheory.Attempt02.Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1475bb2134e1d7be19d1499fd8b5f90b566794f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1475bb2134e1d7be19d1499fd8b5f90b566794f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/poweronset--bb7ef61e1a7a752557816760.md) | 25 | `declaration-track:bb7ef61e1a7a75255781676025ccc5de10d9b4954a051966653d6dd868c70176` |
| 2 | `def` | [powerWeight](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/powerweight--d4d27e7216f64a6a24644e45.md) | 28 | `declaration-track:d4d27e7216f64a6a24644e45bb5440df6a443d2c2b421b5a0568dd7f6ee5cdca` |
| 3 | `def` | [positiveOnsetAtom](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom--04730f296b9d00d0c8e370e6.md) | 31 | `declaration-track:04730f296b9d00d0c8e370e627171b736f3f75aebe2d5f6f7f61766be9bef5e2` |
| 4 | `def` | [positiveOnsetTail](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsettail--6fdc88d64f061c5e281b46f4.md) | 34 | `declaration-track:6fdc88d64f061c5e281b46f49ec2fe3ad7e8ff5438a652edf246f8bce32aeb23` |
| 5 | `theorem` | [powerOnset_pos](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/poweronset-pos--43c305f0512d6073da077bc2.md) | 37 | `result-track:43c305f0512d6073da077bc29540576dc687aa66cd4d30415828df425782bbd1` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/powerweight-nonneg--46767a01d72c03a42c60aada.md) | 41 | `result-track:46767a01d72c03a42c60aada0d0333854b5b22227bb5d6d134f42465edc32b20` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom-nonneg--77a21692e7dae7fffd3e48e8.md) | 46 | `result-track:77a21692e7dae7fffd3e48e8fb143f72a9cc0f29f19232e37979730fa38409bf` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom-measurable--0bd403c65974d7963cc97dcb.md) | 50 | `result-track:0bd403c65974d7963cc97dcbb1bdfd6bc8560e4c1ae2f0ab0df31334eafe4936` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom-integrable--0614594f42cc2e21173818b2.md) | 54 | `result-track:0614594f42cc2e21173818b2acec14c4b78b3e3946dcb4c8667b11d6642bf189` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom-integral--83cbd07058c178f9d1af4104.md) | 61 | `result-track:83cbd07058c178f9d1af410410c6c7c9787a7e1a7d254133452bef5956d18836` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom-eq-omitted--2b46d53a464098faf1bfc0ce.md) | 69 | `result-track:2b46d53a464098faf1bfc0cefc281097dce465e1b60b3b5452cd7e7850fae78f` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsetatom-le-zeromoment--438f5f2b36f855f6b661ce2d.md) | 77 | `result-track:438f5f2b36f855f6b661ce2d32a4342a7ce980dcdf1eed950eec068293bebc9b` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsettail-summable--7e0cb2de5826b83649b8b9be.md) | 84 | `result-track:7e0cb2de5826b83649b8b9be07628f2735d64c701c535e28c19dd8b55a394c38` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsettail-nonneg--043810d23affd0dc130abff6.md) | 89 | `result-track:043810d23affd0dc130abff60ed0b59cb7ea60a29a46d04947ca27047c93db0c` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsettail-measurable--e61fbc69e2701bb1b4cee89b.md) | 92 | `result-track:e61fbc69e2701bb1b4cee89bcb70f8597194a73ea03c71317436d5afcd3de582` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variant86c2107b64fa66df9ef6272e56fa4d3abf03bf70bb3e4a3a5113a6eeb96b767c.lean/declarations/positiveonsettail-eq-indicator--af6d0131b3291dee3c2876fb.md) | 95 | `result-track:af6d0131b3291dee3c2876fb654307f4dbf9635e22fc98391b1b4963a36a5e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
