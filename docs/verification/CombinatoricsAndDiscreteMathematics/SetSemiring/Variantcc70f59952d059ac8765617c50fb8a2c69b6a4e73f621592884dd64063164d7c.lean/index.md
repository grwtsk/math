# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SetSemiring.Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5abf9756273ac0d26ebfc8191816b6a108bf7177",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5abf9756273ac0d26ebfc8191816b6a108bf7177`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Accumulate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSetSemiring](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/issetsemiring--4157ef421d61e4f7eb7168b2.md) | 59 | `declaration-track:4157ef421d61e4f7eb7168b2cd48619921586f1d5af076985b9cb54889d27494` |
| 2 | `lemma` | [isPiSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/ispisystem--8c414d66ba75020c3a4ff048.md) | 67 | `result-track:8c414d66ba75020c3a4ff048c74c0d9823ed7f3b945af397a82698c86b5e5d19` |
| 3 | `def` | [disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofdiff--1e0fbb2aa7912e7e84c4783f.md) | 77 | `declaration-track:1e0fbb2aa7912e7e84c4783fc57df39f17d2eb1be2203e8917460be9fdf91597` |
| 4 | `lemma` | [empty_notMem_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/empty-notmem-disjointofdiff--a21ab872fd06a589d572fa36.md) | 81 | `result-track:a21ab872fd06a589d572fa3639faabf2aff472ca1415c6436d3b886ddef9d082` |
| 5 | `lemma` | [subset_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/subset-disjointofdiff--666e32b30a0f4084984fcbb1.md) | 89 | `result-track:666e32b30a0f4084984fcbb1f9954da17bf3ab9d737f798349ffb41b8d8baa69` |
| 6 | `lemma` | [pairwiseDisjoint_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-disjointofdiff--de7ecbd92b9cf544d7cc2707.md) | 95 | `result-track:de7ecbd92b9cf544d7cc2707000b03c30415e324f42d61e7fe8415f6f5e6dd12` |
| 7 | `lemma` | [sUnion_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/sunion-disjointofdiff--b113172125c0040d521645c9.md) | 102 | `result-track:b113172125c0040d521645c92bb06307b27e683e7d481a3e3d8af4d90187cc52` |
| 8 | `lemma` | [notMem_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/notmem-disjointofdiff--9250e9e6e7541b64f62e4264.md) | 109 | `result-track:9250e9e6e7541b64f62e42644357b7e12a86a21dab60637adf131570c3d5d614` |
| 9 | `lemma` | [sUnion_insert_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/sunion-insert-disjointofdiff--f1c2529f362d2dc147d42119.md) | 123 | `result-track:f1c2529f362d2dc147d421192749e96445f5ed3ae51865a9910bc0a20f3693a9` |
| 10 | `lemma` | [disjoint_sUnion_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjoint-sunion-disjointofdiff--62debe3c10e7b95cb78b4a78.md) | 129 | `result-track:62debe3c10e7b95cb78b4a78e11a303842f747aead1d7b9d21ccad69c27bdbd8` |
| 11 | `lemma` | [pairwiseDisjoint_insert_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-insert-disjointofdiff--00a62809cf2f5250e2a53781.md) | 134 | `result-track:00a62809cf2f5250e2a5378195a7104648c4a39be2a44527c78f10e2f6071bfe` |
| 12 | `lemma` | [exists_disjoint_finset_diff_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/exists-disjoint-finset-diff-eq--d2a5b7f60d8a8942c2b764ea.md) | 153 | `result-track:d2a5b7f60d8a8942c2b764eaab975eea00f28f4f6656032f7b69dabd12f9dfb3` |
| 13 | `def` | [disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofdiffunion--1113704a41c8bbb60fa5602a.md) | 223 | `declaration-track:1113704a41c8bbb60fa5602a6ea05b588b7fb5f15023dc9c28b097aede29be13` |
| 14 | `lemma` | [empty_notMem_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/empty-notmem-disjointofdiffunion--c6853d986ddf58fa3a9dfb29.md) | 227 | `result-track:c6853d986ddf58fa3a9dfb2928a9e44cfd2a8dcdaceea7507167f9985692cc5d` |
| 15 | `lemma` | [disjointOfDiffUnion_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofdiffunion-subset--1d5716f395f97db7fb390057.md) | 237 | `result-track:1d5716f395f97db7fb39005743711cb4705ca989040019137f69ae2ccffdd094` |
| 16 | `lemma` | [pairwiseDisjoint_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-disjointofdiffunion--19f88a8588f4ad6a40d77eb7.md) | 243 | `result-track:19f88a8588f4ad6a40d77eb7537aeefe57a76b55a4c6c79fc56beaacba95aac3` |
| 17 | `lemma` | [diff_sUnion_eq_sUnion_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/diff-sunion-eq-sunion-disjointofdiffunion--01e4728bed2154f347db110b.md) | 250 | `result-track:01e4728bed2154f347db110bd329081601c13525f3bea545a595c9c9b42daadb` |
| 18 | `lemma` | [sUnion_disjointOfDiffUnion_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/sunion-disjointofdiffunion-subset--5fcbbad4f0ce2fa84f29439f.md) | 257 | `result-track:5fcbbad4f0ce2fa84f29439f1730b08baec651d96592e01bbebf45244f0a8739` |
| 19 | `lemma` | [subset_of_diffUnion_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/subset-of-diffunion-disjointofdiffunion--e65309239f05936d0646ebde.md) | 262 | `result-track:e65309239f05936d0646ebdecbf030f34b0f4ca783cded3e85bbdec1950fe8c6` |
| 20 | `lemma` | [subset_of_mem_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/subset-of-mem-disjointofdiffunion--bc5f60b9eff6c98c70f09f15.md) | 268 | `result-track:bc5f60b9eff6c98c70f09f15eea6cfd499d229a55ae6e0d5ff67131ebf05d18a` |
| 21 | `lemma` | [disjoint_sUnion_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjoint-sunion-disjointofdiffunion--41525ab20bd3d7c32a5c9f08.md) | 275 | `result-track:41525ab20bd3d7c32a5c9f08192b9ec3df5222f67594364496ed56b5061fac99` |
| 22 | `lemma` | [disjoint_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjoint-disjointofdiffunion--70491cd1d853d3b26e4e9bd0.md) | 280 | `result-track:70491cd1d853d3b26e4e9bd0568167d309e95508ed73fe5202dea39202bbf07a` |
| 23 | `lemma` | [pairwiseDisjoint_union_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-union-disjointofdiffunion--e8806b5ddc1cbfebf8e11f93.md) | 292 | `result-track:e8806b5ddc1cbfebf8e11f93694fde5a0e643f166652f7378346595a55b49fc8` |
| 24 | `lemma` | [sUnion_union_sUnion_disjointOfDiffUnion_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/sunion-union-sunion-disjointofdiffunion-of-subset--8b4c4b262a00fb77c2d8b23a.md) | 301 | `result-track:8b4c4b262a00fb77c2d8b23af28edb916a95fd9226e335dbf65cb71c9090c890` |
| 25 | `lemma` | [sUnion_union_disjointOfDiffUnion_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/sunion-union-disjointofdiffunion-of-subset--05b744534297f95a9694c339.md) | 307 | `result-track:05b744534297f95a9694c339c74c533dc851adba0d88e8ea248836bff9a4b8b4` |
| 26 | `theorem` | [disjointOfUnion_props](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofunion-props--46fdd0dd5e2467d8c1c905b2.md) | 323 | `result-track:46fdd0dd5e2467d8c1c905b29c3af675e055a42f6182c66fd58b22498827a5d6` |
| 27 | `def` | [disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofunion--a9162332c4f1dfdc64b47ff2.md) | 407 | `declaration-track:a9162332c4f1dfdc64b47ff2e1fca00ece42d5abe0cbc81441e452e71f1399be` |
| 28 | `lemma` | [pairwiseDisjoint_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-disjointofunion--b401c43518a2cd0b62ec9a39.md) | 410 | `result-track:b401c43518a2cd0b62ec9a3940151c2b91448e4c726da575ae9dd2ddf5f1ca79` |
| 29 | `lemma` | [disjointOfUnion_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofunion-subset--7dbd602b832fa231bbafa8dc.md) | 414 | `result-track:7dbd602b832fa231bbafa8dc2bd9a70bd467fd570e7f63b6fc3b8e3c4dd4decc` |
| 30 | `lemma` | [pairwiseDisjoint_biUnion_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-biunion-disjointofunion--d1de7c0424199ded6bb5fa70.md) | 418 | `result-track:d1de7c0424199ded6bb5fa70b76c92aa1e56a3e19effbeb7888e1e5b7e24d06c` |
| 31 | `lemma` | [pairwiseDisjoint_disjointOfUnion_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/pairwisedisjoint-disjointofunion-of-mem--edf71758e28e026c94112b3f.md) | 422 | `result-track:edf71758e28e026c94112b3fb8071a3ffc3b3701bb5077060872f31d2f18bb26` |
| 32 | `lemma` | [disjointOfUnion_subset_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointofunion-subset-of-mem--0de3f047dc3e1c7091ea60a2.md) | 427 | `result-track:0de3f047dc3e1c7091ea60a29bbfdd8b312c3a3444b0dfe854c7d6b2187388c4` |
| 33 | `lemma` | [subset_of_mem_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/subset-of-mem-disjointofunion--88102eb26f2be46deccedd81.md) | 431 | `result-track:88102eb26f2be46deccedd81d41f079f4f277e944906668a013cd9a9925c130b` |
| 34 | `lemma` | [empty_notMem_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/empty-notmem-disjointofunion--e0e886b880b6b52a26264d83.md) | 435 | `result-track:e0e886b880b6b52a26264d83605b6d3a8c5cb5727d06d89d43e10cff7dfe8c5a` |
| 35 | `lemma` | [sUnion_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/sunion-disjointofunion--cf23cd2ea91a43b13483b97e.md) | 442 | `result-track:cf23cd2ea91a43b13483b97ed605202f7906e0b9de66538d4fa6a0f4fe73bd54` |
| 36 | `structure` | [IsSetRing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/issetring--98400629e50e5271f34e78c5.md) | 452 | `declaration-track:98400629e50e5271f34e78c5513d0f51acb15296b2844f57532c60b9ce3f0c9b` |
| 37 | `lemma` | [inter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/inter-mem--a7bbc5fc431c7037e44f0c7b.md) | 459 | `result-track:a7bbc5fc431c7037e44f0c7bb4020577c489f392b21ac6a9393da43f334a7074` |
| 38 | `lemma` | [isSetSemiring](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/issetsemiring--36ca209f1955db07a50cf3db.md) | 462 | `result-track:36ca209f1955db07a50cf3db73dca399e7653f67552be3a6875eadc67fd123bb` |
| 39 | `lemma` | [biUnion_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/biunion-mem--c139155ceb876ed9c987f18c.md) | 472 | `result-track:c139155ceb876ed9c987f18cf78f82e18d43c3bd57126188749bc2d670400dfc` |
| 40 | `lemma` | [biInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/biinter-mem--a436bf259af75757ec945011.md) | 483 | `result-track:a436bf259af75757ec94501192f6f22666d1e4b95a70fb00e2db5eab41adb4d9` |
| 41 | `lemma` | [finsetSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/finsetsup-mem--fd7a6ea55f361f4543b2f99b.md) | 495 | `result-track:fd7a6ea55f361f4543b2f99b87604ba50654b13907eac54e1f135509dce403dd` |
| 42 | `lemma` | [partialSups_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/partialsups-mem--10d10bfe557e45ddf79c373f.md) | 505 | `result-track:10d10bfe557e45ddf79c373f0e278604a5bfa9bc7653b8f0aefc00f6f685f3b3` |
| 43 | `lemma` | [disjointed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/disjointed-mem--073eee7a2cf694734149e727.md) | 510 | `result-track:073eee7a2cf694734149e7276a0e5ec105416d3497822fdb1f0dbbb016e611ed` |
| 44 | `theorem` | [iUnion_le_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/iunion-le-mem--a093f5282b21240948423aac.md) | 515 | `result-track:a093f5282b21240948423aac78b61ffb12651b40352a6b051a9b1ffdee5ba610` |
| 45 | `theorem` | [iInter_le_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/iinter-le-mem--538353472626452422b12b0e.md) | 521 | `result-track:538353472626452422b12b0e7a1132eb8b92c133b6dc1727de1cc917ccb772d6` |
| 46 | `theorem` | [accumulate_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Variantcc70f59952d059ac8765617c50fb8a2c69b6a4e73f621592884dd64063164d7c.lean/declarations/accumulate-mem--87c74d40e970ab65849a8725.md) | 527 | `result-track:87c74d40e970ab65849a8725e4389f1009b962ca826d0d0f91d022dbacd1298b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
