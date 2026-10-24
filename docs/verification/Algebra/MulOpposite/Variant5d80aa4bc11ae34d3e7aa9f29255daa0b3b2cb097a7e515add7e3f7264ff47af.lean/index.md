# Verification target: GRWTSK.Algebra.MulOpposite.Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65488ab850acbf48f8b3a92a40cbed0905719490",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/index.md) · [Full source](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65488ab850acbf48f8b3a92a40cbed0905719490`.

Source path: `GRWTSK/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subsemiring.MulOpposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op--113967942926b97d1109577b.md) | 31 | `declaration-track:113967942926b97d1109577beb13a992a981bd33e28ffa8d50a972fb04dae9f4` |
| 2 | `theorem` | [mem_op](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/mem-op--4e20a8e72ce6b80d169c22a8.md) | 38 | `result-track:4e20a8e72ce6b80d169c22a8f8fd3dfd8453fc0e796fc9db0ad2e67f5b8c42af` |
| 3 | `def` | [unop](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop--045a003eb7c43d4983f13c24.md) | 42 | `declaration-track:045a003eb7c43d4983f13c241980f58f8c8ef9a1f58d1f975b6d1ffb034058ce` |
| 4 | `theorem` | [mem_unop](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/mem-unop--8361f276ce756c624a04dea2.md) | 49 | `result-track:8361f276ce756c624a04dea25a6bf25cf52d2dc84aa7968e16b39e295baed347` |
| 5 | `theorem` | [unop_op](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-op--8421c76f74a6e879eb5562c6.md) | 52 | `result-track:8421c76f74a6e879eb5562c67afdd0002b940f3eca4e836b721224a3bfa10acd` |
| 6 | `theorem` | [op_unop](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-unop--b389ef35329b86d86ad7b463.md) | 55 | `result-track:b389ef35329b86d86ad7b4639ea8e632cc5718617276868638a5449ee8146d34` |
| 7 | `theorem` | [op_le_iff](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-le-iff--2706f190504950aea7a5b5b4.md) | 59 | `result-track:2706f190504950aea7a5b5b4c49478964cc3da7eca367f5dc3b6ba80729158eb` |
| 8 | `theorem` | [le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/le-op-iff--dc7c14334196f4cd8eef2e08.md) | 62 | `result-track:dc7c14334196f4cd8eef2e0874375d579ea767b5c1916b87801191c9bd8dcedb` |
| 9 | `theorem` | [op_le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-le-op-iff--442c4b79430503aac5ab0d13.md) | 66 | `result-track:442c4b79430503aac5ab0d13540d1657b1011e16d26565cadc23b1924bbd2820` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-le-unop-iff--c5ba20db5f6787ea51a30b8d.md) | 70 | `result-track:c5ba20db5f6787ea51a30b8de3ae7b8d5902a6d6b38b9dae56a242f8976aa853` |
| 11 | `def` | [opEquiv](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/opequiv--4dbb4d08bec5b0d876fa8160.md) | 75 | `declaration-track:4dbb4d08bec5b0d876fa81601affeb6ffdc02e97b82982062348427e369523bb` |
| 12 | `theorem` | [op_injective](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-injective--88ccff6aa321f4c3c5892550.md) | 82 | `result-track:88ccff6aa321f4c3c5892550b27ab54d0b0c6eaca341cb505252f8a381cd3687` |
| 13 | `theorem` | [unop_injective](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-injective--e6b21a922b2896648ce1710d.md) | 83 | `result-track:e6b21a922b2896648ce1710d973a124efd2c72ab3141a78ad0827fc23843e4e6` |
| 14 | `theorem` | [op_inj](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-inj--08fca361190f4e28ceb7ef55.md) | 84 | `result-track:08fca361190f4e28ceb7ef5570b99b595815027595c39f3ca45880653675252a` |
| 15 | `theorem` | [unop_inj](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-inj--ca4fea135acb8d604e39853d.md) | 85 | `result-track:ca4fea135acb8d604e39853d57d9c70fff387aa7920d4dfb47537a63643970b6` |
| 16 | `theorem` | [op_bot](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-bot--f66e1ea760084874b99420c4.md) | 88 | `result-track:f66e1ea760084874b99420c4a69b29b50d68d3a6c15fd2004254423c9fec577a` |
| 17 | `theorem` | [op_eq_bot](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-eq-bot--21a6d9326aee96a7009c2e80.md) | 91 | `result-track:21a6d9326aee96a7009c2e80aef31153627bab9786cbe11da52b5c7e71928689` |
| 18 | `theorem` | [unop_bot](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-bot--bb8e2c3df25b762724744304.md) | 94 | `result-track:bb8e2c3df25b7627247443043d9733670211e0b754d7fa3be5725817d4f36eab` |
| 19 | `theorem` | [unop_eq_bot](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-eq-bot--b709d300498a10eb1f2f558f.md) | 97 | `result-track:b709d300498a10eb1f2f558fed52da01232ba5c6b1a401af947a5012613d7c4b` |
| 20 | `theorem` | [op_top](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-top--7ee0604d64d9cda2cbdcef51.md) | 100 | `result-track:7ee0604d64d9cda2cbdcef51923b0b169476d024f2dc0631bd703d45db6eea3e` |
| 21 | `theorem` | [op_eq_top](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-eq-top--7123eee0e58b63d08420061d.md) | 103 | `result-track:7123eee0e58b63d08420061dd5a8906870b876645a6c4b08fb3a076dbc80a43a` |
| 22 | `theorem` | [unop_top](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-top--0272d5e06c4951c53d2595bb.md) | 106 | `result-track:0272d5e06c4951c53d2595bb92b4784dbd90fcbebabf50425e569e1ef61b181e` |
| 23 | `theorem` | [unop_eq_top](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-eq-top--68aba9aee087ee70eb9ad03f.md) | 109 | `result-track:68aba9aee087ee70eb9ad03f1cb31ef8d4071dbb693f9cd5a2d0ae984ca69e5e` |
| 24 | `theorem` | [op_sup](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-sup--ece3d6e5de4b483ca92c5867.md) | 111 | `result-track:ece3d6e5de4b483ca92c5867165836a319fdc4b725b4c76c2a6197f4b19448e8` |
| 25 | `theorem` | [unop_sup](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-sup--ca758d5d3095acd89265c642.md) | 114 | `result-track:ca758d5d3095acd89265c6429f0022bff80b6cdcab459fa2f4a1c7f3e96ea41d` |
| 26 | `theorem` | [op_inf](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-inf--c9db882d782194e594daf62a.md) | 117 | `result-track:c9db882d782194e594daf62a2108b698e06bbfef53809084d601c622a2d563e0` |
| 27 | `theorem` | [unop_inf](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-inf--2e0c444dbb560176f62f65a3.md) | 119 | `result-track:2e0c444dbb560176f62f65a3dbc3dc276f03ecc35ca0e1c7f12b2f63b8a4a94d` |
| 28 | `theorem` | [op_sSup](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-ssup--f1839a7754d2423f905eaa34.md) | 121 | `result-track:f1839a7754d2423f905eaa34c8f4ae7ce548c9120c718ebbea5ed1aee69964a3` |
| 29 | `theorem` | [unop_sSup](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-ssup--be48069511eed50b9e7aa611.md) | 124 | `result-track:be48069511eed50b9e7aa611c0614dc8b0dca4e9230216266c8caebb55aba60f` |
| 30 | `theorem` | [op_sInf](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-sinf--bc1d9048574cc61f154005b9.md) | 127 | `result-track:bc1d9048574cc61f154005b9818dbc80c382a2ba58a2127b6c9d81f5af255ce4` |
| 31 | `theorem` | [unop_sInf](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-sinf--9249689db543cb6883a56601.md) | 130 | `result-track:9249689db543cb6883a56601fa8cb293d68d6d417069fa98799791717b32a42f` |
| 32 | `theorem` | [op_iSup](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-isup--64a1a7335b5adc5cda4f6f71.md) | 133 | `result-track:64a1a7335b5adc5cda4f6f716967b6938a7be8f9cf7fac0b306a2ce771931436` |
| 33 | `theorem` | [unop_iSup](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-isup--571f267c19d0cf8578940b28.md) | 135 | `result-track:571f267c19d0cf8578940b28c6dddbc6dedac405eb94dc770c699e2c1aeeda5b` |
| 34 | `theorem` | [op_iInf](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-iinf--83d02f2087a51c66e596c927.md) | 138 | `result-track:83d02f2087a51c66e596c92793fd9ffeb9990b4fe92096732675046007481b50` |
| 35 | `theorem` | [unop_iInf](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-iinf--63dc46d77cdc508ffa7f9c85.md) | 140 | `result-track:63dc46d77cdc508ffa7f9c85ec8bdc802bea4941d7af443a889448c684cd83ff` |
| 36 | `theorem` | [op_closure](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/op-closure--448e2bbae02d82bf0026003a.md) | 143 | `result-track:448e2bbae02d82bf0026003a2f27836c5b238170ab163c8100bb781a70445693` |
| 37 | `theorem` | [unop_closure](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/unop-closure--4a1443a3b9e43b7c11f75f16.md) | 148 | `result-track:4a1443a3b9e43b7c11f75f168323910eeb8a8869c33d53ae335b3143038175c1` |
| 38 | `def` | [addEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/addequivop--24bd606ed4cbf1d0da4f6b1a.md) | 154 | `declaration-track:24bd606ed4cbf1d0da4f6b1a9d9b4c937b429aa0dff3309f229c85f773ddb34f` |
| 39 | `def` | [ringEquivOpMop](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/ringequivopmop--29aca250d91195d32e0ac597.md) | 158 | `declaration-track:29aca250d91195d32e0ac59786b9892fc006f5414ee2e79b107eace1881556fb` |
| 40 | `def` | [mopRingEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant5d80aa4bc11ae34d3e7aa9f29255daa0b3b2cb097a7e515add7e3f7264ff47af.lean/declarations/mopringequivop--9d9b81eae880365b02aa8f9f.md) | 162 | `declaration-track:9d9b81eae880365b02aa8f9f9c905a4d9365e63595d117220422d2c1ffe5e429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
