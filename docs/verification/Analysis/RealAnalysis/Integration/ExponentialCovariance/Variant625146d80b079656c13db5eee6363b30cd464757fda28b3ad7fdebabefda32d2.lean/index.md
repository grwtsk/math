# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ExponentialCovariance.Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa649b45adba9f8d16c4f763ab2c27b6fb6e1a90",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa649b45adba9f8d16c4f763ab2c27b6fb6e1a90`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/instance--b9c321ea38cbc0d5fdd2df3b.md) | 20 | `declaration-track:b9c321ea38cbc0d5fdd2df3b7e31ebd2f2871aa9cc4a9d93e3a6eb9d38eea4e1` |
| 2 | `def` | [controller](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/controller--3a0f0c73be9f1c7f29b7985f.md) | 25 | `declaration-track:3a0f0c73be9f1c7f29b7985fc5782cc5b473ecfd6b040e7006dd5cf9620bcabd` |
| 3 | `def` | [response](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/response--56eba67e7d6d0af23680fd99.md) | 29 | `declaration-track:56eba67e7d6d0af23680fd9982d664767a98435065c1f431cb697e250c0829ce` |
| 4 | `theorem` | [controller_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/controller-ae--b719e43ce9fb62e9c9c3710e.md) | 32 | `result-track:b719e43ce9fb62e9c9c3710e83ff82f98aade86c66e7d93b3edf27ac78aa1ac6` |
| 5 | `theorem` | [controller_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/controller-inner--93c16c6494cef2589a4b8209.md) | 41 | `result-track:93c16c6494cef2589a4b82098a2907d59ecd2dd1a9255ef3a685834697471d86` |
| 6 | `theorem` | [reference_inner_response](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/reference-inner-response--09e09f94113f5943f7617e58.md) | 47 | `result-track:09e09f94113f5943f7617e58d5c45ac4cf0ec3878f729c9425faa72ed83caa1e` |
| 7 | `theorem` | [response_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/response-ae--b60fa27f1fa4ea219318dda5.md) | 54 | `result-track:b60fa27f1fa4ea219318dda5bd5063ae23f618939898f4d4a0c34d99488b0c65` |
| 8 | `def` | [signedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/signedcorrelation--b899e37895e6e555f4d9c2e0.md) | 66 | `declaration-track:b899e37895e6e555f4d9c2e000cf3c1d2d96e4e1d4433b5b590e79d0c4e4a649` |
| 9 | `def` | [signedCovariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/signedcovariance--9ac60c32768d84222b787e31.md) | 70 | `declaration-track:9ac60c32768d84222b787e31e87b543dc7a54732f01afc88cebc31067574082f` |
| 10 | `theorem` | [signedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/signedcorrelation-integrable--0dc846d4bbb8b6c1effbe7a1.md) | 74 | `result-track:0dc846d4bbb8b6c1effbe7a1080c548c9c0ee9ab618d7412bd2a8c14e43cddf3` |
| 11 | `theorem` | [shifted_kernel_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/shifted-kernel-norm-integral--3e25d6ed2e87f417d2ed5f5e.md) | 81 | `result-track:3e25d6ed2e87f417d2ed5f5e746c57f2b8a877dac4bae4b2244d72e872491d88` |
| 12 | `theorem` | [signed_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/signed-product-integrable--0c9e50c36d4c21a4a6a40e2b.md) | 86 | `result-track:0c9e50c36d4c21a4a6a40e2b08c68eadfae764b0e33873ae414c51a792838574` |
| 13 | `theorem` | [weighted_signed_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/weighted-signed-product-integrable--8c888ffe9c7a88420fb7f4ee.md) | 109 | `result-track:8c888ffe9c7a88420fb7f4ee59276c63db5865a786bfa2e72ddf59e423ad9e81` |
| 14 | `theorem` | [signedCovariance_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/signedcovariance-integrable--ff2f7277a4d8ad649e08808c.md) | 123 | `result-track:ff2f7277a4d8ad649e08808cd9469deb16b036da0ed3ef2d704edbb07f63b5ce` |
| 15 | `theorem` | [signedCovariance_eq_reordered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/signedcovariance-eq-reordered--6782168e04c2d4beb404c613.md) | 129 | `result-track:6782168e04c2d4beb404c613639abb7b11fbe744c5c7d3cd8a221aaceefb9ccf` |
| 16 | `theorem` | [fullShift_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/fullshift-add--37044ec6d340130977642c12.md) | 137 | `result-track:37044ec6d340130977642c12e994d88dfbdf72e400125f1df5d684a67e4d5cd6` |
| 17 | `def` | [overlap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/overlap--ffe723d34c5bb1d612ab62c7.md) | 150 | `declaration-track:ffe723d34c5bb1d612ab62c7307c44087d27dd7e3a4542cf07cae6ebccfa78ab` |
| 18 | `theorem` | [shifted_controller_inner_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/shifted-controller-inner-of-le--7044770d3986c8a148593572.md) | 155 | `result-track:7044770d3986c8a148593572dd97b45c004451a69bdede85fda00157d9b9d892` |
| 19 | `theorem` | [shifted_controller_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/shifted-controller-inner--edbe7b3fd2f8d7021c6168f7.md) | 178 | `result-track:edbe7b3fd2f8d7021c6168f7b24b1b5cd9c04baa76c889b769d29ac76ed4c765` |
| 20 | `theorem` | [overlap_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/overlap-abs-le--ba29af3d002fbb00070251a0.md) | 189 | `result-track:ba29af3d002fbb00070251a0e676826b44fc5e9bda1ddabae7d2463220ed1a3c` |
| 21 | `theorem` | [overlap_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/overlap-measurable--bf50e2385e33cdce9df173f4.md) | 204 | `result-track:bf50e2385e33cdce9df173f4d1577f9d873fd7d2f8c13b5bded8ab2833508131` |
| 22 | `def` | [gramIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/gramintegrand--61484ac4aa9ec6a4a1cd082f.md) | 210 | `declaration-track:61484ac4aa9ec6a4a1cd082fbb41fb5e2d4425725e91aa0159f17de820ab68e3` |
| 23 | `theorem` | [gramIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/gramintegrand-integrable--f94ab8dde8bf9e3d7c57578c.md) | 214 | `result-track:f94ab8dde8bf9e3d7c57578c7a930b1dbb7ed79e7a83f3b059b08a3fb5566361` |
| 24 | `theorem` | [integral_inner_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/integral-inner-first--4d18cb33534d91e189b95fd5.md) | 226 | `result-track:4d18cb33534d91e189b95fd5bbe7875bb47e1ff35c42f0e43f41ce105e4f2f74` |
| 25 | `theorem` | [response_inner_full_double](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/response-inner-full-double--9628528d24d5b3516454020e.md) | 238 | `result-track:9628528d24d5b3516454020e74d3fb2463580210d8a7b918ccd4aaccfbb5a685` |
| 26 | `theorem` | [response_inner_double](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/declarations/response-inner-double--74d24b87d28ad987f13461af.md) | 261 | `result-track:74d24b87d28ad987f13461aff5fece4ba8fa1150b9a7b4b457782506a5269ca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
