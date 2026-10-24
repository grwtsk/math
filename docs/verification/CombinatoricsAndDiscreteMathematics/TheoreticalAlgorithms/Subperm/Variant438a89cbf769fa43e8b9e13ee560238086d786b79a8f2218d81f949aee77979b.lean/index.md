# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subperm.Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "595c0b3e2c81628584d48ff3f2f044d07f335e95",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `595c0b3e2c81628584d48ff3f2f044d07f335e95`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean.json)

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
| 1 | `lemma` | [subperm_iff_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/subperm-iff-count--1233f5a00cff4dfc747033c5.md) | 45 | `result-track:1233f5a00cff4dfc747033c599dea1532c098d8c2fbd2855b2d0555b83c9aadd` |
| 2 | `lemma` | [subperm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/subperm-iff--386f63bdc8e29e32ad6d9b7e.md) | 49 | `result-track:386f63bdc8e29e32ad6d9b7edb69c0737f99e39d83b5a9fd52c90ff2bee3972a` |
| 3 | `lemma` | [subperm_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/subperm-singleton-iff--4b4658541e8a0a0dc3ccb6c4.md) | 55 | `result-track:4b4658541e8a0a0dc3ccb6c413a2399eb5c6d4be08fae63310db36ad1ad62d2e` |
| 4 | `lemma` | [subperm_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/subperm-cons-self--be992b352c02562684fa1d94.md) | 63 | `result-track:be992b352c02562684fa1d942333f64cd6bdd8644884ffbb158650fa79797c62` |
| 5 | `theorem` | [Subperm.append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/subperm-append--45868b5c26c9a0a443aa0e0a.md) | 67 | `result-track:45868b5c26c9a0a443aa0e0a24de58a110c65e35433147e3992e5c44f357cf71` |
| 6 | `theorem` | [map_subperm_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/map-subperm-map-iff--d974b88558fb050b4d79cc37.md) | 72 | `result-track:d974b88558fb050b4d79cc37bf5e6e2bd3e3e86853e20d6face8a9792bd3dbfb` |
| 7 | `theorem` | [Nodup.subperm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant438a89cbf769fa43e8b9e13ee560238086d786b79a8f2218d81f949aee77979b.lean/declarations/nodup-subperm--f398777bb82866048fbdaecf.md) | 88 | `result-track:f398777bb82866048fbdaecfbde0aeb5e1f4a2b0df6f6c535a523299cd268328` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
