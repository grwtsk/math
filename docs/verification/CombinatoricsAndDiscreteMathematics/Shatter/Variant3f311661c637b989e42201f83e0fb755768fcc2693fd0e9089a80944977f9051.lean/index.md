# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shatter.Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bddb653f043aba4f91362356e9059b76c72ec719",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bddb653f043aba4f91362356e9059b76c72ec719`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Shatters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters--0f752483566a9f80adea240a.md) | 44 | `declaration-track:0f752483566a9f80adea240ae9e0e7322875b434cac27a5ee46ab5949d970021` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/instance--b4081238233b6595d01890e5.md) | 46 | `declaration-track:b4081238233b6595d01890e52173b2e3968d80766357a8cdcc942c76e689d7b5` |
| 3 | `lemma` | [Shatters.exists_inter_eq_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-exists-inter-eq-singleton--b49e9b541fbddc7c4551e1d4.md) | 48 | `result-track:b49e9b541fbddc7c4551e1d4acc63b3d1d4a4404c91f7fc79e09c773204a8dc4` |
| 4 | `lemma` | [Shatters.mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-mono-left--1de5c229360da5ced21d4fa8.md) | 51 | `result-track:1de5c229360da5ced21d4fa889457d76e493a9c6f2357ecc703c914c55fb1a16` |
| 5 | `lemma` | [Shatters.mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-mono-right--7b58d7e56f2b65a8421b6b40.md) | 54 | `result-track:7b58d7e56f2b65a8421b6b40ff0a423acb549959ce0733bfe22ab04325a8151f` |
| 6 | `lemma` | [Shatters.exists_superset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-exists-superset--108d6cff173f966fec6c5691.md) | 57 | `result-track:108d6cff173f966fec6c569132ee8a70ca8622c5fa997f6abd9851c69054c2c2` |
| 7 | `lemma` | [shatters_of_forall_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-of-forall-subset--9d29d394da952c203ed07389.md) | 60 | `result-track:9d29d394da952c203ed0738989970aa8b1f94a4c6ce62909daadcd9a0ce41eb7` |
| 8 | `lemma` | [Shatters.nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-nonempty--4adb7c544c56efef38180254.md) | 63 | `result-track:4adb7c544c56efef3818025484551e10d3c7ac9a704695fc93954091feae42db` |
| 9 | `lemma` | [shatters_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-empty--b6952352865b6b79ce9c1d9b.md) | 66 | `result-track:b6952352865b6b79ce9c1d9ba9e255060303830eeffc7e0bf3c3cbd8fcdf8de0` |
| 10 | `lemma` | [Shatters.subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-subset-iff--3e8eca30bbecb88249c71c97.md) | 69 | `result-track:3e8eca30bbecb88249c71c9791d377e44ae642dde35630819341446a0d1ee9f7` |
| 11 | `lemma` | [shatters_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-iff--271cbb8c9532331d72a31404.md) | 72 | `result-track:271cbb8c9532331d72a31404f7c3c201892919cebf9254ebcdc633fe1ebd3d1a` |
| 12 | `lemma` | [univ_shatters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/univ-shatters--a709ed959e887b25e7b82d5a.md) | 76 | `result-track:a709ed959e887b25e7b82d5a9b8ad695e41749e21639a0756079fa40198b8016` |
| 13 | `lemma` | [shatters_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-univ--faa3482ba7c00b3354020cad.md) | 79 | `result-track:faa3482ba7c00b3354020cad6d063bfef6dce4d0e77c9238d19df18bbf2efe3e` |
| 14 | `def` | [shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatterer--c756712d0643a1765a1af202.md) | 83 | `declaration-track:c756712d0643a1765a1af202128979f1a00b3e140ad6ae579dc7c4ac4825ba13` |
| 15 | `lemma` | [mem_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/mem-shatterer--df01dd4e4008bcd78b3bac46.md) | 86 | `result-track:df01dd4e4008bcd78b3bac46adc61ca06b8dc0d042b8eb31f3eb97212cd1ced9` |
| 16 | `lemma` | [shatterer_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatterer-mono--b7ef75d0cd04c6dce71281ac.md) | 91 | `result-track:b7ef75d0cd04c6dce71281acc5bc815cc50da7fb5ea105e0fc4d537fe70809be` |
| 17 | `lemma` | [subset_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/subset-shatterer--4151bb7299cd5e10fe7dd7d8.md) | 94 | `result-track:4151bb7299cd5e10fe7dd7d89ca800253debfd6dcb60b2a567ba597a0dd4a13c` |
| 18 | `lemma` | [isLowerSet_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/islowerset-shatterer--daa5c2db6ccc8f8d45effa4e.md) | 97 | `result-track:daa5c2db6ccc8f8d45effa4eaf54f61438b8b2e838be5b642393a2c0cc90daa5` |
| 19 | `lemma` | [shatterer_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatterer-eq--c22324e9b3226234ad860fa2.md) | 100 | `result-track:c22324e9b3226234ad860fa2dfda33039d5c7e94cb8305e9cb4d293a2d20e756` |
| 20 | `lemma` | [shatterer_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatterer-idem--7d983d1d3e8594b24f35fcf8.md) | 107 | `result-track:7d983d1d3e8594b24f35fcf8963b5ca2af8bd05256a3d7d68274656843d6422a` |
| 21 | `lemma` | [shatters_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-shatterer--04d09abd63ae4ad0738cd1ec.md) | 109 | `result-track:04d09abd63ae4ad0738cd1ec62b19bbec6d5e40152d032f2312c541461c2134e` |
| 22 | `lemma` | [aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/aux--29abbdda37dca86968f073df.md) | 114 | `result-track:29abbdda37dca86968f073df73ed1b68efb9cd8c9044138e7037a8205b6ceea6` |
| 23 | `lemma` | [card_le_card_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/card-le-card-shatterer--a2d2506c6cf1e44a5e070e6f.md) | 118 | `result-track:a2d2506c6cf1e44a5e070e6febfed62bb06ae4868f8f85ad4323c32d09ed464c` |
| 24 | `lemma` | [Shatters.of_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-of-compression--f91e70473b6a0d91ac276850.md) | 161 | `result-track:f91e70473b6a0d91ac276850f3b9c33b013f3499e4a08f6797afbd8b66ac3cb5` |
| 25 | `lemma` | [shatterer_compress_subset_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatterer-compress-subset-shatterer--9388350972db25928e948c2b.md) | 183 | `result-track:9388350972db25928e948c2b296b9bf41c5ba1f6fb2359aa1b8a361b7bbb385f` |
| 26 | `def` | [vcDim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/vcdim--1594b4c19ebb3ebb7c20217d.md) | 190 | `declaration-track:1594b4c19ebb3ebb7c20217d7e12911a2f14ce9de2fd0effa4622658a9c238df` |
| 27 | `lemma` | [vcDim_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/vcdim-mono--04f446b550d99974ce5d8e81.md) | 192 | `result-track:04f446b550d99974ce5d8e814cac0e22f533a5f30b8cf63fc169c08de310c30c` |
| 28 | `lemma` | [Shatters.card_le_vcDim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/shatters-card-le-vcdim--1937ed3f235e0096f028c6ad.md) | 194 | `result-track:1937ed3f235e0096f028c6ad8d8b0ab27a5e12320d25b91ec7ac34a6b039109f` |
| 29 | `lemma` | [vcDim_compress_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/vcdim-compress-le--5526193ea4a27a7cd2d1b920.md) | 197 | `result-track:5526193ea4a27a7cd2d1b9204f0d3f550be3a0a83d6206f813e54bdb719421dc` |
| 30 | `lemma` | [card_shatterer_le_sum_vcDim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Variant3f311661c637b989e42201f83e0fb755768fcc2693fd0e9089a80944977f9051.lean/declarations/card-shatterer-le-sum-vcdim--eb60b77b205cefd678b7cdbb.md) | 201 | `result-track:eb60b77b205cefd678b7cdbbcd3073e10e3a7d273ec439f77fa881553225141e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
