# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BridgeFourier.Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80cd2bb294916ac2f8306ba7d27a137ca245540d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80cd2bb294916ac2f8306ba7d27a137ca245540d`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_eq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/sourcefourier-eq-fourier--1f044bd1373648f12c9a9bcf.md) | 35 | `result-track:1f044bd1373648f12c9a9bcf171a03516871ed09f543be65dd9b555b0a6957fd` |
| 2 | `theorem` | [deriv_complexification](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/deriv-complexification--6b004a9e62098ce4cbc4e66a.md) | 49 | `result-track:6b004a9e62098ce4cbc4e66ae6f7ab0c4cb59bc843146e2479b46093359915a6` |
| 3 | `theorem` | [sourceFourier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/sourcefourier-norm-le--98ae55a618b4f8df9a9d15a2.md) | 55 | `result-track:98ae55a618b4f8df9a9d15a2fb8d7823c3ec15d005e1026322960827d19efa2b` |
| 4 | `theorem` | [sourceFourier_deriv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/sourcefourier-deriv--50b9799ce813ddf6d93e992f.md) | 65 | `result-track:50b9799ce813ddf6d93e992f1707ff99f5940d011d6d0095a3a4d717ba5e34a4` |
| 5 | `theorem` | [sourceFourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/sourcefourier-frequency-bound--70693f15c7e6b0f907869c68.md) | 84 | `result-track:70693f15c7e6b0f907869c68d5e1b0cb1c1a8424576503fe71cb2b61a97a745c` |
| 6 | `theorem` | [sourceFourier_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/sourcefourier-continuous--d7758d68f31f50b6c97cab02.md) | 92 | `result-track:d7758d68f31f50b6c97cab02c48848d702d2b3847b18cf2648c2e2be40abd8d1` |
| 7 | `theorem` | [log_fourier_majorant](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/log-fourier-majorant--60744d84bdc16831ea9564db.md) | 104 | `result-track:60744d84bdc16831ea9564dbd34cb816beafcc6b736134edc26ba7d640542e9e` |
| 8 | `theorem` | [logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/logarithmic-fourier-integrable--4d78ea03df860b9920d3e98b.md) | 141 | `result-track:4d78ea03df860b9920d3e98bdcdac379dd4f1d544b8e9e4bf5ac4a5d1578c337` |
| 9 | `theorem` | [fourier_normSq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/fourier-normsq-integrable--f540de90470cabc8e76af920.md) | 166 | `result-track:f540de90470cabc8e76af92095a5d68f790c48a9e3d613621c63536518905546` |
| 10 | `theorem` | [actual_derivative_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/actual-derivative-integrable--d1247815d331ff928c6d238d.md) | 188 | `result-track:d1247815d331ff928c6d238dcf2121de29831a54d405a6ee870e0885bb6e1b91` |
| 11 | `theorem` | [actual_fourier_frequency_bound](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/actual-fourier-frequency-bound--e42a035a575f135a76d1f996.md) | 195 | `result-track:e42a035a575f135a76d1f9964e5e19691bf0362afe05f33a3089dfef3e5e80ec` |
| 12 | `theorem` | [actual_logarithmic_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/actual-logarithmic-fourier-integrable--6e59a129c469c5ed37cab933.md) | 204 | `result-track:6e59a129c469c5ed37cab9338887346a55a8c65bb3e82586b505eebb2868701a` |
| 13 | `theorem` | [actual_fourier_square_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variantabe6d0674e808ff6cb03a3438575c9425407cf7c5d5a77a6fec596e556180eb1.lean/declarations/actual-fourier-square-integrable--0356326c0ab72fded04595c7.md) | 213 | `result-track:0356326c0ab72fded04595c7456be53540f218dd090489aa68c97842dafa3313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
