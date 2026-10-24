# Verification target: GRWTSK.NumberTheory.Chebyshev.TentSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79fc0cd73f7e4ee9e8a66aa47307ef54cf44d87d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79fc0cd73f7e4ee9e8a66aa47307ef54cf44d87d`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.TentWeight`](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget`](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareCenter](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squarecenter--bfe0ac8d1f253fbec4d2122b.md) | 30 | `declaration-track:bfe0ac8d1f253fbec4d2122be164a58fb51b28ac527d6517483464f1ffba3156` |
| 2 | `def` | [squareRadius](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareradius--963f1120a2d099941aa8915a.md) | 33 | `declaration-track:963f1120a2d099941aa8915aa1daf9f8cdedec785ba82eabd27b8dc69273dbf5` |
| 3 | `theorem` | [squareRadius_pos](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareradius-pos--aa33129aeb46e011133be837.md) | 35 | `result-track:aa33129aeb46e011133be837aeff5e97597e25959a2b61d419cc196ae37f3be2` |
| 4 | `theorem` | [center_sub_radius](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/center-sub-radius--dfe2f31a1564cb586509ff04.md) | 40 | `result-track:dfe2f31a1564cb586509ff04be61eff0f620e401d2d8329556290134ef73a563` |
| 5 | `theorem` | [center_add_radius](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/center-add-radius--316d3c4dd5f5b334c84e0d51.md) | 45 | `result-track:316d3c4dd5f5b334c84e0d51b26a00b2d330182846f04b0a79946b63b8243025` |
| 6 | `def` | [squareWeight](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareweight--fdbe8e3f761400ddfc225676.md) | 51 | `declaration-track:fdbe8e3f761400ddfc225676e08d0b746dc51056308e75f21ceb5a7e3ddb1bba` |
| 7 | `theorem` | [squareWeight_nonneg](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareweight-nonneg--38f3724e1b139cf8caaa8db4.md) | 53 | `result-track:38f3724e1b139cf8caaa8db4f26e469c8940f81468be249c303f3676bca4a1ab` |
| 8 | `theorem` | [squareWeight_le_one](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareweight-le-one--ec43515ff328bd8a034a5db6.md) | 56 | `result-track:ec43515ff328bd8a034a5db6e59a76dbad28861514edd60b6f28883fba1e2889` |
| 9 | `theorem` | [squareWeight_pos_iff](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareweight-pos-iff--88cb5b4f5e82e44fa7099de2.md) | 59 | `result-track:88cb5b4f5e82e44fa7099de26fb4563d063b1a5a0cd0be116bec1d30740bd15b` |
| 10 | `theorem` | [squareWeight_eq_zero_of_outside](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareweight-eq-zero-of-outside--fe47f4f889a9bcc27ab4b3ac.md) | 65 | `result-track:fe47f4f889a9bcc27ab4b3acb24e628ef04cb3a2f00b00dfa061b9cc71d0cf2a` |
| 11 | `def` | [squareTentMangoldt](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squaretentmangoldt--27c5c31d344ca153c32cfb1b.md) | 72 | `declaration-track:27c5c31d344ca153c32cfb1b63b0623c641ebf923a6720fe175e959ee44b9032` |
| 12 | `def` | [firstRieszPrefix](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/firstrieszprefix--906b47077c2506e62cdb9a37.md) | 77 | `declaration-track:906b47077c2506e62cdb9a37b93f922f6b69cc1eeb8bd1946e3b5079ac760176` |
| 13 | `theorem` | [firstRieszPrefix_second_difference](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/firstrieszprefix-second-difference--13108d01c792b52f227a445e.md) | 80 | `result-track:13108d01c792b52f227a445e267f3766394bbc10ef9d2f7d27af225288a3ec26` |
| 14 | `theorem` | [squareTentMangoldt_eq_prefix](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squaretentmangoldt-eq-prefix--ccd35ed382d552ae2e92aa0f.md) | 96 | `result-track:ccd35ed382d552ae2e92aa0fde476ea428f89a4a2ef0f43c061bd59b1bcc554d` |
| 15 | `theorem` | [squareTentMangoldt_eq_riesz_difference](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squaretentmangoldt-eq-riesz-difference--e6fa9cce1294ccc4bc64dbd2.md) | 113 | `result-track:e6fa9cce1294ccc4bc64dbd25c4a6180769e3d8dc8fe2f4dae8fa86f2e13fe3a` |
| 16 | `theorem` | [squareTentMangoldt_nonneg](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squaretentmangoldt-nonneg--c179ec93842e29750359b961.md) | 128 | `result-track:c179ec93842e29750359b96140242dd7ab2c6f7cbe4efcd7e0ac1a1055a0a5af` |
| 17 | `theorem` | [prime_free_tent_le_properMass](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/prime-free-tent-le-propermass--a4b5c7a9357f3af2a6504dc5.md) | 134 | `result-track:a4b5c7a9357f3af2a6504dc5eb5f6a63ba9efbe5818166be72463c6cfc2a5c64` |
| 18 | `theorem` | [prime_in_square_of_tent_mass](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/prime-in-square-of-tent-mass--23770e8e48d5cfbfb4c2788b.md) | 157 | `result-track:23770e8e48d5cfbfb4c2788b926122373936153a232f45e03d65d87c31a4adf4` |
| 19 | `theorem` | [squareWeight_endpoints](../../../../mathematics/NumberTheory/Chebyshev/TentSource.lean/declarations/squareweight-endpoints--c9029b9c3f870c44bb4bb24f.md) | 168 | `result-track:c9029b9c3f870c44bb4bb24f13625f3fd46dab23309fbf043c1a7354dff3cc9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
