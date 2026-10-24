# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensionBilinear.Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28992ed2ec8585592dea00c5483b2a1a20e87815",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28992ed2ec8585592dea00c5483b2a1a20e87815`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.toContinuousBilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/declarations/linearmap-tocontinuousbilinearmap--2f1d4cec45dccd984ade3765.md) | 38 | `declaration-track:2f1d4cec45dccd984ade3765acaff3cf77e97c5af40f7ee128bf6f84740fd8e0` |
| 2 | `lemma` | [LinearMap.toContinuousBilinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/declarations/linearmap-tocontinuousbilinearmap-apply--49dd7b547e6c03e34df05394.md) | 43 | `result-track:49dd7b547e6c03e34df0539489660ee2ed24564c2fa5a91854015ec16935de47` |
| 3 | `def` | [IsBilinearMap.toContinuousBilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/declarations/isbilinearmap-tocontinuousbilinearmap--f35c386cba0635d63414fcfd.md) | 48 | `declaration-track:f35c386cba0635d63414fcfd568d111fb821b8f39d266fe04b501304288f8b8e` |
| 4 | `lemma` | [IsBilinearMap.toContinuousBilinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/declarations/isbilinearmap-tocontinuousbilinearmap-apply--6b034b62f4fde675fdb912b2.md) | 53 | `result-track:6b034b62f4fde675fdb912b2ccaa38329b54e6dba881ab94be404bb9629b791b` |
| 5 | `def` | [ContinuousLinearMap.evalL](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/declarations/continuouslinearmap-evall--b194c9c82d2cdefecf384814.md) | 65 | `declaration-track:b194c9c82d2cdefecf3848141c16aeaeba4ddc9d72fc7773f329c205be2f6e93` |
| 6 | `lemma` | [ContinuousLinearMap.evalL_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variant8d46fdebd70835c3f8b63b6614fe3bc5ff98cf37676e5dae83a632cd663cb266.lean/declarations/continuouslinearmap-evall-apply--fb3adf958e9dc07ec819d5f1.md) | 69 | `result-track:fb3adf958e9dc07ec819d5f1e95c49e30ff2c58f779d9e15499a5304fe90ee4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
