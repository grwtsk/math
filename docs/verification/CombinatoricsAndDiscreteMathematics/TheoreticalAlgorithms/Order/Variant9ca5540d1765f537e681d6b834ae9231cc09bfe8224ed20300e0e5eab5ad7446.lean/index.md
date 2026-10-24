# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Order.Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "501bb8be12bc60eec34d0ca96ff0022399227bf5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `501bb8be12bc60eec34d0ca96ff0022399227bf5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean.json)

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
| 1 | `theorem` | [monotoneOn_iff_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/monotoneon-iff-monotone--b8e8d614f61c5b1decd36a19.md) | 34 | `result-track:b8e8d614f61c5b1decd36a19b69205e094ab1e570dae25297347b7e18d4ca307` |
| 2 | `theorem` | [antitoneOn_iff_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitoneon-iff-antitone--3071671b2da73c196464edab.md) | 38 | `result-track:3071671b2da73c196464edab529bcb8a06dfc1dcc4664522697d4714bbc96001` |
| 3 | `theorem` | [strictMonoOn_iff_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/strictmonoon-iff-strictmono--21733a3b784bbdd3cf85af92.md) | 42 | `result-track:21733a3b784bbdd3cf85af92aac82f505a23bc81b74a72e633c0a6a2e42d4654` |
| 4 | `theorem` | [strictAntiOn_iff_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/strictantion-iff-strictanti--2fb6f84808a90b9e9477333a.md) | 46 | `result-track:2fb6f84808a90b9e9477333abc2ea6fde7eb67b3876fe9ed204d4e59dd23afcb` |
| 5 | `theorem` | [not_monotoneOn_not_antitoneOn_iff_exists_le_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/not-monotoneon-not-antitoneon-iff-exists-le-le--dc6af05d0f2b47a360149de2.md) | 58 | `result-track:dc6af05d0f2b47a360149de2af190fe43919b94a0a5b8220865ac240144fa411` |
| 6 | `theorem` | [not_monotoneOn_not_antitoneOn_iff_exists_lt_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/not-monotoneon-not-antitoneon-iff-exists-lt-lt--3d0e813539ea980cf0c8816f.md) | 67 | `result-track:3d0e813539ea980cf0c8816f865becd55b6f8bedcb1c76f164506453bb9954a7` |
| 7 | `theorem` | [Monotone.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/monotone-inter--0f8ba6f9c8ee1258448d5fbe.md) | 83 | `result-track:0f8ba6f9c8ee1258448d5fbe7bbe90631bafcd7f14209cf839009b2ef9ee2730` |
| 8 | `theorem` | [MonotoneOn.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/monotoneon-inter--3e12f1c877d969b3903983c6.md) | 87 | `result-track:3e12f1c877d969b3903983c69515a30e88a675b1589e0c195f6cbbebae23ec0b` |
| 9 | `theorem` | [Antitone.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitone-inter--975a7bf6eac91cb5a7ee2b43.md) | 91 | `result-track:975a7bf6eac91cb5a7ee2b43158d8b02faa4014177143a3ba7ccb6d85cb484a7` |
| 10 | `theorem` | [AntitoneOn.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitoneon-inter--6258033323b3d27e2154a549.md) | 95 | `result-track:6258033323b3d27e2154a5495002a285abb398ef0908d249644a18e05ca6f43b` |
| 11 | `theorem` | [Monotone.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/monotone-union--539d14e1f6a8b002cc9a7c53.md) | 99 | `result-track:539d14e1f6a8b002cc9a7c538a0ea6158958f7ebddfeb7ebcb361a2b70cbf8d0` |
| 12 | `theorem` | [MonotoneOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/monotoneon-union--ab39ac934d8b309bf46cf49a.md) | 103 | `result-track:ab39ac934d8b309bf46cf49a67707bdd9d0bd1396f31f7577617aa69df052673` |
| 13 | `theorem` | [Antitone.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitone-union--6c4ea5c2e98f215daeacace4.md) | 107 | `result-track:6c4ea5c2e98f215daeacace4a78a4b34790d3711ef03731806f99c9a8fd7eb15` |
| 14 | `theorem` | [AntitoneOn.union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitoneon-union--09abd867820c336a5f0c47ad.md) | 111 | `result-track:09abd867820c336a5f0c47ad69bf19abacfa28686a4e599619665471b3a80abb` |
| 15 | `theorem` | [monotone_ofPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/monotone-ofpred--af316a9148fade940dd5ea2f.md) | 117 | `result-track:af316a9148fade940dd5ea2f2025c80ed9fcde2275bc4584c39b6f09d3f9621a` |
| 16 | `theorem` | [antitone_ofPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitone-ofpred--9ef41f5e69ee9a4d7124ce66.md) | 122 | `result-track:9ef41f5e69ee9a4d7124ce6657f9fe643c644b58ea4fa9301352ce191df7e18f` |
| 17 | `theorem` | [antitone_bforall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant9ca5540d1765f537e681d6b834ae9231cc09bfe8224ed20300e0e5eab5ad7446.lean/declarations/antitone-bforall--2bcf5e5637393358ca1bb44a.md) | 128 | `result-track:2bcf5e5637393358ca1bb44a60188118ff9cecbe5ab6d86f2bb02e5a33c4a5b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
