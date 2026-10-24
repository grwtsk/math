# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "739761d6517e420db87f1937280f32566c733075",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableBatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `739761d6517e420db87f1937280f32566c733075`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableBatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableBatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableUpdateReindex.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RootedState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/rootedstate--691df46ffc55f5f617bc0baa.md) | 33 | `declaration-track:691df46ffc55f5f617bc0baae821578b68ff1b76511d51594e5ef3fbcdc33983` |
| 2 | `def` | [step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/step--05f2e48268228312b9c6310b.md) | 38 | `declaration-track:05f2e48268228312b9c6310ba9bb46491b6680e28f099041068cbfc812070c04` |
| 3 | `def` | [runAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/runat--4c835002a5b978dbc827bc63.md) | 43 | `declaration-track:4c835002a5b978dbc827bc634ef1dac21628f47c4181961aab9ea326630d8034` |
| 4 | `def` | [run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run--53110e88f44cc57289f86c87.md) | 47 | `declaration-track:53110e88f44cc57289f86c87268cb4b7b2528190622248ec04c6bceffb93b846` |
| 5 | `theorem` | [run_root](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run-root--0ab2b7da1bc2cf43c83eaaf3.md) | 51 | `result-track:0ab2b7da1bc2cf43c83eaaf37c4d4d3587e00d0775c28eaf5183cdd09beb710a` |
| 6 | `theorem` | [run_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run-nil--6f6cb1472facb963a0a15175.md) | 55 | `result-track:6f6cb1472facb963a0a151751d0ae28e25469172fcf6f2636a031a08ab2674d9` |
| 7 | `theorem` | [run_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run-cons--a09d6b5d312e6ab09dac1a62.md) | 57 | `result-track:a09d6b5d312e6ab09dac1a629d6c683380a5c494451c531c347928f85cc37775` |
| 8 | `theorem` | [step_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/step-wellformed--6c616ddb0b53c3b5489c943a.md) | 61 | `result-track:6c616ddb0b53c3b5489c943a3874462098b7dae76e0393785beb9911fe6ecb96` |
| 9 | `theorem` | [runAt_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/runat-wellformed--1d2d7654b3953d4e597c9802.md) | 68 | `result-track:1d2d7654b3953d4e597c9802848115a6b98db7684bd864f140b2724b3a4d60c8` |
| 10 | `theorem` | [run_wellFormed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run-wellformed--3c8e17d64a2ba32866e8d01f.md) | 76 | `result-track:3c8e17d64a2ba32866e8d01fe99e27112be19341577b20696efd97fd56c3ec2c` |
| 11 | `theorem` | [decode_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/decode-step--e553e9ef55fe17fb13eeb307.md) | 80 | `result-track:e553e9ef55fe17fb13eeb307d9eef9aa39aa7ace774845f5df035cb9db03951f` |
| 12 | `theorem` | [decode_runAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/decode-runat--612d3b95fe93b2298a64732d.md) | 89 | `result-track:612d3b95fe93b2298a64732d1fe58a24cf6e22ecacd86b5e267a9abcff03caf6` |
| 13 | `theorem` | [decode_run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/decode-run--89c7d27f1f11f91e4a5e8414.md) | 104 | `result-track:89c7d27f1f11f91e4a5e84140b5736708fc897ac24e99b10250b98d00ea4eb91` |
| 14 | `theorem` | [step_prefixes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/step-prefixes--dc99d5b380d67bdeeeb5492a.md) | 110 | `result-track:dc99d5b380d67bdeeeb5492a7b8f3f12b0bf9403d8a9cb2e367c047266910e25` |
| 15 | `theorem` | [runAt_prefixes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/runat-prefixes--b3c07bbc0dddd1e57b36d06c.md) | 120 | `result-track:b3c07bbc0dddd1e57b36d06c1ee9c6c9d58ce2781db7f2bf89a4f728fdbea276` |
| 16 | `theorem` | [run_prefixes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run-prefixes--d86b902de72df62c84bf487d.md) | 132 | `result-track:d86b902de72df62c84bf487d93ca4f5c0d96596ef74a7f03bdaa2ec63c262d42` |
| 17 | `theorem` | [node_lookup_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/node-lookup-retained--8580ae138ae90721cc49b167.md) | 139 | `result-track:8580ae138ae90721cc49b167a6bf584c43b8fa1d986177423a7185da9067d3e2` |
| 18 | `def` | [transportRooted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/transportrooted--409eabaf583270bbf5921713.md) | 158 | `declaration-track:409eabaf583270bbf592171385c62d9961abaa3d5dd6ff12ea67bc9ea143ec56` |
| 19 | `theorem` | [step_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/step-transport--792f50f665b5d6af6d58a783.md) | 162 | `result-track:792f50f665b5d6af6d58a783309a5f5a15cd744b51fc8a124158261b3e0fe94a` |
| 20 | `theorem` | [runAt_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/runat-transport--b63962d30baf4e8de92ce2d8.md) | 174 | `result-track:b63962d30baf4e8de92ce2d8e2079eec6197dad26d1c02132e09c5c2cacef1ce` |
| 21 | `theorem` | [run_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/run-transport--196e30d33154365918bc6825.md) | 185 | `result-track:196e30d33154365918bc6825bbd55f22ecb56a5bf24a7373a2cb92f40675ec05` |
| 22 | `theorem` | [decode_run_transport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean/declarations/decode-run-transport--aa5216df610650fc184323f2.md) | 193 | `result-track:aa5216df610650fc184323f20be2a71cb33f970e6ec99f56820f387078a5acfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
