# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Chain.Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d6d49cca719eec174da263ce6ad99ae2864c5cb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d6d49cca719eec174da263ce6ad99ae2864c5cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Chain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ChainClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure--b103892784fdb4e62053d408.md) | 30 | `declaration-track:b103892784fdb4e62053d408a0c7ba735ae65bf0bb7cb2e1e23428cd6ac3e346` |
| 2 | `def` | [maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/maxchain--52696d549d28370b059f1dfe.md) | 35 | `declaration-track:52696d549d28370b059f1dfe040fa0eafdddb8fe0dcf301a25073df8a4820e44` |
| 3 | `lemma` | [chainClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-empty--f18062d97cd200b5c31dd358.md) | 37 | `result-track:f18062d97cd200b5c31dd35813a755c4bfd349e071dce297b8fc655e86459a18` |
| 4 | `lemma` | [chainClosure_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-maxchain--3f47e17491f4edc714d2b9e0.md) | 41 | `result-track:3f47e17491f4edc714d2b9e03e1494126870f88a2d44fcc4a1df626b775538e9` |
| 5 | `lemma` | [chainClosure_succ_total_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-succ-total-aux--8d6c46621bda267763a9415a.md) | 44 | `result-track:8d6c46621bda267763a9415aa91a29a453093204cf080c24c611961de7c970d4` |
| 6 | `lemma` | [chainClosure_succ_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-succ-total--1560ee4a49c2ac74c7518fed.md) | 56 | `result-track:1560ee4a49c2ac74c7518fedba32d7b2916fa49abb997bdcbec7fe0468b41dc5` |
| 7 | `lemma` | [ChainClosure.total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-total--b1931731963da138fac06780.md) | 75 | `result-track:b1931731963da138fac06780ca62e3a795cd832ed02c12bf7066c41dc230fc5c` |
| 8 | `lemma` | [ChainClosure.succ_fixpoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-succ-fixpoint--3353b275464c8de595e82a5d.md) | 80 | `result-track:3353b275464c8de595e82a5d4e4ade6ba8ac3e6356cebc211d5032231465e55c` |
| 9 | `lemma` | [ChainClosure.succ_fixpoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-succ-fixpoint-iff--feedaf41f0c875657bb880dd.md) | 86 | `result-track:feedaf41f0c875657bb880dde3d1e3de80f7c60b683b4efcd32b18779d5d2d37` |
| 10 | `lemma` | [ChainClosure.isChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/chainclosure-ischain--db21c1a080e906c15c36e1fd.md) | 91 | `result-track:db21c1a080e906c15c36e1fd35012b1bc4e5e852b380fc71f90c18eea113095e` |
| 11 | `theorem` | [maxChain_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant5c014b1be1dfe645a107c45d92ed93c79eb5655bd0ee846941d393272302c4ea.lean/declarations/maxchain-spec--05141c408b4ad541ec942672.md) | 103 | `result-track:05141c408b4ad541ec942672056bb83483a4a12653733bafcecbb56b565c3e8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
