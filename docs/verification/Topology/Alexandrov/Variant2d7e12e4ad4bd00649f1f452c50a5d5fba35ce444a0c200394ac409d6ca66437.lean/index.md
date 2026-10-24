# Verification target: GRWTSK.Topology.Alexandrov.Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d584220c37ddce33bbd69a2cb6b88cf10e2b49",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/index.md) · [Full source](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d584220c37ddce33bbd69a2cb6b88cf10e2b49`.

Source path: `GRWTSK/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [principalOpen](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/principalopen--034139911c28f7adc79af1b5.md) | 42 | `declaration-track:034139911c28f7adc79af1b59b879055b9e410fd2c9cc00751714583a37bc72f` |
| 2 | `lemma` | [self_mem_principalOpen](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/self-mem-principalopen--33d99799ed021467e1b3f3e2.md) | 47 | `result-track:33d99799ed021467e1b3f3e2afc2d484adc62647d802a59be00492e70876e439` |
| 3 | `lemma` | [principalOpen_le_iff](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/principalopen-le-iff--7cc83740c9abb11c70e1d2ed.md) | 50 | `result-track:7cc83740c9abb11c70e1d2edc28bdfa11f3304f84e39c2e69f0d5da4a9272d6d` |
| 4 | `lemma` | [principalOpen_le](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/principalopen-le--f33ae8ecddb8db08f1f73d02.md) | 57 | `result-track:f33ae8ecddb8db08f1f73d02c9711833ec0e0c349e0611a86f55be7498cb3e9a` |
| 5 | `def` | [principals](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/principals--ef53e5f69347096e21f7cfaa.md) | 64 | `declaration-track:ef53e5f69347096e21f7cfaaf5f6c908816ac54e5a8ca762bbb263a7c755878d` |
| 6 | `lemma` | [exists_le_of_le_sup](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/exists-le-of-le-sup--9d697d6dc93bfd55f8ddc4d8.md) | 68 | `result-track:9d697d6dc93bfd55f8ddc4d82869a9499b3d6cf211ab0ad65d55632376237732` |
| 7 | `abbrev` | [principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/principalskanextension--f62617dbf92965fb788d2834.md) | 74 | `declaration-track:f62617dbf92965fb788d28346112cd1d369a5ede631055c8e73f33462d8b2c67` |
| 8 | `abbrev` | [generator](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/generator--3ae0aec202e70a0ab0ffed6a.md) | 79 | `declaration-track:3ae0aec202e70a0ab0ffed6a29da8aba17a49e51783586dfb12e603a9707a303` |
| 9 | `def` | [projSup](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/projsup--6320dd6dfc6f7b7d62675cc1.md) | 91 | `declaration-track:6320dd6dfc6f7b7d62675cc1156f26329d111561af25e043111ffb0f63230ca8` |
| 10 | `def` | [lowerCone](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/lowercone--f30a64b6a68605a4e8f57824.md) | 102 | `declaration-track:f30a64b6a68605a4e8f57824e517135e2c5781f6f0e58b7fcfcf483fa2210f86` |
| 11 | `def` | [isLimit](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/islimit--5436d0889077438ab3a8996a.md) | 137 | `declaration-track:5436d0889077438ab3a8996a9259c675343d92366081385e2b2c2b68d3792c7c` |
| 12 | `theorem` | [isSheaf_principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/issheaf-principalskanextension--cceed05c4f23ec5af6ddfed0.md) | 171 | `result-track:cceed05c4f23ec5af6ddfed02a90dcb7a3c207e11d5f5df3517e64e8370dc57b` |
| 13 | `theorem` | [Topology.IsUpperSet.isSheaf_of_isRightKanExtension](../../../../mathematics/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/declarations/topology-isupperset-issheaf-of-isrightkanextension--f426299d51b077e537f5f846.md) | 190 | `result-track:f426299d51b077e537f5f846fb47744d8a277038cb7b485a522a8e13a6e16386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
