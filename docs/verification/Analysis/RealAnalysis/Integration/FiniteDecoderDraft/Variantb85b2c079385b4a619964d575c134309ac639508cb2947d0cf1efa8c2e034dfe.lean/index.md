# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FiniteDecoderDraft.Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e6f99981182e05f31223856b1f9be05535bb135`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ResolutionDraft` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/cell--72cbe8814d2ca0aa44c5ddf0.md) | 15 | `declaration-track:72cbe8814d2ca0aa44c5ddf003885f69a9db14e32e98a60c9092ef6f31326650` |
| 2 | `def` | [rightSelector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector--78cacc5f2727bb240541809a.md) | 17 | `declaration-track:78cacc5f2727bb240541809aa9e4f9326d517c2630f83c455e439265de757b31` |
| 3 | `def` | [decodedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/decodedtest--6766e79dbc43d0173070a4c9.md) | 20 | `declaration-track:6766e79dbc43d0173070a4c997ca63fb3e27820612628d87ae447df6c9794dab` |
| 4 | `theorem` | [cell_unique](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/cell-unique--e2ae1b1308498c4a3b7e602f.md) | 24 | `result-track:e2ae1b1308498c4a3b7e602f8fc5a698f0ae16c886cf21129f483d85705d9426` |
| 5 | `theorem` | [exists_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/exists-cell--4f148b8023aa2978f0481a91.md) | 35 | `result-track:4f148b8023aa2978f0481a91c4dd8a828a697be98f3177c264a06faaaeed687c` |
| 6 | `theorem` | [rightSelector_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector-on-cell--f9365be7cfc95dac7892daf2.md) | 46 | `result-track:f9365be7cfc95dac7892daf26515a5da4cb370f8ee8cb986156d0ca6a0b0a6a3` |
| 7 | `theorem` | [decodedTest_on_cell](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/decodedtest-on-cell--ee218648b42749d2c0eb82d7.md) | 58 | `result-track:ee218648b42749d2c0eb82d7f1997b79d0741c5c13901b3312f843fa9758b077` |
| 8 | `theorem` | [rightSelector_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector-zero--7901a209dc9b67e4387debdd.md) | 70 | `result-track:7901a209dc9b67e4387debddfd1891441c6dc5f5f8a8bcb30f9156c848769faa` |
| 9 | `theorem` | [rightSelector_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector-bounds--0151e68d7c64623ccd8a2ccd.md) | 77 | `result-track:0151e68d7c64623ccd8a2ccd3fe4f1ebebd7c236cce872f28f87d77a112debb2` |
| 10 | `theorem` | [rightSelector_dist](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector-dist--0e6264b093690c3a1ad6aacb.md) | 94 | `result-track:0e6264b093690c3a1ad6aacb6b4a2b5d6d348a7fa4377bebbcd8165d6d428051` |
| 11 | `theorem` | [rightSelector_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector-upper--aaebfb9587dc7d3b8b3d2d65.md) | 100 | `result-track:aaebfb9587dc7d3b8b3d2d656b7fb9e7bf74c0bcb9517caef6c0205a20d342a5` |
| 12 | `theorem` | [decodedTest_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/decodedtest-eq-comp--7786ce7205bb823f9f991215.md) | 106 | `result-track:7786ce7205bb823f9f9912154121f4793b59576f54bf57342304a7dd329c8322` |
| 13 | `theorem` | [rightSelector_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/rightselector-measurable--a94bb34a36b354a610ef2ae3.md) | 120 | `result-track:a94bb34a36b354a610ef2ae34e4be8227f99c28160e55c5a707bbdb238d9ab80` |
| 14 | `theorem` | [decodedTest_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/decodedtest-measurable--438dfa106fd37fb551c4a036.md) | 125 | `result-track:438dfa106fd37fb551c4a03697f13c6e8466b729f80ae9c85e6e0168069f5cc5` |
| 15 | `theorem` | [cell_constant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/cell-constant-integrable--c5f9e1432b6cdf7664087bab.md) | 130 | `result-track:c5f9e1432b6cdf7664087bab6ca61e65c762bbd5351818c45ceb4d89626a96a2` |
| 16 | `theorem` | [decodedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/decodedtest-integrable--4c2aa128123700780b7f73d9.md) | 135 | `result-track:4c2aa128123700780b7f73d9853b37bca6291392de0ea7278a9746d6ae1c1cf1` |
| 17 | `theorem` | [cell_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/cell-subset--1b187a8fba48b669bdd21d06.md) | 139 | `result-track:1b187a8fba48b669bdd21d064cdeb217b871650476252064d31a49fabfebbe01` |
| 18 | `theorem` | [cell_constant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/cell-constant-integral--25a13ddaf6bcb7a073fedb10.md) | 146 | `result-track:25a13ddaf6bcb7a073fedb10f495b31691cb29422ae5b0ed4de50610beefdfb4` |
| 19 | `theorem` | [decodedTest_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/decodedtest-integral--1614a9e33a3d7a58dc3eb1cb.md) | 161 | `result-track:1614a9e33a3d7a58dc3eb1cb8e4c781422b5d7f60d1e4c88aac92aec9c7f7b3d` |
| 20 | `theorem` | [atom_cell_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/atom-cell-identity--502bb89565cce18f20f78189.md) | 176 | `result-track:502bb89565cce18f20f781895d280586ad412b81e1611057e68b2ebd9f2ee034` |
| 21 | `theorem` | [prime_cell_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/prime-cell-readout--195eac781092326f0417066d.md) | 188 | `result-track:195eac781092326f0417066d0a2157b5e14e3cd42a0b398b3f06f8a8cba21b36` |
| 22 | `theorem` | [square_cell_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/square-cell-readout--3aa872fd3d3718f6f3d0444f.md) | 197 | `result-track:3aa872fd3d3718f6f3d0444fc37f1a8d50b0fa48d47b736e967da43f0c8d551d` |
| 23 | `theorem` | [prime_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/prime-decoded-ledger--cc0c4288139481d96f299d83.md) | 207 | `result-track:cc0c4288139481d96f299d8373cf5159cf1fe687c105fa6cf1fee7a9b174f7af` |
| 24 | `theorem` | [square_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/square-decoded-ledger--9162f21c9b0042e6b082d534.md) | 221 | `result-track:9162f21c9b0042e6b082d5346417c938514009af3af42e310a14b6b3d549d6a2` |
| 25 | `theorem` | [complete_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/complete-decoded-ledger--b705365ab7bfe95824ebb915.md) | 236 | `result-track:b705365ab7bfe95824ebb915ea55b228a36351cfcce0aae60eba96c257633337` |
| 26 | `def` | [mesh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/mesh--de8fcb9d8eacfa12e8fc0d84.md) | 250 | `declaration-track:de8fcb9d8eacfa12e8fc0d8460af1e12370bb1d88b371fbaff6143472545236b` |
| 27 | `def` | [resolutionCount](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/resolutioncount--8c4a73093a0e55af2191083c.md) | 252 | `declaration-track:8c4a73093a0e55af2191083c72755255916b3b1acd510ca828a6e43112e5ca1a` |
| 28 | `theorem` | [mesh_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/mesh-pos--e342567597fba83e2a307ead.md) | 255 | `result-track:e342567597fba83e2a307ead552399825368b172c6b3ed69492a38a36d6a0672` |
| 29 | `theorem` | [mesh_grid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/mesh-grid--d79e0fd4033838aa422a57b2.md) | 260 | `result-track:d79e0fd4033838aa422a57b22923662d6810a9736081b8ba8082fc3247fefdeb` |
| 30 | `theorem` | [mesh_decoded_ledger](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/mesh-decoded-ledger--673d237b87da8d57b7ce2869.md) | 265 | `result-track:673d237b87da8d57b7ce286979829f2b484ca718bce3dd0491187f7be835c377` |
| 31 | `theorem` | [resolutionCount_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/resolutioncount-pos--d0a4c4fbb663252d1ec4212e.md) | 273 | `result-track:d0a4c4fbb663252d1ec4212e0774a31e8e883085f22283e8a783da781cedbebe` |
| 32 | `theorem` | [modulus_coarse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/modulus-coarse--01a2f60e83ad240d952a50aa.md) | 275 | `result-track:01a2f60e83ad240d952a50aac894c9c56b4bd6b0e31006074cad6a43a3ead327` |
| 33 | `theorem` | [resolution_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/resolution-budget--1eaf19c899f856bb0a80c9cf.md) | 283 | `result-track:1eaf19c899f856bb0a80c9cfbbcef5e650e7bc72a711712e14f894f76c18599e` |
| 34 | `theorem` | [resolutionCount_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/resolutioncount-monotone--f1e24ac14297434b97282a5c.md) | 306 | `result-track:f1e24ac14297434b97282a5c9c6ffd07e9d47d820a52137eec9145b2d9187b3f` |
| 35 | `theorem` | [resolving_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/resolving-error--8bae18287ec14d6e5a923c1b.md) | 318 | `result-track:8bae18287ec14d6e5a923c1b403048b79d726f685d08b86223a280e7daf67292` |
| 36 | `theorem` | [resolving_error_unconditional](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/declarations/resolving-error-unconditional--3e683633c36f7837ca9e9b8f.md) | 346 | `result-track:3e683633c36f7837ca9e9b8fbeaab89346638d147806f0c27fdac97bdeaf85ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
