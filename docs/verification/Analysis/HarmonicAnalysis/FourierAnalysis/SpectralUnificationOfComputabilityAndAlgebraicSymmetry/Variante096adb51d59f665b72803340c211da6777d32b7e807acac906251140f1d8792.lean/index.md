# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d14dfd4413b1ae89cd7ae811056578bd5baa74d9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d14dfd4413b1ae89cd7ae811056578bd5baa74d9`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_test_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/integral-test-fourier--3162776024876ae726e1824c.md) | 34 | `result-track:3162776024876ae726e1824c625645ec9c6b3e127c5e0e64bc01c859c4c5e920` |
| 2 | `theorem` | [fourier_ae_eq_L2](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/fourier-ae-eq-l2--9bfa32c48409d5d47ddfeb27.md) | 41 | `result-track:9bfa32c48409d5d47ddfeb27fce3b433c74e9c8aa5d11658c93a6feb4de2655d` |
| 3 | `theorem` | [fourier_memLp_two](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/fourier-memlp-two--39a4f3fa1516629cfe44019d.md) | 69 | `result-track:39a4f3fa1516629cfe44019d036e39932377e8c52e781e432f892f5f0afd1fa7` |
| 4 | `theorem` | [fourier_norm_sq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/fourier-norm-sq-integrable--a32189d282fbb1e508fa3070.md) | 74 | `result-track:a32189d282fbb1e508fa3070c03e8ffacbeccd62219e4efd722e802540d5acec` |
| 5 | `theorem` | [norm_toLp_eq_sqrt_integral_norm_sq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/norm-tolp-eq-sqrt-integral-norm-sq--533da2b1a126b5cf61ee7e46.md) | 79 | `result-track:533da2b1a126b5cf61ee7e469ac1b8ff95bf6317fa21d05bd3f42d3b0e3ba1a5` |
| 6 | `theorem` | [integral_norm_sq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/integral-norm-sq-fourier--a7f31b35481d054c8255dafe.md) | 86 | `result-track:a7f31b35481d054c8255dafe84aa1d7edfeced462316da2d7a7bb35924d2c886` |
| 7 | `theorem` | [sourceFourier_norm_sq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/sourcefourier-norm-sq-integrable--c84c1587c5492b12c7b4a1ff.md) | 98 | `result-track:c84c1587c5492b12c7b4a1ff1161dcbb9804cd9250a655d0f520f80d81fda1e6` |
| 8 | `theorem` | [sourceFourier_memLp_two](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/sourcefourier-memlp-two--ded57196cf3247bbb598c18f.md) | 107 | `result-track:ded57196cf3247bbb598c18f75148bdb8547f4c2b7a85c437bb3f6ecdaba245c` |
| 9 | `theorem` | [sourceFourier_normSq_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/sourcefourier-normsq-integrable--4dc694dd9b36bde1dd3df56d.md) | 114 | `result-track:4dc694dd9b36bde1dd3df56da44664963a80fb2064662dbe1bf538f1e7423e3a` |
| 10 | `theorem` | [sourceFourier_plancherel](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/sourcefourier-plancherel--c4e557089468354786bce745.md) | 120 | `result-track:c4e557089468354786bce7450143c665c9d62f8f16f0a98a9a581636a09d664a` |
| 11 | `theorem` | [normSq_sourceFourier_deriv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante096adb51d59f665b72803340c211da6777d32b7e807acac906251140f1d8792.lean/declarations/normsq-sourcefourier-deriv--5f54b2b7dbaf07578792c2a0.md) | 137 | `result-track:5f54b2b7dbaf07578792c2a06908c24efd63166c56267497289dd697476ac582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
