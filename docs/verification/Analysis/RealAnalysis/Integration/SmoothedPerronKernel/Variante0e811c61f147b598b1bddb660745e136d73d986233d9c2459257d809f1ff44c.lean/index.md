# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothedPerronKernel.Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "466f88a40275564abf7b79356ff47b938e9b6ac9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `466f88a40275564abf7b79356ff47b938e9b6ac9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/kernelintegrand-integrable-ioi-zero--36bd1d8bd7012f76391d4e58.md) | 18 | `result-track:36bd1d8bd7012f76391d4e58f4b2b1b48b6ae76f5df547aead029a3faa2b99e2` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/integral-first-moment--c4f2930d70ebf80408fbe64d.md) | 32 | `result-track:c4f2930d70ebf80408fbe64d4e22948f21c3807f4f1b7c89ed2dbb97b990c0bd` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/dampedramp--d3ebc61501533ec9917cf437.md) | 54 | `declaration-track:d3ebc61501533ec9917cf4376be39379b866f1a11cf1837066f6dfb32f5d420d` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/dampedramp-continuous--c8a0fc8fe8e4fc34e16ea953.md) | 58 | `result-track:c8a0fc8fe8e4fc34e16ea953eef150f85f80530f11ad95610f12cbed740acac1` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/dampedramp-eq-indicator--0ad0f6caa3ee3e9dc92a6283.md) | 63 | `result-track:0ad0f6caa3ee3e9dc92a62838211190beadb4bd2dcefca8db9847751b261bdbf` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/dampedramp-integrable--68ca3f6b5de147375defe353.md) | 71 | `result-track:68ca3f6b5de147375defe353bd2816678be03421fb01e60754b89b8b180e5c37` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/dampedramp-fourier--a57b323f56c3760a18c41dd1.md) | 76 | `result-track:a57b323f56c3760a18c41dd1e71826eb61fdb2f3ca28d7b4fbfaf0984e54ed64` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/reciprocal-square-integrable--6ac7001914b0ad4679b501a0.md) | 95 | `result-track:6ac7001914b0ad4679b501a04dadff2f503220cd611c97a0c776ba459c03144d` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/dampedramp-fourier-integrable--8bdc682fa23353771e4d8fb0.md) | 109 | `result-track:8bdc682fa23353771e4d8fb07b4485b8f05c291b9973e4c340657102f5d43cdb` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/perronintegrand--ec2257d8852baa93c82ab592.md) | 121 | `declaration-track:ec2257d8852baa93c82ab5925b499844765e444cb1c55d12a2302ec94a75b3e6` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/perronintegrand-integrable--c85705dcf44613cb16cf5cb6.md) | 126 | `result-track:c85705dcf44613cb16cf5cb6026f520200dcc8e0f03e821e36993ff92c3a116e` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/vertical-ramp-inversion--50c0b025144a0c1b2ce5b584.md) | 139 | `result-track:50c0b025144a0c1b2ce5b5845875536bfa907a5b0c5ae7d2106a8317629ef807` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/elementary-perron-kernel--561e17616d6f9b06f249a930.md) | 165 | `result-track:561e17616d6f9b06f249a930c32d6a68d01c5ffb99e924291f90966e882a3cfd` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/elementary-perron-endpoint--b595e6e1c5fdfb94f0a07a54.md) | 188 | `result-track:b595e6e1c5fdfb94f0a07a54c86d399cd3b2f85bb39f04cd55540793434a8a71` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/declarations/elementary-perron-ratio--f0601e0d6074202f6e9583c4.md) | 193 | `result-track:f0601e0d6074202f6e9583c4c68974ae109fd609440a9cdaaf31be4be5d458de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
