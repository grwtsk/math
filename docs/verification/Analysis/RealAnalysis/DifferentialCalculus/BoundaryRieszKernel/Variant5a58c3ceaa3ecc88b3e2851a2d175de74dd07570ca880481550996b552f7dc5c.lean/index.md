# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BoundaryRieszKernel.Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce1fff37dbb2cb87686318afaaa1ad07a7058802",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce1fff37dbb2cb87686318afaaa1ad07a7058802`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceBoundaryLayer` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendedBoundaryKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/extendedboundarykernel--56e4a06720cebb4b2164f357.md) | 27 | `declaration-track:56e4a06720cebb4b2164f3579f5cb89a2126583bcc81a467a506efe24f2324a5` |
| 2 | `theorem` | [extended_boundary_kernel_eq_boundary_kernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/extended-boundary-kernel-eq-boundary-kernel--e2491f5c20c7d084565efdb2.md) | 33 | `result-track:e2491f5c20c7d084565efdb2b1f51941c2e95f81340ada0958f314851d943427` |
| 3 | `theorem` | [boundary_profile_eq_pole_operator_monomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-profile-eq-pole-operator-monomial--4054a1b17bc70bf35a857f75.md) | 39 | `result-track:4054a1b17bc70bf35a857f75a505e40654008c52b24c7c72e6c137c4a9632394` |
| 4 | `def` | [boundaryRieszBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundaryrieszbase--3164ee9ad103693709cddf1b.md) | 48 | `declaration-track:3164ee9ad103693709cddf1b6e8669dd76aae3b220b99f6611bed6604907fdc6` |
| 5 | `def` | [rieszCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/rieszcoefficient--c4de6f517bcb1388e5b52c7f.md) | 52 | `declaration-track:c4de6f517bcb1388e5b52c7f8f68b8922fa4840efe81ad6e69aa6a3a066a7c2a` |
| 6 | `def` | [boundaryRieszTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundaryriesztransform--58a70def775264c7dda1783c.md) | 66 | `declaration-track:58a70def775264c7dda1783c5f4e86e9fb001c79f6904fa98455de99905ab35c` |
| 7 | `theorem` | [boundary_riesz_base_eq_monomial_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-base-eq-monomial-sum--622e8cb338a9b3889ce702ed.md) | 73 | `result-track:622e8cb338a9b3889ce702ed31a06d41ea5cdd25e2fee59206f6a1d023a84961` |
| 8 | `theorem` | [boundary_riesz_base_iterated_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-base-iterated-deriv--00a1c9b0a721d00b30c6fcf6.md) | 82 | `result-track:00a1c9b0a721d00b30c6fcf64e49917a86de961e55f2d0eb58dc1de4bb4284ff` |
| 9 | `theorem` | [boundary_riesz_base_zero_jets](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-base-zero-jets--81948f0cdb51b3db63963d35.md) | 94 | `result-track:81948f0cdb51b3db63963d35960ee449de5d7391fcaf530acd5ec0b2fdaea66d` |
| 10 | `theorem` | [boundary_riesz_base_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-base-second-deriv--d4ea4472523673f0257e416e.md) | 103 | `result-track:d4ea4472523673f0257e416e1c3ba1ae19e2116949c12d7b22e199a5d1bd9102` |
| 11 | `theorem` | [boundary_riesz_base_fourth_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-base-fourth-deriv--6f6ac134066f38a80c4eb6ab.md) | 112 | `result-track:6f6ac134066f38a80c4eb6ab1aa442877c25ee5459b3545de45057e271b8ffcd` |
| 12 | `theorem` | [extended_boundary_kernel_eq_pole_operator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/extended-boundary-kernel-eq-pole-operator--9303c5f893d2d187862ca9cc.md) | 121 | `result-track:9303c5f893d2d187862ca9cc1edcbf9507705c6673be1dcecd9ed2d1ef549670` |
| 13 | `theorem` | [extended_boundary_kernel_eq_monomial_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/extended-boundary-kernel-eq-monomial-sum--cfbebb0b320e37255d6a7e03.md) | 130 | `result-track:cfbebb0b320e37255d6a7e0303b5bea860c021b3e2a928278f9146725ca19e77` |
| 14 | `theorem` | [boundary_riesz_transform_double_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-double-factor--48bbfa19ddff1c9722275b6b.md) | 149 | `result-track:48bbfa19ddff1c9722275b6b071c517007c98ae1ba71ac9542000e333113d2aa` |
| 15 | `theorem` | [boundary_riesz_transform_at_right_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-at-right-pole--59ae58b385a0d15ec0cff6af.md) | 158 | `result-track:59ae58b385a0d15ec0cff6af00d0100306e6752bd1320d4b06bb9b5553ef6d9d` |
| 16 | `theorem` | [boundary_riesz_transform_at_left_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-at-left-pole--774b7969b0d1e258f33d735a.md) | 164 | `result-track:774b7969b0d1e258f33d735a603e6bb38794871d09586bb853a6213d52995305` |
| 17 | `def` | [boundaryRieszNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundaryriesznumerator--c47b1b7898c6ec7ef067cbaf.md) | 170 | `declaration-track:c47b1b7898c6ec7ef067cbafa42fa18a72b20eab851e2a7a3abb2478dde4f4fc` |
| 18 | `theorem` | [boundary_riesz_transform_pole_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-pole-normalization--60217188ccd3f712e48ce7f8.md) | 176 | `result-track:60217188ccd3f712e48ce7f8263e8daa53ccfd678f7c77164db0dee2538c2565` |
| 19 | `theorem` | [boundary_riesz_numerator_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-numerator-at-zero--e77c51934b8e197a6e2285ec.md) | 189 | `result-track:e77c51934b8e197a6e2285ec58da49738c3b30d952b4ec320e9ee0f81ad944b4` |
| 20 | `theorem` | [boundary_riesz_numerator_at_zero_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-numerator-at-zero-ne-zero--4e7bee42ffa06cee6fdb1a70.md) | 196 | `result-track:4e7bee42ffa06cee6fdb1a705590304e6b2c9e7edf5d6d1bbba45e2a1580acbd` |
| 21 | `theorem` | [boundary_riesz_numerator_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-numerator-continuous--61c29edd0381d26eb7935d94.md) | 205 | `result-track:61c29edd0381d26eb7935d94d816db5567a53d58eb62991cbf9b3edf78e2c1bf` |
| 22 | `theorem` | [boundary_riesz_transform_pole_limit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-pole-limit--19c81ac355f70b0253b6dba9.md) | 211 | `result-track:19c81ac355f70b0253b6dba921daef4d11109d67d3f5bfc39f0b032a54faca66` |
| 23 | `theorem` | [boundary_riesz_transform_meromorphic_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-meromorphic-at--697231a6f21d36e2d3ab16e1.md) | 226 | `result-track:697231a6f21d36e2d3ab16e155aa41d1b8629e7d0f910653537b137dcac17bda` |
| 24 | `theorem` | [boundary_riesz_transform_analytic_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-analytic-at--112373405e1b2b624ab04fae.md) | 232 | `result-track:112373405e1b2b624ab04fae8b45ba8754dba4d078407627fe90185e43ebcab5` |
| 25 | `theorem` | [boundary_riesz_transform_order_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-order-at-zero--b70840a66d8dc020ac130c55.md) | 239 | `result-track:b70840a66d8dc020ac130c55f5d7399cc317af837e0d1ab094c0865302a993bc` |
| 26 | `theorem` | [boundary_riesz_factorial_sum_eq_source_polynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-factorial-sum-eq-source-polynomial--38cb4b7f2c582b34c285d4c9.md) | 254 | `result-track:38cb4b7f2c582b34c285d4c914d8f71ddad322d60207c40b76dd04cb0b945449` |
| 27 | `theorem` | [boundary_riesz_transform_eq_source_polynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/declarations/boundary-riesz-transform-eq-source-polynomial--8d17a9db82152f29197ab782.md) | 268 | `result-track:8d17a9db82152f29197ab782f433b6a86809953bb6983c4dbda1ef2388187ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
