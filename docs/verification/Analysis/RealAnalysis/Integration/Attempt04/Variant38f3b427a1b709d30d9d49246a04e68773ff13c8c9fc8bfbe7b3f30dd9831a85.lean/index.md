# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e515b20a502b769b01fe5e92386cffb8db7edf2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e515b20a502b769b01fe5e92386cffb8db7edf2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/fractionalweight--c9f68e9586c9af7e6188828d.md) | 25 | `declaration-track:c9f68e9586c9af7e6188828d8d6a90fb374b41c263ec72d8180bebfac4eb3796` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/fractionalweight-integrable--dec097e1a8962e4b195a49bb.md) | 27 | `result-track:dec097e1a8962e4b195a49bb24277997d49645ad7cd174a465d1f6f71a3e41fc` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/fractionalweight-nonneg--53eedac0efaa9dd960543f2e.md) | 36 | `result-track:53eedac0efaa9dd960543f2ee67b811c660387506837112bef1c8a19056c3efc` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/real-centered-euler-integral--40c2a2c8ccb9ab5577f6b3f5.md) | 40 | `result-track:40c2a2c8ccb9ab5577f6b3f5f396df0802a9230e327130fd4b000c9adbff35db` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/riemannzeta-real-euler--ae078316690a088af99b5ed8.md) | 55 | `result-track:ae078316690a088af99b5ed830ce939c5b4df12cb8234b0bcd8e8bba9b51e7ee` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/riemannzeta-ofreal-neg--6f78ef50799d14e711f5e6d3.md) | 86 | `result-track:6f78ef50799d14e711f5e6d310ce7b1f30966ae3d93c5e08030370907882a3c2` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/nontrivial-zero-im-ne-zero--1ac81df747b2665af2c9d382.md) | 96 | `result-track:1ac81df747b2665af2c9d382875272237837167ed1fb06e2285434a2108c075c` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/realgammar--ff2b5d1ddd4ec43faa90dff1.md) | 104 | `declaration-track:ff2b5d1ddd4ec43faa90dff101af176e46549fbfd6eb9cd345c4ffb8f284f635` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/gammar-ofreal--674617f9ab81468cc56f3ba5.md) | 106 | `result-track:674617f9ab81468cc56f3ba5c42cfdf125f2b2bbb9d7ee016113a4c1fc59bbf8` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/realgammar-pos--b58490ad8683579edbf2185c.md) | 113 | `result-track:b58490ad8683579edbf2185cc4488a9f4d9a741e8b914350de5521202ee77531` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/xi-real-euler--0d581efaceab1e9277933add.md) | 116 | `result-track:0d581efaceab1e9277933add3ad797ed8c7b980e9213b9478b3e5611b0f51489` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/xi-ofreal-re-pos--9bc07c69a7677e674dad6138.md) | 130 | `result-track:9bc07c69a7677e674dad61380151b79c69e04f67118c2356baad05a5f40ae39d` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/coefficient-zero-exact--8e4c8ef5da1c0a9b4303a855.md) | 141 | `result-track:8e4c8ef5da1c0a9b4303a855ce8dd93794839e580dd543908c2023c8c97507ca` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variant38f3b427a1b709d30d9d49246a04e68773ff13c8c9fc8bfbe7b3f30dd9831a85.lean/declarations/coefficient-zero-pos--2dbcbb71435e7d06197db9d6.md) | 149 | `result-track:2dbcbb71435e7d06197db9d6a88b6971c444c1f6c8c7416e8078ca123a28a723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
