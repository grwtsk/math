# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean.json)

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
| 1 | `theorem` | [lift_rank_mul_lift_rank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/lift-rank-mul-lift-rank--c03b6543f31f7828a1caab07.md) | 52 | `result-track:c03b6543f31f7828a1caab0731bc67382468d3da1f1ebb30327aabe741cc867f` |
| 2 | `theorem` | [rank_mul_rank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/rank-mul-rank--adad639b4d8407162f25a764.md) | 66 | `result-track:adad639b4d8407162f25a7642ba43ceacad6529c0a83c56d59dc4059c012776d` |
| 3 | `theorem` | [Module.finrank_mul_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-mul-finrank--f07f881244bb50b4082b66c9.md) | 76 | `result-track:f07f881244bb50b4082b66c991408a089d2e7e7b7ae377959073fe58d8e0267a` |
| 4 | `theorem` | [Module.finrank_dvd_finrank_left](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-dvd-finrank-left--6579314ffaaaa407c668fe1b.md) | 81 | `result-track:6579314ffaaaa407c668fe1b324b8add237522f4531274191fa79ebec4d6a65d` |
| 5 | `theorem` | [Module.finrank_dvd_finrank_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-dvd-finrank-right--bb12855823a2a396d2d920cd.md) | 85 | `result-track:bb12855823a2a396d2d920cd41456e75aa5d730d4b36c179d79772405e817a7b` |
| 6 | `theorem` | [Module.finrank_div_finrank_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-div-finrank-cancel-right--533f30eef7e2e2d7a00145e9.md) | 89 | `result-track:533f30eef7e2e2d7a00145e90047cd2d4d574ac5f5521c378704222ebb58e776` |
| 7 | `theorem` | [Module.finrank_div_finrank_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-div-finrank-cancel-left--c5ca432a6a74062abf8fdbd4.md) | 93 | `result-track:c5ca432a6a74062abf8fdbd4ce2e1d16a9f3b7e43a34aee2372184bc2ea0e108` |
| 8 | `theorem` | [Module.finrank_div_finrank_cancel_right_of_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-div-finrank-cancel-right-of-nontrivial--4b0250a64b995abcdb39def6.md) | 97 | `result-track:4b0250a64b995abcdb39def6b032bf6522a245b7e69c7e2f51ff576c29db2d07` |
| 9 | `theorem` | [Module.finrank_div_finrank_cancel_left_of_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-finrank-div-finrank-cancel-left-of-nontrivial--0bd9734a26dda032394de4d1.md) | 101 | `result-track:0bd9734a26dda032394de4d189f5c9a9fd957d18c2edf71a9d3b267f3e0951a3` |
| 10 | `theorem` | [exists_linearMap_injective_of_linearIndependent_of_lift_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/exists-linearmap-injective-of-linearindependent-of-lift-rank-le--4bb0df3afea62d06584b72c8.md) | 118 | `result-track:4bb0df3afea62d06584b72c8fc8e415f5ea5caaa0b87800c1db5686547b7f3d9` |
| 11 | `theorem` | [exists_linearMap_injective_of_linearIndependent_of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/exists-linearmap-injective-of-linearindependent-of-rank-le--6f3d80e91c530bc7eec17300.md) | 130 | `result-track:6f3d80e91c530bc7eec17300c42ca2a5b97adf762833f6e141763ea3833eb536` |
| 12 | `theorem` | [exists_linearMap_injective_of_lift_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/exists-linearmap-injective-of-lift-rank-lt--e0a16f62c89a1169ea81773f.md) | 135 | `result-track:e0a16f62c89a1169ea81773f7839fb4e2537d759e2b474d8971122e6dfd8c99d` |
| 13 | `theorem` | [exists_linearMap_injective_of_rank_lt](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/exists-linearmap-injective-of-rank-lt--02051203dc7eac487b24a96f.md) | 142 | `result-track:02051203dc7eac487b24a96f0d75d23fb0e4ba6140df607030c0cf4452a9ef8c` |
| 14 | `theorem` | [rank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/rank-eq-card-choosebasisindex--1318c215e0dc4f0a374d7bfd.md) | 157 | `result-track:1318c215e0dc4f0a374d7bfd6254a463a754f50d0f352d9f859af09f083766f4` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.Module.finrank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-varianta25ac832cd9--617b93725d99063c5d44b950.md) | 161 | `result-track:617b93725d99063c5d44b950fdaad2893157b6f29a0a58ae05680f8c502ccd7a` |
| 16 | `lemma` | [rank_eq_mk_of_infinite_lt](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/rank-eq-mk-of-infinite-lt--218b8bd3b926c6af5eacd2d3.md) | 167 | `result-track:218b8bd3b926c6af5eacd2d3bc7a19b535ac1654e54a07c382a21de2c59b53f5` |
| 17 | `theorem` | [lift_rank_le_iff_exists_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/lift-rank-le-iff-exists-linearmap--2f1f0389904bc70068b7ee7f.md) | 182 | `result-track:2f1f0389904bc70068b7ee7fc821b1b5d17b5826c5921e25c985b6f170495e70` |
| 18 | `theorem` | [rank_le_iff_exists_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/rank-le-iff-exists-linearmap--61a805e15db3dcf7a27f19b7.md) | 191 | `result-track:61a805e15db3dcf7a27f19b7ac0b72301d3b874d6ecf7372feea313caf677f21` |
| 19 | `theorem` | [finrank_le_iff_exists_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finrank-le-iff-exists-linearmap--0df08807ed2cbe0a82f1d478.md) | 195 | `result-track:0df08807ed2cbe0a82f1d478782073fd77caea985b90f04e9fa9044204a3de76` |
| 20 | `theorem` | [nonempty_linearEquiv_of_lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/nonempty-linearequiv-of-lift-rank-eq--e5943dfdb6aa908a4afe6937.md) | 200 | `result-track:e5943dfdb6aa908a4afe69379a428c692ecaacda9f7d2c29037d8f9d85f51c4c` |
| 21 | `theorem` | [nonempty_linearEquiv_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/nonempty-linearequiv-of-rank-eq--bd887cfd023672a29d59b429.md) | 210 | `result-track:bd887cfd023672a29d59b4299bbe7765da191eab809218fff4af53ed0e2e992f` |
| 22 | `def` | [LinearEquiv.ofLiftRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/linearequiv-ofliftrankeq--8efd05e2b4cd782f1c58d68e.md) | 219 | `declaration-track:8efd05e2b4cd782f1c58d68ed3aed6872ff0bd80c601f164a35b329afd210041` |
| 23 | `def` | [LinearEquiv.ofRankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/linearequiv-ofrankeq--b1f6e879ad6418f2d7edac9b.md) | 225 | `declaration-track:b1f6e879ad6418f2d7edac9b571db9084d6cb1ae65aed6801e59319b3d0f0563` |
| 24 | `theorem` | [Module.nonempty_linearEquiv_iff_lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-nonempty-linearequiv-iff-lift-rank-eq--fe4f1f2746bb326aa220ad0d.md) | 231 | `result-track:fe4f1f2746bb326aa220ad0d08c75ad0186a1f26dbcccbeed87e4971ffe142de` |
| 25 | `theorem` | [Module.nonempty_linearEquiv_iff_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/module-nonempty-linearequiv-iff-rank-eq--970f4b8f2da44b26cffcaad0.md) | 239 | `result-track:970f4b8f2da44b26cffcaad0d9cdb604e299e8d3f577adddd9b30a68bf7b1cb9` |
| 26 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finitedimensional-nonempty-linearequiv-of-finrank-eq--84c881eb73934cd9e5884b85.md) | 247 | `result-track:84c881eb73934cd9e5884b8511ace80740822e049bab4d208c5ba6e0a11480be` |
| 27 | `theorem` | [FiniteDimensional.nonempty_linearEquiv_iff_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finitedimensional-nonempty-linearequiv-iff-finrank-eq--1d8249f99ff8a0eee8dd9855.md) | 253 | `result-track:1d8249f99ff8a0eee8dd9855499a64c8e8750e6e277bd89ddca02be198981f59` |
| 28 | `def` | [LinearEquiv.ofFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/linearequiv-offinrankeq--acb32b61f1346b9e88e58fe9.md) | 259 | `declaration-track:acb32b61f1346b9e88e58fe98587872ce73e61f7bdb96a5cbfd5b093432713ee` |
| 29 | `lemma` | [subsingleton_of_rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/subsingleton-of-rank-zero--96572f83cebcf08d373e4714.md) | 266 | `result-track:96572f83cebcf08d373e47141b1d6290285f1138734b34b5c71904f12e27e188` |
| 30 | `lemma` | [rank_lt_aleph0_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/rank-lt-aleph0-iff--f6857bdec615e7d2bf3d3c91.md) | 271 | `result-track:f6857bdec615e7d2bf3d3c9133bc5e6e17100f1851dbe174cb0793a33925cc50` |
| 31 | `theorem` | [finrank_of_not_finite](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finrank-of-not-finite--2cc4479755f1b2a0020ea46a.md) | 276 | `result-track:2cc4479755f1b2a0020ea46aa2d4b8e72ade59996e7581f67aeb33bb407c582c` |
| 32 | `theorem` | [finite_of_finrank_pos](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finite-of-finrank-pos--8fe1d16861d6347cd9c23f0b.md) | 280 | `result-track:8fe1d16861d6347cd9c23f0b8fec882d6fc6236deb5a27d0eed74605ff66456b` |
| 33 | `theorem` | [finite_of_finrank_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finite-of-finrank-eq-succ--8f06557201ec8c0f62bf98bf.md) | 284 | `result-track:8f06557201ec8c0f62bf98bf753aebabbb60af05257d4031ff1d897d784b6c43` |
| 34 | `theorem` | [finite_iff_of_rank_eq_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finite-iff-of-rank-eq-nsmul--65c6c7ba3bd0c2e55b1fe3b4.md) | 287 | `result-track:65c6c7ba3bd0c2e55b1fe3b4c5c9aae5d98848f4d972aa8eb2a21550d3623d98` |
| 35 | `lemma` | [finrank_top_le_finrank_of_isScalarTower_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finrank-top-le-finrank-of-isscalartower-of-free--fe318370fe4a507fec6afdef.md) | 296 | `result-track:fe318370fe4a507fec6afdef3bf162f9ecbaed8a14aa141439a57f41002fbc2e` |
| 36 | `lemma` | [finrank_bot_le_finrank_of_isScalarTower_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finrank-bot-le-finrank-of-isscalartower-of-free--ad6397124e97ceef0bd07b8c.md) | 310 | `result-track:ad6397124e97ceef0bd07b8cc80e39ccd7b4b61afce3b52993e0f4b558c3a30e` |
| 37 | `theorem` | [nonempty_linearEquiv_iff_rank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/nonempty-linearequiv-iff-rank-eq-one--d388bf555581cc20443b31f4.md) | 321 | `result-track:d388bf555581cc20443b31f4839d259859f5f1c5ab61c9bd1ce192c973be5e18` |
| 38 | `theorem` | [nonempty_linearEquiv_iff_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/nonempty-linearequiv-iff-finrank-eq-one--84c4f067448b162f3dd74697.md) | 326 | `result-track:84c4f067448b162f3dd746976f3d00e87bbd7fd9598ebc9c25e26a86ca8771e1` |
| 39 | `theorem` | [nonempty_algEquiv_iff_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/nonempty-algequiv-iff-finrank-eq-one--009e5fd9ec4d1ba30acee473.md) | 332 | `result-track:009e5fd9ec4d1ba30acee47349a1de13a6fcd7080aab026c74a9a2a96eab76a5` |
| 40 | `def` | [finBasis](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finbasis--59d9ea17fae8da803c43ceb7.md) | 342 | `declaration-track:59d9ea17fae8da803c43ceb741a832a6600f5ebc44cc25f74e1a2fa2843fe434` |
| 41 | `def` | [finBasisOfFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/finbasisoffinrankeq--e85c72d3f71cc8b6a73914f5.md) | 348 | `declaration-track:e85c72d3f71cc8b6a73914f5191d107f72cf15ca0ba2f94c91981a4701209e7f` |
| 42 | `def` | [basisUnique](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/basisunique--679d036372c8fc41c7e407ed.md) | 354 | `declaration-track:679d036372c8fc41c7e407ed822ef5d63e8a51742753783ff4f4c0582b3f8a70` |
| 43 | `theorem` | [Basis.nonempty_unique_index_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/basis-nonempty-unique-index-of-finrank-eq-one--e01b43768f35454c7f9b67d8.md) | 362 | `result-track:e01b43768f35454c7f9b67d8fcae14ab9e67197703b2f30d67d125e7e4148b26` |
| 44 | `theorem` | [basisUnique_repr_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/basisunique-repr-eq-zero-iff--f634e2bfde67a4e6aff3913f.md) | 374 | `result-track:f634e2bfde67a4e6aff3913f8e639ad1921da84875c2bf1708081dfaafa9752b` |
| 45 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.OrzechProperty.bijective_of_surjective_of_finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-varianta25ac832cd9--20a8f180f473daae866b9efc.md) | 382 | `result-track:20a8f180f473daae866b9efc755466f7a6c62a87529152ace30031d66dafc3b2` |
| 46 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearMap.existsUnique_eq_smul_id_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-varianta25ac832cd9--3b9f5add7c0b8c4468a79d31.md) | 396 | `result-track:3b9f5add7c0b8c4468a79d31dbf4f964bd6e517bba5b09a2d620245f0aec122f` |
| 47 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.LiftRankMulLiftRank.Varianta25ac832cd9d5fca78efa749185580787553643a190b73d4f0fea95108c1c8c5.LinearEquiv.smul_id_of_finrank_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/root-grwtsk-algebra-linearalgebra-liftrankmulliftrank-varianta25ac832cd9--c7925ea62e7cf871ac2b1470.md) | 415 | `declaration-track:c7925ea62e7cf871ac2b14702fd3842bd8cca46422e190a4ee4742ac36331423` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/declarations/instance--e62907b7696b08b320a8f2dd.md) | 431 | `declaration-track:e62907b7696b08b320a8f2dd98614673cd54e03ef3afca77d3b5daf5e6f46923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
