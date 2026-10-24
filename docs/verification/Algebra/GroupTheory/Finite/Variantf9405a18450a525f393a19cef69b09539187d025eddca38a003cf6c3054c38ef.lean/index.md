# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af82bc6b46cc57e95061969189b73d4f919fc1d5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af82bc6b46cc57e95061969189b73d4f919fc1d5`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean.json)

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
| 1 | `theorem` | [commutator_pi_pi_of_finite](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/commutator-pi-pi-of-finite--77da4831399393cabb449502.md) | 29 | `result-track:77da4831399393cabb449502045be413258528adc7d55b6e5bbdf66b908897a3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/instance--50f3a91a1a9b204ef3f09b3a.md) | 48 | `declaration-track:50f3a91a1a9b204ef3f09b3a248b93f46888e7ad5ed7be6d9dfb62a499fcb439` |
| 3 | `lemma` | [rank_commutator_le_card](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/rank-commutator-le-card--726cd4690376cade0fd49a3a.md) | 52 | `result-track:726cd4690376cade0fd49a3af20cc8e46c20450ed9198ba770599cec33cda618` |
| 4 | `instance` | [finiteIndex_center](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/finiteindex-center--91e833601163a35b83555705.md) | 58 | `declaration-track:91e833601163a35b835557051c50b1e6cb7286aebe1802b403c684c85aaa0f29` |
| 5 | `lemma` | [index_center_le_pow](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/index-center-le-pow--1bbda33bd3d7a658230a06c6.md) | 63 | `result-track:1bbda33bd3d7a658230a06c63801180b37a233d65f1ee8304f6bf02f6c64c799` |
| 6 | `lemma` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/card-commutatorset-closurecommutatorrepresentatives--6a1d3e772455606978efaa1e.md) | 74 | `result-track:6a1d3e772455606978efaa1e482086404f42e4c24d7cc049fd5ae03489729c13` |
| 7 | `lemma` | [card_commutator_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/card-commutator-closurecommutatorrepresentatives--52ec8183f3c5caea53b0c3c9.md) | 79 | `result-track:52ec8183f3c5caea53b0c3c911edef7e62fd6f1e917ebe8ac9583ca2fa0797d2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/instance--62c0fa71978a1e0f09d8aaab.md) | 87 | `declaration-track:62c0fa71978a1e0f09d8aaab9a5bfbf36f7db420ce156462ae0f2e1068c023e8` |
| 9 | `instance` | [closureCommutatorRepresentatives_fg](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/closurecommutatorrepresentatives-fg--9d825a2fb8ee470a608dc15c.md) | 89 | `declaration-track:9d825a2fb8ee470a608dc15cea2f4fc3a2ed025a8751ba180d12511608401483` |
| 10 | `lemma` | [rank_closureCommutatorRepresentatives_le](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/rank-closurecommutatorrepresentatives-le--8619559ae668a6a1a1fb7be8.md) | 93 | `result-track:8619559ae668a6a1a1fb7be87a9882d75fdacfe47d00c89593bf26e61ec05a7f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variantf9405a18450a525f393a19cef69b09539187d025eddca38a003cf6c3054c38ef.lean/declarations/instance--80389a23d361095e808f97e5.md) | 102 | `declaration-track:80389a23d361095e808f97e52d5e0d7a1e35d3afbf8e777014b71e21b6095af8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
