# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e373ce29535f8be219ec69c3f0a02a3a401d577f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e373ce29535f8be219ec69c3f0a02a3a401d577f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Modify` — import line 16; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-nil--7d059fdb9eb89a58bc526855.md) | 29 | `result-track:7d059fdb9eb89a58bc5268552f88dede3aa71928c60fa300ada3f4a2cdf0cb83` |
| 2 | `theorem` | [splitOnP_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-nil--3bb06678245401ad70d4b7ec.md) | 33 | `result-track:3bb06678245401ad70d4b7ec6764656d4378115851951cf3bd0801233c6da529` |
| 3 | `theorem` | [splitOnPPrepend_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-ne-nil--cf842c7a2af0b19fc9c78c56.md) | 37 | `result-track:cf842c7a2af0b19fc9c78c56818af3b9b6c3d93050d8517155c9a3d0104f4f37` |
| 4 | `theorem` | [splitOnP.go_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-go-ne-nil--a3756358f18c4dbbecb71ff0.md) | 41 | `result-track:a3756358f18c4dbbecb71ff0104f0bd24210e2a2379d1ca582232f6cdfa835e1` |
| 5 | `theorem` | [splitOnPPrepend_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-nil--16b8b9f6ff519fede384ad94.md) | 44 | `result-track:16b8b9f6ff519fede384ad94ecfe824aad4a27583d7632212011f8c7b9318e11` |
| 6 | `theorem` | [splitOnPPrepend_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-nil-right--2810f2699cb1317aa0d03b04.md) | 45 | `result-track:2810f2699cb1317aa0d03b04085a11d8874e3964c87a5a3810ea7e118771e806` |
| 7 | `theorem` | [splitOnP_eq_splitOnPPrepend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-eq-splitonpprepend--2881b62c8cab8b8d411a7c72.md) | 46 | `result-track:2881b62c8cab8b8d411a7c7225fc0c25c36129a9c75028a92b05aead4e4f8193` |
| 8 | `theorem` | [splitOnPPrepend_cons_eq_if](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-cons-eq-if--ee44c674d29940b1b849b812.md) | 48 | `result-track:ee44c674d29940b1b849b812268cb8afae33b40c32276d00ad2dd7b599cc295d` |
| 9 | `theorem` | [splitOnPPrepend_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-cons-pos--1e2f6787978107c12d3430af.md) | 53 | `result-track:1e2f6787978107c12d3430af5ea099ebd5f3c11bcb04a442cae6c43a27eb1ce5` |
| 10 | `theorem` | [splitOnPPrepend_cons_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-cons-neg--96e2db29ce9fde1bc86d7514.md) | 57 | `result-track:96e2db29ce9fde1bc86d7514f82fea304f3c10d9204c700968c1d06b8feed133` |
| 11 | `theorem` | [splitOnP_cons_eq_if_splitOnPPrepend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-cons-eq-if-splitonpprepend--6653646c53ffee3cacf88a74.md) | 61 | `result-track:6653646c53ffee3cacf88a744e0ec564be5f1911a411f1c3edc54dc3c55a6cb2` |
| 12 | `theorem` | [splitOnPPrepend_eq_modifyHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonpprepend-eq-modifyhead--3c9eaf84eb285163c276aace.md) | 65 | `result-track:3c9eaf84eb285163c276aace2e867589de774492cc9ee80861b1757e249d9f26` |
| 13 | `theorem` | [splitOnP.go_acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-go-acc--874218a837e528b2e46f681d.md) | 74 | `result-track:874218a837e528b2e46f681dac9019b08a28835e0ef01d5eec654c03f4919527` |
| 14 | `theorem` | [splitOnP_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-ne-nil--680b5325e54d5ef91c1f4742.md) | 79 | `result-track:680b5325e54d5ef91c1f47425cf5be5e99e9c3b9977814be505b3ef10f17f0e6` |
| 15 | `theorem` | [splitOnP_cons_eq_if_modifyHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-cons-eq-if-modifyhead--726b09392f79b884ca0a489c.md) | 82 | `result-track:726b09392f79b884ca0a489ceef31cfd2b4e524bbd222592ed96153aa77d58ed` |
| 16 | `theorem` | [splitOnP_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-cons--93758365066bd150f280fffb.md) | 88 | `result-track:93758365066bd150f280fffb320a3d06e3968d526d5f1cf668d66ff98e776dcd` |
| 17 | `theorem` | [splitOnP_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-spec--6a01fd69aaced83529277f2e.md) | 95 | `result-track:6a01fd69aaced83529277f2eafc8087cbba755c2565b6310a0149f462bcf6d8d` |
| 18 | `theorem` | [splitOnP_eq_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-eq-singleton--2db2c45bf97f48c077ae80b0.md) | 109 | `result-track:2db2c45bf97f48c077ae80b0e5f585b271c2ddd27a1a3ef3cc10b301b5b1de90` |
| 19 | `theorem` | [splitOnP_eq_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-eq-single--f1f43eeab9df4a8f3782eb67.md) | 117 | `result-track:f1f43eeab9df4a8f3782eb67696123b81bd5b55cbae3db78be22a6bda28c4bfd` |
| 20 | `theorem` | [splitOnP_append_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-append-cons--cc8624c1df1958ece3f0cd90.md) | 122 | `result-track:cc8624c1df1958ece3f0cd908ba5fc50346edeeb1c55f43b156b408b751c5b43` |
| 21 | `theorem` | [splitOnP_append_cons_of_forall_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-append-cons-of-forall-mem--c3a88519dfb0982a799ef95b.md) | 132 | `result-track:c3a88519dfb0982a799ef95be2eeeba2ead0d8f22cbb4414e2b0bac6e785ad14` |
| 22 | `theorem` | [splitOnP_first](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/splitonp-first--c1ad835d797db2aa5c181b3f.md) | 137 | `result-track:c1ad835d797db2aa5c181b3fcd2e9c5b555cc97f9d556ba2e01d64f75eefad13` |
| 23 | `theorem` | [splitOn_eq_splitOnP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-eq-splitonp--5f233e80cf3bfab30df1ba87.md) | 141 | `result-track:5f233e80cf3bfab30df1ba87746ba719829352b3727fe2dbeb51472e25841a07` |
| 24 | `theorem` | [splitOn_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-ne-nil--db2f6b5ed044058106cb11e3.md) | 145 | `result-track:db2f6b5ed044058106cb11e3b8bc0c8979dce7497f2af57d9362a32461064e9b` |
| 25 | `theorem` | [splitOn_cons_eq_if_modifyHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-cons-eq-if-modifyhead--164855e440efa1f79d385b2c.md) | 148 | `result-track:164855e440efa1f79d385b2c7d52d7379447ca6bc301a796dcb2e6fdb5b6ade7` |
| 26 | `theorem` | [splitOn_eq_singleton_of_beq_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-eq-singleton-of-beq-eq-false--9814bd93586b6effee5a67f4.md) | 154 | `result-track:9814bd93586b6effee5a67f4e53780eff46a3eeb77bc0ed0fcc918b5559783d7` |
| 27 | `theorem` | [splitOn_eq_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-eq-singleton--b96646487a75a694873a365b.md) | 158 | `result-track:b96646487a75a694873a365bc04f9ea3b35d32135da14270286d82b62a0c13ae` |
| 28 | `theorem` | [splitOn_append_cons_of_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-append-cons-of-beq--43254bd2f1cfd571d4ecd2b6.md) | 165 | `result-track:43254bd2f1cfd571d4ecd2b65b88229ec7040f58a3cd6804511db5f5521283cd` |
| 29 | `theorem` | [splitOn_append_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-append-cons-self--ec0254c508be0a09624f77fb.md) | 171 | `result-track:ec0254c508be0a09624f77fba3d5e732c23fc414f187a788802b9c1e521b2d15` |
| 30 | `theorem` | [splitOn_append_cons_of_forall_mem_beq_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-append-cons-of-forall-mem-beq-eq-false--64c35fa47653b0150ec6b0c2.md) | 177 | `result-track:64c35fa47653b0150ec6b0c23b67cb5a694939c5db3fc564f996d3b34daeceb5` |
| 31 | `theorem` | [splitOn_append_cons_self_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-append-cons-self-of-not-mem--7f8683726da6dff6a762200a.md) | 184 | `result-track:7f8683726da6dff6a762200ab2fca0321b64ef1ae4bc39c6b97ac289dee766dc` |
| 32 | `theorem` | [intercalate_splitOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/intercalate-spliton--f3b47a7a1a312d41f474aed0.md) | 191 | `result-track:f3b47a7a1a312d41f474aed04e93b9375902060cad175cc9d76e36a57e3f3e76` |
| 33 | `theorem` | [splitOn_intercalate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant500c77e15a70131efccbdb7b4af5306af82d9752c285e6600b1247050bb4bfc2.lean/declarations/spliton-intercalate--731d1d22c3006e7db04a1857.md) | 204 | `result-track:731d1d22c3006e7db04a1857d22bc7dd496f9f7c4ce8e7291845651f1a469889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
