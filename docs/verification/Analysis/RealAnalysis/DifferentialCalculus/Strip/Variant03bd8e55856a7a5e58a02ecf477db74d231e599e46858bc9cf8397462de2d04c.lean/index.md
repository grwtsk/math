# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Strip.Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f0745b73ec50906dafebaea1a31c78b55b8066",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f0745b73ec50906dafebaea1a31c78b55b8066`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Real` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [phiC_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/phic-contdiff--f005edea828f7378baf08587.md) | 29 | `result-track:f005edea828f7378baf08587e148649750dcd15f320c967d58863cee3864a580` |
| 2 | `theorem` | [phiC_support](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/phic-support--723401cea40d803b8d0d6974.md) | 33 | `result-track:723401cea40d803b8d0d6974695c4d9a2d8dc6837f0c914660c5fee020ae6b41` |
| 3 | `theorem` | [deriv_ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/deriv-ofreal-comp--4746145af7f67d184ba4a727.md) | 40 | `result-track:4746145af7f67d184ba4a72706213341a8d28b2edad65174c646a881e4c41e3a` |
| 4 | `theorem` | [deriv_deriv_phiC](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/deriv-deriv-phic--41ba05b5cc822922e020f980.md) | 45 | `result-track:41ba05b5cc822922e020f9803b97e391e241628243bc1b601f9ffa64faf09ffb` |
| 5 | `theorem` | [norm_phiHat_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/norm-phihat-mul-sq-le--263b1c30deb40bfd289f44ce.md) | 56 | `result-track:263b1c30deb40bfd289f44cec0427111b9a96eaace665fe9c454e78ae367cbda` |
| 6 | `theorem` | [integral_phi_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/integral-phi-le--a5fb9796b6a961f3548f28a3.md) | 65 | `result-track:a5fb9796b6a961f3548f28a3118bb3486f2505cc03433798b75ec27d633ef41b` |
| 7 | `theorem` | [norm_phiHat_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/norm-phihat-le--54baf326475c388594159d18.md) | 85 | `result-track:54baf326475c388594159d181b13b48bbc2c72d4277a69a4de921e916dddf013` |
| 8 | `theorem` | [norm_phiHat_sub_I_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/declarations/norm-phihat-sub-i-mul-le--b2326b7ed6cbdd5f46141754.md) | 98 | `result-track:b2326b7ed6cbdd5f461417544f1b610739df0e36b4b7eb7edc7ba118eafa4f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
