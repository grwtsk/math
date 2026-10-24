# Verification target: GRWTSK.Topology.GeneralTopology.LinearPMap.Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf025ce6e2b1fd8bb36c628e6165af0cffbc401f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf025ce6e2b1fd8bb36c628e6165af0cffbc401f`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearPMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsClosed](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosed--be89c4a30fa327770223b8a3.md) | 65 | `declaration-track:be89c4a30fa327770223b8a377d07c8f45791122275bc00d5481664db554ff77` |
| 2 | `def` | [IsClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable--d251d462d634f1636f6831c2.md) | 72 | `declaration-track:d251d462d634f1636f6831c2f30ee7b78f9c30edbe62b9f37384f2c3f1c43078` |
| 3 | `theorem` | [IsClosed.isClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosed-isclosable--0aa19ca0913a4fd7bccceea5.md) | 76 | `result-track:0aa19ca0913a4fd7bccceea55f376113ee50e428d8b573c9bc150ad3f3a53e75` |
| 4 | `theorem` | [IsClosable.leIsClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-leisclosable--7d54548938a31882bdbe4e56.md) | 80 | `result-track:7d54548938a31882bdbe4e56d62ddf694b5b8ffba37829347ef36704b0c96247` |
| 5 | `theorem` | [IsClosable.existsUnique](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-existsunique--d020e6bec47ae69723309e96.md) | 91 | `result-track:d020e6bec47ae69723309e965ce4c1147685c542360906aca939d3d783c80996` |
| 6 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/closure--d1ef380c532fa14b774074f1.md) | 99 | `declaration-track:d1ef380c532fa14b774074f12240fae6433e2a2a5ea412bf6b0998a7fde2d5d1` |
| 7 | `theorem` | [closure_def](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/closure-def--d03e8d62643da9b79bac1eed.md) | 102 | `result-track:d03e8d62643da9b79bac1eed62c1132f5424a2c39742f4bd44ec179032a8e11e` |
| 8 | `theorem` | [closure_def'](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/closure-def--03cfc6c6bc5254a1ca0f9e00.md) | 105 | `result-track:03cfc6c6bc5254a1ca0f9e00a587747f12511ec5e73555dc7462881edcaba0bf` |
| 9 | `theorem` | [IsClosable.graph_closure_eq_closure_graph](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-graph-closure-eq-closure-graph--44648582053c677ae542af0d.md) | 109 | `result-track:44648582053c677ae542af0d2d052d65851f326609363d8e228ee5d59f9df2f0` |
| 10 | `theorem` | [le_closure](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/le-closure--fd0a27fc564703d3b549d312.md) | 115 | `result-track:fd0a27fc564703d3b549d3122b1578b2b8301ab1c20c9737e404f0c0d6689a50` |
| 11 | `theorem` | [IsClosable.closure_mono](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-closure-mono--92cecdc2b11ff024c36ff9f9.md) | 122 | `result-track:92cecdc2b11ff024c36ff9f974d0f6398b0d7d82e09161e4ad7e44b144b821c5` |
| 12 | `theorem` | [IsClosable.closure_isClosed](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-closure-isclosed--a688f2ca6832a0a4cc7e87ac.md) | 130 | `result-track:a688f2ca6832a0a4cc7e87acd417724f84d1b6a5c919a54e8349ef615b1cb353` |
| 13 | `theorem` | [IsClosable.closureIsClosable](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-closureisclosable--6a654a718a9917a8b60d1a15.md) | 135 | `result-track:6a654a718a9917a8b60d1a15d1e3cce324774ce840772f8d65f8aa79e82612ce` |
| 14 | `theorem` | [isClosable_iff_exists_closed_extension](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/isclosable-iff-exists-closed-extension--20f8a3cce26b68b8ae330cff.md) | 138 | `result-track:20f8a3cce26b68b8ae330cfff1b19ac06d93501fa163a909d64dfd33669f71da` |
| 15 | `structure` | [HasCore](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/hascore--dd8b8b542121fd28ced63090.md) | 147 | `declaration-track:dd8b8b542121fd28ced63090f913b4fb0a3c38e1db3c55ca297ac06a8a9d7268` |
| 16 | `theorem` | [hasCore_def](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/hascore-def--c06c76e94add0407ea2e2bc3.md) | 151 | `result-track:c06c76e94add0407ea2e2bc33d79d1132c736a0db03e37785d905f8abe2eeb59` |
| 17 | `theorem` | [closureHasCore](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/closurehascore--ae43c14b01754fa7525c354e.md) | 158 | `result-track:ae43c14b01754fa7525c354eb278d5787013dd91cc0e68be7ab7b7b47b12c621` |
| 18 | `theorem` | [closure_inverse_graph](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/closure-inverse-graph--c998e16b967f486cc63b90a8.md) | 178 | `result-track:c998e16b967f486cc63b90a8d3e5504ad4925bde07f3aa2a0bcbbc818fc0cc02` |
| 19 | `theorem` | [inverse_isClosable_iff](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/inverse-isclosable-iff--693f914b16f4b4e336eef184.md) | 195 | `result-track:693f914b16f4b4e336eef184b548eecfcc6d117463d91c2ea99a901b6d9600b5` |
| 20 | `theorem` | [inverse_closure](../../../../../mathematics/Topology/GeneralTopology/LinearPMap/Variant2e437a93b60a1c237443720f3bb0950fce40987e1f89006bce91703123689180.lean/declarations/inverse-closure--3d6025e7243b57c1ba612102.md) | 216 | `result-track:3d6025e7243b57c1ba6121023bc22819892b42ae23b0a814f5ab59204b0ee923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
