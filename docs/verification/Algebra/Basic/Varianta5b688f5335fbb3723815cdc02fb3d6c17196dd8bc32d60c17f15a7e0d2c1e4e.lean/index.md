# Verification target: GRWTSK.Algebra.Basic.Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824923690723c9059cb098f86611dba0f7e62746",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824923690723c9059cb098f86611dba0f7e62746`.

Source path: `GRWTSK/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Tauto` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/add-div--06221efadc636cb16daef667.md) | 44 | `result-track:06221efadc636cb16daef667a3306093332ca804f967ea8d43345a0b79cdeb57` |
| 2 | `theorem` | [same_add_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/same-add-div--3adfda465b995dc596b92634.md) | 46 | `result-track:3adfda465b995dc596b92634d5d352faf7bc38955c781c597bc94b0fb32f1d25` |
| 3 | `theorem` | [div_add_same](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-add-same--071cdafa77609977a6dd5993.md) | 48 | `result-track:071cdafa77609977a6dd59938f27fc3ff185e001fc6d8e25f1470182abae73af` |
| 4 | `theorem` | [one_add_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/one-add-div--6f94d1f77b86ae385990f82a.md) | 50 | `result-track:6f94d1f77b86ae385990f82a7e4fe74a1c3cfcb3578683041d21de5ea1569afe` |
| 5 | `theorem` | [div_add_one](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-add-one--5fdfb17ed09d236d2977a7d5.md) | 53 | `result-track:5fdfb17ed09d236d2977a7d55fcc9d1b07d2c5f26f23fa5688e6a34c002fbb1b` |
| 6 | `theorem` | [inv_add_inv'](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/inv-add-inv--3fb2ee14c6254d2758d03d8e.md) | 57 | `result-track:3fb2ee14c6254d2758d03d8e53bbc72d7638324e6c655fed5e07349f53940be6` |
| 7 | `theorem` | [one_div_mul_add_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/one-div-mul-add-mul-one-div-eq-one-div-add-one-div--92e17e949a368fd49f90c042.md) | 61 | `result-track:92e17e949a368fd49f90c0428d7bf3603e03efa98884706208bc9877419835de` |
| 8 | `theorem` | [add_div_eq_mul_add_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/add-div-eq-mul-add-div--6a40bd2779b17e2687a40254.md) | 65 | `result-track:6a40bd2779b17e2687a4025462bd7c63daadd99979f731f5d54414f972ab1849` |
| 9 | `theorem` | [add_div'](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/add-div--66609a8a0288d5302ba0edad.md) | 68 | `result-track:66609a8a0288d5302ba0edadda23806eedf77a59dddbf4882fe8df695a715aa3` |
| 10 | `theorem` | [div_add'](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-add--d105029658166b28aa274366.md) | 71 | `result-track:d105029658166b28aa274366a5762136418bd82d9bcc1a4527cd6c2798af0789` |
| 11 | `theorem` | [Commute.div_add_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/commute-div-add-div--8f69eef1fef63646e132256e.md) | 74 | `result-track:8f69eef1fef63646e132256e6e5c27e35f7a419b9fb793eca4fe3e1708b4f5ab` |
| 12 | `theorem` | [Commute.one_div_add_one_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/commute-one-div-add-one-div--f3802a052f8023dbee79ec41.md) | 78 | `result-track:f3802a052f8023dbee79ec41a234c65e3a7b0f4db4f3a83478d74de86a5cb749` |
| 13 | `theorem` | [Commute.inv_add_inv](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/commute-inv-add-inv--24d105b0e16defe205a45f68.md) | 82 | `result-track:24d105b0e16defe205a45f680be0bfd7ff394ef8692a4a8c6900af5b43526e42` |
| 14 | `lemma` | [add_self_div_two](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/add-self-div-two--808ac7f1d1b0935d3018d025.md) | 88 | `result-track:808ac7f1d1b0935d3018d02586df3d3977702fa818dcb1fd21bf74e4285e9228` |
| 15 | `lemma` | [add_halves](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/add-halves--905e571154f94ead78a1498a.md) | 91 | `result-track:905e571154f94ead78a1498aa3b598464113c0c2723a21c9bb702cc78d238861` |
| 16 | `theorem` | [div_neg_self](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-neg-self--1b8667afda23bfcb9b7251a1.md) | 100 | `result-track:1b8667afda23bfcb9b7251a1aded4f53c71478ad47f10cb5b608ae625a5b10d3` |
| 17 | `theorem` | [neg_div_self](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/neg-div-self--ab98525a0362697a0b4e573a.md) | 103 | `result-track:ab98525a0362697a0b4e573a35eba76a3289806e3d95d4b20af0572eb4e7032a` |
| 18 | `theorem` | [div_sub_div_same](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-sub-div-same--cd3d267c3fdf8d20ac92f64b.md) | 105 | `result-track:cd3d267c3fdf8d20ac92f64b92725d335e768fe53e427ce91361e85b4f87c968` |
| 19 | `theorem` | [same_sub_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/same-sub-div--30fb3d033b491f8e907eb1f8.md) | 108 | `result-track:30fb3d033b491f8e907eb1f845aa6b211b581143183c609fe799155ba2f8b9eb` |
| 20 | `theorem` | [one_sub_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/one-sub-div--ffd1b4318dccb4288ea9ba65.md) | 111 | `result-track:ffd1b4318dccb4288ea9ba65f8ac77b4cda1ec7686e377a3b44383dba8ba5429` |
| 21 | `theorem` | [div_sub_same](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-sub-same--0c799e3b0db1bd88234a7eee.md) | 114 | `result-track:0c799e3b0db1bd88234a7eeed7b2537d99144e3975f1370c1ca16c90686373d9` |
| 22 | `theorem` | [div_sub_one](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-sub-one--b223630ef545b9cc08c7b516.md) | 117 | `result-track:b223630ef545b9cc08c7b51691c506af03324639a49e4441369f512a2c3502eb` |
| 23 | `theorem` | [sub_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/sub-div--bcd355a57adca54f76618946.md) | 120 | `result-track:bcd355a57adca54f76618946fe9d3476dfdcd60097a044701ce4489094548f3c` |
| 24 | `theorem` | [inv_sub_inv'](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/inv-sub-inv--49c78da7d6e1ccb2da9d37b6.md) | 124 | `result-track:49c78da7d6e1ccb2da9d37b6f26bcf5ef9183ab69bbacd70960255d8901dd5eb` |
| 25 | `theorem` | [one_div_mul_sub_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/one-div-mul-sub-mul-one-div-eq-one-div-add-one-div--66c30cc62b616ae2f5b18ebc.md) | 127 | `result-track:66c30cc62b616ae2f5b18ebc38f1319c50f8a879e35bb061195bed2d30111efb` |
| 26 | `theorem` | [inv_eq_self₀](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/inv-eq-self--bd1745ff4ca94fd2088921d1.md) | 131 | `result-track:bd1745ff4ca94fd2088921d138e9edbff6548df6dd3cbb9f50da2a12a4173954` |
| 27 | `theorem` | [self_eq_inv₀](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/self-eq-inv--e6af964eeb7f95809ac2028b.md) | 136 | `result-track:e6af964eeb7f95809ac2028bdf006a81c50235bf1f38ace4ef6cb973aa402445` |
| 28 | `theorem` | [isSelfInv_iff_eq_neg_one_or_eq_zero_or_eq_one](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/isselfinv-iff-eq-neg-one-or-eq-zero-or-eq-one--44ccdc637ea75838d052d061.md) | 139 | `result-track:44ccdc637ea75838d052d06112f737e756a46944ddef7eaf53a11640b6c59548` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--a6d832c5e4e33e8e0fa4e647.md) | 143 | `declaration-track:a6d832c5e4e33e8e0fa4e647fd754a97024b7c3ea94f8f8eb9a2927aa2de6c4a` |
| 30 | `theorem` | [Commute.div_sub_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/commute-div-sub-div--ac07f7709edf5abd4521f454.md) | 146 | `result-track:ac07f7709edf5abd4521f454079d4830c7225be9be2f3d2685d00734780368ee` |
| 31 | `theorem` | [Commute.inv_sub_inv](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/commute-inv-sub-inv--ab0b523a62a4f6764082b295.md) | 150 | `result-track:ab0b523a62a4f6764082b29545224b1063071aca47b9209e2f157c0b191fffc4` |
| 32 | `lemma` | [sub_half](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/sub-half--a6d3649708502d80174f1182.md) | 156 | `result-track:a6d3649708502d80174f11827b3e3c04d441b91b696c527fc86f4ac6cf162283` |
| 33 | `lemma` | [half_sub](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/half-sub--c0fa51de2a4a67ed020564e2.md) | 157 | `result-track:c0fa51de2a4a67ed020564e2fec3a960935fc6cf44c4e0b957aa40ffaf52ece1` |
| 34 | `theorem` | [div_add_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-add-div--5aaf9c755350a8f3f66bd5a4.md) | 165 | `result-track:5aaf9c755350a8f3f66bd5a4826f1813069eaba0cc30c6aec1c2bf1763d3ff45` |
| 35 | `theorem` | [one_div_add_one_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/one-div-add-one-div--72799a9a13e863420d750126.md) | 169 | `result-track:72799a9a13e863420d750126a5dc541c77c8e4ad3923693268d4e47df176eea8` |
| 36 | `theorem` | [inv_add_inv](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/inv-add-inv--7a9c39123004fde49fec6145.md) | 172 | `result-track:7a9c39123004fde49fec61459ba54c8d98c3c00e9da9fc4a480b9a9e0cb63d32` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--174c982fea4638355b885742.md) | 181 | `declaration-track:174c982fea4638355b885742a3b5de222a7c17be48d720ed70b1eb746f5ef3db` |
| 38 | `theorem` | [div_sub_div](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-sub-div--628cb7fdd2e79cca13ba1c19.md) | 194 | `result-track:628cb7fdd2e79cca13ba1c191822daf24915b8539a713fbaff53525747ae9687` |
| 39 | `theorem` | [inv_sub_inv](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/inv-sub-inv--915c7d9cdb55d0a828d3eb6e.md) | 198 | `result-track:915c7d9cdb55d0a828d3eb6e0cc85a0d79008a59cfb8d77608db2a262fce00af` |
| 40 | `theorem` | [sub_div'](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/sub-div--ec144b48cf6834b84449399b.md) | 201 | `result-track:ec144b48cf6834b84449399b7c46bafb6e85585e60991a5f2b126e86c47547c6` |
| 41 | `theorem` | [div_sub'](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/div-sub--77b25e0f10cc75308e25cc4b.md) | 204 | `result-track:77b25e0f10cc75308e25cc4b3850e8514c773e7d7e8dc5c75d08210590d06929` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--1188138080f5c68555b9060c.md) | 208 | `declaration-track:1188138080f5c68555b9060ca5d3366617be4879b6219fc8aa1a1c89f2d94507` |
| 43 | `abbrev` | [DivisionRing.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/divisionring-ofisunitoreqzero--8cbc101ef4c2624d44b86be9.md) | 219 | `declaration-track:8cbc101ef4c2624d44b86be90ddba02c62899d079ee22d1c67c97b4eae757050` |
| 44 | `abbrev` | [Field.ofIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/field-ofisunitoreqzero--df6675ba577d9a8381ecd372.md) | 230 | `declaration-track:df6675ba577d9a8381ecd3723b213a2807dc5133e7f9fb558da14c102fa9c9c5` |
| 45 | `abbrev` | [divisionSemiring](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/divisionsemiring--d3b3bf51c65e919e030d6bb7.md) | 244 | `declaration-track:d3b3bf51c65e919e030d6bb7c61401d416d8de981215c688d070c670fffde596` |
| 46 | `abbrev` | [divisionRing](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/divisionring--f40a4e77de920289384782a2.md) | 258 | `declaration-track:f40a4e77de920289384782a223368f4480c5389f493713539c5e1e8f00e3733e` |
| 47 | `abbrev` | [semifield](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/semifield--b64b07aaad97887c842b7fe2.md) | 276 | `declaration-track:b64b07aaad97887c842b7fe203cb3029437340e8baa3b1db7a3876d0355c698c` |
| 48 | `abbrev` | [field](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/field--9d13257659e6ed9d07d874f5.md) | 288 | `declaration-track:9d13257659e6ed9d07d874f5ac208525ff0f1e9a2b6cfe9e78115d694f54c4ae` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--89421295988601d3c9a7531d.md) | 308 | `declaration-track:89421295988601d3c9a7531d5921962af60a4160a6749cccc829b8a3ba556380` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--80d071972a46f6dea44e37e0.md) | 309 | `declaration-track:80d071972a46f6dea44e37e0f53714edef008bb628d1abb17d23a6dbb2f252d4` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--01a36c66b31c65c42a7f335f.md) | 310 | `declaration-track:01a36c66b31c65c42a7f335f0eb1c054589649d910417f3fb33c2b519f0b480c` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--9d58c65cc66bfe1b4f6581b1.md) | 311 | `declaration-track:9d58c65cc66bfe1b4f6581b1436e3d2946cada7168b55a66e91528e8cd4b2585` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--f78881b963b8e963550c03d6.md) | 312 | `declaration-track:f78881b963b8e963550c03d6a62269f3a23848ea85bd33034acfc5511175511b` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--11b6a69e4f779bae8bb80df2.md) | 313 | `declaration-track:11b6a69e4f779bae8bb80df2fda7cc037964990bc6345785ba25399a88a4dc2f` |
| 55 | `lemma` | [toDual_ratCast](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/todual-ratcast--111c2c42e4851ad7cace0620.md) | 317 | `result-track:111c2c42e4851ad7cace0620bec8923ca4f87ead65775052f7de2c631dbba164` |
| 56 | `lemma` | [ofDual_ratCast](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/ofdual-ratcast--380d91b0314b29f5a3e44833.md) | 319 | `result-track:380d91b0314b29f5a3e44833bcaa64d6372f67af19202f51162eec38133ac9e9` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--506b8f2bf0ba6c73124fa325.md) | 325 | `declaration-track:506b8f2bf0ba6c73124fa32546df6541099dfdc2113681ac6706420552868b27` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--3ee219b8783a3dad5f350793.md) | 326 | `declaration-track:3ee219b8783a3dad5f35079326f0fe044dd3192d8251327fbf9face9b59c397b` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--9bc0cf00d125bb39ecbdb755.md) | 327 | `declaration-track:9bc0cf00d125bb39ecbdb75536464791489f6824271c3dad7fcbd49c824a032f` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--17865eecb039d51b5b6140cc.md) | 328 | `declaration-track:17865eecb039d51b5b6140cc4bbf6a20b88ef73245b1248a4d4ddf50db73c6a9` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/instance--edeb073bb5cdb4e5e88d6a07.md) | 329 | `declaration-track:edeb073bb5cdb4e5e88d6a073c11300b5c67140338898e41ea2556c3f44ac2ea` |
| 62 | `lemma` | [toLex_ratCast](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/tolex-ratcast--25b2be27a824d16ff7d200e5.md) | 333 | `result-track:25b2be27a824d16ff7d200e52f22d9516ca0f5f0a41aebc30cae89e2763b2296` |
| 63 | `lemma` | [ofLex_ratCast](../../../../mathematics/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/declarations/oflex-ratcast--acc0ed7a62fda2967c360682.md) | 335 | `result-track:acc0ed7a62fda2967c360682b35d173424fbfbe39b20430a9f3c99013696aa47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
