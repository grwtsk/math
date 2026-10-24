# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VitaliCaratheodory.Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fee31dded31ae41ac8cb7ef711a1fb91415f7a1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fee31dded31ae41ac8cb7ef711a1fb91415f7a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Regular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.EReal.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SimpleFunc.exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/simplefunc-exists-le-lowersemicontinuous-lintegral-ge--5f29c704a1391590d36bd76f.md) | 99 | `result-track:5f29c704a1391590d36bd76fe411bb5589b83988085201f67507be81800d2e6c` |
| 2 | `theorem` | [exists_le_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-le-lowersemicontinuous-lintegral-ge--d36a9e1622d9b3bcfac9f651.md) | 166 | `result-track:d36a9e1622d9b3bcfac9f651576f13a415b5b410a10fc43c6d5fce2b804989dd` |
| 3 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge--7c1b16441df667af572ab2fa.md) | 203 | `result-track:7c1b16441df667af572ab2fa7eea993136a767c323c6d84ef486a5b75f6ac313` |
| 4 | `theorem` | [exists_lt_lowerSemicontinuous_lintegral_ge_of_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-lt-lowersemicontinuous-lintegral-ge-of-aemeasurable--cd6818374698a87853085128.md) | 229 | `result-track:cd6818374698a87853085128a4bdd596fae1619ef351f0299e7943c3e1602277` |
| 5 | `theorem` | [exists_lt_lowerSemicontinuous_integral_gt_nnreal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-lt-lowersemicontinuous-integral-gt-nnreal--214a50a27f4b9c0e7b34be6d.md) | 266 | `result-track:214a50a27f4b9c0e7b34be6d10313fbcc7288f8efebf9b4909ce45074779bc93` |
| 6 | `theorem` | [SimpleFunc.exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/simplefunc-exists-uppersemicontinuous-le-lintegral-le--67ea877005fd169d7bfc2347.md) | 317 | `result-track:67ea877005fd169d7bfc234793b6afa50784a1611fc0dd1bd74b728ffc4c86ca` |
| 7 | `theorem` | [exists_upperSemicontinuous_le_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-uppersemicontinuous-le-lintegral-le--72cb9c0c88a718a4d98b61bf.md) | 382 | `result-track:72cb9c0c88a718a4d98b61bf36d4c90cea98bb4c855269d6463b58260975f579` |
| 8 | `theorem` | [exists_upperSemicontinuous_le_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-uppersemicontinuous-le-integral-le--38b50b05679e93c5e25e731b.md) | 414 | `result-track:38b50b05679e93c5e25e731b890ee5d4f70922400b82bb185a17105d7ab3b04d` |
| 9 | `theorem` | [exists_lt_lowerSemicontinuous_integral_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-lt-lowersemicontinuous-integral-lt--b28fd990ae94c895d486c2ed.md) | 448 | `result-track:b28fd990ae94c895d486c2ed54a52374ab25f71b8c9fb8de5e35233e29113608` |
| 10 | `theorem` | [exists_upperSemicontinuous_lt_integral_gt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant7fafff29682f0002992187efaefd9ebce9ece72ccae2adc049d81eb4313f446a.lean/declarations/exists-uppersemicontinuous-lt-integral-gt--4e75d4199af91f82a1ab3fe6.md) | 526 | `result-track:4e75d4199af91f82a1ab3fe632750e395eae3273bd6842c29a483a86e4f6305c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
