# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousLinearMap.Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2df28154661ba42eeee398ddde212f03471a7e3d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2df28154661ba42eeee398ddde212f03471a7e3d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.mkContinuous](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-mkcontinuous--5305ff522148b9a9d53ac10e.md) | 51 | `declaration-track:5305ff522148b9a9d53ac10e584864a56465f45e028e2991c738ef2e9157288a` |
| 2 | `def` | [LinearMap.mkContinuousOfExistsBound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-mkcontinuousofexistsbound--57b789ed26c5be57b022cf35.md) | 57 | `declaration-track:57b789ed26c5be57b022cf35627e8ed661c76e8a59fc839eb81ae726168e1b84` |
| 3 | `theorem` | [continuous_of_linear_of_boundₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/continuous-of-linear-of-bound--2680e73b65551eb9f4e74094.md) | 62 | `result-track:2680e73b65551eb9f4e7409417209593f28ff52f49c1f41a9fcf5ab366bb5e77` |
| 4 | `theorem` | [continuous_of_linear_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/continuous-of-linear-of-bound--9eb8b239101c81d159ab2d86.md) | 71 | `result-track:9eb8b239101c81d159ab2d8688a36ad718569086838026afd0fbb6c334581028` |
| 5 | `theorem` | [LinearMap.mkContinuous_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-mkcontinuous-coe--f1158146f6f675e00da43257.md) | 81 | `result-track:f1158146f6f675e00da43257e010a8179468fe20adaa1fd563a56501806326d8` |
| 6 | `theorem` | [LinearMap.mkContinuous_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-mkcontinuous-apply--4ac3a1dabf8a48394935f670.md) | 86 | `result-track:4ac3a1dabf8a48394935f670efb3f173946250435d30039eebcb20b139926854` |
| 7 | `theorem` | [LinearMap.mkContinuousOfExistsBound_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-mkcontinuousofexistsbound-coe--8442aa10365cdae43246e7b9.md) | 91 | `result-track:8442aa10365cdae43246e7b9fb3f0cb9b8eee14e754b2ee06d7f4d9b09bca4ab` |
| 8 | `theorem` | [LinearMap.mkContinuousOfExistsBound_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-mkcontinuousofexistsbound-apply--a7a2ffb0d94e6dda515c3247.md) | 96 | `result-track:a7a2ffb0d94e6dda515c3247923e579a3cadf1fd72544332fe4cfc7903811250` |
| 9 | `theorem` | [antilipschitz_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/antilipschitz-of-bound--c19c2e1e5722a020a1da8924.md) | 102 | `result-track:c19c2e1e5722a020a1da8924bd32a8df557e42f81dafba1b071fd6ed51aa5124` |
| 10 | `theorem` | [bound_of_antilipschitz](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/bound-of-antilipschitz--6a61440ee9f4dc95f31a54d4.md) | 106 | `result-track:6a61440ee9f4dc95f31a54d4893a5e9f9880677346314cd295858deb13d956ef` |
| 11 | `def` | [LinearEquiv.toContinuousLinearEquivOfBounds](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearequiv-tocontinuouslinearequivofbounds--2ee2e4b2fe4beb31dbaa214e.md) | 118 | `declaration-track:2ee2e4b2fe4beb31dbaa214eab0dc59b681c4bd049379fc840eb8e6651e2f335` |
| 12 | `def` | [LinearMap.toContinuousLinearMap₁](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-tocontinuouslinearmap--c0f69cb0ad520cc8f73f5805.md) | 135 | `declaration-track:c0f69cb0ad520cc8f73f580584a6945007dd2706fe39bbef8dfc5c8d631559dd` |
| 13 | `theorem` | [LinearMap.toContinuousLinearMap₁_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-tocontinuouslinearmap-coe--ae197098704246b728af39d0.md) | 141 | `result-track:ae197098704246b728af39d042298e259373e46df93567bec7b6d5d764204f76` |
| 14 | `theorem` | [LinearMap.toContinuousLinearMap₁_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/linearmap-tocontinuouslinearmap-apply--b0ec54ee81e9d44cc12ec476.md) | 146 | `result-track:b0ec54ee81e9d44cc12ec47658eb64ddfa73df1d3f70fc6520aae46433cc1093` |
| 15 | `theorem` | [ContinuousLinearMap.isUniformEmbedding_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/continuouslinearmap-isuniformembedding-of-bound--4193aab337f92a9eae774fd5.md) | 157 | `result-track:4193aab337f92a9eae774fd563abe4bf7d0b68dbe3245d1071a0216489b72400` |
| 16 | `def` | [ContinuousLinearMap.ofHomothety](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/continuouslinearmap-ofhomothety--c1f56ce0a140df38fa47a26f.md) | 176 | `declaration-track:c1f56ce0a140df38fa47a26f96d5ec1bea09673979b9c37001c9617d61efbe43` |
| 17 | `theorem` | [ContinuousLinearEquiv.homothety_inverse](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/continuouslinearequiv-homothety-inverse--c6f4e85887be97368a176434.md) | 182 | `result-track:c6f4e85887be97368a176434c4cefa0f4eea82f9f716cf5e4c699ad884513242` |
| 18 | `def` | [ContinuousLinearEquiv.ofHomothety](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variantd726ea4375ed1d569c36a836695f8cfe30e3297ceee0e61a6ce880566d7eea2e.lean/declarations/continuouslinearequiv-ofhomothety--33b73351bd1c73bf246f3ee5.md) | 192 | `declaration-track:33b73351bd1c73bf246f3ee59a7669cbb785c7b18cf136081a72a338cf208452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
