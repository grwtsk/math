# Verification target: GRWTSK.Analysis.MeasureTheory.Lattice.Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc9a94ac3b9a628b730beca282261189c6c9d97",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc9a94ac3b9a628b730beca282261189c6c9d97`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MeasurableSup](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurablesup--d5cd0092521515ed06fc19ac.md) | 35 | `declaration-track:d5cd0092521515ed06fc19acd6510296992b163da93e3e93e7312d563733810d` |
| 2 | `class` | [MeasurableSup₂](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurablesup--36d246d100db33af25c30b39.md) | 41 | `declaration-track:36d246d100db33af25c30b39b8444c40c8ece7a353762163381d177a4c1d3f86` |
| 3 | `class` | [MeasurableInf](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurableinf--333e854cf9544a22aca72a15.md) | 50 | `declaration-track:333e854cf9544a22aca72a1539a96a5d1bf5cf7d53cbe76d961cd07a7bd2989a` |
| 4 | `class` | [MeasurableInf₂](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurableinf--38b9a61bb5219100072701a1.md) | 56 | `declaration-track:38b9a61bb5219100072701a17b27e53988d8c82f919efbfb0dc4cb5587928811` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/instance--675f4149e1f609e3d5a8e431.md) | 67 | `declaration-track:675f4149e1f609e3d5a8e431d29747922ef73ffb610849aa41d94cbcda59a787` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/instance--2d9efa0caa9ad56b5b2e626a.md) | 71 | `declaration-track:2d9efa0caa9ad56b5b2e626ab72984111df56853e4626aa2c11d8c0da69509a8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/instance--30df7ee42ec27e3a4d8f0c8e.md) | 75 | `declaration-track:30df7ee42ec27e3a4d8f0c8e3fc0770e7c96d979db93eb8bf84a75a5c1532cf8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/instance--627a22f721d6ba8d161364ab.md) | 79 | `declaration-track:627a22f721d6ba8d161364ab4a7b7467fbbb2377c5246f5b1d175a44b7d75922` |
| 9 | `theorem` | [Measurable.const_sup](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-const-sup--9d7efae795364af11d8d3aa9.md) | 96 | `result-track:9d7efae795364af11d8d3aa94bdbf3806372a77729ac9835e59d9e2cec5a142e` |
| 10 | `theorem` | [AEMeasurable.const_sup](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-const-sup--55fcbd1367f8f385be0cf84c.md) | 100 | `result-track:55fcbd1367f8f385be0cf84c1e606e8ce778cd7a6740a3229e2e0d054980ecb7` |
| 11 | `theorem` | [Measurable.sup_const](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-sup-const--306b47cd1a59dbae82331283.md) | 105 | `result-track:306b47cd1a59dbae8233128367c4bd5bd092b696068ca71c1926214b56319e39` |
| 12 | `theorem` | [AEMeasurable.sup_const](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-sup-const--009bcad530018891e62884a2.md) | 109 | `result-track:009bcad530018891e62884a2e35c8c1ab647e1cbe680670db08c25deb894048d` |
| 13 | `theorem` | [Measurable.sup'](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-sup--1c8612d8b7da13f522d85a62.md) | 120 | `result-track:1c8612d8b7da13f522d85a62fe348fb6a4dc9b30c42f0265e67772d6bac71307` |
| 14 | `theorem` | [Measurable.sup](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-sup--aefbe7261700194be85936fe.md) | 124 | `result-track:aefbe7261700194be85936feb5d272730388c3fc251cec4e28be96072efcab8a` |
| 15 | `theorem` | [AEMeasurable.sup'](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-sup--377fec1a4ebfee11483d1349.md) | 128 | `result-track:377fec1a4ebfee11483d1349d098b91689534a299378a7c187b84fef11c2b95f` |
| 16 | `theorem` | [AEMeasurable.sup](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-sup--f476807f2f5ef61a2bf17ef2.md) | 133 | `result-track:f476807f2f5ef61a2bf17ef2079fa0bdec93987cd1577590244420cb017f0078` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/instance--8c6e2f224e2d0c441e6e151f.md) | 137 | `declaration-track:8c6e2f224e2d0c441e6e151f09c4057a131955a0c99759db0ca0976088066c3c` |
| 18 | `theorem` | [Measurable.const_inf](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-const-inf--a978146a0246e99ebaca89ed.md) | 153 | `result-track:a978146a0246e99ebaca89eda19bb1d43164d9d2c8503008bc124bcef1631042` |
| 19 | `theorem` | [AEMeasurable.const_inf](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-const-inf--70613363cbee2bdccc19810e.md) | 157 | `result-track:70613363cbee2bdccc19810eeee7126e925889ff38a259a9b339a627869e4087` |
| 20 | `theorem` | [Measurable.inf_const](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-inf-const--bcd34c37cb00102fc8ddbdfe.md) | 162 | `result-track:bcd34c37cb00102fc8ddbdfee1be1ed67c8c08f1349f9cc5d7869b4f508ff2a3` |
| 21 | `theorem` | [AEMeasurable.inf_const](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-inf-const--20dd842e91a1a00c462810b3.md) | 166 | `result-track:20dd842e91a1a00c462810b390bd46ee766a4564e23e3e414b0170b64dddd33d` |
| 22 | `theorem` | [Measurable.inf'](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-inf--aa2bc2dab97ca62e516289c1.md) | 177 | `result-track:aa2bc2dab97ca62e516289c17120490d9b276df1cddef742ebd2227473f85662` |
| 23 | `theorem` | [Measurable.inf](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/measurable-inf--4fd585fd15f11ede976b2073.md) | 181 | `result-track:4fd585fd15f11ede976b2073054ac875ce39ca9173f77284466d46959eaea889` |
| 24 | `theorem` | [AEMeasurable.inf'](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-inf--176cbfbb7c4f353611ba03f9.md) | 185 | `result-track:176cbfbb7c4f353611ba03f9b76b20d3945043b89bdbfcd55d5f9305d2c12fcb` |
| 25 | `theorem` | [AEMeasurable.inf](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/aemeasurable-inf--536d92e95c68871f4bfef077.md) | 190 | `result-track:536d92e95c68871f4bfef077772a9c8b061b1f83a7e648fe87a2006c8b054a07` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/instance--6c3ae73d4ee8d5348f3bda28.md) | 194 | `declaration-track:6c3ae73d4ee8d5348f3bda28f95e7e69d21ec5aeb9ecc1a062d997d6d5462098` |
| 27 | `theorem` | [Finset.measurable_sup'](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/finset-measurable-sup--89ef600ad8e5ee2632db7a95.md) | 208 | `result-track:89ef600ad8e5ee2632db7a95215ce10162bb16338501bd505085802473b6adcc` |
| 28 | `theorem` | [Finset.measurable_range_sup'](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/finset-measurable-range-sup--59226f4e39206dd2d7c65d46.md) | 213 | `result-track:59226f4e39206dd2d7c65d46270ff6d0fe4a2aebd805a6a5bcbc86da542373fc` |
| 29 | `theorem` | [Finset.measurable_range_sup''](../../../../../mathematics/Analysis/MeasureTheory/Lattice/Variant30eb7166db12810681c42c30922a8e001ee019a246d95822a64d7e8075158ea3.lean/declarations/finset-measurable-range-sup--fd10dd61a07fd7656d357749.md) | 220 | `result-track:fd10dd61a07fd7656d3577493d367c58ebaeaf7357737f8badd180da7c49e8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
