# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb666b266ffbe8f4ca8debc3caff7bc1192e2c2c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb666b266ffbe8f4ca8debc3caff7bc1192e2c2c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/compactlaplace--fdb62cefdcf1b6e7cb42c184.md) | 22 | `declaration-track:fdb62cefdcf1b6e7cb42c18423e627cf58388342b3d060da1a583f720f6f6ef3` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/primitivetransform--2a8f9695c819654aafbd196c.md) | 25 | `declaration-track:2a8f9695c819654aafbd196cb20cc6d21b0783612e06b6bf446b209dac551cb7` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/normalizedprimitivetransform--efa211be06f189c9e9a95824.md) | 27 | `declaration-track:efa211be06f189c9e9a95824ad2f52f5e0e5774bb3f60078acc86be428f8f253` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/compactlaplace-integrable--d58aca5747f94238318255d6.md) | 30 | `result-track:d58aca5747f94238318255d6d94aa32443475e2b26e046fa3cba4c47220b6f25` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/complex-weighted-derivative--f523d138b43c4522df3d4460.md) | 37 | `result-track:f523d138b43c4522df3d446070c0de36eab8af7e82ac2922fe18cad222fde050` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/actual-complex-pole-filter--84a081bb054326bf7984d566.md) | 66 | `result-track:84a081bb054326bf7984d566e387695aa2ea2f30d460029521934c3f445bd98c` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/primitive-transform-normalization--432101c5c42b07ec147e55d1.md) | 93 | `result-track:432101c5c42b07ec147e55d10036216dda6735b2c6d91c427ed88200dc2e3cc5` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/boundary-transform-factored--ff56168e7ee3271c9a7bcde6.md) | 103 | `result-track:ff56168e7ee3271c9a7bcde6c9d5f106a6595e5983ee2290712b137cbbf1e375` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/boundary-transform-factored-unnormalized--42f4c14fe537756ac2a83046.md) | 110 | `result-track:42f4c14fe537756ac2a830465e6d2fde39caa3e54bdbdbac554c0a0940b7d6fa` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/compactlaplace-hasderivat--34ceb4895b5f62b208fc74ec.md) | 120 | `result-track:34ceb4895b5f62b208fc74ec9feb4e4c37d257619c866b68c8c0b0884725a099` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/compactlaplace-differentiable--ac453bcd277697c1a3014eb9.md) | 165 | `result-track:ac453bcd277697c1a3014eb9bbdfc6b8a97452c70398a032e8484062b4dde445` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/normalized-primitive-differentiable--0856b132350ebc9be0a910ca.md) | 169 | `result-track:0856b132350ebc9be0a910ca694f2b12ff1ef31eed1046ca9e12ec6ca1943d29` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/primitive-differentiable--a1b83cf7b8e82b6df948564e.md) | 174 | `result-track:a1b83cf7b8e82b6df948564ea617ffbb0fb170bc3766473bc84b77caab1f1e96` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/boundary-differentiable--cc6a25dbe663aaf2023ff1a1.md) | 182 | `result-track:cc6a25dbe663aaf2023ff1a131ecece3e92ca6e9f3aba9cf8d97794f03445365` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/normalized-primitive-half--5b7f95d5561e16e39689f1f0.md) | 191 | `result-track:5b7f95d5561e16e39689f1f08e6003414bb743d07709db7348614064e842954f` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant64d9ecf42d0b586588a90416a788003e591d9d97fdbbbe0cd7181e262133fec3.lean/declarations/normalized-primitive-half-ne-zero--561e5813f799021a4ff974b3.md) | 204 | `result-track:561e5813f799021a4ff974b3c0ad6da95ecd18bed175e355829807612b3cf50d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
