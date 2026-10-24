# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "678208079f4bf9ecdabc4294a6e8a2a042a55898",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `678208079f4bf9ecdabc4294a6e8a2a042a55898`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Center` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/centralizer--c4a9290968dff682c0bfcad9.md) | 33 | `declaration-track:c4a9290968dff682c0bfcad92db08a8ac23bfb0cf009787d0cd878934faadb0d` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/coe-centralizer--d1edc07bf3328d1e7a7b1ce4.md) | 39 | `result-track:d1edc07bf3328d1e7a7b1ce4c5807ba140c0bfed5cc5a59042b97098b30792e4` |
| 3 | `theorem` | [centralizer_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/centralizer-tosubsemigroup--581ab6fe780bfb657e5af87d.md) | 43 | `result-track:581ab6fe780bfb657e5af87d1b842a9e13afd138e6e3918c61c61c54323b99c7` |
| 4 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/mem-centralizer-iff--6f7a9b5b61cb5b0ca01c7e70.md) | 49 | `result-track:6f7a9b5b61cb5b0ca01c7e705e8b74896bdb8453faa8e753b7a4c2815a132430` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/center-le-centralizer--c66cb61b6372fd8c53fed23b.md) | 53 | `result-track:c66cb61b6372fd8c53fed23b141409fd169802f418d118b53dbed2f0e5a9a29a` |
| 6 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/decidablememcentralizer--d20313d276d9f570d1cf4766.md) | 57 | `declaration-track:d20313d276d9f570d1cf476638de5d52a4033ed61e65c13adb46248de2ec7822` |
| 7 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/centralizer-le--3e01c2abb9017eccc702cf8a.md) | 62 | `result-track:3e01c2abb9017eccc702cf8a72b7a678ec53fce73d7a019566fd73353c90c75e` |
| 8 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/centralizer-eq-top-iff-subset--56229fa933c5f243509523f0.md) | 66 | `result-track:56229fa933c5f243509523f02850adc3b74bf0f13d4da5401fbcf49b41b5b003` |
| 9 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/centralizer-univ--4aaa4025a551fb529462b003.md) | 72 | `result-track:4aaa4025a551fb529462b003c8c183ac052a6d33892eba2ca89378a81615af89` |
| 10 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/le-centralizer-centralizer--b7f0c42d965088e8af20fb1c.md) | 76 | `result-track:b7f0c42d965088e8af20fb1cd0cc13c21b21548b25c09f5817b6b5cac43fe3ec` |
| 11 | `lemma` | [centralizer_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/centralizer-centralizer-centralizer--b657c8defe0cd4bc2fc5f1bb.md) | 80 | `result-track:b657c8defe0cd4bc2fc5f1bb627a5fdb1f4bf7c1e9d0aeb7f800f1b1b1ba7f86` |
| 12 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/closure-le-centralizer-centralizer--af19208e159d3c8db3a19e05.md) | 87 | `result-track:af19208e159d3c8db3a19e0551d4a1ec03bdc49ea9295b419de657e4dd7f5503` |
| 13 | `abbrev` | [closureCommMonoidOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant0b72b1bb9ba7cd01714f441bd7a36936bc2a140a0ae4a8040a4660352a021715.lean/declarations/closurecommmonoidofcomm--6c27665c297197d700552315.md) | 95 | `declaration-track:6c27665c297197d700552315a2fb95ec9333e79c6509d6b78cd3a197031ccdfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
