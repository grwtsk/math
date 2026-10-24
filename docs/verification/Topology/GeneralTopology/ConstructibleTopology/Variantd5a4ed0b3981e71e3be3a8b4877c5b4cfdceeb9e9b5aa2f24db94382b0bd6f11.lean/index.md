# Verification target: GRWTSK.Topology.GeneralTopology.ConstructibleTopology.Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90d7077c2bb45c62317cf4eb6ffe777af477fd13",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90d7077c2bb45c62317cf4eb6ffe777af477fd13`.

Source path: `GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean.json)

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
| 1 | `def` | [constructibleTopologySubbasis](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/constructibletopologysubbasis--4c77c59d544a82043c0a40ee.md) | 37 | `declaration-track:4c77c59d544a82043c0a40eef39342da494091f99b4bc55386184baedc4d9204` |
| 2 | `def` | [constructibleTopology](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/constructibletopology--2aea20bc8d877578a7e8c796.md) | 43 | `declaration-track:2aea20bc8d877578a7e8c796473a29a552be49ab3517aab18e216538d2331f25` |
| 3 | `abbrev` | [WithConstructibleTopology](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/withconstructibletopology--027fd8c0430e51583c2da4e0.md) | 48 | `declaration-track:027fd8c0430e51583c2da4e06729684331390b621056369d4adfd41e113566cb` |
| 4 | `lemma` | [empty_mem_constructibleTopologySubbasis](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/empty-mem-constructibletopologysubbasis--58140ad08642603316c3288d.md) | 56 | `result-track:58140ad08642603316c3288d68b1df55274c16afbbf009ccdfb101f6919df6ad` |
| 5 | `lemma` | [WithConstructibleTopology.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/withconstructibletopology-isopen-iff--2ffc6e17ccf9f7bd5136f3db.md) | 59 | `result-track:2ffc6e17ccf9f7bd5136f3dbdbba682de3d963a116883dfb4dee7338c2725c70` |
| 6 | `lemma` | [WithConstructibleTopology.isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/withconstructibletopology-isclosed-iff--31b100ee4bc0fd6ed7d659ec.md) | 63 | `result-track:31b100ee4bc0fd6ed7d659eca23ef10881f95904aacb250ed9a4bd6e51d98124` |
| 7 | `lemma` | [IsCompact.isOpen_constructibleTopology_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-isopen-constructibletopology-of-isopen--3b225bfaf2ad63d5501b7c5d.md) | 67 | `result-track:3b225bfaf2ad63d5501b7c5dfa75599743612969f7cd1894d9fb248a3ca6d02b` |
| 8 | `lemma` | [IsCompact.isOpen_constructibleTopology_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-isopen-constructibletopology-of-isclosed--21157be1e3f5cf1ea04abb51.md) | 72 | `result-track:21157be1e3f5cf1ea04abb51e64f6103db6d12af6da75f97e0af8ee8613102ae` |
| 9 | `lemma` | [IsCompact.isClosed_constructibleTopology_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-isclosed-constructibletopology-of-isopen--201e8fa4f72cd804e4be1a4a.md) | 77 | `result-track:201e8fa4f72cd804e4be1a4a55e8522af14f73c94ab83dd0716b4ab17560010e` |
| 10 | `lemma` | [IsCompact.isClosed_constructibleTopology_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-isclosed-constructibletopology-of-isclosed--7fffeaaca34047db88b6d75a.md) | 83 | `result-track:7fffeaaca34047db88b6d75a9eb76115d139b1e48d9c4199a5d0e5b4ab364e90` |
| 11 | `lemma` | [IsCompact.isClopen_constructibleTopology_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-isclopen-constructibletopology-of-isopen--f4e6a4c1d5674263ec1c3227.md) | 89 | `result-track:f4e6a4c1d5674263ec1c322793bfde2ad14b1621bd99cf32150fd8e090208cc7` |
| 12 | `lemma` | [IsCompact.isClopen_constructibleTopology_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-isclopen-constructibletopology-of-isclosed--23981a0860470850a2d22333.md) | 93 | `result-track:23981a0860470850a2d22333e83eff98b700b00a283526333df46a0cf09f7d6a` |
| 13 | `lemma` | [compl_mem_constructibleTopologySubbasis_iff](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/compl-mem-constructibletopologysubbasis-iff--38e8615ec94f75c9cf47740f.md) | 98 | `result-track:38e8615ec94f75c9cf47740fbb4862a375fa24a69362acfc9a68dfbb5b403617` |
| 14 | `lemma` | [compl_image_constructibleTopologySubbasis](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/compl-image-constructibletopologysubbasis--1804a8856e8d216f094d75a1.md) | 102 | `result-track:1804a8856e8d216f094d75a19ce852b6cf0a98caa1687659af3f3d88a0cf76e9` |
| 15 | `lemma` | [latticeClosure_constructibleTopologySubbasis](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/latticeclosure-constructibletopologysubbasis--cafd20a719ab3552053d928c.md) | 106 | `result-track:cafd20a719ab3552053d928c0d5e97f0f87b93cf45fa36711980e1fbc701ee89` |
| 16 | `lemma` | [constructibleTopologySubbasis_subset_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/constructibletopologysubbasis-subset-isconstructible--a21e5627405a01624fe2bc57.md) | 122 | `result-track:a21e5627405a01624fe2bc57cb17f8f081cb63bbc16fe1d4ec5071f03c8d2739` |
| 17 | `lemma` | [generateFrom_latticeClosure](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/generatefrom-latticeclosure--d96a28f5f852bf3da56c5494.md) | 127 | `result-track:d96a28f5f852bf3da56c5494b071ec1757d568180910e566f5c8d7fceba6ce83` |
| 18 | `lemma` | [constructibleTopology_eq_generateFrom_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/constructibletopology-eq-generatefrom-isconstructible--e34d7c6b46f0710c84d43e9f.md) | 138 | `result-track:e34d7c6b46f0710c84d43e9fe96a7ccb42e6a323ed914483a7743a670ec162cd` |
| 19 | `lemma` | [isCompact_of_mem_constructibleTopologySubbasis](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-of-mem-constructibletopologysubbasis--b1af1792ecb17cc0e6c747b7.md) | 144 | `result-track:b1af1792ecb17cc0e6c747b73c49c09a75dd5c50a785ef74a5c1b59a22791cba` |
| 20 | `lemma` | [isCompact_sInter_of_subset_constructibleTopologySubbasis](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/iscompact-sinter-of-subset-constructibletopologysubbasis--cb736032e7a9a6e5f7303192.md) | 150 | `result-track:cb736032e7a9a6e5f730319264eb6d313129f15faf5b581fe54675fb81b2f1d6` |
| 21 | `instance` | [compactSpace_withConstructibleTopology](../../../../../mathematics/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/declarations/compactspace-withconstructibletopology--c0be578470fc192c2639ef18.md) | 161 | `declaration-track:c0be578470fc192c2639ef186258e61e588e4e44821682f367dc8eb11391bc0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
