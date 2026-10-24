# Verification target: GRWTSK.Topology.GeneralTopology.CantorSet.Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a536d0c4898ad8280ca18602a4b5949fd2b9de4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a536d0c4898ad8280ca18602a4b5949fd2b9de4`.

Source path: `GRWTSK/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.GroupWithZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/precantorset--93b88595bc3bdd197db7ba97.md) | 28 | `declaration-track:93b88595bc3bdd197db7ba97330c2251b3632dec59e6403082835b43e6c471a9` |
| 2 | `lemma` | [preCantorSet_zero](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/precantorset-zero--61cf2c38547b8efc794336da.md) | 32 | `result-track:61cf2c38547b8efc794336da5d8e4bfd3b8b651e16a966e2239b2131e2377a71` |
| 3 | `lemma` | [preCantorSet_succ](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/precantorset-succ--07d716428970a87e7f76602c.md) | 33 | `result-track:07d716428970a87e7f76602ccc2911279daa83d6cfbc13cd96cf2305d7e9c87e` |
| 4 | `def` | [cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/cantorset--6b410ac658253a192156cb95.md) | 41 | `declaration-track:6b410ac658253a192156cb957ad50f3e01d6efcde8aeee987f4c0dacc730e5e9` |
| 5 | `lemma` | [quarters_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/quarters-mem-precantorset--0a62f6faf97714b040eae9bd.md) | 48 | `result-track:0a62f6faf97714b040eae9bdd57d4941b9251ec84c32bbe8f4afb1d70a9b67c9` |
| 6 | `lemma` | [quarter_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/quarter-mem-precantorset--8352bdaa1d93e799fa08931a.md) | 62 | `result-track:8352bdaa1d93e799fa08931a0b627f4e44d1f7790210e4fa01553bef16095c41` |
| 7 | `theorem` | [quarter_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/quarter-mem-cantorset--48c0d399b2ce2401ebbd9cac.md) | 64 | `result-track:48c0d399b2ce2401ebbd9cacf90c0a49f7e08636d10d75e850c3f1d215f29e0d` |
| 8 | `lemma` | [zero_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/zero-mem-precantorset--2c2ed33c0485222b5e736d9f.md) | 67 | `result-track:2c2ed33c0485222b5e736d9fc963f0bb922b29737c376d81c30043a6900d0a5f` |
| 9 | `theorem` | [zero_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/zero-mem-cantorset--d40a1ded122ef9814ed89faa.md) | 74 | `result-track:d40a1ded122ef9814ed89faa61dd56a9dac4ff3a131198bf9031084e8b112383` |
| 10 | `lemma` | [cantorSet_subset_unitInterval](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/cantorset-subset-unitinterval--32a4082d4df7c4601e78bf8f.md) | 77 | `result-track:32a4082d4df7c4601e78bf8f7401b62ff8a7a48838ae1f7432c3a6d9d7fd0de1` |
| 11 | `lemma` | [isClosed_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/isclosed-precantorset--a1622a34e7c8700a2520891f.md) | 81 | `result-track:a1622a34e7c8700a2520891f8d415a014223019f0f51a5a7eaef6f88e1fae71e` |
| 12 | `lemma` | [isClosed_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/isclosed-cantorset--61dfdbefbfc1ef20274b8b9d.md) | 92 | `result-track:61dfdbefbfc1ef20274b8b9d9031db85cf86e84d1218764223c8c3b0677db457` |
| 13 | `lemma` | [isCompact_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variantd12498bbac8a29b2ad4319da8ddf93b8a6e222c3c04d25d4cdc534a790ee195e.lean/declarations/iscompact-cantorset--2896c8fcf3456fa8f08cbbb7.md) | 96 | `result-track:2896c8fcf3456fa8f08cbbb7ce87bf571d3108a3f7dfd5e623e4bc8ee3c0ccc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
