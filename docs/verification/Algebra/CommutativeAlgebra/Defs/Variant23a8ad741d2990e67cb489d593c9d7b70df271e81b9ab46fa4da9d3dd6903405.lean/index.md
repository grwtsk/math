# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Defs.Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfa681b00c975ecbc24d19e13f3e6fecf301f3db",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfa681b00c975ecbc24d19e13f3e6fecf301f3db`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Partition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm--952a251203073b54e4f483b6.md) | 66 | `declaration-track:952a251203073b54e4f483b6180c562b80f24ec080fc36ccd367f38b723a4ea8` |
| 2 | `theorem` | [_root_.Finset.esymm_map_val](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/root-finset-esymm-map-val--c5d1d942225e017ca87b7858.md) | 69 | `result-track:c5d1d942225e017ca87b78583027c5ead152084087c607fe3213fc13ffa86529` |
| 3 | `lemma` | [pow_smul_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/pow-smul-esymm--86ac9d7044727d4a8f6ef88d.md) | 74 | `result-track:86ac9d7044727d4a8f6ef88de7508b027c0497ee6778b06323766924b930bd25` |
| 4 | `lemma` | [esymm_pair_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-pair-one--ba47273fa8641130ff1acb32.md) | 84 | `result-track:ba47273fa8641130ff1acb32a24a657c4f5ec324cbdf5ac6884e9ce9399aee2f` |
| 5 | `lemma` | [esymm_pair_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-pair-two--f3dfc95c7dff28333530863a.md) | 88 | `result-track:f3dfc95c7dff28333530863a537c8c65c63ed34fa3c5b9e34468f7dd419da4d4` |
| 6 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/issymmetric--1b6ad5d8c6f485e29f797c81.md) | 100 | `declaration-track:1b6ad5d8c6f485e29f797c81cbc35ee48697c1fe9c84bb6e9aee8cd33729fa44` |
| 7 | `def` | [symmetricSubalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/symmetricsubalgebra--7f4f886e488753d4d292a115.md) | 104 | `declaration-track:7f4f886e488753d4d292a1153b59852f28c04891a746e13161e8008749c9ff67` |
| 8 | `theorem` | [mem_symmetricSubalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/mem-symmetricsubalgebra--e0f8dabdd2f82b940783a890.md) | 111 | `result-track:e0f8dabdd2f82b940783a890bfde8b51ae0349080787f15422afda501dbc46db` |
| 9 | `theorem` | [C](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/c--86dbcb169f92696740b32b55.md) | 122 | `result-track:86dbcb169f92696740b32b5533791d05b4b11a24806edb718a4da5af8cc7b80f` |
| 10 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/zero--91f0ba8e6e0534222a54df6d.md) | 126 | `result-track:91f0ba8e6e0534222a54df6d006f403b2c24175ced19f192c49a34976743803a` |
| 11 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/one--8930a146e38874aedd004909.md) | 130 | `result-track:8930a146e38874aedd004909ffaa032f3ce996ce3b996799914fee279d4b7a45` |
| 12 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/add--71e2505b57e0ddaf6ef328f7.md) | 133 | `result-track:71e2505b57e0ddaf6ef328f7b14e04799f668590b295b4b7b153b00151fd81d4` |
| 13 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/mul--899d8e35b0468c2a6c511767.md) | 136 | `result-track:899d8e35b0468c2a6c511767b7d83bd432584e037e7314fb907daf8c032da162` |
| 14 | `theorem` | [smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/smul--9b12da70aa3dfcf5b8fb8f93.md) | 139 | `result-track:9b12da70aa3dfcf5b8fb8f93bf045cb776d92bc9067ecc3555e8cfc290692f9e` |
| 15 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/map--771d511ebc5d6e91ef6be2e3.md) | 143 | `result-track:771d511ebc5d6e91ef6be2e3f465ba162ea08190ddfbb177390a77e737394fe9` |
| 16 | `theorem` | [rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/rename--cf012fe8ed598dcb50cf5d04.md) | 146 | `result-track:cf012fe8ed598dcb50cf5d04acf43fa4adfde1926718d20f51b804506201d163` |
| 17 | `theorem` | [_root_.MvPolynomial.isSymmetric_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/root-mvpolynomial-issymmetric-rename--be3facbf47cdc8699aacfdc2.md) | 152 | `result-track:be3facbf47cdc8699aacfdc20f83637ca7c30e4c4f1e6e6df49f7ffc55063a21` |
| 18 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/neg--391756cb7ebf50c45e6f451e.md) | 162 | `result-track:391756cb7ebf50c45e6f451e76b8f1e2bb89de27b6ec347409209eb16f8566c7` |
| 19 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/sub--3759989d796de82c38d75974.md) | 165 | `result-track:3759989d796de82c38d75974ffac76ca2ffa8148b44605de53afe72bb7290477` |
| 20 | `def` | [renameSymmetricSubalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/renamesymmetricsubalgebra--dc9545a771981b496d9989b9.md) | 174 | `declaration-track:dc9545a771981b496d9989b926e7ee9a168cd74718b7af280614088accb17f47` |
| 21 | `def` | [esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm--9820e397bd22f16acb87d2ff.md) | 190 | `declaration-track:9820e397bd22f16acb87d2ff41fdb60adfa4aa93b4c1be3c5d11c48171ba650d` |
| 22 | `def` | [esymmPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymmpart--e32219de013d5b8fe9e0e8a9.md) | 197 | `declaration-track:e32219de013d5b8fe9e0e8a9e9a8a82a29b2fbeecb980f130134fed7afbe0a35` |
| 23 | `theorem` | [esymm_eq_multiset_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-eq-multiset-esymm--1a389a754867434e9b318303.md) | 201 | `result-track:1a389a754867434e9b318303794a809af8247571d2a0776376338165e3a99868` |
| 24 | `theorem` | [aeval_esymm_eq_multiset_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/aeval-esymm-eq-multiset-esymm--7ce90482920d3c33d6ce13e1.md) | 204 | `result-track:7ce90482920d3c33d6ce13e10181bb7b566861b3bfe10d06406456dbdf835d6d` |
| 25 | `theorem` | [esymm_eq_sum_subtype](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-eq-sum-subtype--3f18f20791693af097950d04.md) | 209 | `result-track:3f18f20791693af097950d048aae502d9ed9e31f9f64e341124303d929ecc606` |
| 26 | `theorem` | [esymm_eq_sum_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-eq-sum-monomial--cae3545df5275142e53c1439.md) | 214 | `result-track:cae3545df5275142e53c1439630775b95d97165571b41eb48fce803e489c4ed5` |
| 27 | `theorem` | [esymm_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-zero--9012bde93d048c76a06921ef.md) | 220 | `result-track:9012bde93d048c76a06921ef8d5161c3751603fc840e724e36fb72516708747a` |
| 28 | `theorem` | [esymm_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-one--c7eaa31cd7071234d9f7fbfe.md) | 224 | `result-track:c7eaa31cd7071234d9f7fbfe13f9c5f6554368030f19a20432b89ccc42ee105f` |
| 29 | `theorem` | [esymmPart_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymmpart-zero--f388a64be5e309415761db50.md) | 226 | `result-track:f388a64be5e309415761db50a17ce338f39216b8d6a8e3221c5a734116736604` |
| 30 | `theorem` | [esymmPart_indiscrete](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymmpart-indiscrete--344e4288ae08961ca71d2c56.md) | 229 | `result-track:344e4288ae08961ca71d2c56294f3de5ca221e01d9575f265deeec5748caa08b` |
| 31 | `theorem` | [map_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/map-esymm--1a531cd73979efbae27f2008.md) | 232 | `result-track:1a531cd73979efbae27f20082040d7fa8f0fa7c03171903d68b70e9bbb5a5573` |
| 32 | `theorem` | [rename_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/rename-esymm--4cc036292c2298731f92c9d8.md) | 235 | `result-track:4cc036292c2298731f92c9d8ff07c328c7cab9549fbee73a0186ca8baa7b7ad6` |
| 33 | `theorem` | [esymm_isSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/esymm-issymmetric--d46429d0f97ae2c9e80621e0.md) | 246 | `result-track:d46429d0f97ae2c9e80621e06816ae3f3435ec98054dee8c2019d73a8d125fbc` |
| 34 | `theorem` | [support_esymm''](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/support-esymm--8799f63ef307e09a22d3929d.md) | 250 | `result-track:8799f63ef307e09a22d3929da29ba275b87b568282da15a6189befe514e5e217` |
| 35 | `theorem` | [support_esymm'](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/support-esymm--e1dd472730aac8930ffaf40a.md) | 274 | `result-track:e1dd472730aac8930ffaf40af06f70b9c0c4eccf3def3d999f0a111167ab1c5b` |
| 36 | `theorem` | [support_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/support-esymm--6e462d2b71ce19e667390091.md) | 281 | `result-track:6e462d2b71ce19e6673900916d2025e19b9d0186930a4043234397acee893802` |
| 37 | `theorem` | [degrees_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/degrees-esymm--29842ecacba2194469e5ac1e.md) | 286 | `result-track:29842ecacba2194469e5ac1e445911f919d1d26433207d0ea9d9e7b39500c6c5` |
| 38 | `def` | [hsymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymm--4170df979c94f1827096304d.md) | 315 | `declaration-track:4170df979c94f1827096304d1f5cf49826da2351187e828160d11385cf3cb8fc` |
| 39 | `def` | [hsymmPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymmpart--518ba68582898f050f37381a.md) | 319 | `declaration-track:518ba68582898f050f37381a76b9295459a2e526546fdcff785a081562699456` |
| 40 | `theorem` | [hsymm_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymm-zero--158f4eef16e8eeea895718d9.md) | 322 | `result-track:158f4eef16e8eeea895718d9384a00a11750169353fcbe3cee0d02c388187030` |
| 41 | `theorem` | [hsymm_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymm-one--a432f1b1ed81c30da56d2348.md) | 325 | `result-track:a432f1b1ed81c30da56d2348cafd5c4f0e23f637b75c2d6c270048e54575ab5c` |
| 42 | `theorem` | [hsymmPart_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymmpart-zero--f5248bbf6b39f8bb9afe471f.md) | 330 | `result-track:f5248bbf6b39f8bb9afe471fa45a1318ea6e35edfdbb33ed50dd0b1f078cc020` |
| 43 | `theorem` | [hsymmPart_indiscrete](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymmpart-indiscrete--e90c6d4df3a04f28824b1a8f.md) | 333 | `result-track:e90c6d4df3a04f28824b1a8fc85a5efb67150171221935c3f2804277494fcc21` |
| 44 | `theorem` | [map_hsymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/map-hsymm--7cbc6d8b1e7dc69da16f5376.md) | 336 | `result-track:7cbc6d8b1e7dc69da16f5376c6365a9b39898109e86779d4fae6e6df626fedf7` |
| 45 | `theorem` | [rename_hsymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/rename-hsymm--0ad5e1c30da66a0f17796f15.md) | 339 | `result-track:0ad5e1c30da66a0f17796f153f0505c096b902bc2d356fc4bb67aa06d4b38a47` |
| 46 | `theorem` | [hsymm_isSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/hsymm-issymmetric--09c2af67fdc18875db5d0eb3.md) | 344 | `result-track:09c2af67fdc18875db5d0eb32299074cc313ba22210680c60fbb93f876b4d1f3` |
| 47 | `def` | [psum](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psum--7c0838fc0832a2b5ae983fce.md) | 354 | `declaration-track:7c0838fc0832a2b5ae983fce34a0ff2e18e973edb3c4198ad48b01d69d8ca8ff` |
| 48 | `def` | [psumPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psumpart--790c82ece5d35c78fdae825e.md) | 358 | `declaration-track:790c82ece5d35c78fdae825e435d84f456e2fa0689a4da7af499300df1dc202c` |
| 49 | `theorem` | [psum_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psum-zero--c13429599f2dc6410e34a92a.md) | 361 | `result-track:c13429599f2dc6410e34a92aeb0fec811938da7b96f2965e151e549ea69bb3a8` |
| 50 | `theorem` | [psum_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psum-one--3858d23690c1d61bf5982fdb.md) | 364 | `result-track:3858d23690c1d61bf5982fdb9d59422b64ff1e5edea3b5262bc5971d7cb49054` |
| 51 | `theorem` | [psumPart_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psumpart-zero--a159d73b279b4da753742f5d.md) | 367 | `result-track:a159d73b279b4da753742f5d2babf4110d0a08850cd08d52c387297c645d7782` |
| 52 | `theorem` | [psumPart_indiscrete](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psumpart-indiscrete--6c5d5b5a1784bafa3e09ecf5.md) | 370 | `result-track:6c5d5b5a1784bafa3e09ecf55ae710256b3e3c68e2222339c18fe75db92942f3` |
| 53 | `theorem` | [rename_psum](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/rename-psum--1ca2f0c922ffb9d6d68b40fc.md) | 374 | `result-track:1ca2f0c922ffb9d6d68b40fca9b927b3dd40c9d288d7f97ec32b53a6042bbf3a` |
| 54 | `theorem` | [psum_isSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/psum-issymmetric--b8f46e688f8a23271fea0b38.md) | 377 | `result-track:b8f46e688f8a23271fea0b3878f9ea47177d0dac3d8e52f4097ae84cf3a7afb2` |
| 55 | `def` | [msymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/msymm--9b9fa1b017ca950cd569cfea.md) | 388 | `declaration-track:9b9fa1b017ca950cd569cfea9adffaf90535ba2a91be9ea0d0cd34198fca743b` |
| 56 | `theorem` | [msymm_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/msymm-zero--0ab9e91cf16aeb360da61888.md) | 392 | `result-track:0ab9e91cf16aeb360da61888eef5abe63c4e33cc94f502ca3f00d933bd81a736` |
| 57 | `theorem` | [msymm_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/msymm-one--ec52796a49ab5127e434af8d.md) | 397 | `result-track:ec52796a49ab5127e434af8de09b7877e6299cd8e7b37662a6221440327cd049` |
| 58 | `theorem` | [rename_msymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/rename-msymm--0c77dea61e70626633b8ef0c.md) | 412 | `result-track:0c77dea61e70626633b8ef0c401b6fc85989ef4447ccc22861eb41af6840a208` |
| 59 | `theorem` | [msymm_isSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Defs/Variant23a8ad741d2990e67cb489d593c9d7b70df271e81b9ab46fa4da9d3dd6903405.lean/declarations/msymm-issymmetric--45a348f6212ca3bd12fb3c69.md) | 420 | `result-track:45a348f6212ca3bd12fb3c69ef5a87ef002eaeeb77d8f7cdf841e0933ff82e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
