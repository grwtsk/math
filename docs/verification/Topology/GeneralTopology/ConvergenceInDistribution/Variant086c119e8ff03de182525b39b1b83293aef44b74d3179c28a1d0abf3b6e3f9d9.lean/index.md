# Verification target: GRWTSK.Topology.GeneralTopology.ConvergenceInDistribution.Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1d2e9c667e753dfbcc5ade3cb0276aa30808ded",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1d2e9c667e753dfbcc5ade3cb0276aa30808ded`.

Source path: `GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean.json)

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
| 1 | `structure` | [TendstoInDistribution](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution--15e3737e135d4b0b7aa7c284.md) | 72 | `declaration-track:15e3737e135d4b0b7aa7c284147a1b402d116760e8ec529c1e9e9613983278da` |
| 2 | `theorem` | [tendstoInDistribution_iff_forall_integral_rclike_tendsto](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-iff-forall-integral-rclike-tendsto--3c47b6ca8a3753daa1ca69c0.md) | 80 | `result-track:3c47b6ca8a3753daa1ca69c0696a030de4f91afa48303161f3ec02f09c0af99d` |
| 3 | `lemma` | [tendstoInDistribution_const](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-const--9288f2ca8d8db173ac803b91.md) | 96 | `result-track:9288f2ca8d8db173ac803b91648dcebcfc45acb97381eb20c178ec9218e993e9` |
| 4 | `lemma` | [tendstoInDistribution_of_identDistrib](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-of-identdistrib--d7be25232c1351b60c4e980f.md) | 102 | `result-track:d7be25232c1351b60c4e980ffeaec6e390be4e31ab0d6c074662621b7d1c5a0b` |
| 5 | `lemma` | [TendstoInDistribution.congr](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-congr--3f490bf19d908cb87fd0b86f.md) | 112 | `result-track:3f490bf19d908cb87fd0b86fae8258910fd1948f4cb03a4098e934e430175ba2` |
| 6 | `lemma` | [tendstoInDistribution_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-of-isempty--b5ef6ab49a3c0914a163d89a.md) | 124 | `result-track:b5ef6ab49a3c0914a163d89a9132d78efcbe97bafa0a0a6aa2e6045910344a3d` |
| 7 | `lemma` | [tendstoInDistribution_unique](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-unique--10331b3dddf17444e49aca3b.md) | 133 | `result-track:10331b3dddf17444e49aca3b12f0161411018d739a8b2762bc6692beaccbfcb7` |
| 8 | `theorem` | [TendstoInDistribution.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-continuous-comp--11572afb10de281106ec66ce.md) | 144 | `result-track:11572afb10de281106ec66ce4ef9331ce981f87ffa69d903917c5d1fcdfe9abf` |
| 9 | `theorem` | [tendstoInDistribution_of_ae_tendsto](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-of-ae-tendsto--4d6bfd82616da4398398f75c.md) | 160 | `result-track:4d6bfd82616da4398398f75c6278ef5ddc2461c1978aa67abef1f503e91176cb` |
| 10 | `theorem` | [TendstoInMeasure.tendstoInDistribution](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoinmeasure-tendstoindistribution--f470e0d988f2b0afe7c68f0b.md) | 183 | `result-track:f470e0d988f2b0afe7c68f0b831ec5c14681115cfa0726b3741fda8531294d53` |
| 11 | `lemma` | [tendstoInDistribution_of_tendstoInMeasure_sub](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-of-tendstoinmeasure-sub--ab493b28706cab53ebb0ad26.md) | 200 | `result-track:ab493b28706cab53ebb0ad26b4c779f15d171889d8aeccda32767df8dbfef865` |
| 12 | `lemma` | [TendstoInMeasure.tendstoInDistribution_of_aemeasurable](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoinmeasure-tendstoindistribution-of-aemeasurable--66c0a0269bb1037ac36c8c6a.md) | 312 | `result-track:66c0a0269bb1037ac36c8c6a9d13fb3fb9f2947b2529e608638d93866f89f4ef` |
| 13 | `theorem` | [TendstoInDistribution.prodMk_of_tendstoInMeasure_const](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-prodmk-of-tendstoinmeasure-const--215fbed7985d8e4e5f8aa7cc.md) | 321 | `result-track:215fbed7985d8e4e5f8aa7cccb250aa81397bfa73ec0648f2cb654208752514a` |
| 14 | `theorem` | [TendstoInDistribution.continuous_comp_prodMk_of_tendstoInMeasure_const](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-continuous-comp-prodmk-of-tendstoinmeasure-const--bb1a0b0a4c23e4f03b192f2b.md) | 341 | `result-track:bb1a0b0a4c23e4f03b192f2b4d3334163501007ce5829aa19c25d12ccd38d650` |
| 15 | `lemma` | [TendstoInDistribution.add_of_tendstoInMeasure_const](../../../../../mathematics/Topology/GeneralTopology/ConvergenceInDistribution/Variant086c119e8ff03de182525b39b1b83293aef44b74d3179c28a1d0abf3b6e3f9d9.lean/declarations/tendstoindistribution-add-of-tendstoinmeasure-const--5e9928712bbf18d04f91f459.md) | 353 | `result-track:5e9928712bbf18d04f91f45972a9046cf07611f6193e8d1d59b2d5a075b495f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
