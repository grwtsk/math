# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Constructions.Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "032dc5aeeaa71fc415b06796f1c9f872324c5768",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `032dc5aeeaa71fc415b06796f1c9f872324c5768`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean.json)

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
| 1 | `structure` | [FiniteInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinter--4e8b9dd39317497b26da6a42.md) | 33 | `declaration-track:4e8b9dd39317497b26da6a420d18815947b5be58c1093bfb21b72e17d44ca2a6` |
| 2 | `inductive` | [MemFiniteInterClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/memfiniteinterclosure--becedd96cbba7307403ec765.md) | 43 | `declaration-track:becedd96cbba7307403ec7650da1ab4cebad05672c173513ca1df6a8884f8f87` |
| 3 | `def` | [finiteInterClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinterclosure--696d6e8c3f5f1744b064cf8b.md) | 50 | `declaration-track:696d6e8c3f5f1744b064cf8b5c59d54c9654fa52ce4495a6ad6c7e40e3497be7` |
| 4 | `lemma` | [subset_finiteInterClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/subset-finiteinterclosure--f585767b7cdeac0dd758c487.md) | 52 | `result-track:f585767b7cdeac0dd758c4877da5151208bcac93597c8ac875dc91268873355f` |
| 5 | `theorem` | [finiteInterClosure_finiteInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinterclosure-finiteinter--05d51f51e97a3853e2131a12.md) | 54 | `result-track:05d51f51e97a3853e2131a1242e082283016bac686bcd461a4f61575ac88558c` |
| 6 | `lemma` | [finiteInterClosure_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinterclosure-induction--a77dbce6b73a6a2ffa027fcb.md) | 64 | `result-track:a77dbce6b73a6a2ffa027fcbcc709a738208615b44edef1398e007a2ad9c8d33` |
| 7 | `lemma` | [finiteInterClosure_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinterclosure-min--4e1bb844e298ba7b78ab0142.md) | 77 | `result-track:4e1bb844e298ba7b78ab0142b87e8424efd37d7241670016bf6e9ce75fd1bb5b` |
| 8 | `theorem` | [finiteInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinter-mem--1666f86658b61ed6b934e3ea.md) | 85 | `result-track:1666f86658b61ed6b934e3ea7729560df1608db5d1db2e10b4bf8ebdfdb4940f` |
| 9 | `theorem` | [finiteInterClosure_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/finiteinterclosure-insert--302df9880bbd82e97669f6eb.md) | 95 | `result-track:302df9880bbd82e97669f6eb12e88d12e921b62d1051cab85293dcb65dfb7ca9` |
| 10 | `theorem` | [mk₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/mk--5b1a8ad1dfd538c261fcc0e5.md) | 117 | `result-track:5b1a8ad1dfd538c261fcc0e59c83d8aec9ce680fead3397a3bc0e3ae0afbbecb` |
| 11 | `theorem` | [Set.biUnion_empty_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Constructions/Variant415100d712b7fe1297f80c648b16825a156bc6b079fb6ab0d7b3be5bc5a43eb4.lean/declarations/set-biunion-empty-finset--d7ddaff649fa7a7bbe985d22.md) | 126 | `result-track:d7ddaff649fa7a7bbe985d2276df374edaffa33113be0b983df763c4e828358f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
