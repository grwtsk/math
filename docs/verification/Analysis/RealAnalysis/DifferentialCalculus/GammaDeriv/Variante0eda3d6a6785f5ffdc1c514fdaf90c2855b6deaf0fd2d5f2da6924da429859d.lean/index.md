# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GammaDeriv.Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "526f6d5cc6ebc3d0938391c4565674c1e798db20",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `526f6d5cc6ebc3d0938391c4565674c1e798db20`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [deriv_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/deriv-gamma-nat--3c1c1f659892bac1645d0430.md) | 29 | `result-track:3c1c1f659892bac1645d04307b17696a84919bdce0fae1d162ee7bccd55fb9c9` |
| 2 | `lemma` | [hasDerivAt_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-nat--0654bd686f351c16bae53769.md) | 84 | `result-track:0654bd686f351c16bae5376927fad1efc69079886abfb1c23f1001d68ad7ecca` |
| 3 | `lemma` | [eulerMascheroniConstant_eq_neg_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/eulermascheroniconstant-eq-neg-deriv--a001328039124eb46132f3ad.md) | 89 | `result-track:a001328039124eb46132f3adfcf2db2dc06b8d402f58697b4fe4b8ccd2eefbb7` |
| 4 | `lemma` | [hasDerivAt_Gamma_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-one--f8648eac3b0eee84662bc0c6.md) | 93 | `result-track:f8648eac3b0eee84662bc0c63aaf1adfd6bedbc3cb26c16e90a018ce93d3bb0b` |
| 5 | `lemma` | [hasDerivAt_Gamma_one_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-one-half--993e2bcd3d3b3efcb1e907af.md) | 97 | `result-track:993e2bcd3d3b3efcb1e907af6428898cd196f754fad848652e316671e09f0f7e` |
| 6 | `lemma` | [HasDerivAt.complex_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-complex-of-real--447d9ba9170f42de75195279.md) | 154 | `result-track:447d9ba9170f42de75195279db6fb85a85258cbfa87c3ae9be4536d1467afc08` |
| 7 | `lemma` | [differentiable_at_Gamma_nat_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/differentiable-at-gamma-nat-add-one--f9aa2bc1b2c67a455d8e49fe.md) | 161 | `result-track:f9aa2bc1b2c67a455d8e49fe3f39d2e4377d3710cc0bde80dae11ff5a141c0b0` |
| 8 | `lemma` | [hasDerivAt_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-nat--8303c78f0e59ebec00546244.md) | 168 | `result-track:8303c78f0e59ebec00546244f28a49a39edfc3b17bcb8959be67726b2eb99608` |
| 9 | `lemma` | [deriv_Gamma_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/deriv-gamma-nat--acd64530da26163db09a1c8a.md) | 176 | `result-track:acd64530da26163db09a1c8a767f03959e337e1891cfc1ac53575ef225817dff` |
| 10 | `lemma` | [hasDerivAt_Gamma_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-one--8ca00fec09ae1e9a86fa399a.md) | 180 | `result-track:8ca00fec09ae1e9a86fa399a212590cb95ee28bcd8b61f7ca01b27cad09197f9` |
| 11 | `lemma` | [hasDerivAt_Gamma_one_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-one-half--9aff0bc412b348221d5879d1.md) | 184 | `result-track:9aff0bc412b348221d5879d19ce0a496a2632005e36ba270d4dae28d48c6c76e` |
| 12 | `lemma` | [hasDerivAt_Gammaℂ_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-one--637d17886e25d045bcf5cc90.md) | 193 | `result-track:637d17886e25d045bcf5cc902a8dc1327b5c16656f11982760f6ba45da8b70bc` |
| 13 | `lemma` | [hasDerivAt_Gammaℝ_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GammaDeriv/Variante0eda3d6a6785f5ffdc1c514fdaf90c2855b6deaf0fd2d5f2da6924da429859d.lean/declarations/hasderivat-gamma-one--65136f911190d01ab859f765.md) | 206 | `result-track:65136f911190d01ab859f76555386b9fd08107195d456c76c0b2697b797ace92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
