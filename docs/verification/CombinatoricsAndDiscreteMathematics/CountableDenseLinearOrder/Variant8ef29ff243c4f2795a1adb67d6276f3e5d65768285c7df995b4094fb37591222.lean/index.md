# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CountableDenseLinearOrder.Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c09ae8bf900e4ae05b81204b3656bee08f27b8a1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c09ae8bf900e4ae05b81204b3656bee08f27b8a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_between_finsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/exists-between-finsets--dc4156d17d64bff717a23c4b.md) | 42 | `result-track:dc4156d17d64bff717a23c4bf3fea6b6f58ec03ff5643f85c8b8acd232fcd77f` |
| 2 | `lemma` | [exists_orderEmbedding_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/exists-orderembedding-insert--0b35a4af8f0cca9c777585dd.md) | 66 | `result-track:0b35a4af8f0cca9c777585dd7b85c555cbf4641850711fafce2b825decf7cbcf` |
| 3 | `def` | [PartialIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/partialiso--907595c616bf1dff0890eead.md) | 105 | `declaration-track:907595c616bf1dff0890eead46b0e0e1b2b7242b0424bf98f09aefa0d465ff94` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/instance--df574499d72d1a6c2b5d4875.md) | 112 | `declaration-track:df574499d72d1a6c2b5d4875fe5f5ad66ae78603578d5fe263a6428b27293d88` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/instance--ea71c6aa086b9f1916535326.md) | 114 | `declaration-track:ea71c6aa086b9f19165353261641eeb55c79da0b3510b21e66eb8924700b98a9` |
| 6 | `theorem` | [exists_across](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/exists-across--502d2fede0d0e3efdc0bd2d3.md) | 123 | `result-track:502d2fede0d0e3efdc0bd2d3ac61997c96173eb173a5fd1b293ba62932559f88` |
| 7 | `def` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/comm--117fae10a06a1cce413d7a68.md) | 154 | `declaration-track:117fae10a06a1cce413d7a68486fabd8424ba43d4f9317adb5998d3dc5dd6ad4` |
| 8 | `def` | [definedAtLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/definedatleft--7f87e2be35ca55f39c5f4b4d.md) | 170 | `declaration-track:7f87e2be35ca55f39c5f4b4de00882fa27868936ce50bb8c1721a61dd50fcaa9` |
| 9 | `def` | [definedAtRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/definedatright--4b5f9fb20c1922683ea207e5.md) | 190 | `declaration-track:4b5f9fb20c1922683ea207e58dff343d66d61e388ba44f5ad491bfdad799a555` |
| 10 | `def` | [funOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/funofideal--bf107936a398abf106daba3e.md) | 206 | `declaration-track:bf107936a398abf106daba3e00998af2acdcaef1599e5e2b46d2bc0c090a3a85` |
| 11 | `def` | [invOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/invofideal--1644d37350f6d9e6d4be8843.md) | 213 | `declaration-track:1644d37350f6d9e6d4be88434533d205dbebb94f197ea62984d4630dc9f2b9f6` |
| 12 | `theorem` | [embedding_from_countable_to_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/embedding-from-countable-to-dense--502f08fe287d59222c697d64.md) | 225 | `result-track:502f08fe287d59222c697d64138505e7acbc8d44f302e26feec0643c5e651d43` |
| 13 | `theorem` | [iso_of_countable_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant8ef29ff243c4f2795a1adb67d6276f3e5d65768285c7df995b4094fb37591222.lean/declarations/iso-of-countable-dense--aa7c500d6fbbaef3b3ac3446.md) | 244 | `result-track:aa7c500d6fbbaef3b3ac3446c899f460184a70f4fc2c2ddfc44841e53c79b925` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
