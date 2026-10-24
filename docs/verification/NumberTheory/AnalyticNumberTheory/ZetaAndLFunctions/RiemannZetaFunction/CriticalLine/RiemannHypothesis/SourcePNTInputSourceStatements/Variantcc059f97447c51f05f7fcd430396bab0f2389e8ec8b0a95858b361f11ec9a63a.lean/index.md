# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePNTInputSourceStatements.Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a005069729e80d3942bdc161b8b6282c1220a151",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a005069729e80d3942bdc161b8b6282c1220a151`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.MediumPNT` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chebyshevPrimePower_eq_psi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/chebyshevprimepower-eq-psi--ab9e159a2b7941c43e556496.md) | 15 | `result-track:ab9e159a2b7941c43e55649617229b39917323446b25eff5c884f3c92ac62cb4` |
| 2 | `theorem` | [chebyshevError_eq_psi_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/chebysheverror-eq-psi-sub--1b03bede8420c0b208bed7b2.md) | 28 | `result-track:1b03bede8420c0b208bed7b21d1e067945b49011403d0f876a1a6f522d76cd83` |
| 3 | `theorem` | [chebyshevError_eq_fun](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/chebysheverror-eq-fun--4820f146daa102d99b9498f4.md) | 32 | `result-track:4820f146daa102d99b9498f4215cae75034bbdd07da9737b46d9d721abb47b15` |
| 4 | `theorem` | [chebyshevError_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/chebysheverror-abs-le--f65bac2e5c9f22331d6b0869.md) | 37 | `result-track:f65bac2e5c9f22331d6b086934c2a21c3c541856790e053fe61a4ec4591aa2ea` |
| 5 | `theorem` | [errorProfile_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/errorprofile-abs-le--ada13d56fcc7c07fbc65d684.md) | 49 | `result-track:ada13d56fcc7c07fbc65d6843b792587ed26ed1c055e0ad92f9da96ff9b4e748` |
| 6 | `theorem` | [errorProfile_eventual_of_pnt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/errorprofile-eventual-of-pnt--eb7e0eb1122cab52cca35ee5.md) | 53 | `result-track:eb7e0eb1122cab52cca35ee56c3c7f49424d88273811713c51a127586493267b` |
| 7 | `theorem` | [errorProfile_tail_of_pnt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/errorprofile-tail-of-pnt--e5ae1b18f0d8e5c99048a244.md) | 68 | `result-track:e5ae1b18f0d8e5c99048a2445fa5803818c2f667456cf46ecd52c72991593523` |
| 8 | `theorem` | [source_quantitative_pnt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/source-quantitative-pnt--19a6c50b92b7b10382258060.md) | 84 | `result-track:19a6c50b92b7b1038225806018fb8dc343ba1b411a1400ba33994c3232ba40b4` |
| 9 | `theorem` | [errorProfile_quantitative_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/errorprofile-quantitative-tail--474f6073a141b8a43ee6f16a.md) | 91 | `result-track:474f6073a141b8a43ee6f16ade01acd2ccebdee5bac7b495ae00c7b477209a61` |
| 10 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--1c1185dcda13c73d9b1d2d89.md) | 104 | `declaration-track:1c1185dcda13c73d9b1d2d892f43c8466ad0f31b2198f17d43f875f1f1562f46` |
| 11 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--072b4b719896311a9b99705c.md) | 108 | `declaration-track:072b4b719896311a9b99705ca89e43969c01c2b0e0791843a74016fbd8dc72e9` |
| 12 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--b349cac3e91939e945331fb4.md) | 112 | `declaration-track:b349cac3e91939e945331fb45fb8b6fba3009f8564bd8fb187342ddbc3c5c2c6` |
| 13 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--f413e76dbc43f89edf3cb92b.md) | 116 | `declaration-track:f413e76dbc43f89edf3cb92b76cffb358f4411dc56e532f9645eca3733cc2529` |
| 14 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--45ff9792df96863b20226994.md) | 120 | `declaration-track:45ff9792df96863b202269942a8775367f4a8aab3cc5ec64983b744c6618f406` |
| 15 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--7bb378b3ca8278d54eb5a7a2.md) | 124 | `declaration-track:7bb378b3ca8278d54eb5a7a2473cbd822117eb372ac07984ee40b4fd44b192b9` |
| 16 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--6db30e0736ad5a0e673aa15e.md) | 131 | `declaration-track:6db30e0736ad5a0e673aa15e2d6017d5e8e87426ec36bc1be885528fb096e703` |
| 17 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--62e455b972302648de28420f.md) | 138 | `declaration-track:62e455b972302648de28420fd284b5ed622756def53ab2e8d89179a8f69cc888` |
| 18 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceStatements/Variantcc059f97447c51f05f7fcd430396bab0f2389e8ec8b0a95858b361f11ec9a63a.lean/declarations/example--db607749fec042758c87c825.md) | 143 | `declaration-track:db607749fec042758c87c825bc0726a3f2f5e57a5e06af9384297d9e418e20fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
