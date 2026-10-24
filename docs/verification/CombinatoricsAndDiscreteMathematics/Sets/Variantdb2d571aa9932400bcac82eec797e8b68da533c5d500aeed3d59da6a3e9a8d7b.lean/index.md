# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sets.Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2ffe5e61bad2635c0ba221f9017beabc7bbe693",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2ffe5e61bad2635c0ba221f9017beabc7bbe693`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.BooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.SymmDiff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset--35357fe60bbd51b00e5ecc50.md) | 47 | `declaration-track:35357fe60bbd51b00e5ecc501dc6a0272c737ff34e84c6636b19bf8a25267600` |
| 2 | `theorem` | [toFinset_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-congr--174f35128a64da2876c4cd07.md) | 51 | `result-track:174f35128a64da2876c4cd07341d9ac6ac044b4ef969e458cf1d5ea1f4f47dbd` |
| 3 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/mem-tofinset--ebcb355d48045e93ad7e80e9.md) | 55 | `result-track:ebcb355d48045e93ad7e80e979eee66c1728a33966b2fb24c0571664f90fd48a` |
| 4 | `theorem` | [toFinset_ofFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-offinset--33d32a393a97fb4267173f99.md) | 60 | `result-track:33d32a393a97fb4267173f99f81c45f5b52ca507c8d35a7d95209348af879e43` |
| 5 | `def` | [decidableMemOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/decidablememoffintype--aa923c676da8402610038590.md) | 68 | `declaration-track:aa923c676da840261003859035b49303eccd0e5b94a34400b359b9377899e38f` |
| 6 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/coe-tofinset--664cfef1a30d1c63f448087b.md) | 72 | `result-track:664cfef1a30d1c63f448087b8da57072d37d99ad9583783aa2db990c7b881680` |
| 7 | `theorem` | [toFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-nonempty--aefe69d69215f43c8db91506.md) | 76 | `result-track:aefe69d69215f43c8db9150601fc9aa07607a8ad2b378c0f43875616df8e7ee8` |
| 8 | `theorem` | [toFinset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-inj--7b6399b6193e767804d2f576.md) | 83 | `result-track:7b6399b6193e767804d2f5768dcdc5f8acb4368a5a8f63e8c280e7472567420d` |
| 9 | `theorem` | [toFinset_subset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-subset-tofinset--6c23dcfeffe37833519f2bc5.md) | 87 | `result-track:6c23dcfeffe37833519f2bc53acdc0c2f76f57cc714c58d9b72e5f52c6f1a0f6` |
| 10 | `theorem` | [toFinset_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-ssubset--1a2e0b038b114559004bc876.md) | 91 | `result-track:1a2e0b038b114559004bc876963771c34a8415313c30d0882c8980f51af7034b` |
| 11 | `theorem` | [subset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/subset-tofinset--c7c19ceb87bc41b8772d9b5c.md) | 95 | `result-track:c7c19ceb87bc41b8772d9b5c9425158513ed8373bf695132bfa78dc718097123` |
| 12 | `theorem` | [ssubset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/ssubset-tofinset--52850b8dde617e58d403e72d.md) | 99 | `result-track:52850b8dde617e58d403e72dc9108efc1353fc2140d272cf9febe93fce37178d` |
| 13 | `theorem` | [toFinset_ssubset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-ssubset-tofinset--093d6ef7a6fd1c88944b8868.md) | 103 | `result-track:093d6ef7a6fd1c88944b88683cc37bc27f7e19b051b0fe1bc3fa18598f87ac20` |
| 14 | `theorem` | [toFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-subset--e8fff0473e9a4f172f858586.md) | 107 | `result-track:e8fff0473e9a4f172f858586b6b4d281d6267b6e8c23b2dffcbeb988f208220f` |
| 15 | `theorem` | [disjoint_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/disjoint-tofinset--bcd2b8148863551c10a6027d.md) | 115 | `result-track:bcd2b8148863551c10a6027dc4910794af12ddc91e3aa4b2b42218d291dcb1ca` |
| 16 | `theorem` | [toFinset_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-nontrivial--ed92693838fa65c4cc5e1365.md) | 119 | `result-track:ed92693838fa65c4cc5e13650bac304b3d005844d63634283f8ab8ded11b9430` |
| 17 | `theorem` | [toFinset_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-inter--99fdaa5ff8d7506b8e99786e.md) | 127 | `result-track:99fdaa5ff8d7506b8e99786ed8382bd2503343c8784a5d0d1fa3cd2c1f1b76cb` |
| 18 | `theorem` | [toFinset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-union--6f7fea6b5f386ee6ef85fab4.md) | 132 | `result-track:6f7fea6b5f386ee6ef85fab44925cf66fdad325954436be4f7cee53681eff102` |
| 19 | `theorem` | [toFinset_diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-diff--50262c393bb00da864da33fb.md) | 137 | `result-track:50262c393bb00da864da33fbc1eca03b727d63035d42c1d219d30464b583a622` |
| 20 | `theorem` | [toFinset_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-symmdiff--a0eec855fefc839cf10d2b1c.md) | 143 | `result-track:a0eec855fefc839cf10d2b1c37fbf4942b6626a58eaf41293a9f9a37b42c8513` |
| 21 | `theorem` | [toFinset_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-compl--16745edfcba66f0d3358ac9b.md) | 149 | `result-track:16745edfcba66f0d3358ac9b21e75169d969a4dd273dd84e72303698167e4aaf` |
| 22 | `theorem` | [toFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-empty--db307ccc8435f63930ef1057.md) | 157 | `result-track:db307ccc8435f63930ef1057dfa1b3ec55712d21ef4f636dbe5fd74d8c37f8f3` |
| 23 | `theorem` | [toFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-univ--02b12e341c77fed39b0d1c36.md) | 165 | `result-track:02b12e341c77fed39b0d1c36b50229626a2b9717e5bfdbc706ac856e49e57358` |
| 24 | `theorem` | [toFinset_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-eq-empty--da9af6ac2f06859baf132ce9.md) | 171 | `result-track:da9af6ac2f06859baf132ce9992c35b5f8d046b05e385c9d8d85d8a52b1adde5` |
| 25 | `theorem` | [toFinset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-eq-univ--0f7fe57e32520df8633c0f16.md) | 176 | `result-track:0f7fe57e32520df8633c0f166ba2a839e661ff89a7c08a6e1a033be88eadd4d1` |
| 26 | `theorem` | [toFinset_setOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-setof--d1c58ef75d28fbf177806b37.md) | 180 | `result-track:d1c58ef75d28fbf177806b37859802f845496889fa82f04e43c71da49d683633` |
| 27 | `theorem` | [toFinset_ssubset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-ssubset-univ--2605045ae2733f69eb970b7e.md) | 185 | `result-track:2605045ae2733f69eb970b7e2cdfb6582f228d80d142e50c791ed5ab1b4656fe` |
| 28 | `theorem` | [toFinset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-image--b201b18207e7a317a9866822.md) | 189 | `result-track:b201b18207e7a317a986682202a061a3ddf6ea6a4213557614d114fd798e22d1` |
| 29 | `theorem` | [toFinset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-range--2e7edf112604781eeae6e0b8.md) | 194 | `result-track:2e7edf112604781eeae6e0b87671b8d5bdb806d7bdc11189ba4f09ce3417113c` |
| 30 | `theorem` | [toFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-singleton--62e3277adbcb96cb921bd651.md) | 200 | `result-track:62e3277adbcb96cb921bd6513aacd1125cd9dc68c2acc9b5bb9acdf6cee3fcc7` |
| 31 | `theorem` | [toFinset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/tofinset-insert--5b0f4d3df745173ce731d157.md) | 205 | `result-track:5b0f4d3df745173ce731d1577d6229ffa3bf7d79a6060d35f246beb59a2aa915` |
| 32 | `theorem` | [filter_mem_univ_eq_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/filter-mem-univ-eq-tofinset--41a9c1ae42ed80b962fcfa64.md) | 210 | `result-track:41a9c1ae42ed80b962fcfa64a96e5cd52d849a126aecf2d7b2b0da100521e6bc` |
| 33 | `theorem` | [Finset.toFinset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finset-tofinset-coe--3ed9ae139c07d9dbc3b30d29.md) | 219 | `result-track:3ed9ae139c07d9dbc3b30d2911a8f84acb6153f6a9c975978a5e74509aaffbb4` |
| 34 | `instance` | [Finset.fintypeCoeSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finset-fintypecoesort--b61024da9daa347dc2b0f5d8.md) | 227 | `declaration-track:b61024da9daa347dc2b0f5d8522b0ff63e0655d9d87b97f6236657da27ba4210` |
| 35 | `theorem` | [Finset.univ_eq_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finset-univ-eq-attach--6aaef9c83a8fdce16829b8d4.md) | 231 | `result-track:6aaef9c83a8fdce16829b8d400583283a9c23b7200ae0f7783e3dc9d2291b8cc` |
| 36 | `theorem` | [Fintype.coe_image_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/fintype-coe-image-univ--8b35edc8831d36416db75d68.md) | 236 | `result-track:8b35edc8831d36416db75d6810d8445bf1cc166cadb79284f5a4ec8d5078db77` |
| 37 | `instance` | [List.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/list-subtype-fintype--c970139cfafd92b7c17ffd01.md) | 241 | `declaration-track:c970139cfafd92b7c17ffd0136b138c87dbfac7989ee970dd1f50f5e1248ec53` |
| 38 | `instance` | [Multiset.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/multiset-subtype-fintype--0345ce3b1953389e4ef1fa20.md) | 244 | `declaration-track:0345ce3b1953389e4ef1fa20a79f6b9eb25433562355440d1c539b9423ec6d91` |
| 39 | `instance` | [Finset.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finset-subtype-fintype--e38413055257fde938ccb85b.md) | 247 | `declaration-track:e38413055257fde938ccb85ba2bc221413b65e7da24487c19deb3593be38f819` |
| 40 | `instance` | [FinsetCoe.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finsetcoe-fintype--0fc89f561dbc39561a843232.md) | 250 | `declaration-track:0fc89f561dbc39561a843232b35459a13d94c22e6a00ba6e875b64d62553bbcd` |
| 41 | `theorem` | [Finset.attach_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finset-attach-eq-univ--3a5a73d01d71fe84e5724663.md) | 253 | `result-track:3a5a73d01d71fe84e5724663fb140ed68a662c6c41d24337c4acc79f980aa0e5` |
| 42 | `instance` | [Prop.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/prop-fintype--aa7724d11983421b152abca2.md) | 256 | `declaration-track:aa7724d11983421b152abca227c4245258460fdb08bf706f25acd72b94a2b138` |
| 43 | `theorem` | [Fintype.univ_Prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/fintype-univ-prop--a414465b61b1bef1e79e56c7.md) | 260 | `result-track:a414465b61b1bef1e79e56c7907c314a8e732bd3dcff996b47b2d607ab5756e8` |
| 44 | `instance` | [Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/subtype-fintype--b46a00289b529f57eb06c2fb.md) | 263 | `declaration-track:b46a00289b529f57eb06c2fbb92e881e56ea8f48c001fa5cbbfe07c21ec32c81` |
| 45 | `def` | [setFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/setfintype--21a918c64e92ed92171c833f.md) | 267 | `declaration-track:21a918c64e92ed92171c833f0a39b4c3e2bede626c9436c97091444e0ce01b72` |
| 46 | `def` | [finsetEquivSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finsetequivset--7f2ce6cff1a47389d62c3253.md) | 275 | `declaration-track:7f2ce6cff1a47389d62c32532815a87e7b641b7d51d3009a4ba5c8072581a3ab` |
| 47 | `lemma` | [coe_finsetEquivSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/coe-finsetequivset--843e89dc3aff7dbe6ef53978.md) | 281 | `result-track:843e89dc3aff7dbe6ef5397886e538587baaa97effd53d013fb7d115cbe7d5dd` |
| 48 | `lemma` | [finsetEquivSet_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finsetequivset-apply--2a111cb52cb1dbbe69761496.md) | 283 | `result-track:2a111cb52cb1dbbe69761496cba3b4b5f297f62cc7c9a916346fb4f1a498ee65` |
| 49 | `lemma` | [finsetEquivSet_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finsetequivset-symm-apply--1ebec29dac063eaf99865a40.md) | 285 | `result-track:1ebec29dac063eaf99865a408736a0002abe6fb7c2963831f98e599ac3e3a09c` |
| 50 | `def` | [finsetOrderIsoSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/finsetorderisoset--024a9b032af688af5102d9ee.md) | 291 | `declaration-track:024a9b032af688af5102d9ee4d1adf08d74914c8ae5ea9fda04b25af0c30cc8b` |
| 51 | `lemma` | [coe_finsetOrderIsoSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/coe-finsetorderisoset--47f24a562f5c557e64abdfeb.md) | 296 | `result-track:47f24a562f5c557e64abdfeb6e3a171e231177aa534095c4f9b27197b3144878` |
| 52 | `lemma` | [coe_finsetOrderIsoSet_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/coe-finsetorderisoset-symm--7e8db00010902e1213b754cb.md) | 298 | `result-track:7e8db00010902e1213b754cb3d4c294ddf895ecd325bcf7acbd7e0e160f116f9` |
| 53 | `theorem` | [mem_image_univ_iff_mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/mem-image-univ-iff-mem-range--8792d09c5679300f7fb60412.md) | 303 | `result-track:8792d09c5679300f7fb60412828c972f97cb50c7d8c326becb21bd8966c646aa` |
| 54 | `elab` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/elab--a2598fd5dd9dc8c1e5c32af8.md) | 316 | `declaration-track:a2598fd5dd9dc8c1e5c32af84b63c7eade5ebd5da04c55acbb842b779cffc972` |
| 55 | `def` | [precheckFinsetStx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variantdb2d571aa9932400bcac82eec797e8b68da533c5d500aeed3d59da6a3e9a8d7b.lean/declarations/precheckfinsetstx--ab7fb443b87717621b911732.md) | 328 | `declaration-track:ab7fb443b87717621b9117321c48df0fe838006a1912e05c31dc9af07bf8f430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
