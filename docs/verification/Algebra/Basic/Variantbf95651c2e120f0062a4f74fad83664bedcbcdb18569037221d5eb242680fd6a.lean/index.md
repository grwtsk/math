# Verification target: GRWTSK.Algebra.Basic.Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98c26c3cc43a74caa566c43bf5595ff9ff274e83",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98c26c3cc43a74caa566c43bf5595ff9ff274e83`.

Source path: `GRWTSK/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Opposite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoSidedIdeal](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/twosidedideal--f32d7b38273592dc93b62572.md) | 37 | `declaration-track:f32d7b38273592dc93b625729211dd940f3a721c0386ad252af80f677af87e67` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--a13f6046d8b4d112202de073.md) | 49 | `declaration-track:a13f6046d8b4d112202de0733bab65a0e031ecd4b04ecf5a6ce8821ef02f05ff` |
| 3 | `instance` | [setLike](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/setlike--1a32cfba20fc449d9f48a174.md) | 53 | `declaration-track:1a32cfba20fc449d9f48a174b8f1d94b3e3fd5564bc463e120ad9332b5187ad9` |
| 4 | `lemma` | [mem_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mem-iff--4f5c62ba0a185d3cd751e140.md) | 66 | `result-track:4f5c62ba0a185d3cd751e140da0bf7ee6e9264dba305baf312c345104da61e1a` |
| 5 | `lemma` | [mem_mk](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mem-mk--42028731d6e4bfe1fac291ca.md) | 69 | `result-track:42028731d6e4bfe1fac291cac7c548b8f43a4c378662c1e635857fe83c1eede2` |
| 6 | `lemma` | [coe_mk](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/coe-mk--49ab032025a3cdc15a4a3ba7.md) | 72 | `result-track:49ab032025a3cdc15a4a3ba7cf0d9abfe2c47df2272daa59a4e406822c12c429` |
| 7 | `lemma` | [rel_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/rel-iff--b00f2712d78445c81f23a93f.md) | 74 | `result-track:b00f2712d78445c81f23a93fbecfb6ff3ea55ab4608bd93182d517e4862156df` |
| 8 | `def` | [coeOrderEmbedding](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/coeorderembedding--3fe0ac3df2d6bfb46ec16e42.md) | 84 | `declaration-track:3fe0ac3df2d6bfb46ec16e42668540b7330bf62af3c0aa71afc30fbc2f6b9d35` |
| 9 | `lemma` | [le_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/le-iff--684664075bd1cd9795d87712.md) | 89 | `result-track:684664075bd1cd9795d877128d382eb401ba4c0533f0b84ee5a0e288b7c8251c` |
| 10 | `def` | [orderIsoRingCon](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/orderisoringcon--205c4b94bf90e7be40218d41.md) | 93 | `declaration-track:205c4b94bf90e7be40218d4169e9451435d1b5d0af70d55ac537eb00a637eb51` |
| 11 | `lemma` | [ringCon_injective](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/ringcon-injective--844cf840cb92c074f2d30f1a.md) | 101 | `result-track:844cf840cb92c074f2d30f1ac07ea11e65048afa54324e92198507d6b59ea71f` |
| 12 | `lemma` | [ringCon_le_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/ringcon-le-iff--c66c732527e4e2e266f841da.md) | 104 | `result-track:c66c732527e4e2e266f841da7fb8f59da458a30998f7f8d34e07ddb4e02db194` |
| 13 | `lemma` | [ext](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/ext--2074227e3f35cbff5e8e4df6.md) | 108 | `result-track:2074227e3f35cbff5e8e4df6f68faa9a4fccc1a253515e6f6692b3691c0cc441` |
| 14 | `lemma` | [lt_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/lt-iff--d3b19adffca784d25e068a45.md) | 111 | `result-track:d3b19adffca784d25e068a45601271498a2b2ac0a7df2b0d42635b70aa291bd1` |
| 15 | `lemma` | [zero_mem](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/zero-mem--968fe0f415cd424e164785ba.md) | 116 | `result-track:968fe0f415cd424e164785bad61755691cf01f8f3ccdf21d1ac9e610f7a4c864` |
| 16 | `lemma` | [add_mem](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/add-mem--f57744916fa50f9d60bf0f00.md) | 118 | `result-track:f57744916fa50f9d60bf0f00c8b9eb44caaab9c1f6b87ed8526785f1268b569b` |
| 17 | `lemma` | [neg_mem](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/neg-mem--c6542a6091ba6437e9228f97.md) | 120 | `result-track:c6542a6091ba6437e9228f97220e37608ff5f95dd8562c1043b0cdbad02e8cf8` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--c476709f39b08f18a4277817.md) | 122 | `declaration-track:c476709f39b08f18a4277817669a2889002f29268f403903a4cb1f0750572345` |
| 19 | `lemma` | [sub_mem](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/sub-mem--2b79d60e07747e33b2825c6c.md) | 127 | `result-track:2b79d60e07747e33b2825c6c831877d9f7e2c05ef0ffca6ac2af6c6b22fc59fa` |
| 20 | `lemma` | [mul_mem_left](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mul-mem-left--60d2ef35a9281da30bc5f678.md) | 129 | `result-track:60d2ef35a9281da30bc5f6789c6de7073723f09e12221897551650b5582c8c0a` |
| 21 | `lemma` | [mul_mem_right](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mul-mem-right--4172325256177b14b7cc24e4.md) | 132 | `result-track:4172325256177b14b7cc24e4f82cc718a25fb344a2d62a7570df3d2028b8177b` |
| 22 | `lemma` | [nsmul_mem](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/nsmul-mem--a961131ab55299cee2cccc8e.md) | 135 | `result-track:a961131ab55299cee2cccc8ee0e1b3b9a1ad3d4b74badf584dd2f1358fb8d014` |
| 23 | `lemma` | [zsmul_mem](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/zsmul-mem--4da5397a6aee4ee26c7085d2.md) | 137 | `result-track:4da5397a6aee4ee26c7085d23dfccb0eff33a9e619978ffc6f0d3841c32e203d` |
| 24 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mk--d9ef341550fa66b81b439245.md) | 148 | `declaration-track:d9ef341550fa66b81b4392450015839ba2342e3ebafe1dd91dbd3e679d8a73bf` |
| 25 | `lemma` | [mem_mk'](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mem-mk--5deb87b35aa728d79fc9eaea.md) | 169 | `result-track:5deb87b35aa728d79fc9eaead173b3e8b2fce9345590d9f01e629aa094248da3` |
| 26 | `lemma` | [coe_mk'](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/coe-mk--91ee6e942be55ec4f4e3a87b.md) | 176 | `result-track:91ee6e942be55ec4f4e3a87b8bd5f9a42a27aec5f7ee79f4755bf9153228c990` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--fa9a9ef4f52aa76c821ae079.md) | 180 | `declaration-track:fa9a9ef4f52aa76c821ae079fce1930fcfe13cbd4496e22b4f734576e0e866e0` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--2e2ee0fb7d0d981cc52c6e4f.md) | 183 | `declaration-track:2e2ee0fb7d0d981cc52c6e4f8c157a3b1522a56bae29b1caa71823e662be415e` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--a4beadd8892294e4b0700f18.md) | 186 | `declaration-track:a4beadd8892294e4b0700f18a531a1151edb982ee3d3c9690b832f45fbd505c6` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--d2c3b2dfbec52c26c17a40fb.md) | 188 | `declaration-track:d2c3b2dfbec52c26c17a40fb14f2dcf3e40d50ba9e6f0a09c6b3806375dc38f4` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--45bf59c7bd5dd1b9653862e8.md) | 190 | `declaration-track:45bf59c7bd5dd1b9653862e81a7ffc94a0e324fe1ca3f73189db635c1ee5327e` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--de0d9867c2af937942c93848.md) | 192 | `declaration-track:de0d9867c2af937942c9384887db94842e72fc87af846a6de2ddcc225bdadbe7` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--82fc75283f0bb204777ff4e9.md) | 194 | `declaration-track:82fc75283f0bb204777ff4e9ed117f40c73acadff0871a62d25b10be5403daea` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/instance--a14bf5f6d79f1a394234ce21.md) | 196 | `declaration-track:a14bf5f6d79f1a394234ce2187d4ccae73b5eaa5b0b451ea89a1f1ea2b9f2a73` |
| 35 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/addcommgroup--50cefd52d1f0399b8b482505.md) | 198 | `declaration-track:50cefd52d1f0399b8b4825055239a8a91a4d3a9c1bc1e0a6fbc34638bbb5b5b0` |
| 36 | `def` | [coeAddMonoidHom](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/coeaddmonoidhom--23cdecad1e1dde109661b570.md) | 204 | `declaration-track:23cdecad1e1dde109661b570c8fb666a6c91161dd11a18eae2d1c37d4ec37964` |
| 37 | `def` | [op](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/op--8abd8e000a528232ebb21ae3.md) | 211 | `declaration-track:8abd8e000a528232ebb21ae3f04e642ac22e99358343ddd290f13685c3b60475` |
| 38 | `lemma` | [mem_op_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mem-op-iff--19304aeaeb1f999980f92d15.md) | 215 | `result-track:19304aeaeb1f999980f92d15f47b5ee9f87f1b942541dbacb6f7ceea7dab9d76` |
| 39 | `lemma` | [coe_op](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/coe-op--d321883875e9d64701f47c13.md) | 219 | `result-track:d321883875e9d64701f47c137a46e9755db97086d6f14447029861ed3648e02c` |
| 40 | `def` | [unop](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/unop--b0dac43aa685ee328e8ccfc5.md) | 225 | `declaration-track:b0dac43aa685ee328e8ccfc5607a33ff0996e7272e27a2ba7a8d5906410d9ad4` |
| 41 | `lemma` | [mem_unop_iff](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/mem-unop-iff--a90a4a0345346e5158588d36.md) | 229 | `result-track:a90a4a0345346e5158588d36048fe580ba0f4f71ecb3c35c522b7b2df9665a0c` |
| 42 | `lemma` | [coe_unop](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/coe-unop--e244f6e27231cb70a40f5451.md) | 233 | `result-track:e244f6e27231cb70a40f5451eb995f31a9d9b57109b8b3aa793f71dd7e178517` |
| 43 | `def` | [opOrderIso](../../../../mathematics/Algebra/Basic/Variantbf95651c2e120f0062a4f74fad83664bedcbcdb18569037221d5eb242680fd6a.lean/declarations/oporderiso--5fb362d9b26e762ac5090a0e.md) | 240 | `declaration-track:5fb362d9b26e762ac5090a0ee6520a265ed7b682cec1efc7d87cd628075a3843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
