# Verification target: GRWTSK.Topology.GeneralTopology.ClopenBox.Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a02c12e7822e4601a01a268953d93d6a3a289c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a02c12e7822e4601a01a268953d93d6a3a289c`.

Source path: `GRWTSK/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean.json)

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
| 1 | `theorem` | [exists_prod_subset](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/declarations/exists-prod-subset--5ab040b419a11b4ae6b6be27.md) | 52 | `result-track:5ab040b419a11b4ae6b6be272a504e76b144c7d240603f40ec1d086d10fab51e` |
| 2 | `theorem` | [exists_finset_eq_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/declarations/exists-finset-eq-sup-prod--a0a2865be2f450c2e4a63291.md) | 66 | `result-track:a0a2865be2f450c2e4a63291b8e24539e7cf91f885c01332616a47e82f81270d` |
| 3 | `lemma` | [surjective_finset_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/declarations/surjective-finset-sup-prod--64f65ad08d3e9e6235569ae2.md) | 79 | `result-track:64f65ad08d3e9e6235569ae27c712248b5484429ab0c8978965763a6a5926412` |
| 4 | `instance` | [countable_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/declarations/countable-prod--473561668f6ec02268653499.md) | 83 | `declaration-track:473561668f6ec0226865349920323e5fae8871802d5c6d5ea7ce7c829bea6746` |
| 5 | `instance` | [finite_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/declarations/finite-prod--ad418636f9b1a415d2e88efd.md) | 87 | `declaration-track:ad418636f9b1a415d2e88efd2b13753729dfd71eedc017a5220cd92bd4b09ffc` |
| 6 | `lemma` | [countable_iff_secondCountable](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variantedcb8f5d735504c073b87e32e9a994e4af94dd1e3bab4688b827c162924d4e81.lean/declarations/countable-iff-secondcountable--f17fb55693b6cdf6bfb16356.md) | 93 | `result-track:f17fb55693b6cdf6bfb16356edc341090cb26f48b8c2abb2bbefb7a4815c365e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
