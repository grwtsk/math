# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaSpindle.Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff9e81a5ca018a6aafef91b887e68e2489f6e9a6",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff9e81a5ca018a6aafef91b887e68e2489f6e9a6`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimitiveCharacter](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/primitivecharacter--2c87b25e5d2e20c8785d3173.md) | 32 | `declaration-track:2c87b25e5d2e20c8785d31737a2b42767b9b604993c4f75f03ad45d66d977dec` |
| 2 | `def` | [conductorScale](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/conductorscale--21811ad4ff873d95cf8a9135.md) | 35 | `declaration-track:21811ad4ff873d95cf8a91354cacfed714cb988d5ae9f3aff769f8edeac5c10a` |
| 3 | `theorem` | [conductorScale_pos](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/conductorscale-pos--3606e9f1edfcb55098811443.md) | 38 | `result-track:3606e9f1edfcb55098811443f161bf52bce234d6f16af611a012b67b76b6762f` |
| 4 | `theorem` | [conductorScale_conjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/conductorscale-conjugate--117a552dcac318b0f249901b.md) | 43 | `result-track:117a552dcac318b0f249901b9482aad3b3e3b4afb3f4b7d96aff5a451be97ade` |
| 5 | `def` | [parityScalar](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/parityscalar--37fa99fb41bd876ed9e47bf7.md) | 48 | `declaration-track:37fa99fb41bd876ed9e47bf732770bfe09dd3be73bc97052375730de4ba6d791` |
| 6 | `def` | [gammaFactor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammafactor--aa4e6fb0235174ad3f75284e.md) | 56 | `declaration-track:aa4e6fb0235174ad3f75284e162cc0f0bc19ba17e80ed3544063fd33b16feffd` |
| 7 | `theorem` | [gammaFactor_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammafactor-conj--05dbdb408057cb36b2c44151.md) | 61 | `result-track:05dbdb408057cb36b2c441519ab109cccaa4e21308c3af5211edee002e7fb5ab` |
| 8 | `theorem` | [gammaFactor_characterConjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammafactor-characterconjugate--cf209afe6639b36f403a6939.md) | 78 | `result-track:cf209afe6639b36f403a693986ab22784daf99a6b93ea8a3e20cc26885632889` |
| 9 | `def` | [criticalLine](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/criticalline--dbb7f080ff76cce2904b9e5f.md) | 84 | `declaration-track:dbb7f080ff76cce2904b9e5f7d2898eb167939a7f6d29f40fca579e3598ff908` |
| 10 | `theorem` | [criticalLine_neg](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/criticalline-neg--29f964137539c764c55e3b22.md) | 87 | `result-track:29f964137539c764c55e3b22b9b47df56decb433a8d95cc50c2a92655aa0f06a` |
| 11 | `theorem` | [digamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/digamma-conj--a68523a2706f08c647546c47.md) | 96 | `result-track:a68523a2706f08c647546c4726bf0fc1746956e763a1db3e33a1f5f278dc1acd` |
| 12 | `def` | [criticalGammaFactor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/criticalgammafactor--0b04ab20e58bf31a275641b4.md) | 114 | `declaration-track:0b04ab20e58bf31a275641b47fc1b827f65db58d7552d18e2261ede995812aa8` |
| 13 | `theorem` | [criticalArgument_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/criticalargument-re-pos--d9660fbb8d9aeef5deec6b79.md) | 117 | `result-track:d9660fbb8d9aeef5deec6b79217d65f2cbbea2be601066c0338353ef7a9598a1` |
| 14 | `theorem` | [criticalGammaFactor_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/criticalgammafactor-ne-zero--aa0dda2a3a299f48c6d0a2d4.md) | 127 | `result-track:aa0dda2a3a299f48c6d0a2d49aebc58c1fef1e6bbc3a0d04393af856e5773807` |
| 15 | `def` | [gammaRotor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammarotor--b35e3f11abbc3c8ffa8d9cd5.md) | 138 | `declaration-track:b35e3f11abbc3c8ffa8d9cd56ee88d10c95feb624e36bbdae742081ba74d02ae` |
| 16 | `theorem` | [gammaRotor_unitary](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammarotor-unitary--7e720b140f116d4d92dc400b.md) | 142 | `result-track:7e720b140f116d4d92dc400b67cbe0a143363f73d51ff8646edec15722553efe` |
| 17 | `theorem` | [gammaRotor_eq_reflected_factor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammarotor-eq-reflected-factor--68358d0f4fea7b746a4dcc79.md) | 149 | `result-track:68358d0f4fea7b746a4dcc79d6c6069eac93228a6e2412cb91324a5ad3c8565e` |
| 18 | `def` | [gammaSpindleProfile](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindleprofile--4289dd7f0d2636622092fce2.md) | 158 | `declaration-track:4289dd7f0d2636622092fce2ceb3c86938cd1c355b4cc3db69d81f102b275115` |
| 19 | `theorem` | [gammaSpindleProfile_real](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindleprofile-real--37bbd278c3f479a784cb3b56.md) | 165 | `result-track:37bbd278c3f479a784cb3b562055d56b0f5e46e0fef25403f5087bf9e7b45d4a` |
| 20 | `theorem` | [gammaSpindleProfile_even](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindleprofile-even--432306985f5abe86dc56fa3c.md) | 170 | `result-track:432306985f5abe86dc56fa3cae831e1fb314aa9f7dd8046a45eaab8480374653` |
| 21 | `theorem` | [gammaSpindleProfile_characterConjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindleprofile-characterconjugate--80dcbb4ffdb5b3ebd9c44716.md) | 186 | `result-track:80dcbb4ffdb5b3ebd9c44716313cfce043f12faefcfc8506969b345b7599e0a7` |
| 22 | `def` | [boundedGammaSymbol](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/boundedgammasymbol--4aa1f11bc9aa1522dc217fd0.md) | 192 | `declaration-track:4aa1f11bc9aa1522dc217fd0b61c83ff944a46b23d1329f7fa9003d25c03c99f` |
| 23 | `theorem` | [gammaSpindle_norm_le_one](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindle-norm-le-one--9e203b8f100935076aa2127d.md) | 197 | `result-track:9e203b8f100935076aa2127d820a531efacd005a8979477dbc8beaa0a7f4e423` |
| 24 | `def` | [GammaSpindleDirac](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindledirac--0fadf777049cbb61ea28e6f2.md) | 210 | `declaration-track:0fadf777049cbb61ea28e6f20d59e62c57aec18fe9b6d7d3514c8de52b0e77d3` |
| 25 | `theorem` | [gammaSpindleDirac_selfAdjoint](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindledirac-selfadjoint--20a5344db5e315248dc2d170.md) | 217 | `result-track:20a5344db5e315248dc2d170c969a3f77936d68a9ad6025ae36ba14c288c3850` |
| 26 | `theorem` | [gammaSpindleDirac_characterConjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindledirac-characterconjugate--bcdba9c1647d5cb69aa34fd6.md) | 227 | `result-track:bcdba9c1647d5cb69aa34fd67e7b69643eccedb41d8833245be1e4a485522513` |
| 27 | `theorem` | [gammaSpindleDirac_sq](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindledirac-sq--b9ec2ce6d83953c448339292.md) | 233 | `result-track:b9ec2ce6d83953c4483392929078dae5d9d6537abee3ca5d725044a1b1884b5b` |
| 28 | `theorem` | [gammaSpindle_square_nonnegative](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/gammaspindle-square-nonnegative--ac4ac9ec135ec630703c385f.md) | 247 | `result-track:ac4ac9ec135ec630703c385f416d828bf4e47343b51494b0f89f77d2d329453f` |
| 29 | `structure` | [ArchimedeanGammaSpindle](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/archimedeangammaspindle--b7980df7ec1549816a0ce0aa.md) | 254 | `declaration-track:b7980df7ec1549816a0ce0aaa5a44e8dab11c4b7f40afaed5f4b48c00e969b71` |
| 30 | `def` | [canonicalArchimedeanGammaSpindle](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/canonicalarchimedeangammaspindle--82a7c286bf98be578757cbc0.md) | 264 | `declaration-track:82a7c286bf98be578757cbc088df1dbaa1c75eb317a70afb842d57fc2144b38e` |
| 31 | `structure` | [AnalyticGammaSpindleCapability](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variante7f57c3fa71731eba57e0158b3ebbc62e2b42755738d0119a150bab57b8ff18a.lean/declarations/analyticgammaspindlecapability--17655ba2fc3f941e21246528.md) | 277 | `declaration-track:17655ba2fc3f941e212465286b85d303d3a751df6ca783d489120fba4e416683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
