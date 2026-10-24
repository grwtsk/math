# Verification target: GRWTSK.Topology.AlgebraicTopology.ChainHomotopy.Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6729d27c3ea3969860c483728069e65e3ea69b52",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6729d27c3ea3969860c483728069e65e3ea69b52`.

Source path: `GRWTSK/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean.json)

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
| 1 | `def` | [hom](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/hom--4cc097e53e689180629decee.md) | 49 | `declaration-track:4cc097e53e689180629decee4ea9e11ada2f7313c300e05fb1414ce8b99f66dc` |
| 2 | `lemma` | [hom_eq](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/hom-eq--78e8852119afd961b12e7484.md) | 55 | `result-track:78e8852119afd961b12e7484d9ca31c3f47ce97cc69169ff1236d648de42bf23` |
| 3 | `lemma` | [hom_eq_zero](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/hom-eq-zero--e37e9b95224fdfa99d0d3a2d.md) | 60 | `result-track:e37e9b95224fdfa99d0d3a2dbd36616034c24b86576c3a445c51f2c71ee9ec66` |
| 4 | `lemma` | [comm_zero](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/comm-zero--5eb90be63092d6c379fa6022.md) | 64 | `result-track:5eb90be63092d6c379fa602281fe4e74472f1edfea24922a7bb64e3884ad32a6` |
| 5 | `lemma` | [comm_succ](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/comm-succ--a17f0c1f38799cdb098a3764.md) | 69 | `result-track:a17f0c1f38799cdb098a3764004eb4365ec2681ea47807a407d3665f7dbea361` |
| 6 | `def` | [toChainHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/tochainhomotopy--455c2a85eb2f272bbbec64d2.md) | 165 | `declaration-track:455c2a85eb2f272bbbec64d2cd665e47d96181d827442c2520d358f26bcbef24` |
| 7 | `theorem` | [map_homology_eq](../../../../../mathematics/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/declarations/map-homology-eq--656886a5cda7f8043a3714e2.md) | 180 | `result-track:656886a5cda7f8043a3714e2266727f4a2b3582774c3504299b2b7fc3b3dda4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
