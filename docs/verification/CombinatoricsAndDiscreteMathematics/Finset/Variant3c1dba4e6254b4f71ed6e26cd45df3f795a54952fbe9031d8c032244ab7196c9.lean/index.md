# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58698243360ed4a7d69f66845fee63a6db6a304a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58698243360ed4a7d69f66845fee63a6db6a304a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Scalar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulCommClass_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smulcommclass-finset--320ecf1fc52c9710fc4d3ce8.md) | 34 | `declaration-track:320ecf1fc52c9710fc4d3ce817877a032cc138945c6cb01734f68f9f387d3dd2` |
| 2 | `instance` | [smulCommClass_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smulcommclass-finset--565c40a3f87ba8fd4e39b981.md) | 39 | `declaration-track:565c40a3f87ba8fd4e39b981e98ccc782ef6bea30c714d4cb75dcacb9ecf3fdb` |
| 3 | `instance` | [smulCommClass_finset''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smulcommclass-finset--7203843b136abc4d2efb62ad.md) | 44 | `declaration-track:7203843b136abc4d2efb62ad4523337478ea05761cb0a9fed49a6bee06d15fc4` |
| 4 | `instance` | [smulCommClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smulcommclass--0f97e2bee2a422abea7e5858.md) | 50 | `declaration-track:0f97e2bee2a422abea7e585869ed3ecac9d0dbcf64b69a6883fa2690504de841` |
| 5 | `instance` | [isScalarTower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/isscalartower--3d16ea5a610cbfbe6b642895.md) | 55 | `declaration-track:3d16ea5a610cbfbe6b642895fd972d0de703f9be23606582c1facdbda12c328e` |
| 6 | `instance` | [isScalarTower'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/isscalartower--d80d9661a7be9cdc936af411.md) | 62 | `declaration-track:d80d9661a7be9cdc936af4119bc148d8d180b44c27389ebd58baa9492d85d353` |
| 7 | `instance` | [isScalarTower''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/isscalartower--8523e8a966bc06d2eb7e0e03.md) | 67 | `declaration-track:8523e8a966bc06d2eb7e0e030ea31d588bb36abca2576612bcea29b8b3cc23fd` |
| 8 | `instance` | [isCentralScalar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/iscentralscalar--7b482a5081f6538ab87a8bc2.md) | 72 | `declaration-track:7b482a5081f6538ab87a8bc2f156b7e47a3a9f6a633105091d4da7a1b0e8d60e` |
| 9 | `def` | [mulAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/mulaction--c9fbd6e2609a6f58580cb290.md) | 87 | `declaration-track:c9fbd6e2609a6f58580cb29095e1f6070917f845594e359f3ac7fc68ec0385cc` |
| 10 | `def` | [mulActionFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/mulactionfinset--e6f749139901c7147107afbf.md) | 97 | `declaration-track:e6f749139901c7147107afbf5b92b3ef9445161976698ccedb223aae46b78d8e` |
| 11 | `lemma` | [mul_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/mul-singleton--d161ecc3339c99d62998911a.md) | 111 | `result-track:d161ecc3339c99d62998911a75fd900c309c736bbc8a9c96e5a411a3258738ab` |
| 12 | `lemma` | [singleton_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/singleton-mul--76809bdd8ca75db64456bbf5.md) | 112 | `result-track:76809bdd8ca75db64456bbf5b8efc45e0cde571b11152179728a5a0de1b3469d` |
| 13 | `lemma` | [smul_finset_subset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-subset-mul--1a812c0a27e8bdb30bbe4ac0.md) | 114 | `result-track:1a812c0a27e8bdb30bbe4ac0014c557b921126383ea212d9176fbb42a24a8dff` |
| 14 | `theorem` | [op_smul_finset_subset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/op-smul-finset-subset-mul--1ef9486fd554ef2ff252a2b5.md) | 117 | `result-track:1ef9486fd554ef2ff252a2b5bbd82cad21b9ae01357bd33cd6abe2df99034450` |
| 15 | `theorem` | [biUnion_op_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/biunion-op-smul-finset--8a7a90abbd39abc27c9f0fa4.md) | 121 | `result-track:8a7a90abbd39abc27c9f0fa498527f9cf1debb09af5c4ec1961e3d8fdfc9bb95` |
| 16 | `theorem` | [mul_subset_iff_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/mul-subset-iff-left--e360f7f5a54244716f4fca14.md) | 125 | `result-track:e360f7f5a54244716f4fca14b593d75c9bfd2b6f2598a955bf14a0f90e22c4dc` |
| 17 | `theorem` | [mul_subset_iff_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/mul-subset-iff-right--59c4d9472eb16c447187211f.md) | 129 | `result-track:59c4d9472eb16c447187211f2bf1b17a191dcdf46d053a48c489458967251e5f` |
| 18 | `theorem` | [op_smul_finset_mul_eq_mul_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/op-smul-finset-mul-eq-mul-smul-finset--652604427dad8337575a7275.md) | 139 | `result-track:652604427dad8337575a727539af26d9579a25fc4f059e9ff12184d50bc30452` |
| 19 | `theorem` | [pairwiseDisjoint_smul_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/pairwisedisjoint-smul-iff--445328d7ddbc6f00650b54c3.md) | 149 | `result-track:445328d7ddbc6f00650b54c3761e033e2f5dc86145b0ba45bd76b805d989599c` |
| 20 | `theorem` | [image_smul_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/image-smul-distrib--981df73dab09ef16f46dc17e.md) | 156 | `result-track:981df73dab09ef16f46dc17ee7cf804e0d5ad297ccb48369ce7cb01fdb42962f` |
| 21 | `theorem` | [smul_mem_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-mem-smul-finset-iff--9543d9d12251740454061312.md) | 165 | `result-track:9543d9d122517404540613128e53e708cd6d5fa05e69703ead66325e123d9ccd` |
| 22 | `theorem` | [inv_smul_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/inv-smul-mem-iff--e39d0812a8474d127915ae28.md) | 169 | `result-track:e39d0812a8474d127915ae28072d7534e68969df8d05f2120a1a41f29fec964c` |
| 23 | `theorem` | [mem_inv_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/mem-inv-smul-finset-iff--9c7d720cb78c0776d85db4ed.md) | 173 | `result-track:9c7d720cb78c0776d85db4edc1fd13357f62cd4136ac8f66289b10b6a64c5230` |
| 24 | `theorem` | [smul_finset_subset_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-subset-smul-finset-iff--35fb27a7082e6c8a954b506c.md) | 177 | `result-track:35fb27a7082e6c8a954b506cba9f1352be5b6a97ee4f622c59e1e61712a55b6f` |
| 25 | `theorem` | [smul_finset_subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-subset-iff--91743f9a3f746af1fae29a86.md) | 181 | `result-track:91743f9a3f746af1fae29a86153096c1b5e8606fc5d2487fb7fcc8ec497aed66` |
| 26 | `theorem` | [subset_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/subset-smul-finset-iff--c7732bf877c495ca87985041.md) | 187 | `result-track:c7732bf877c495ca87985041d1405ac7934575443b50bba85251a2f48119bed8` |
| 27 | `theorem` | [smul_finset_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-inter--2054f5f6f5cdcb4197113c5b.md) | 193 | `result-track:2054f5f6f5cdcb4197113c5b468b0ca30a33c9c8d5ac02999df87cfa00d8dc44` |
| 28 | `theorem` | [smul_finset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-sdiff--99b478f096cbe71ab1dd1656.md) | 197 | `result-track:99b478f096cbe71ab1dd16567c7082136065dc86c24662e8e2b2801b886bbd48` |
| 29 | `theorem` | [smul_finset_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-symmdiff--be2fac637272b1a4febd298b.md) | 202 | `result-track:be2fac637272b1a4febd298ba33eddadd0df48cbf8924008ef1777e1b0304b80` |
| 30 | `theorem` | [smul_finset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-finset-univ--39c4eef718e37642298eca22.md) | 206 | `result-track:39c4eef718e37642298eca225c7895348aa96fd2b606b1211b0ddb816e2e62e2` |
| 31 | `theorem` | [smul_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/smul-univ--6ea1416d87dea2c64df944a0.md) | 210 | `result-track:6ea1416d87dea2c64df944a07fe097c07d753f612c08bd4224eee86c13c2201c` |
| 32 | `theorem` | [card_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/card-smul-finset--23cd64de39269ad9694b1d74.md) | 216 | `result-track:23cd64de39269ad9694b1d7471847a8ebbf86ca50173b82cb1d5d145d22780ca` |
| 33 | `theorem` | [card_dvd_card_smul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/card-dvd-card-smul-right--a799aa06570b77ef0554a560.md) | 223 | `result-track:a799aa06570b77ef0554a56025f9e613ec10a44bf4c8baae16de0529820f192b` |
| 34 | `theorem` | [card_dvd_card_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/card-dvd-card-mul-left--d9e4fd1417058558919709af.md) | 233 | `result-track:d9e4fd1417058558919709af2ff1534f578b636ceef88c587b272e2a44088ff6` |
| 35 | `theorem` | [card_dvd_card_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/card-dvd-card-mul-right--3c8be85390eb28d6907cebc1.md) | 242 | `result-track:3c8be85390eb28d6907cebc11ac801474ddd50ee98e50295d33dc9876c064d52` |
| 36 | `lemma` | [inv_smul_finset_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/inv-smul-finset-distrib--c120d1822a2aed030af14f94.md) | 247 | `result-track:c120d1822a2aed030af14f9452436a246a6536490d21692b4474bcab7b490504` |
| 37 | `lemma` | [inv_op_smul_finset_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/inv-op-smul-finset-distrib--a16d03d6624e33f247d2b07b.md) | 251 | `result-track:a16d03d6624e33f247d2b07b43a19d6a675e52d06e0dc8a3c19a36b88c377a9e` |
| 38 | `lemma` | [piFinset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/pifinset-smul--0d0714ef4f2c2f5e04187e98.md) | 261 | `result-track:0d0714ef4f2c2f5e04187e984a9c2445d81192c0658ef6bcc58a651886cc450b` |
| 39 | `lemma` | [piFinset_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/pifinset-smul-finset--2eec3cfc5f09c32e06e022d6.md) | 265 | `result-track:2eec3cfc5f09c32e06e022d6cd3cd93ce2132bdf4e5a6553e0a2bafed18c1d1b` |
| 40 | `instance` | [Nat.decidablePred_mem_vadd_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3c1dba4e6254b4f71ed6e26cd45df3f795a54952fbe9031d8c032244ab7196c9.lean/declarations/nat-decidablepred-mem-vadd-set--fe7c8ff8916a9e01bd16a322.md) | 273 | `declaration-track:fe7c8ff8916a9e01bd16a32248cf1190a810ba12f081984bbd4247ff09482e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
