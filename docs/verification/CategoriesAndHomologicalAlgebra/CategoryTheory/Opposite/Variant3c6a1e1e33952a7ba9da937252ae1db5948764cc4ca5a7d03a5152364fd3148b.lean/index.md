# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5fa47a9888df060a5d2a88066602ef89d7bdd9b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5fa47a9888df060a5d2a88066602ef89d7bdd9b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean.json)

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
| 1 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op--fe5e390de3a2b78fcab6b2eb.md) | 39 | `declaration-track:fe5e390de3a2b78fcab6b2eb3bf2f00ffc6231c3b4b8841527d9d6cb0ced5b37` |
| 2 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop--4710e844dc417f26406356ad.md) | 43 | `declaration-track:4710e844dc417f26406356adb17a77ca43be5f489f694f47fd94fc819148b211` |
| 3 | `lemma` | [op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-iff--a0fb806d1c1d76def75053a5.md) | 47 | `result-track:a0fb806d1c1d76def75053a57961e8407198fcfc069f25f79321e345d0a5f530` |
| 4 | `lemma` | [unop_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-iff--8e10ccae4705ab55e428b9f9.md) | 51 | `result-track:8e10ccae4705ab55e428b9f9bef24eb09af41fb8a7216d2d0a7557214b54e2c8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/instance--2a18b2d7687778ca12ca845e.md) | 54 | `declaration-track:2a18b2d7687778ca12ca845e53806bfffd5420a1f190260b9714fbd0410af6a2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/instance--ee68d332b3a30dad093aa5ef.md) | 57 | `declaration-track:ee68d332b3a30dad093aa5ef2e51fff6bacbcbd35b739fe3f6d0aa8151f2110a` |
| 7 | `lemma` | [op_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-unop--cec334b36d43be2bba151c39.md) | 61 | `result-track:cec334b36d43be2bba151c39386429d99d385756eadcb114986dd4ba24890471` |
| 8 | `lemma` | [unop_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-op--a27e4da51cdc8e708e8799fc.md) | 64 | `result-track:a27e4da51cdc8e708e8799fc57a692111ec99cf8bda3fb0d02fd8b034ff931fd` |
| 9 | `lemma` | [op_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-injective--c125085fc5f215415d2d0031.md) | 66 | `result-track:c125085fc5f215415d2d00311398c352cdbeb9d3e6470ec28b0604c86b50b708` |
| 10 | `lemma` | [unop_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-injective--42879649ff4a1ff7b100f5dd.md) | 69 | `result-track:42879649ff4a1ff7b100f5dd60aa2183a292fe8c9a021262dd7fb6ca0f4bbea9` |
| 11 | `lemma` | [op_injective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-injective-iff--8bf3fca386144df4f2f7fcb1.md) | 72 | `result-track:8bf3fca386144df4f2f7fcb181343bcc175673a0fd15c1aad0ec8dd52703cecb` |
| 12 | `lemma` | [unop_injective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-injective-iff--0b8ee45d67786637c0296681.md) | 76 | `result-track:0b8ee45d67786637c0296681fdafe605d976c636b10ad523f905b600dc52135c` |
| 13 | `lemma` | [op_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-monotone--6009437a27f0dba76d701d6e.md) | 80 | `result-track:6009437a27f0dba76d701d6e690ebbbaa339558709b3068e4d2ec2215524b99a` |
| 14 | `lemma` | [unop_monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-monotone--044f396dcbcca1bcca46c49e.md) | 83 | `result-track:044f396dcbcca1bcca46c49e97ba0f72ae3fcc4435ec597296dfbce692ad618e` |
| 15 | `lemma` | [op_monotone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-monotone-iff--f61b599055128cfcde39ae3d.md) | 87 | `result-track:f61b599055128cfcde39ae3dae38b4a8ef76eb6c9a87c258e8416ce63e575f50` |
| 16 | `lemma` | [unop_monotone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-monotone-iff--1828f2484b6eac136f8161d4.md) | 91 | `result-track:1828f2484b6eac136f8161d4600d6fbbcfa93ac62e38e7a88a368a47124a1630` |
| 17 | `def` | [subtypeOpEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/subtypeopequiv--5590dc3aee8da39f9098c326.md) | 95 | `declaration-track:5590dc3aee8da39f9098c3263303b9a7a5e51dd761e6c13de0893fe325e35f15` |
| 18 | `lemma` | [op_ofObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-ofobj--fb056b5e6238596f8c959c1f.md) | 101 | `result-track:fb056b5e6238596f8c959c1ffa998d98393978d2e5f8190fcb5f2cae9ec1a650` |
| 19 | `lemma` | [unop_ofObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-ofobj--e9c6714a04efc7f65c650856.md) | 111 | `result-track:e9c6714a04efc7f65c6508568d2132431b16f40476d0cce037e08e7a4d23b265` |
| 20 | `lemma` | [op_singleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-singleton--47c1db92a706307b1acc88e4.md) | 115 | `result-track:47c1db92a706307b1acc88e4261e7884326de59783ab189576bc90323d0b47e8` |
| 21 | `lemma` | [unop_singleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-singleton--8868518fbc7491d07bed83f4.md) | 120 | `result-track:8868518fbc7491d07bed83f461c589c305fe8209199198582244705509b9efbb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/instance--f497e59a0ac01175a981b465.md) | 130 | `declaration-track:f497e59a0ac01175a981b465eda22501416fe652bd7c70270213d19cff76f3c6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/instance--795a9a4ec4600ffc9d5099cf.md) | 134 | `declaration-track:795a9a4ec4600ffc9d5099cffde16c0c70f88a3e88068c984b68b144d3e5ac92` |
| 24 | `lemma` | [op_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-isoclosure--c717552c75ec73b6d64bdc6a.md) | 138 | `result-track:c717552c75ec73b6d64bdc6a4d3b26f710bbb70eba8737760654fd4f8bdd6f2a` |
| 25 | `lemma` | [unop_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-isoclosure--58a43ca23578f97b655a347e.md) | 144 | `result-track:58a43ca23578f97b655a347e2bda99d342cd0b426a964ddff1b6530e1d551f0a` |
| 26 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/opequivalence--3b2fbcd7fd12dfde12814523.md) | 152 | `declaration-track:3b2fbcd7fd12dfde12814523e9c8cfc73050a18bbff5da9dfe222086fd349fea` |
| 27 | `lemma` | [op_inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-inf--6deae124efbaf308ce5d4486.md) | 160 | `result-track:6deae124efbaf308ce5d4486637b78a5a815cbeeecab75104acf046a30b6e767` |
| 28 | `lemma` | [op_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/op-sup--2c71107c78047478d4ab0cbd.md) | 163 | `result-track:2c71107c78047478d4ab0cbdc77f8898a9ee57b9b6395072e75cf8c7271d96ba` |
| 29 | `lemma` | [unop_inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-inf--fdf4a8f5d1691ec8e4de03af.md) | 166 | `result-track:fdf4a8f5d1691ec8e4de03afbdf65aab668ddc033e4faac590f55b9739abdb4d` |
| 30 | `lemma` | [unop_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant3c6a1e1e33952a7ba9da937252ae1db5948764cc4ca5a7d03a5152364fd3148b.lean/declarations/unop-sup--4eda49b7c927a8e71be73c0c.md) | 169 | `result-track:4eda49b7c927a8e71be73c0caa7212da36e03b680baeafdc9a56cdf45b089d2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
