# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8afcfbb191875bddaa2c438d262100f91ba1bc",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8afcfbb191875bddaa2c438d262100f91ba1bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset--7c3f10fe70813e2f94e796e3.md) | 36 | `declaration-track:7c3f10fe70813e2f94e796e3fe0fb0512c983cd71f086b850c6c71dce9341196` |
| 2 | `theorem` | [mem_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/mem-pifinset--b706fe8df83df7e9bdb72052.md) | 41 | `result-track:b706fe8df83df7e9bdb7205213017d2dd0e7efc8ecc9877bec6550a97b60c612` |
| 3 | `theorem` | [coe_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/coe-pifinset--90be5d7ad5e074d3a81fa3c2.md) | 52 | `result-track:90be5d7ad5e074d3a81fa3c2e882d125f0a2b3ba1c9999de86d21b84534ce8c4` |
| 4 | `theorem` | [piFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-subset--2c445a47a2c700eaed52c4cc.md) | 58 | `result-track:2c445a47a2c700eaed52c4cc61e0e669f89a43933a3b8e141ca64eb9e73f3660` |
| 5 | `theorem` | [piFinset_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-eq-empty--a53e60a0a96b173bf1d387de.md) | 62 | `result-track:a53e60a0a96b173bf1d387de54d33c84996acca00240a813c4cc6a34c5cc8199` |
| 6 | `theorem` | [piFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-empty--dc152d5664720eb599faa832.md) | 65 | `result-track:dc152d5664720eb599faa8321c57f6189f91d9e864c480e99bca55ff7cd1371d` |
| 7 | `lemma` | [piFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-nonempty--eabce8992ebe1f2cec3adb92.md) | 68 | `result-track:eabce8992ebe1f2cec3adb92f9f0526997806811364bc12781e4af6573c4df73` |
| 8 | `lemma` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.Finset.Nonempty.piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-pifinset-variantd4c3acd2--9ad3aedee3419360a80dfdf6.md) | 73 | `result-track:9ad3aedee3419360a80dfdf62005e18b6bd2653c2f2aafe2d63a04241cf66fce` |
| 9 | `lemma` | [piFinset_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-of-isempty--7be8fdc5ef2f07b08804b718.md) | 77 | `result-track:7be8fdc5ef2f07b08804b718a7fffed679159d02fb0b73f39e62986ccf6ad447` |
| 10 | `theorem` | [piFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-singleton--65593156bccae2053b9026ea.md) | 81 | `result-track:65593156bccae2053b9026ea29383c38a26b000f96ca44f408f5be0981aeb32d` |
| 11 | `theorem` | [piFinset_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-subsingleton--3f66602e12cff02a7981d7d9.md) | 84 | `result-track:3f66602e12cff02a7981d7d991039f29f68af671fb72ad81abaded0a34132c2d` |
| 12 | `theorem` | [piFinset_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-disjoint-of-disjoint--2fc0d15c9a5cabea787943a9.md) | 88 | `result-track:2fc0d15c9a5cabea787943a9688590fd47c3d864c1abe66ea20958b331eaa231` |
| 13 | `lemma` | [piFinset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-image--65280923ccacf22fb995295b.md) | 94 | `result-track:65280923ccacf22fb995295b179909064a8d47cfadd3a31f2934b76d7b8f9a5c` |
| 14 | `lemma` | [eval_image_piFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/eval-image-pifinset-subset--171df065e2b6e0e015b67c5d.md) | 98 | `result-track:171df065e2b6e0e015b67c5d9381ed59d1bc142b36a53b4954477b8f46f2be6a` |
| 15 | `lemma` | [eval_image_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/eval-image-pifinset--044a970489981cabaffd1ddc.md) | 101 | `result-track:044a970489981cabaffd1ddc8c172e122397c281ed214909ed62b8a87a4ad955` |
| 16 | `lemma` | [eval_image_piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/eval-image-pifinset-const--129edb2a08308018b91e217a.md) | 107 | `result-track:129edb2a08308018b91e217af7466a7235f7587ea4a06f820a60a52704c4edf0` |
| 17 | `lemma` | [filter_piFinset_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/filter-pifinset-of-notmem--6a39ea46fd4594984935839c.md) | 116 | `result-track:6a39ea46fd4594984935839c8c871960fcc6a1a1d4acaa30d4c99508596a716d` |
| 18 | `lemma` | [piFinset_update_eq_filter_piFinset_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-update-eq-filter-pifinset-mem--b3536cac5b4715a377cd2696.md) | 123 | `result-track:b3536cac5b4715a377cd269683d0f9684f25b93b04431524e084e25bf3ae284e` |
| 19 | `lemma` | [piFinset_update_singleton_eq_filter_piFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-update-singleton-eq-filter-pifinset-eq--d9cf6157c94a9fdb4779d123.md) | 137 | `result-track:d9cf6157c94a9fdb4779d123a4c7d73c86ec35dc89daa89dae4f4770286ee72c` |
| 20 | `instance` | [Pi.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pi-instfintype--dc066e686d360ee7c2486215.md) | 147 | `declaration-track:dc066e686d360ee7c2486215a19ce19cc1b098dc6c1d77834b5f48fa209c4a13` |
| 21 | `theorem` | [Fintype.piFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/fintype-pifinset-univ--34ff66bb6b627dc1752ad2b9.md) | 152 | `result-track:34ff66bb6b627dc1752ad2b9632b2716e4346b005a3a4dd22e3521ce08f7d126` |
| 22 | `instance` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.Function.Embedding.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-pifinset-variantd4c3acd2--9697858f3a95c895844efb2c.md) | 163 | `declaration-track:9697858f3a95c895844efb2c9ffc4a3689c162d5dd40fd63ca15c2ace5f2a443` |
| 23 | `instance` | [RelHom.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/relhom-instfintype--0f10296efcd1cb1e2b3a2e46.md) | 167 | `declaration-track:0f10296efcd1cb1e2b3a2e461c02cd1281a97585de477da1366e766c2b52b927` |
| 24 | `instance` | [RelEmbedding.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/relembedding-instfintype--ca123f0cd6aead867dab6ce2.md) | 172 | `declaration-track:ca123f0cd6aead867dab6ce2f13d8380fbed730ea6cb5c6521e6664b86876d7d` |
| 25 | `theorem` | [Finset.univ_pi_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/finset-univ-pi-univ--6f367eef9cee5ec8b0829a29.md) | 177 | `result-track:6f367eef9cee5ec8b0829a29a7b42be11255b99f1a9be5e13eb5f54397826e2f` |
| 26 | `lemma` | [piFinset_filter_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pifinset-filter-const--3dff7620a0be38056f191917.md) | 187 | `result-track:3dff7620a0be38056f191917594685c5e62e05285240d1ebc0197445361eda32` |
| 27 | `lemma` | [piDiag_subset_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/pidiag-subset-pifinset--4d04a28cfdf0728f31977ce7.md) | 190 | `result-track:4d04a28cfdf0728f31977ce77102efed579fbb5c6756e013d5d590c76e011316` |
| 28 | `theorem` | [Finite.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/finite-pi--edf27a5c78143b7ef0641eda.md) | 213 | `result-track:edf27a5c78143b7ef0641edafa3abafd653809d20ad44b4fb36a2363ad1e208f` |
| 29 | `lemma` | [Finite.pi'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/finite-pi--27898b165866d2db5e008dfe.md) | 222 | `result-track:27898b165866d2db5e008dfefc44f5d229ce0627e2df7162ade6dbc09f4793b2` |
| 30 | `theorem` | [forall_finite_image_eval_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/declarations/forall-finite-image-eval-iff--7d55f8d40c85d42ed31b8174.md) | 229 | `result-track:7d55f8d40c85d42ed31b81742708b03c994c4fc9dabac291384616bd8c321199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
