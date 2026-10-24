# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "733982dfc2bdded1908b0f3926e5d03e4af80a2f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `733982dfc2bdded1908b0f3926e5d03e4af80a2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean.json)

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
| 1 | `lemma` | [prod_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-nonneg--571654f960dd01a8c9dd94a5.md) | 32 | `result-track:571654f960dd01a8c9dd94a571ff4c080c002390b65ffaf3f8b88cbfdf8eeee5` |
| 2 | `lemma` | [prod_le_prod₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-le-prod--34934d96ee0e51391e2ad949.md) | 39 | `result-track:34934d96ee0e51391e2ad9491f8287540af629316337830baa8992d87b07ec51` |
| 3 | `theorem` | [_root_.Monotone.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/root-monotone-finsetprod--255f36e3bf7a483597b2a564.md) | 51 | `result-track:255f36e3bf7a483597b2a5641a9b6ef781cf7030cf4c7dcbfa7ccb2284b2cff5` |
| 4 | `theorem` | [_root_.MonotoneOn.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/root-monotoneon-finsetprod--411d87857d5d9d321a6cda1f.md) | 58 | `result-track:411d87857d5d9d321a6cda1f830721a5d5a2096f36d4ade5cee6b9fb16fd265a` |
| 5 | `theorem` | [_root_.Antitone.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/root-antitone-finsetprod--6a2c4cb6a8d5a6bce2e64d64.md) | 65 | `result-track:6a2c4cb6a8d5a6bce2e64d64babe40d00603ce3859d2d7db3b7c8cccc8b0e277` |
| 6 | `theorem` | [_root_.AntitoneOn.finsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/root-antitoneon-finsetprod--6c3ae7798c93ec6eef7ff224.md) | 72 | `result-track:6c3ae7798c93ec6eef7ff224831f84db51d53187e0d778f62ffc7d40179d2a49` |
| 7 | `lemma` | [prod_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-le-one--7195c92b007bd30d103b3373.md) | 79 | `result-track:7195c92b007bd30d103b33731870c836e4908523993305ebad7e286e281e0b45` |
| 8 | `lemma` | [one_le_prod₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/one-le-prod--228c9213d96e7cae6326fdf4.md) | 84 | `result-track:228c9213d96e7cae6326fdf4a7038378e33f09e39cfe9c36a1b519a485a6a686` |
| 9 | `lemma` | [le_prod_max_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/le-prod-max-one--1f804dbf2e4d64a1b6640862.md) | 87 | `result-track:1f804dbf2e4d64a1b66408620abb462effbce8a4b2c2914b970c78a220804d4a` |
| 10 | `lemma` | [prod_mono_of_subset_of_one_le₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-mono-of-subset-of-one-le--69fa92c68e87960d0aadbad7.md) | 99 | `result-track:69fa92c68e87960d0aadbad78bf91e5ca4ef1bd80a39a2769f03fa083aa3a969` |
| 11 | `lemma` | [prod_mono_of_subset_of_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-mono-of-subset-of-le-one--9ec56b94ed9bf3bf8ae9ea26.md) | 112 | `result-track:9ec56b94ed9bf3bf8ae9ea26ad96b6c27718ec2c61cde2bac2b80cc5d7cb7679` |
| 12 | `lemma` | [prod_le_prod_of_subset_of_one_le₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-le-prod-of-subset-of-one-le--765d572cc6f91a7efc660091.md) | 126 | `result-track:765d572cc6f91a7efc6600913ca8aa632cd3f91e88997984911ea4843bf86c35` |
| 13 | `lemma` | [prod_le_prod_of_subset_of_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-le-prod-of-subset-of-le-one--5e3be44b9d723e1178c8087b.md) | 130 | `result-track:5e3be44b9d723e1178c8087b141be5063a50a35d5c90455a49a9e7608eb2fcf8` |
| 14 | `theorem` | [prod_mono_set_of_one_le₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-mono-set-of-one-le--fcc432ac7b66104711e30140.md) | 135 | `result-track:fcc432ac7b66104711e301408d36ed1c94f9301ff2f8e14a6d13d62034013f17` |
| 15 | `theorem` | [prod_anti_set_of_le_one₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-anti-set-of-le-one--fe867eba841d2a3aad4f0ec2.md) | 140 | `result-track:fe867eba841d2a3aad4f0ec266737fda377801c4b46d772000b5f9df68c52a66` |
| 16 | `theorem` | [prod_le_prod_of_injOn₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-le-prod-of-injon--7b392a2900e6f5260c21458d.md) | 144 | `result-track:7b392a2900e6f5260c21458d85c3c196d48ba75b29baa2d032405a2cbe30307f` |
| 17 | `lemma` | [prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-pos--a9406c89d657dfb2f0db7efd.md) | 158 | `result-track:a9406c89d657dfb2f0db7efd293e958784b4058b2350d02c1a3623791d997d6a` |
| 18 | `lemma` | [prod_lt_prod₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-lt-prod--c15f724f66e2b8925c4eaba0.md) | 161 | `result-track:c15f724f66e2b8925c4eaba0207488ffc5fdf8b6a7e02c73bbdc65c7cb1cde00` |
| 19 | `lemma` | [prod_lt_prod_of_nonempty₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta2f4be025a6f8863af1ded0c330ab72f94602d60e808cd24699bb1cd1f1d3263.lean/declarations/prod-lt-prod-of-nonempty--8078afc115d568cdd16f0934.md) | 174 | `result-track:8078afc115d568cdd16f0934e394e15fd1f030ec50040caa009f4ce7ddba5847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
