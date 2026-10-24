# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4765a9026e9bb9d90fb014330f16604db81083f0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4765a9026e9bb9d90fb014330f16604db81083f0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoTailDefect`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripThirteenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightBernstein.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTwelveHeightSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTwelveHeightSeed.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [thirteen_height_squares](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/thirteen-height-squares--7df9ae197fca323edac90b6b.md) | 24 | `result-track:7df9ae197fca323edac90b6b191227945b9c098d4259ba31f5799fb2019fe9c5` |
| 2 | `theorem` | [finite_term_projection_lower_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/finite-term-projection-lower-thirteen--15f37c4b889c875aba188c31.md) | 31 | `result-track:15f37c4b889c875aba188c310ae7a4e70826900816c28ef3cf5663e22585d8e4` |
| 3 | `lemma` | [thirteen_tailCoefficient_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/thirteen-tailcoefficient-bound--1f6d3a42fa3b4b87f7f78db1.md) | 67 | `result-track:1f6d3a42fa3b4b87f7f78db1b71922bd20917c19ebd52009a6dd99ae57b276a8` |
| 4 | `theorem` | [thirteen_tail_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/thirteen-tail-error--3a8e220d31ad4646622ea5d0.md) | 81 | `result-track:3a8e220d31ad4646622ea5d0f95612fbbf6b907de7ee85d17422fa26482490a8` |
| 5 | `theorem` | [thirteen_source_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/thirteen-source-projection--9512984cb6c61e7a7e829997.md) | 94 | `result-track:9512984cb6c61e7a7e829997efa968d46e3da722a65d5e2b9035a770f33986ba` |
| 6 | `theorem` | [poleNormalized_norm_lower_thirteenBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/polenormalized-norm-lower-thirteenband--48e5b803b9cb287e99b9dd8c.md) | 115 | `result-track:48e5b803b9cb287e99b9dd8c9d80502d0eaf1cdb7612dd1336fc9fd44ddf78d4` |
| 7 | `theorem` | [poleNormalized_norm_lower_thirteenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/polenormalized-norm-lower-thirteenheight--22e2e6253c67cdd58546f3f6.md) | 126 | `result-track:22e2e6253c67cdd58546f3f6eb2ae7b972b2c8b78e19db000182670ac3a8cf7d` |
| 8 | `theorem` | [poleNormalized_nonzero_thirteenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/polenormalized-nonzero-thirteenheight--658481a9ee7c142ee50dea52.md) | 134 | `result-track:658481a9ee7c142ee50dea52f1f6bc301ecfd1cd3e382e454ba88f5639b25eea` |
| 9 | `theorem` | [nontrivialZetaZero_height_gt_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/nontrivialzetazero-height-gt-thirteen--d1b6087d9bdffdbdb4ac3cf9.md) | 142 | `result-track:d1b6087d9bdffdbdb4ac3cf99f35f02de0480cb30e08dacdbedd1edbaf815b83` |
| 10 | `theorem` | [noTargetZero_thirteenHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/notargetzero-thirteenheight--7bee59feec71a56cb8dcdc0b.md) | 159 | `result-track:7bee59feec71a56cb8dcdc0b31dbf48fa915bfff228f544b880e5d7ea14666a5` |
| 11 | `theorem` | [windowRH_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/windowrh-thirteen--49c10b9b055ecce060a14366.md) | 164 | `result-track:49c10b9b055ecce060a143660f7af9e16f038f35a0f6cfccc4350f3df8facfcf` |
| 12 | `theorem` | [shellRH_twelve](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/shellrh-twelve--73a730b642677776fa35064c.md) | 170 | `result-track:73a730b642677776fa35064c18ce1d436e070404e695a06e4d2b5ca842aaa678` |
| 13 | `theorem` | [deformation_projection_thirteenBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/deformation-projection-thirteenband--0384cd8d26022998360fe341.md) | 173 | `result-track:0384cd8d26022998360fe341e53252e6105f3490427a1629f412eb721baecf20` |
| 14 | `theorem` | [deformation_norm_lower_thirteenBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/deformation-norm-lower-thirteenband--050ef535ab842fce42c72538.md) | 193 | `result-track:050ef535ab842fce42c72538c81135b5d0e3a3a9192d1bd71663a47324f5cbc7` |
| 15 | `theorem` | [inverse_deformation_differentiableAt_thirteenBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/inverse-deformation-differentiableat-thirteenband--bd759823d74cbc3f044b286e.md) | 203 | `result-track:bd759823d74cbc3f044b286e7b512821e9eeb77a56a8f3d9e5f0b55d5c47d397` |
| 16 | `theorem` | [window_fourteen_of_shell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/window-fourteen-of-shell--b1c78dc20291299d9e536ae9.md) | 214 | `result-track:b1c78dc20291299d9e536ae91ae14db1ef65f127604c8b01268f8875cdd8b849` |
| 17 | `theorem` | [all_windows_of_above_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/all-windows-of-above-thirteen--617b5a0d4987c52f6258c9ed.md) | 217 | `result-track:617b5a0d4987c52f6258c9edf0ec7194fdc4f0f0c3f3dcc51476b63c28462371` |
| 18 | `theorem` | [rh_of_above_thirteen](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripThirteenHeightSeed.lean/declarations/rh-of-above-thirteen--e08f897c5031b76d88a0d3ff.md) | 227 | `result-track:e08f897c5031b76d88a0d3ff4ad12ecbb8c684f1b4700beffa019fa498fb46f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
