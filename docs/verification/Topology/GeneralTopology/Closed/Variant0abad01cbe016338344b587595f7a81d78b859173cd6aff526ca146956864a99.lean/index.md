# Verification target: GRWTSK.Topology.GeneralTopology.Closed.Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e747bc9800c1664f63d0a2d294931606f5e88bc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e747bc9800c1664f63d0a2d294931606f5e88bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/close--e797088122321ebf0e47ef89.md) | 67 | `declaration-track:e797088122321ebf0e47ef893de1bb5c425f95fec12a8388a047fc2c385dc2b9` |
| 2 | `theorem` | [le_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/le-close--337e70cfae35e32505ad097a.md) | 72 | `result-track:337e70cfae35e32505ad097a00d2911b225870d94c0f2672057b50e750b983a7` |
| 3 | `def` | [IsClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/isclosed--3ae9f2150f4d8bc79c57d925.md) | 81 | `declaration-track:3ae9f2150f4d8bc79c57d92596a27f703c4c3316f624fd90d2877f7610e0bacd` |
| 4 | `theorem` | [covers_iff_mem_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/covers-iff-mem-of-isclosed--1f5aa282bedfe62406866fda.md) | 85 | `result-track:1f5aa282bedfe62406866fdaa4d604f315c5780268dbdcddcf50ca6d461eb5c4` |
| 5 | `theorem` | [isClosed_pullback](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/isclosed-pullback--6f836b5253825c1cec33390d.md) | 90 | `result-track:6f836b5253825c1cec33390d71bfd1e0a3b8dff86c71de16bbc0b84de60579c3` |
| 6 | `theorem` | [le_close_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/le-close-of-isclosed--06146a8c8547af00874b1aab.md) | 97 | `result-track:06146a8c8547af00874b1aab9b9c4b10b83e32bb27857f2260b03df4a02b0a9e` |
| 7 | `theorem` | [close_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/close-isclosed--acc13023ed11f765da19919d.md) | 102 | `result-track:acc13023ed11f765da19919d5069972a298b9442480fd04c88aa760750660b54` |
| 8 | `def` | [closureOperator](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/closureoperator--f7870be63957b4d5bc076e5b.md) | 107 | `declaration-track:f7870be63957b4d5bc076e5b146843a2d5fa256b79ef07748594d2f00199deca` |
| 9 | `theorem` | [isClosed_iff_close_eq_self](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/isclosed-iff-close-eq-self--3e1aade7f8c1b7cb6be2e30d.md) | 111 | `result-track:3e1aade7f8c1b7cb6be2e30d8a174ee6af16ae2a857992e00b11a3b318fa0222` |
| 10 | `theorem` | [close_eq_self_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/close-eq-self-of-isclosed--b497b79635b0fac1a280fa64.md) | 114 | `result-track:b497b79635b0fac1a280fa64532df66c0b9c6d4eb3fdeb43a4cefbe3f332e71e` |
| 11 | `theorem` | [pullback_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/pullback-close--1d852ce61c8de1d8f528c6ee.md) | 118 | `result-track:1d852ce61c8de1d8f528c6eef84200e39c92e24e9f502c1e06d882c782f35748` |
| 12 | `theorem` | [monotone_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/monotone-close--6a5035dc449cfe4c7a6f3efc.md) | 129 | `result-track:6a5035dc449cfe4c7a6f3efc3f4a7a1fb2c1d8b1ac930f2202b7720194f24e38` |
| 13 | `theorem` | [close_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/close-close--6f27b1757430ea50fb7df918.md) | 133 | `result-track:6f27b1757430ea50fb7df918e6d0bc057fb573ff1811ceff0b187bd1a121d394` |
| 14 | `theorem` | [close_eq_top_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/close-eq-top-iff-mem--28be78d2eeddec57c8949186.md) | 140 | `result-track:28be78d2eeddec57c894918651ebe790c851e1d346a5a1eaaed16338530690c2` |
| 15 | `def` | [Functor.closedSieves](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/functor-closedsieves--75ccfb441e75595fe8633140.md) | 159 | `declaration-track:75ccfb441e75595fe86331401ba3d40433c2ccd06f00263d394afa9c26887e06` |
| 16 | `theorem` | [classifier_isSheaf](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/classifier-issheaf--f59442e3245a2061f58be3b8.md) | 166 | `result-track:f59442e3245a2061f58be3b8dd31c1f58736067dbab987d30f1f94b76bd001b5` |
| 17 | `theorem` | [le_topology_of_closedSieves_isSheaf](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/le-topology-of-closedsieves-issheaf--c643704105223542faed6dd4.md) | 219 | `result-track:c643704105223542faed6dd4bae687c737e490406f9ee98d1bdf56a82033f5b6` |
| 18 | `theorem` | [topology_eq_iff_same_sheaves](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/topology-eq-iff-same-sheaves--4c97d17123f482a437b54b9c.md) | 239 | `result-track:4c97d17123f482a437b54b9c8afaaafab31c681da2a1181203d44a15bb4b121e` |
| 19 | `def` | [topologyOfClosureOperator](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/topologyofclosureoperator--3c1d78d873f4ffe6aad6629d.md) | 260 | `declaration-track:3c1d78d873f4ffe6aad6629dd23c875c796015e8ff8e116a61ee77a96e12ca28` |
| 20 | `theorem` | [topologyOfClosureOperator_self](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/topologyofclosureoperator-self--fcffbe69cfbefbe015c98b07.md) | 279 | `result-track:fcffbe69cfbefbe015c98b07ee95136d6396a5a8da458136030953086d358557` |
| 21 | `theorem` | [topologyOfClosureOperator_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant0abad01cbe016338344b587595f7a81d78b859173cd6aff526ca146956864a99.lean/declarations/topologyofclosureoperator-close--2ca7e51728afd6b8fbcd8587.md) | 284 | `result-track:2ca7e51728afd6b8fbcd858741837f243d74f53300bc0f4ed0d0506d56441761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
