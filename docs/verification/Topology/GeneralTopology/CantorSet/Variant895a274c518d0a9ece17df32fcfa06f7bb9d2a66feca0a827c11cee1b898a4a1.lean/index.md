# Verification target: GRWTSK.Topology.GeneralTopology.CantorSet.Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd8cf608746713fd74fc6add1300a33adbf2d20",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd8cf608746713fd74fc6add1300a33adbf2d20`.

Source path: `GRWTSK/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.GroupWithZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/precantorset--3e6f22d8cb1a8ea775e078b3.md) | 36 | `declaration-track:3e6f22d8cb1a8ea775e078b3d50329c533828225bc779d0860796a7ec5f57725` |
| 2 | `lemma` | [preCantorSet_zero](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/precantorset-zero--214383361f1e8bdd07c291e0.md) | 40 | `result-track:214383361f1e8bdd07c291e01650baa98fcbdc0fa0ff7f9d74559f2af4a165d2` |
| 3 | `lemma` | [preCantorSet_succ](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/precantorset-succ--59e451e65cd576c54c5044b8.md) | 41 | `result-track:59e451e65cd576c54c5044b8cec6025962b9c9e0a63bc7d3fc7e116d6831fadd` |
| 4 | `def` | [cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/cantorset--39becb8c0642f23472352cc1.md) | 49 | `declaration-track:39becb8c0642f23472352cc19f325bed5fcc774163668e8530d7e3002d82e34e` |
| 5 | `lemma` | [quarters_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/quarters-mem-precantorset--e97a360d31c7b9dfec868a6d.md) | 56 | `result-track:e97a360d31c7b9dfec868a6d686da4a8a5ad330cacaa12ed818d51b9ea7ee42b` |
| 6 | `lemma` | [quarter_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/quarter-mem-precantorset--27d4f0b6ea275c45efd1b507.md) | 70 | `result-track:27d4f0b6ea275c45efd1b507e9d6af7950f4bb58092c9d9c859577b7cea7cb92` |
| 7 | `theorem` | [quarter_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/quarter-mem-cantorset--a82c0e049e1480c666202dcb.md) | 72 | `result-track:a82c0e049e1480c666202dcb1217d5b9be86f38f82aad91a9e1c2ae2a1fc4f2a` |
| 8 | `lemma` | [zero_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/zero-mem-precantorset--8b6f0ad441e2052c85da1295.md) | 75 | `result-track:8b6f0ad441e2052c85da1295293592641ece6e3ebc40179bd4fa65b779aba08b` |
| 9 | `theorem` | [zero_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/zero-mem-cantorset--c584465cd24d0b8c3d7f74e8.md) | 82 | `result-track:c584465cd24d0b8c3d7f74e8f0fb68e8eb65ea360a4b6871e6d6b98bcba9d985` |
| 10 | `lemma` | [cantorSet_subset_unitInterval](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/cantorset-subset-unitinterval--2520e417655a3ee255a8349b.md) | 85 | `result-track:2520e417655a3ee255a8349b6f3ddef769be7e83352fb58209dde8d9a9578087` |
| 11 | `lemma` | [isClosed_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/isclosed-precantorset--53c7b42eeeb8838abc173f04.md) | 89 | `result-track:53c7b42eeeb8838abc173f0416c9badd87544bfe02fab8807ef4a5c1b7ddc67a` |
| 12 | `lemma` | [isClosed_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/isclosed-cantorset--a5115be19c6db542dc11c1cd.md) | 100 | `result-track:a5115be19c6db542dc11c1cd234829d7f0d26107936b6026519d6c1ec4e61300` |
| 13 | `lemma` | [isCompact_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant895a274c518d0a9ece17df32fcfa06f7bb9d2a66feca0a827c11cee1b898a4a1.lean/declarations/iscompact-cantorset--245d95ad3269ccdd8707ed6c.md) | 104 | `result-track:245d95ad3269ccdd8707ed6cd3640c45a2c37abf47b7f06cd57afcf249580df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
