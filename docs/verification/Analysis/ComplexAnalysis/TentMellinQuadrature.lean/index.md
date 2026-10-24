# Verification target: GRWTSK.Analysis.Complex.TentMellinQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentMellinQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e`.

Source path: `GRWTSK/Analysis/Complex/TentMellinQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentMellinQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.IntervalMellinQuadrature`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinQuadrature.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure`](../../../../mathematics/Analysis/ErrorBounds/ComplexTaylorEnclosure.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineMass](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/affinemass--a16475e1adecc339d09a3aa5.md) | 29 | `declaration-track:a16475e1adecc339d09a3aa5f33e8039cbf63095b0ca95ca1ca0977561785334` |
| 2 | `theorem` | [integral_affine](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/integral-affine--504ed485808959f5c47796a5.md) | 31 | `result-track:504ed485808959f5c47796a5d1c6e77500fa68388c50bee147f0e2d681a73fc8` |
| 3 | `theorem` | [affine_density_integrable](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/affine-density-integrable--31159f131cb51b632dd3a50c.md) | 40 | `result-track:31159f131cb51b632dd3a50c9f5e0e75ce2787fcef8ce90e22f5aa9d89c7c7ce` |
| 4 | `theorem` | [midpoint_distance](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/midpoint-distance--2728c0748491963c63317a6b.md) | 48 | `result-track:2728c0748491963c63317a6b47f46c90be075aa5c89ef2c51d62b38bc7a4c389` |
| 5 | `theorem` | [affine_cell_error](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/affine-cell-error--a9d95f08fbd26fd20c317c0c.md) | 54 | `result-track:a9d95f08fbd26fd20c317c0cda98a59dac5ee32c8a613fe7849546739d3f2cd0` |
| 6 | `theorem` | [affine_partition_error](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/affine-partition-error--9b877063676b230afd32bc2d.md) | 104 | `result-track:9b877063676b230afd32bc2d38144aadc279a5eceaa0f1d849485865f9bbe5e2` |
| 7 | `def` | [halfNode](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/halfnode--a50e4eba6824f3a32e88e44b.md) | 125 | `declaration-track:a50e4eba6824f3a32e88e44b2c12e7484a442a46b8d400919eb397e385506ce2` |
| 8 | `def` | [halfMass](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/halfmass--abc0f5fd45899c50528829fa.md) | 129 | `declaration-track:abc0f5fd45899c50528829fa3cadef14a991a8092dc500635b3d3558ca4dc881` |
| 9 | `theorem` | [halfMass_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/halfmass-nonneg--7d64c6c5037f4f8c6bb16003.md) | 134 | `result-track:7d64c6c5037f4f8c6bb160032e2b2973b9fbb7d6c9cdaef905927d7162f76857` |
| 10 | `theorem` | [paired_mass](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/paired-mass--07946ac5413e8f3eab72635a.md) | 147 | `result-track:07946ac5413e8f3eab72635aacc7dbcd882d37f247a1f00fe03d93b871e9ead0` |
| 11 | `theorem` | [total_mass](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/total-mass--de791e91a00c2ab65e49160d.md) | 152 | `result-track:de791e91a00c2ab65e49160da2b2a32da9889514e938dd01535bc0946b3b5172` |
| 12 | `theorem` | [tent_samples_error](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/declarations/tent-samples-error--25ce2feee0a08bf85d059dbe.md) | 161 | `result-track:25ce2feee0a08bf85d059dbeeb89364c7e33315b1760ac8c21b990280ca96e39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
