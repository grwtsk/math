# Verification target: GRWTSK.Analysis.DigammaSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d7301274e0a4219c4690105ce02dd71e8ac6d7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DigammaSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Analysis/DigammaSeries.lean/index.md) · [Full source](../../../mathematics/Analysis/DigammaSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d7301274e0a4219c4690105ce02dd71e8ac6d7`.

Source path: `GRWTSK/Analysis/DigammaSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DigammaSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.ENNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_nat_ne_zero](../../../mathematics/Analysis/DigammaSeries.lean/declarations/add-nat-ne-zero--69202e82f29d40ac8f0f3dd2.md) | 23 | `result-track:69202e82f29d40ac8f0f3dd26ab5fa041726191516943fe0fd89be3dcf2b9f08` |
| 2 | `theorem` | [differentiableAt_gammaSeq](../../../mathematics/Analysis/DigammaSeries.lean/declarations/differentiableat-gammaseq--ec3a04ed559d5cd0dbdddf85.md) | 31 | `result-track:ec3a04ed559d5cd0dbdddf8513a734c785e5d0725fd76b94e9cbdc799e1a7c83` |
| 3 | `theorem` | [logDeriv_gammaSeq](../../../mathematics/Analysis/DigammaSeries.lean/declarations/logderiv-gammaseq--2be41e61316e0592a4402e4b.md) | 41 | `result-track:2be41e61316e0592a4402e4b8abe7cf2e9bb3a133314275d086563298b8e5230` |
| 4 | `theorem` | [reciprocal_difference](../../../mathematics/Analysis/DigammaSeries.lean/declarations/reciprocal-difference--6a2600a2e0fc221815102416.md) | 65 | `result-track:6a2600a2e0fc2218151024166c0ec0987f73301b01314e2323d8be8324e37b0b` |
| 5 | `theorem` | [gammaSeq_difference](../../../mathematics/Analysis/DigammaSeries.lean/declarations/gammaseq-difference--62464f3f1ef771e141ceab5a.md) | 78 | `result-track:62464f3f1ef771e141ceab5a826c9e8d01f67c4cf71a0d970908f868a2db42c5` |
| 6 | `def` | [eulerKernel](../../../mathematics/Analysis/DigammaSeries.lean/declarations/eulerkernel--1c4aca8a14e766538c2235df.md) | 94 | `declaration-track:1c4aca8a14e766538c2235dfab222dfce07bb8ae8bbc64ac619d5519bdba9ac4` |
| 7 | `theorem` | [eulerKernel_nonneg](../../../mathematics/Analysis/DigammaSeries.lean/declarations/eulerkernel-nonneg--d0bde41217adb4d27c3263f1.md) | 97 | `result-track:d0bde41217adb4d27c3263f183218b821c03e8d98c9d27aca620d3f105172630` |
| 8 | `theorem` | [eulerKernel_le](../../../mathematics/Analysis/DigammaSeries.lean/declarations/eulerkernel-le--ff02b1d2187d4dbe410733ca.md) | 105 | `result-track:ff02b1d2187d4dbe410733ca853a43a7e30d723e492362af36fc7ea32df45e8b` |
| 9 | `theorem` | [eulerKernel_tendsto](../../../mathematics/Analysis/DigammaSeries.lean/declarations/eulerkernel-tendsto--b404983ca840b010f5661069.md) | 114 | `result-track:b404983ca840b010f56610690f4a4582a33bef68c10c451473a960e005fcf0f9` |
| 10 | `theorem` | [eulerKernel_measurable](../../../mathematics/Analysis/DigammaSeries.lean/declarations/eulerkernel-measurable--efefb99fa4a9bc9a8b56c9ae.md) | 122 | `result-track:efefb99fa4a9bc9a8b56c9ae2f0fc2ffbb51f02ca36b39cbaa346ce5f4c5fdb5` |
| 11 | `theorem` | [euler_integrand_integrable](../../../mathematics/Analysis/DigammaSeries.lean/declarations/euler-integrand-integrable--6815ef93ff1ac6b3757cdacc.md) | 125 | `result-track:6815ef93ff1ac6b3757cdacc493c073f6e0b8bd2ba73d8a8d2a1531c0b525c2a` |
| 12 | `theorem` | [gammaSeq_integral](../../../mathematics/Analysis/DigammaSeries.lean/declarations/gammaseq-integral--ed2757b37176660c5c78aabb.md) | 139 | `result-track:ed2757b37176660c5c78aabbe33ea4f3d6549292fe9e1398dc4cd66da80a22ce` |
| 13 | `def` | [errorEnvelope](../../../mathematics/Analysis/DigammaSeries.lean/declarations/errorenvelope--925fa828cfd1b870a27f70f7.md) | 157 | `declaration-track:925fa828cfd1b870a27f70f71fadf98c50dddbb19472b07eff0db26df5b57f01` |
| 14 | `theorem` | [errorEnvelope_bound](../../../mathematics/Analysis/DigammaSeries.lean/declarations/errorenvelope-bound--f31881463feda6f27a45aff8.md) | 160 | `result-track:f31881463feda6f27a45aff862ae203ddf923dfb5a79f7b61a1455e31eb5caa3` |
| 15 | `theorem` | [errorEnvelope_integrable](../../../mathematics/Analysis/DigammaSeries.lean/declarations/errorenvelope-integrable--dd9f050a5b43d4dfd2c06adb.md) | 168 | `result-track:dd9f050a5b43d4dfd2c06adb1ffde41c9cd30825204890d6b66848ca8ccffba1` |
| 16 | `theorem` | [errorEnvelope_integral_tendsto](../../../mathematics/Analysis/DigammaSeries.lean/declarations/errorenvelope-integral-tendsto--ab53daeff3e1bf9d4eed2ebd.md) | 180 | `result-track:ab53daeff3e1bf9d4eed2ebd73ed54bd11dc37ab13082b97e8ab5a27ff64f3b8` |
| 17 | `theorem` | [rpow_strip_bound](../../../mathematics/Analysis/DigammaSeries.lean/declarations/rpow-strip-bound--4aaffe2a9c683b54c5a28362.md) | 196 | `result-track:4aaffe2a9c683b54c5a28362145451d481b7c483e717e85a9da29c3c83fdb8a5` |
| 18 | `theorem` | [gammaSeq_error_bound](../../../mathematics/Analysis/DigammaSeries.lean/declarations/gammaseq-error-bound--60a363195101583278d055a8.md) | 204 | `result-track:60a363195101583278d055a877dfc42ec5b3c9c84af8b9254a730462b8454769` |
| 19 | `theorem` | [gammaSeq_uniformly_on_strip](../../../mathematics/Analysis/DigammaSeries.lean/declarations/gammaseq-uniformly-on-strip--9cbd96ca8c514f59848400fd.md) | 222 | `result-track:9cbd96ca8c514f59848400fd7073e84bd70bcdf230a4a7feb4c202e7d28f227f` |
| 20 | `theorem` | [gammaSeq_locally_uniform](../../../mathematics/Analysis/DigammaSeries.lean/declarations/gammaseq-locally-uniform--3ff2d3d410990c4565c60c0d.md) | 234 | `result-track:3ff2d3d410990c4565c60c0d321684c477207e061dc445ad87bbcf269b30f3d2` |
| 21 | `def` | [EulerDerivativeLimit](../../../mathematics/Analysis/DigammaSeries.lean/declarations/eulerderivativelimit--57476443df53bd040d834de0.md) | 252 | `declaration-track:57476443df53bd040d834de06196862379a595db110038ba36612c292b9091ff` |
| 22 | `theorem` | [logDeriv_tendsto_of_derivative_limit](../../../mathematics/Analysis/DigammaSeries.lean/declarations/logderiv-tendsto-of-derivative-limit--8d9023f3f85c282c8558f5bc.md) | 259 | `result-track:8d9023f3f85c282c8558f5bce9c1f7a0e59bf1086c3e7334b68bb5b1a93fc292` |
| 23 | `theorem` | [derivative_limit_of_locally_uniform](../../../mathematics/Analysis/DigammaSeries.lean/declarations/derivative-limit-of-locally-uniform--328e42a4e57a67f45b465b0e.md) | 267 | `result-track:328e42a4e57a67f45b465b0ed1d58c774f7a7dae144bcde081cebbed1b330dc0` |
| 24 | `theorem` | [hasSum_difference_of_derivative_limit](../../../mathematics/Analysis/DigammaSeries.lean/declarations/hassum-difference-of-derivative-limit--a73d1b358a572d636c864a98.md) | 280 | `result-track:a73d1b358a572d636c864a9817e01ddbceb3e5235b7282d21615fa6795308444` |
| 25 | `theorem` | [euler_derivative_limit](../../../mathematics/Analysis/DigammaSeries.lean/declarations/euler-derivative-limit--42e30187657ce5872c1c0934.md) | 297 | `result-track:42e30187657ce5872c1c093412258c25ac0f339e1ea8d7fb40a53346232b2a0c` |
| 26 | `theorem` | [hasSum_difference](../../../mathematics/Analysis/DigammaSeries.lean/declarations/hassum-difference--117807ed6a0cefa6e9539bb2.md) | 301 | `result-track:117807ed6a0cefa6e9539bb213513558870778d78928c8e064772bde91e485b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
