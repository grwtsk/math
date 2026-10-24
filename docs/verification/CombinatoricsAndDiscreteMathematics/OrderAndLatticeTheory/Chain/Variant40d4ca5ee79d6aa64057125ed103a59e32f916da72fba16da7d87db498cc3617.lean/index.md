# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Chain.Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4cb86bb7e07757fca7845ee7b221238ad083151",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4cb86bb7e07757fca7845ee7b221238ad083151`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean.json)

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
| 1 | `inductive` | [ChainClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure--3b08196d9a59f32ffe36a18a.md) | 34 | `declaration-track:3b08196d9a59f32ffe36a18ad06b10154de1b23edcad0b7a1f24ee657790003a` |
| 2 | `def` | [maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/maxchain--d74880564bb6e6d93676c511.md) | 39 | `declaration-track:d74880564bb6e6d93676c511f54c528f730e134011835faab9fcf6d227c7ba08` |
| 3 | `lemma` | [chainClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-empty--f9b332eb84287e32f8efbb78.md) | 41 | `result-track:f9b332eb84287e32f8efbb78f6295c68ff56546fc0ac773d4bee495e48debed2` |
| 4 | `lemma` | [chainClosure_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-maxchain--392eafb8b2b65b5d7d3ccf4d.md) | 45 | `result-track:392eafb8b2b65b5d7d3ccf4dd54ed4d2f35db327f6769a4a0230fe6f8e372d7f` |
| 5 | `lemma` | [chainClosure_succ_total_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-succ-total-aux--437c28129f10e1a42be4d457.md) | 48 | `result-track:437c28129f10e1a42be4d457ac584b055fbe4806ba516c25f69e97e487bb0cd3` |
| 6 | `lemma` | [chainClosure_succ_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-succ-total--8c43241930b641acc0504745.md) | 60 | `result-track:8c43241930b641acc0504745a2cddaaac83506ac2df10374d3f717c17fe0a6d6` |
| 7 | `lemma` | [ChainClosure.total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-total--2c308686de812eb59363fc2e.md) | 79 | `result-track:2c308686de812eb59363fc2e9f5e5a452a6293f924b6bb42a2c4f337a7e67021` |
| 8 | `lemma` | [ChainClosure.succ_fixpoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-succ-fixpoint--e6c35e1a0e68a9778a66bc0d.md) | 84 | `result-track:e6c35e1a0e68a9778a66bc0d26fa5d56b891b94424ff4c181fd351420031eeb6` |
| 9 | `lemma` | [ChainClosure.succ_fixpoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-succ-fixpoint-iff--c2ef19932f3c099cbcb690fe.md) | 90 | `result-track:c2ef19932f3c099cbcb690fe734da1c583d2203f724b258928da2eecbedb9ec2` |
| 10 | `lemma` | [ChainClosure.isChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/chainclosure-ischain--ed391b5f3416f49cc4bb8463.md) | 95 | `result-track:ed391b5f3416f49cc4bb846320db40947b2abb0fddaa0c8d72fed62fb53a733b` |
| 11 | `theorem` | [maxChain_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant40d4ca5ee79d6aa64057125ed103a59e32f916da72fba16da7d87db498cc3617.lean/declarations/maxchain-spec--c05bb493183b3444c4eb1ccb.md) | 107 | `result-track:c05bb493183b3444c4eb1ccba4bd7e8ff37856b69dd5b3f9acab60d0a7405fcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
