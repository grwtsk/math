# Verification target: GRWTSK.Algebra.GroupTheory.Finite.Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce5e5695fc1e066150fb8a4d6399ad4d57cbc4b8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce5e5695fc1e066150fb8a4d6399ad4d57cbc4b8`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean.json)

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
| 1 | `theorem` | [commutator_pi_pi_of_finite](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/commutator-pi-pi-of-finite--50966521a39ea4aa5acd72d6.md) | 37 | `result-track:50966521a39ea4aa5acd72d620d50016e6064d328844306ecf7ac18f288e5edd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/instance--4e5cd74590f9280bf5e0edcb.md) | 56 | `declaration-track:4e5cd74590f9280bf5e0edcb92c2e515e379d9017c8a169b4032f849924addd6` |
| 3 | `lemma` | [rank_commutator_le_card](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/rank-commutator-le-card--a60bdc2c9c2ad7134bae8d36.md) | 60 | `result-track:a60bdc2c9c2ad7134bae8d36cd98046cbf2aaff8c32f39e915c67ea2d124ad53` |
| 4 | `instance` | [finiteIndex_center](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/finiteindex-center--f45c89b1a50d6d7e9eec4530.md) | 66 | `declaration-track:f45c89b1a50d6d7e9eec45309c5c89a456159adab1a92eb9502baae376d633d5` |
| 5 | `lemma` | [index_center_le_pow](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/index-center-le-pow--3d6dc7b29936a4e4126a6647.md) | 71 | `result-track:3d6dc7b29936a4e4126a66473a0d5fb5a02230cac75f5c4bf189b30cfe4a4906` |
| 6 | `lemma` | [card_commutatorSet_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/card-commutatorset-closurecommutatorrepresentatives--4e341859215677940cba3d46.md) | 82 | `result-track:4e341859215677940cba3d4650a2aa2632d6512f8f5c06a0db2292cd097154da` |
| 7 | `lemma` | [card_commutator_closureCommutatorRepresentatives](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/card-commutator-closurecommutatorrepresentatives--9d26ad5dbe281e3c121e2723.md) | 87 | `result-track:9d26ad5dbe281e3c121e2723ba74a0ea8e80c9add132fb3151c1e908e6f5b3ec` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/instance--cdfc530059888b930eb5d9be.md) | 95 | `declaration-track:cdfc530059888b930eb5d9be2c41d64370cb99cf29aa35e504dbe95e26db159d` |
| 9 | `instance` | [closureCommutatorRepresentatives_fg](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/closurecommutatorrepresentatives-fg--14fa7a56d98331bf83d6688a.md) | 97 | `declaration-track:14fa7a56d98331bf83d6688ae39d34b83af18743007fc9d00f9e8d0dc8fff327` |
| 10 | `lemma` | [rank_closureCommutatorRepresentatives_le](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/rank-closurecommutatorrepresentatives-le--3ffac695992efdf83ecbc02a.md) | 101 | `result-track:3ffac695992efdf83ecbc02a70f64c9482e2ca9e63c444f20d48dac732d75441` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finite/Variante7e4bbae765c89abeb5312230707baef719be6da95d2f217fa2a1f64bf5c5c3a.lean/declarations/instance--03df18811502aedafd2bf6f3.md) | 110 | `declaration-track:03df18811502aedafd2bf6f391e7f46a0398e1e70b60c4218337757d975ea90c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
