# Verification target: GRWTSK.Analysis.Fourier.ZModSubsetSumCompletion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4e5279c2db9d681e84aba8f9359a406172b81bd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4e5279c2db9d681e84aba8f9359a406172b81bd`.

Source path: `GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModSubsetSumCompletion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModSubsetSum`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deletion_exposure_injective](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/deletion-exposure-injective--d9cac02d5d7e900b3614cc86.md) | 26 | `result-track:d9cac02d5d7e900b3614cc86e912bf3c807505536a6bac505b29327bad31d548` |
| 2 | `theorem` | [constrained_deletion_count](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/constrained-deletion-count--fbcb255c1624b8ebd243b20b.md) | 43 | `result-track:fbcb255c1624b8ebd243b20b221680f4be1230aefb8cc7f22f847cdbae08e1c7` |
| 3 | `theorem` | [subsetSumFiber_card_mul_remaining_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/subsetsumfiber-card-mul-remaining-le--89b85cd4d8b0465b13a7aeb6.md) | 75 | `result-track:89b85cd4d8b0465b13a7aeb6d406ac70f666ca38bff91ae948756d1fbca4d99b` |
| 4 | `theorem` | [subsetSumProbability_le_one_div_remaining](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/subsetsumprobability-le-one-div-remaining--eeb1fb73b058de14544e5cc7.md) | 91 | `result-track:eeb1fb73b058de14544e5cc7df938de415bdb0b9251f6a0fbd369d5dcba0721e` |
| 5 | `theorem` | [complement_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/complement-sum--74331a50f768dd30f9b33338.md) | 105 | `result-track:74331a50f768dd30f9b33338faeee607212dc08812057063505702f160b032db` |
| 6 | `theorem` | [subsetSumFiber_complement_mem](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/subsetsumfiber-complement-mem--4815358a839574a46671be47.md) | 109 | `result-track:4815358a839574a46671be47063013503ce69853b176d483e2975ae0f3e52f22` |
| 7 | `theorem` | [subsetSumFiber_complement_image](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/subsetsumfiber-complement-image--67cfb5cfcdeda114309d6817.md) | 121 | `result-track:67cfb5cfcdeda114309d681752af6d024369345d5455a800aff1a5eda4e9f8fc` |
| 8 | `theorem` | [subsetSumFiber_complement_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/subsetsumfiber-complement-card--2aa568ef81470d6a40f178a1.md) | 137 | `result-track:2aa568ef81470d6a40f178a159cab997846fcbf3e0cc6cc4f29b0633102fbdcc` |
| 9 | `theorem` | [subsetSumProbability_complement](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/declarations/subsetsumprobability-complement--f38a6913ce1889e9de169ba9.md) | 153 | `result-track:f38a6913ce1889e9de169ba96a56fae2417c72aa89714609e8ebbe9506133ec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
