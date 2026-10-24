# Verification target: GRWTSK.Analysis.Fourier.ZModSubsetSum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e9d5844046328d25132c83c7003c192e820123b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModSubsetSum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e9d5844046328d25132c83c7003c192e820123b`.

Source path: `GRWTSK/Analysis/Fourier/ZModSubsetSum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModSubsetSum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.ZMod` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [probability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/probability--fbc5801409900cc780da530d.md) | 23 | `declaration-track:fbc5801409900cc780da530df21dff9ffe44703682a79e418d967226b466c698` |
| 2 | `theorem` | [probability_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/probability-nonneg--14d8c584b62308b4ee67909d.md) | 26 | `result-track:14d8c584b62308b4ee67909da25553ce52873783a5a595bcf12af00c73aa2931` |
| 3 | `theorem` | [probability_le_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/probability-le-one--9ab21d98bb1c2b7af4c0b4b1.md) | 30 | `result-track:9ab21d98bb1c2b7af4c0b4b17ab357abb0100a9ba1d5c58f0b391cec8dd78972` |
| 4 | `theorem` | [probability_self](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/probability-self--cd174326453635d78b5cb3d5.md) | 35 | `result-track:cd174326453635d78b5cb3d5cc1a0ce4f62865f01164c755eb195c08f63de0b5` |
| 5 | `theorem` | [probability_union_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/probability-union-le--c9dd539add3db15c59c9073e.md) | 39 | `result-track:c9dd539add3db15c59c9073e9a12c33533679148e57aa6a873a3ba472fe667dd` |
| 6 | `theorem` | [exists_of_probability_pos](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/exists-of-probability-pos--de4d089a2bfcdcbed02e826b.md) | 49 | `result-track:de4d089a2bfcdcbed02e826bd670d9fc6422ba0346d621be8304a42056af2b1a` |
| 7 | `theorem` | [three_failure_good_mass](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/three-failure-good-mass--5ddfc55aaea9ce300c6598ee.md) | 60 | `result-track:5ddfc55aaea9ce300c6598ee46073ca81ec0525d9653332896d77feadea1a413` |
| 8 | `def` | [subsetSumFiber](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/subsetsumfiber--d618e48d72bfaf37b2194db9.md) | 83 | `declaration-track:d618e48d72bfaf37b2194db952dff8097ca3f29da5cc9c1acb572dccb9af4cd6` |
| 9 | `def` | [subsetSumProbability](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/subsetsumprobability--545dcc33913a71cd5c7122ea.md) | 87 | `declaration-track:545dcc33913a71cd5c7122ea1445d63c0959306afa39acc878769027254cf36c` |
| 10 | `theorem` | [subsetSumFiber_mem](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/subsetsumfiber-mem--602f6c3fa8137dc3b0027ec9.md) | 91 | `result-track:602f6c3fa8137dc3b0027ec9e74f238cc851bf1ced091873cd991521de4d907c` |
| 11 | `theorem` | [fixed_size_space_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/fixed-size-space-card--db6e1c9595930099db0959c9.md) | 97 | `result-track:db6e1c9595930099db0959c967ee41fb565fa5610895f43ca475c904549b77b2` |
| 12 | `theorem` | [fourier_inversion](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/fourier-inversion--68bd44cfa4ee0fb1d7362b20.md) | 101 | `result-track:68bd44cfa4ee0fb1d7362b209a232961e69d12ec5a6188d07ec7c195ce9c55fe` |
| 13 | `theorem` | [fourier_mass_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/fourier-mass-bound--9b0c563249a59016e8c63367.md) | 108 | `result-track:9b0c563249a59016e8c633678146a76582181ab487ad2140949e4152f6e550ce` |
| 14 | `theorem` | [completion_fiber_card_le_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/completion-fiber-card-le-one--bff1926b18a32edd2d22fff7.md) | 120 | `result-track:bff1926b18a32edd2d22fff70fac3a7dc65ad9707f192a776302b5f858064754` |
| 15 | `theorem` | [completion_probability_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/completion-probability-bound--bd047efa567bf63cd7c4a25c.md) | 129 | `result-track:bd047efa567bf63cd7c4a25c2637cb78cd4ae38912aed0f5851eb85a926614e2` |
| 16 | `theorem` | [subsetSumProbability_total](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/subsetsumprobability-total--44615429af976f976aeea685.md) | 138 | `result-track:44615429af976f976aeea6855117c8734cd1654eedd4d4dd53dc2d0b544b5149` |
| 17 | `theorem` | [fourier_nontrivial_mass_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/fourier-nontrivial-mass-bound--128c3c9eab7fe4238ba8ed5b.md) | 158 | `result-track:128c3c9eab7fe4238ba8ed5b42575c467279fb0286cf946f137698c0edcac2ba` |
| 18 | `def` | [permutationSpace](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/permutationspace--cdccad818ca7906f7a2ece1d.md) | 170 | `declaration-track:cdccad818ca7906f7a2ece1d0d219d8f0f89474eb79d5319f1efaed290788318` |
| 19 | `theorem` | [permutationSpace_nonempty](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/permutationspace-nonempty--47f130f14201babc04f1a6a0.md) | 172 | `result-track:47f130f14201babc04f1a6a089f98100feb5908013da34139dbceb169f678538` |
| 20 | `def` | [exposedPrefix](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/exposedprefix--1652280852d0dfa84a769c7c.md) | 176 | `declaration-track:1652280852d0dfa84a769c7c208814b4b25961281fe9bb552ba62fe6a2df34e1` |
| 21 | `theorem` | [exposedPrefix_mono](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/exposedprefix-mono--dc870d67c32422c9dc6d6fb9.md) | 179 | `result-track:dc870d67c32422c9dc6d6fb9e56a2acd411bb39a93b267b153938aaebae9c282` |
| 22 | `theorem` | [exposedPrefix_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSum.lean/declarations/exposedprefix-zero--f56c0798464a28161402e6eb.md) | 188 | `result-track:f56c0798464a28161402e6eb11fa3184cc0eaa96452a9334d2b69defcecb3cb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
