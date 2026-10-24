# Verification target: GRWTSK.Algebra.EssentialFiniteness.Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a57625a143386f5396971d9e49d1e1d5c5dcc9fc",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/index.md) · [Full source](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a57625a143386f5396971d9e49d1e1d5c5dcc9fc`.

Source path: `GRWTSK/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean.json)

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
| 1 | `class` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype--534b8c30b3b276ae10a6eb55.md) | 40 | `declaration-track:534b8c30b3b276ae10a6eb5582e61cacec5b31d26d5c93a02d8717c2123ae675` |
| 2 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-finset--f8dec2b44a1a8e7c68c4e298.md) | 47 | `declaration-track:f8dec2b44a1a8e7c68c4e2980fe93b1d4ef1b7deb0a5041c91b64100cbcf1b1a` |
| 3 | `abbrev` | [EssFiniteType.subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-subalgebra--dc1d3c153e9fc74eb3e03293.md) | 52 | `declaration-track:dc1d3c153e9fc74eb3e03293976636d10fbb0e7e783edca3e1cc9d4da950264a` |
| 4 | `lemma` | [EssFiniteType.adjoin_mem_finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-adjoin-mem-finset--7050e9fe3f205d23a3a4e4c3.md) | 55 | `result-track:7050e9fe3f205d23a3a4e4c35e60841d06a34978e2b7dcb52b492b269302d672` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/instance--aa78d25310d56afc45dfb178.md) | 58 | `declaration-track:aa78d25310d56afc45dfb1784326939c445908e845e6915d3f8b0f7ed011ba94` |
| 6 | `def` | [EssFiniteType.submonoid](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-submonoid--f2589fac4e75ad16f1f00e30.md) | 65 | `declaration-track:f2589fac4e75ad16f1f00e302c4dd84627d0657b8551128824d921d82abf6adb` |
| 7 | `instance` | [EssFiniteType.isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-islocalization--71826e8a3ac12e739446b210.md) | 68 | `declaration-track:71826e8a3ac12e739446b21073c7c8dfc3769170295fde9e1d718a0b37d8fae9` |
| 8 | `lemma` | [essFiniteType_cond_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-cond-iff--002f8bd1fcbc9ccfc3f737c7.md) | 72 | `result-track:002f8bd1fcbc9ccfc3f737c7b0a764a2ebf956ccba58846a44142ab9b29bdee9` |
| 9 | `lemma` | [essFiniteType_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-iff--68f011dd3ab51e14f4942df2.md) | 88 | `result-track:68f011dd3ab51e14f4942df2b2193d63cf150486c41ab6220bab1e801205bf19` |
| 10 | `instance` | [EssFiniteType.of_finiteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-of-finitetype--5fe391b7262b1a3272652c5f.md) | 95 | `declaration-track:5fe391b7262b1a3272652c5fa2529cdb815a032e178b0789651586461069d5db` |
| 11 | `lemma` | [EssFiniteType.of_isLocalization](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-of-islocalization--eff307d16b1093d18f6ea8fd.md) | 101 | `result-track:eff307d16b1093d18f6ea8fd929b093c194217c7d46f86c892df78a21490b777` |
| 12 | `lemma` | [EssFiniteType.of_id](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-of-id--1f1ef624963a6fec9fbaa9ff.md) | 111 | `result-track:1f1ef624963a6fec9fbaa9ffe01998d27d12701e51fdb0d934a9a2c35f31a85a` |
| 13 | `lemma` | [EssFiniteType.aux](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-aux--d2e7d17529a11d6d9d5e39f5.md) | 116 | `result-track:d2e7d17529a11d6d9d5e39f5ec83affd9abe1f7f2ee58e4a24bbe78de1c33b32` |
| 14 | `lemma` | [EssFiniteType.comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-comp--70d520e792f04959a4b038e2.md) | 140 | `result-track:70d520e792f04959a4b038e2654801910d2646b8b3547c604455509f36a7822e` |
| 15 | `lemma` | [essFiniteType_iff_exists_subalgebra](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-iff-exists-subalgebra--ac327c841b0cf3bc92f50fdd.md) | 161 | `result-track:ac327c841b0cf3bc92f50fdd5f6263df529f0dcf2733c39d9a32450235226868` |
| 16 | `instance` | [EssFiniteType.baseChange](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-basechange--aa71eee4e043140007fec0ae.md) | 168 | `declaration-track:aa71eee4e043140007fec0ae4063fdba7b40ea534dff404d6c80a5a43d1586fc` |
| 17 | `lemma` | [EssFiniteType.of_comp](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-of-comp--72d75b4b267873652ff55d6f.md) | 199 | `result-track:72d75b4b267873652ff55d6fb58ea7a4bfbc62b2200301609da7e00a6d9c5b8e` |
| 18 | `lemma` | [EssFiniteType.comp_iff](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-comp-iff--c1d40d93d6ffa55fbd797e5a.md) | 208 | `result-track:c1d40d93d6ffa55fbd797e5a4ffea3950952ff39cce4b9c29ea3f8089b68a26b` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/instance--4685a1a29963009d1f0fd3a1.md) | 212 | `declaration-track:4685a1a29963009d1f0fd3a1016d4b87a3b1cecf84eef75010075cdd8625db76` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/instance--4e40128e9a70edd4df82c1e3.md) | 215 | `declaration-track:4e40128e9a70edd4df82c1e3c36128224f5b21e25c999ca6bbb45ae6c2ac9f30` |
| 21 | `lemma` | [EssFiniteType.of_surjective](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-of-surjective--eaa292460098d4137c4ef645.md) | 222 | `result-track:eaa292460098d4137c4ef6457a051b6e801ff570abe9aa4736ffbcbb23252922` |
| 22 | `lemma` | [EssFiniteType.iff_of_algEquiv](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-iff-of-algequiv--64bef90635ab3c2c4fc784aa.md) | 230 | `result-track:64bef90635ab3c2c4fc784aa90b3cee219ffeb965250aa8950af255a15d6fcb8` |
| 23 | `lemma` | [EssFiniteType.algHom_ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-alghom-ext--8135f9dc3c5fdfba10fdff93.md) | 236 | `result-track:8135f9dc3c5fdfba10fdff93ea1fb8cae43f1a2cb3a9c89ee2158bb6ec4b871c` |
| 24 | `instance` | [EssFiniteType.quotient_map](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-quotient-map--6714cc522a11b1068670e7fe.md) | 246 | `declaration-track:6714cc522a11b1068670e7fe3b050a5a39ffb8919421cbb0ec44e6c925a78a2a` |
| 25 | `def` | [EssFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype--58a7c72e7d8f43e03bb50f73.md) | 260 | `declaration-track:58a7c72e7d8f43e03bb50f7349cf5ae113573d86e7f8140b3ed0ed17dc3dcf5e` |
| 26 | `lemma` | [essFiniteType_algebraMap](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-algebramap--ff893a654593ba678e083add.md) | 264 | `result-track:ff893a654593ba678e083add65eacb10735545f4c89c5ac0531830302653b8f8` |
| 27 | `def` | [EssFiniteType.finset](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-finset--74ee634772c0d7eebf67d347.md) | 271 | `declaration-track:74ee634772c0d7eebf67d347b7d537dfcd0fb4df87625d53e745fcaed4ae9e90` |
| 28 | `lemma` | [FiniteType.essFiniteType](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/finitetype-essfinitetype--d022f3858e222d47f5aea3ea.md) | 276 | `result-track:d022f3858e222d47f5aea3ea61fe7640dd9b531dd5d0c1a0762ec49f02e45a60` |
| 29 | `lemma` | [EssFiniteType.ext](../../../../mathematics/Algebra/EssentialFiniteness/Variant86ca8d82a3589228fb866a1700081453ed4b7b0fb5abb8ab2fc4fd9558a083c8.lean/declarations/essfinitetype-ext--805dde6c5618f0ba66aaf0a3.md) | 281 | `result-track:805dde6c5618f0ba66aaf0a3ff9a1d2eb06879bb19747620882cb44d75bc09a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
