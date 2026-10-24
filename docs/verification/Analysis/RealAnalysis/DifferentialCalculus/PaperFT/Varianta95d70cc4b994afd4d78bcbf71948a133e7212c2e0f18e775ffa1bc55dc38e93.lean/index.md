# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PaperFT.Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa04095239f60ef3d8c99923a5bdea966357d234",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa04095239f60ef3d8c99923a5bdea966357d234`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [paperFT_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/paperft-def--f4456a9d8387affd421c996f.md) | 27 | `result-track:f4456a9d8387affd421c996f69972974a1873acf1cbf6faad1642cfaa4df7a2e` |
| 2 | `theorem` | [integral_const_mul_C](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/integral-const-mul-c--bcd2072ae776c021097b3352.md) | 34 | `result-track:bcd2072ae776c021097b33527b55707d7d724070bb5eee3e1dd9b60ba814c22e` |
| 3 | `theorem` | [integral_mul_const_C](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/integral-mul-const-c--7ca37286736196d1aa53c957.md) | 37 | `result-track:7ca37286736196d1aa53c957858cc6701402beed4c907ad3046139feac2fe82c` |
| 4 | `theorem` | [paperFT_ofReal_eq_fourier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/paperft-ofreal-eq-fourier--3ff7be82621c0704088badfe.md) | 42 | `result-track:3ff7be82621c0704088badfef47145b8352cbec43de56e14a91d5981ed244119` |
| 5 | `theorem` | [fourier_eq_paperFT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/fourier-eq-paperft--49aac230bb1b8cdab12c287b.md) | 54 | `result-track:49aac230bb1b8cdab12c287b83b56ccb9510c799257938078be449bdabedff3e` |
| 6 | `theorem` | [norm_cexp_I_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/norm-cexp-i-mul--ed43e57d56df7994a0ca814a.md) | 67 | `result-track:ed43e57d56df7994a0ca814a2bd10bcfa86b686a9d59d2619b2644268e9a8e52` |
| 7 | `theorem` | [norm_cexp_I_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/norm-cexp-i-mul-le--78dfcedcb74534d19bb3e3ab.md) | 72 | `result-track:78dfcedcb74534d19bb3e3abd0396e2942bd8bbc2244b66112127ac9edb8365c` |
| 8 | `theorem` | [norm_paperFT_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/norm-paperft-le--3fdb57d6f05e1f65673cd6f1.md) | 80 | `result-track:3fdb57d6f05e1f65673cd6f1efcaac89a573fdd9379f8a8a450b08c6bc779d8a` |
| 9 | `theorem` | [paperFT_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/paperft-deriv--56c826bb83a6577312062507.md) | 93 | `result-track:56c826bb83a657731206250707691de3991dda85fb543ba9a026600654c7e5fb` |
| 10 | `theorem` | [paperFT_deriv_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/paperft-deriv-deriv--6df530d29862688ef5fda7a3.md) | 119 | `result-track:6df530d29862688ef5fda7a3b25793137dd3352f04e0f686ac9a70796e122e16` |
| 11 | `theorem` | [hasCompactSupport_of_support_subset_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/hascompactsupport-of-support-subset-abs--192d020de4dc68d6ccd674f6.md) | 127 | `result-track:192d020de4dc68d6ccd674f65c9367f27a48e93a607f4501627caa6be980ab70` |
| 12 | `theorem` | [tsupport_subset_of_support_subset_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/tsupport-subset-of-support-subset-abs--34ba3655ca28bfc8b9b0c861.md) | 133 | `result-track:34ba3655ca28bfc8b9b0c8617a83eab3412bdc43b729d634922939467d6a12ea` |
| 13 | `theorem` | [norm_paperFT_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/norm-paperft-mul-sq-le--de7ed3fead30c553bb8f101c.md) | 139 | `result-track:de7ed3fead30c553bb8f101c4d67b2d55bfd6469d692541e8092ddc4475b7612` |
| 14 | `theorem` | [norm_paperFT_le_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Varianta95d70cc4b994afd4d78bcbf71948a133e7212c2e0f18e775ffa1bc55dc38e93.lean/declarations/norm-paperft-le-div--70e645374741692cd1b8d12b.md) | 156 | `result-track:70e645374741692cd1b8d12b9a593915d6db7aeabefe38144164e720f34e7151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
