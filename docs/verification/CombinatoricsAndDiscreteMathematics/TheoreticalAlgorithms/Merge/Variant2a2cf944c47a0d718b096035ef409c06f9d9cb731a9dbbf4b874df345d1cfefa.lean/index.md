# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Merge.Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b557c88371aa7dd5de30e25fe29320235cca97",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b557c88371aa7dd5de30e25fe29320235cca97`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean.json)

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
| 1 | `def` | [merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/merge--546ee8711c79de2a73d053ad.md) | 24 | `declaration-track:546ee8711c79de2a73d053ad595fe419faf2a5977db473b136f295e02f55ef45` |
| 2 | `def` | [mergeDedupWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/mergededupwith--ce9fda426336b8d2ccf08d35.md) | 47 | `declaration-track:ce9fda426336b8d2ccf08d3567fd795ac7902613421dbc1fabcfd4af7cf23631` |
| 3 | `def` | [mergeDedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/mergededup--83542f60ebeebabf8f0033cb.md) | 69 | `declaration-track:83542f60ebeebabf8f0033cb86d7ead51dfb20a268eb0ba9c95b7100d0084f75` |
| 4 | `def` | [mergeUnsortedDedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/mergeunsorteddedup--be728393ba5b4c88265de366.md) | 78 | `declaration-track:be728393ba5b4c88265de366bc2b977afb5eabe2e2043d75962f9ae6a791404e` |
| 5 | `def` | [mergeAdjacentDups](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/mergeadjacentdups--f21320ac6037846947fd53f1.md) | 95 | `declaration-track:f21320ac6037846947fd53f1f37d91cc34c34d75e3755d10e7546bbe3ec9bcf0` |
| 6 | `def` | [dedupSorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/dedupsorted--eb271e8b21eb99e83b212686.md) | 111 | `declaration-track:eb271e8b21eb99e83b21268625f079bab2900206dc15b3a644ef55c405c26265` |
| 7 | `def` | [sortDedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant2a2cf944c47a0d718b096035ef409c06f9d9cb731a9dbbf4b874df345d1cfefa.lean/declarations/sortdedup--4935e7403b5ca4919bd20bec.md) | 115 | `declaration-track:4935e7403b5ca4919bd20bec21c158d8bad6d0c1d720304af98302c432d09ec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
