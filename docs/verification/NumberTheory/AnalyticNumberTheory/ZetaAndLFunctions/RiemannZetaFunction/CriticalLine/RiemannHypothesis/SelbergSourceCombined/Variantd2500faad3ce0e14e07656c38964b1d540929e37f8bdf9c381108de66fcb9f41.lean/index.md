# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SelbergSourceCombined.Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd91e822855e86eef2d1f1c76f45f823201c73ef",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd91e822855e86eef2d1f1c76f45f823201c73ef`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerSource` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pmul_convolution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/log-pmul-convolution--9c975e45253c13cd5ff8c5ac.md) | 15 | `result-track:9c975e45253c13cd5ff8c5ac4048b6a33065013330bd2ac0e8fe0f08c2dceec2` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/log-pmul-zeta--85db560224528abcbe911ae5.md) | 31 | `result-track:85db560224528abcbe911ae5f6765d523c3ae68728e0304ba6e1402f638d15b6` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selberg-dirichlet-identity--c8abfb4e115095a35fa7e67d.md) | 36 | `result-track:c8abfb4e115095a35fa7e67d3c9f8d685c3539e26455f9651746f5cb0258b606` |
| 4 | `def` | [selbergCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergcoefficient--4fd9e1223a88f5e0a1f990a4.md) | 58 | `declaration-track:4fd9e1223a88f5e0a1f990a4edc079fdf77e1c0ef29a5e404386b8dd22c9c897` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selberg-coefficient-identity--c03207f8b7c532b99e39084f.md) | 63 | `result-track:c03207f8b7c532b99e39084f5bd9b788750048c8e2b0edd994f0d2d4d781fbf6` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergcoefficient-nonneg--19e81ec09617e42f389bae0f.md) | 75 | `result-track:19e81ec09617e42f389bae0f4e154309d1b277506f5e586fd26d3b5993f06afc` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergcoefficient-zero--464ae033fbce2749814d2325.md) | 81 | `result-track:464ae033fbce2749814d2325ee4bddc176b31dacae5e0d9489161f25d6ce15ca` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergcoefficient-one--3fe8d58e3d613cc63c912933.md) | 85 | `result-track:3fe8d58e3d613cc63c912933ae7394e8af56665c9c0e639c9c87bd3ffcbf7295` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selberg-antidiagonal-identity--0d005ee8ae28a157a3f6aeb8.md) | 89 | `result-track:0d005ee8ae28a157a3f6aeb853ad3c418cce7c5eddbfb250984220e17f397bb1` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/closed-factor-cutoff-eq--66a12efd7fbd619f1089bf40.md) | 97 | `result-track:66a12efd7fbd619f1089bf40923cc632323427a867827aa4fd6d662a96ab43a2` |
| 11 | `def` | [selbergPrefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergprefix--69d2182b75440dc56d9e80b0.md) | 112 | `declaration-track:69d2182b75440dc56d9e80b03f54b9ab4f78866c24a2ea5832095fbfa1a85c7d` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selberg-prefix-identity--a03bab8d2c5f62fd33031ecd.md) | 117 | `result-track:a03bab8d2c5f62fd33031ecdf14eafaf5b74b3c00e259109a4b1249f8fa0323f` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergprefix-nonneg--40b346d47b58cea95edac258.md) | 138 | `result-track:40b346d47b58cea95edac258ae55a37eddae64bdb7093e91b33f0cf460645649` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergprefix-zero--9fd43225a94d8e9d38353049.md) | 143 | `result-track:9fd43225a94d8e9d38353049102a9fdab96842fa5b2909fc13006654540a0d6c` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergprefix-one--53305013a7de32b9b69e0f14.md) | 147 | `result-track:53305013a7de32b9b69e0f14dab8a5b13c7b7222f349d013ad4dd905c497af5d` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selberg-prefix-expanded--bd327eb07a44020580ee2f57.md) | 151 | `result-track:bd327eb07a44020580ee2f571d84a49d54d65ffbec5a73e4c46a10dc0d42d66f` |
| 17 | `def` | [selbergSourceWeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/selbergsourceweight--62c000a4ce468eaf221e9ed0.md) | 173 | `declaration-track:62c000a4ce468eaf221e9ed05cb5e24c98b921c1cfe3991e98a36d2c0600346c` |
| 18 | `def` | [mangoldtConvolutionContribution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/mangoldtconvolutioncontribution--b0cac4085e3f7a1b6cf8091e.md) | 178 | `declaration-track:b0cac4085e3f7a1b6cf8091ef9f313302b16a02d25f3d4b4b91d8c4bba92d4ce` |
| 19 | `theorem` | [weighted_selberg_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/weighted-selberg-identity--819aae148c21458156d909e0.md) | 185 | `result-track:819aae148c21458156d909e096d3a780db9939ebbc73aa24e9f426cf64d78c8c` |
| 20 | `theorem` | [primePowerContribution_eq_selberg_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/primepowercontribution-eq-selberg-difference--bce34170d40301ae7f6ec8d9.md) | 198 | `result-track:bce34170d40301ae7f6ec8d92c495916ecfef9597875e4d4e315c42a2b043b16` |
| 21 | `theorem` | [sourceQuadraticValue_eq_selberg_difference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variantd2500faad3ce0e14e07656c38964b1d540929e37f8bdf9c381108de66fcb9f41.lean/declarations/sourcequadraticvalue-eq-selberg-difference--9660fc4a7dc89bfd8978f2c7.md) | 214 | `result-track:9660fc4a7dc89bfd8978f2c7241a337b372bfe1341836b2b070ed52b7d151f6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
