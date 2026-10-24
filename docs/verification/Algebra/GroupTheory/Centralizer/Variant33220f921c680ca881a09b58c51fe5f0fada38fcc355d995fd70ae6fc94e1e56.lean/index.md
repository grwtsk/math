# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e4da57e70d9d06c9f6d882ff417f694c5d0ec5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e4da57e70d9d06c9f6d882ff417f694c5d0ec5`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Center` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/centralizer--5e565b3aeaa84a234e316f20.md) | 41 | `declaration-track:5e565b3aeaa84a234e316f2069605e84b29eb61974b0ae02a8e39e15d617c7fb` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/coe-centralizer--5deb1e00a288c940301dbd87.md) | 47 | `result-track:5deb1e00a288c940301dbd87e98ba5ab56f1a3f72a4d3b8f1d30cebb45ed310d` |
| 3 | `theorem` | [centralizer_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/centralizer-tosubsemigroup--55eb8e97cf161c90391a5640.md) | 51 | `result-track:55eb8e97cf161c90391a56409f03406f96b097a20e65a641c1c49823c8d7982c` |
| 4 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/mem-centralizer-iff--e411b6871f0aa4292317c9cb.md) | 57 | `result-track:e411b6871f0aa4292317c9cba164152ec415556e57b3fa13b8f6cce7b77f198a` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/center-le-centralizer--4c0c71439b79c1498cede183.md) | 61 | `result-track:4c0c71439b79c1498cede18320bc8650c66d9346c5f9bd045ec9f64a242ab4f0` |
| 6 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/decidablememcentralizer--851c2948870b5289fe06f37b.md) | 65 | `declaration-track:851c2948870b5289fe06f37b6c4d70ba46f671a311bf2b93d9e68a235d30146f` |
| 7 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/centralizer-le--41dfb0ef8b9d61ec0e366699.md) | 70 | `result-track:41dfb0ef8b9d61ec0e36669975ce409ad18066aad24019099507505931ef9af7` |
| 8 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/centralizer-eq-top-iff-subset--11b0c59d91150f5d07a34be8.md) | 74 | `result-track:11b0c59d91150f5d07a34be8138c98383d9ed6730a58171e06d919f3928ede34` |
| 9 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/centralizer-univ--6eda2bae667b80d0770fbb73.md) | 80 | `result-track:6eda2bae667b80d0770fbb7344d1843cbed15865985496404138090515beccae` |
| 10 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/le-centralizer-centralizer--6625950e15614ae9f2acf250.md) | 84 | `result-track:6625950e15614ae9f2acf250b914f90d8d490cd34aa324e3ab0dbf8ec579033d` |
| 11 | `lemma` | [centralizer_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/centralizer-centralizer-centralizer--02268eb4117e0a2b2a140950.md) | 88 | `result-track:02268eb4117e0a2b2a140950df0577db623ec0bfa28a2bf093ec1be813a5ab34` |
| 12 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/closure-le-centralizer-centralizer--03d530a1fa5c256a20be72ee.md) | 95 | `result-track:03d530a1fa5c256a20be72ee3532b43e33d7f39478c47a421035684e8b8ffaef` |
| 13 | `abbrev` | [closureCommMonoidOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/declarations/closurecommmonoidofcomm--f4b23c6c721a18cf3ae656d5.md) | 103 | `declaration-track:f4b23c6c721a18cf3ae656d59d4b2f41b0ca6b750a8c63f25f9569931e26a3a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
