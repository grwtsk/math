# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMultiplierNormalized

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "115b8088e19ae84b239062e0da5e5cacf17d0f10",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `115b8088e19ae84b239062e0da5e5cacf17d0f10`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairUnitTransport`](../../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairUnitTransport.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairApproximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strip](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/strip--f37f687a42ee5880f9657649.md) | 28 | `declaration-track:f37f687a42ee5880f965764996a1e51667fd27730d2d4ffa31c2b04b40c957e5` |
| 2 | `def` | [source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/source--e8a41afaa153506ec96dd404.md) | 29 | `declaration-track:e8a41afaa153506ec96dd4047f5a0007e4b8e9186838f415c2c226536e528856` |
| 3 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/model--0c6463f219482a568998f1fc.md) | 30 | `declaration-track:0c6463f219482a568998f1fcdb23b60973bda1f989664dfff3bb15516a73038c` |
| 4 | `lemma` | [strip_open](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/strip-open--8b33f3305759bc25ef2a912d.md) | 32 | `result-track:8b33f3305759bc25ef2a912d65fff88c687483b08d1dcbd3a0a2b8d8afee1759` |
| 5 | `lemma` | [strip_convex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/strip-convex--49748ffaf1a099699e424dd1.md) | 35 | `result-track:49748ffaf1a099699e424dd14c66fc00e07ae19d2a66060277a2e009886b8d27` |
| 6 | `lemma` | [factor_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/factor-ne-zero--efe415b29d54cf27d43319e1.md) | 38 | `result-track:efe415b29d54cf27d43319e126a3171450a687ffeab71a1cae4c3dc3ddb703dc` |
| 7 | `lemma` | [product_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/product-ne-zero--f0b73c772cb45e6a09c439aa.md) | 49 | `result-track:f0b73c772cb45e6a09c439aacb8268f753febb575ddedfd0f601b26c061d87a6` |
| 8 | `lemma` | [multiplier_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/multiplier-ne-zero--aced09c546d0439814a48ca4.md) | 54 | `result-track:aced09c546d0439814a48ca49fbb5df8dc5b333b872c63cd3dd621e9f8cb4d75` |
| 9 | `lemma` | [source_zero_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/source-zero-iff--9747c6948b478542436a1d4a.md) | 58 | `result-track:9747c6948b478542436a1d4afd0e0962298d1a9ad1b9afc2159a069338bf0ec4` |
| 10 | `lemma` | [source_zero_of_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/source-zero-of-target--cba918b6e1ae9263c107b836.md) | 62 | `result-track:cba918b6e1ae9263c107b83635547f2c707ff7de48c0390c1161883a62f532bf` |
| 11 | `lemma` | [source_differentiable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/source-differentiable--d49b0c56759fca0578f9c661.md) | 65 | `result-track:d49b0c56759fca0578f9c661a434742cdb03f9febdf3f4c68e3dd621c5356aa0` |
| 12 | `lemma` | [model_differentiable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/model-differentiable--1338dd996918486b3695dfa7.md) | 69 | `result-track:1338dd996918486b3695dfa709dbfbf7edc99841f6396f0a0cc320dcf6b1f2fb` |
| 13 | `lemma` | [source_channels](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/source-channels--d20836e7bc99b16e748d8128.md) | 76 | `result-track:d20836e7bc99b16e748d8128cc654658d2052084f90d56a53b5fe23c43f20a87` |
| 14 | `lemma` | [source_energy_comparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/source-energy-comparison--b9d8aecad30aaa11a90ec8c0.md) | 88 | `result-track:b9d8aecad30aaa11a90ec8c03023d5416f70d001049295c9e47ddb27423d829c` |
| 15 | `lemma` | [recover_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/recover-source--9e46e527140fd1f11f396196.md) | 98 | `result-track:9e46e527140fd1f11f396196160fd89a7110a5abd9e571a12d38010d1ad0f0bd` |
| 16 | `lemma` | [residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/residual--ed750bcf73ca1af849ee155d.md) | 102 | `result-track:ed750bcf73ca1af849ee155df335bcd8e2f86f584710beef9585a19f06eafe95` |
| 17 | `lemma` | [derivative_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/derivative-residual--c2829946bbac3a528c02097b.md) | 109 | `result-track:c2829946bbac3a528c02097bae4aa839675282a2a7beca41a7a50e22f69545ac` |
| 18 | `lemma` | [cutoff_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/cutoff-telescope--6deb2fb2b4ed0bdcf85a4f7b.md) | 123 | `result-track:6deb2fb2b4ed0bdcf85a4f7b12ee4de950756763cba4672ca17a8fcfcccfb451` |
| 19 | `lemma` | [derivative_cutoff_telescope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/derivative-cutoff-telescope--342e47ed6d5edec4b9a90bf4.md) | 128 | `result-track:342e47ed6d5edec4b9a90bf4b8b66ebf22356f479c534abec1171ffa5e0a7bb5` |
| 20 | `theorem` | [errors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/errors--33f7f8896257a9ea8e538630.md) | 135 | `result-track:33f7f8896257a9ea8e5386306a1dd9859132132006350ae1e76ce3c606154b62` |
| 21 | `theorem` | [uniform_C1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/uniform-c1--e52abc839c1ebf4e8042070b.md) | 146 | `result-track:e52abc839c1ebf4e8042070b75c16182d4f80abbd79f69a9416f1ada830ca474` |
| 22 | `def` | [enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/enclosure--c8a12e77add311b9e1b2393c.md) | 158 | `declaration-track:c8a12e77add311b9e1b2393cf736fe25358ae6e7c5c50f9a8071645097610b10` |
| 23 | `theorem` | [excludes_pair](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/excludes-pair--c56c1e5087a41a67609fee4a.md) | 167 | `result-track:c56c1e5087a41a67609fee4a26cd411f0afe0ab6dcd5315576895fb93458dd6d` |
| 24 | `theorem` | [rhOn_of_model_channels](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/rhon-of-model-channels--461a3c79a20b5282f70f84b8.md) | 176 | `result-track:461a3c79a20b5282f70f84b83395156e884529c25bc7cbb8ecd45c15060e2880` |
| 25 | `theorem` | [window_successor_of_model_channels](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/window-successor-of-model-channels--030bfc287b8addca6e22225f.md) | 198 | `result-track:030bfc287b8addca6e22225f913271684fe58c5794133df8c58d902ec192af85` |
| 26 | `lemma` | [excluded_pole_control](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMultiplierNormalized.lean/declarations/excluded-pole-control--375b00177236b6d9b11d0733.md) | 209 | `result-track:375b00177236b6d9b11d0733ac71c888b4dcdc9741eeb40244359695ef031e28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
