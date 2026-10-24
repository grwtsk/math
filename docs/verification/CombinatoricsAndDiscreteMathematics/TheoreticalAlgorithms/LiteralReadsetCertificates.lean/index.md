# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralReadsetCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c08a274ade74b651a0c2516f9a50b088ae71407",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c08a274ade74b651a0c2516f9a50b088ae71407`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteOccurrenceMaps`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/bytes--987bce862359666db3e9734a.md) | 12 | `declaration-track:987bce862359666db3e9734a5687245bdad0ee3f1f895afeb171d97380c964ef` |
| 2 | `abbrev` | [SourceKey](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/sourcekey--54fca59981feaa67e0b9c8da.md) | 13 | `declaration-track:54fca59981feaa67e0b9c8dacd8a91792c598e74268cb7ecd9747fdf5aa43d66` |
| 3 | `abbrev` | [TargetKey](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/targetkey--05c28b99788480e2a51fc8bd.md) | 14 | `declaration-track:05c28b99788480e2a51fc8bd6a584025166193b42dd63d7fbc6e15f21e173be5` |
| 4 | `structure` | [ReadSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/readset--ad2635ba019659c2f78c6571.md) | 16 | `declaration-track:ad2635ba019659c2f78c6571a50b878d2ebed4f66bf1acf2d051e4e0f045e62c` |
| 5 | `structure` | [Binding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/binding--fa99298b5b3c9c0d2baf749c.md) | 23 | `declaration-track:fa99298b5b3c9c0d2baf749c26c613f39cedea70cabca863f10b5470d479b1bd` |
| 6 | `structure` | [Occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/occurrence--65cafe7c43ab3f2609178e56.md) | 30 | `declaration-track:65cafe7c43ab3f2609178e561f00c6f65da56c259d2803ce95faafc16c244b57` |
| 7 | `structure` | [Output](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/output--803aa6647017f89a1df34494.md) | 35 | `declaration-track:803aa6647017f89a1df34494ae61401ae458fd3c746ec030683dcca2647b2e84` |
| 8 | `abbrev` | [ByteOccurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/byteoccurrence--014145f16e57f32c68757afd.md) | 43 | `declaration-track:014145f16e57f32c68757afd1f5f5e815913ddf1c0e43243ad2270e4894d5ef1` |
| 9 | `abbrev` | [ByteOutput](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/byteoutput--59ff68ea4c7af85270fea5ee.md) | 44 | `declaration-track:59ff68ea4c7af85270fea5ee5319090adb997099d766ce12dd4ec5afa70da70b` |
| 10 | `def` | [slot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/slot--7858b8a1b33494647ab58714.md) | 48 | `declaration-track:7858b8a1b33494647ab58714c0c3606fc0b5f5f08115f689bfa8af6b2dc8b92b` |
| 11 | `def` | [sourcePayload](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/sourcepayload--bbac73b62ee65a4f12697ca7.md) | 52 | `declaration-track:bbac73b62ee65a4f12697ca7c604f97d1308a7ce0df459862c66f939c81194fd` |
| 12 | `def` | [realize](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/realize--591ac4b89881668c9d20a323.md) | 57 | `declaration-track:591ac4b89881668c9d20a323cfd2e996684e6196f4722d026f2f85495ce1d400` |
| 13 | `def` | [renderOccurrences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/renderoccurrences--152f28ed3206e1da57bb1e4f.md) | 64 | `declaration-track:152f28ed3206e1da57bb1e4fdc4b2a11ed12140b5685a27b515f115309da090b` |
| 14 | `def` | [renderOutputs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/renderoutputs--e90d9f500fbefe41985474a6.md) | 72 | `declaration-track:e90d9f500fbefe41985474a6d34acab299a20836695301523a4584c5c5668ad8` |
| 15 | `def` | [keysAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/keysat--4c7696f9de10d4f1e0843c7a.md) | 79 | `declaration-track:4c7696f9de10d4f1e0843c7a383088d80f791667e8724ba545c9465e87a7896a` |
| 16 | `def` | [completeSourceKeys](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/completesourcekeys--7b15b5bde305224c6fe5c9c3.md) | 85 | `declaration-track:7b15b5bde305224c6fe5c9c39b8042ecb8885ea74c2f12bc4aa65bd7836e559a` |
| 17 | `def` | [bindingKeys](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/bindingkeys--f43ccd88c8bd8abe96b1acbd.md) | 88 | `declaration-track:f43ccd88c8bd8abe96b1acbd2a8f273a096790de69c5e7256fd59c496a776194` |
| 18 | `def` | [canonicalReadSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/canonicalreadset--f7dc92adbaa1796dfdaf79c2.md) | 91 | `declaration-track:f7dc92adbaa1796dfdaf79c2926ef5531f4a077b7127e1f761fda3980a73c91e` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/instance--561c62ac63ef3ae96b884605.md) | 96 | `declaration-track:561c62ac63ef3ae96b884605b78c38a05c73509d8e409cdbcacaf377a14b05df` |
| 20 | `def` | [readsetsCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/readsetscheck--b69ddc48a66d1f7600f46cee.md) | 101 | `declaration-track:b69ddc48a66d1f7600f46ceea173753f9e13379aef93e1563937adb7bfe00976` |
| 21 | `def` | [coverageCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/coveragecheck--85b27acdc404d1f34414d92c.md) | 104 | `declaration-track:85b27acdc404d1f34414d92cc1c7f16864bada4df9cc7b3971a0afa55c93eafc` |
| 22 | `def` | [certificateCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/certificatecheck--483f54eb643c41651e11e315.md) | 109 | `declaration-track:483f54eb643c41651e11e3150cc78c1ba27d42ee004ba1d3ddad37b467b7ebae` |
| 23 | `theorem` | [readsetsCheck_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/readsetscheck-spec--1bb255aa663c12b760cc3048.md) | 116 | `result-track:1bb255aa663c12b760cc3048d37ab0852fb07e3cf8d04f74179cacdae530dd12` |
| 24 | `theorem` | [certificateCheck_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/certificatecheck-spec--2f2c379f819fdbecbc6ce44c.md) | 120 | `result-track:2f2c379f819fdbecbc6ce44c759731a3aa2fe476aab11adb49ea3681b23d230f` |
| 25 | `theorem` | [accepted_readset_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/accepted-readset-exact--184ec6ca0c57392ea24a6f20.md) | 132 | `result-track:184ec6ca0c57392ea24a6f202c8c5172ad7e3cb4c97c8df45b579433feba609f` |
| 26 | `theorem` | [accepted_complete_source_keys](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/accepted-complete-source-keys--e77cef3647d67ad7d9f8e8af.md) | 138 | `result-track:e77cef3647d67ad7d9f8e8af0c0be50935767ede801995373c5aab23c1c77b23` |
| 27 | `theorem` | [stale_literal_readset_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/stale-literal-readset-rejected--32d710a50146eda659e5f89c.md) | 144 | `result-track:32d710a50146eda659e5f89ce5ad71aaa94b152419ebba057c3022e1cbde0d85` |
| 28 | `theorem` | [omitted_source_occurrence_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/omitted-source-occurrence-rejected--0f09515facc8e6bc4e375fb9.md) | 150 | `result-track:0f09515facc8e6bc4e375fb90a60afcc796b567af85743e3c318601e54b78fad` |
| 29 | `theorem` | [sourcePayload_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/sourcepayload-exact--3a5a1d7f2c3f32c23286f7ba.md) | 157 | `result-track:3a5a1d7f2c3f32c23286f7bad534612d896f0a95669aa45ff1e7f81550169a7e` |
| 30 | `theorem` | [missing_source_slot_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/missing-source-slot-rejected--0fdfcc9b793200c2cbd0ce33.md) | 164 | `result-track:0fdfcc9b793200c2cbd0ce335a76044b7e60b484ff71d967378512672b141ab5` |
| 31 | `theorem` | [coverageCheck_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/coveragecheck-sound--e3d4c71f6494c403afc7dc80.md) | 170 | `result-track:e3d4c71f6494c403afc7dc804e5e66e9a60df43d91e6ee0bf5e65d198bebe279` |
| 32 | `theorem` | [accepted_exact_decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/accepted-exact-decode--aefaa1721a6807025dfc82bb.md) | 184 | `result-track:aefaa1721a6807025dfc82bb479bfb4fe666445a74bd6ecb344672f2d5a32ff1` |
| 33 | `theorem` | [same_literal_slot_equal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/same-literal-slot-equal--90aba0c004f5e66543f75da2.md) | 200 | `result-track:90aba0c004f5e66543f75da2c4d0fc503c766b07f4a8a5542ae84cb8a1524458` |
| 34 | `theorem` | [digest_equality_does_not_imply_bytes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/digest-equality-does-not-imply-bytes--b850eece096325aec524cf32.md) | 204 | `result-track:b850eece096325aec524cf32041683779e9f465cce913629889a319be0ae23bb` |
| 35 | `def` | [targetLess](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/targetless--7501801381e282c46bb90690.md) | 210 | `declaration-track:7501801381e282c46bb9069073ab9fd324a707297f389ac540fcf75f8a676929` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/instance--477209740292c8e067f29ca1.md) | 213 | `declaration-track:477209740292c8e067f29ca1519726307124905cf8b417979589034428a8a278` |
| 37 | `def` | [outputKeys](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/outputkeys--94fa0b4fe26661c58d7ec55f.md) | 216 | `declaration-track:94fa0b4fe26661c58d7ec55ff7c9a669ba4f2401493ad6858fe4851d7a86767a` |
| 38 | `def` | [planCertificateCheck](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/plancertificatecheck--bc0e305d850ceb4f229b776c.md) | 222 | `declaration-track:bc0e305d850ceb4f229b776c56664020b1fba676d36828a8b2a3096f7610267d` |
| 39 | `theorem` | [planCertificateCheck_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/plancertificatecheck-spec--46be2514aa17a923316b5243.md) | 229 | `result-track:46be2514aa17a923316b5243534d5a1c6efc1e79607bc7c320f952bf7d2b09cf` |
| 40 | `theorem` | [accepted_literal_objects_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/accepted-literal-objects-exact--5c1382a7d6337ad1f6d63fe3.md) | 239 | `result-track:5c1382a7d6337ad1f6d63fe367ddf4bc92b736fb2eb4e0def991fab1bde039a9` |
| 41 | `theorem` | [accepted_output_inventory_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/accepted-output-inventory-exact--eba649e45bafb4fa525f0536.md) | 246 | `result-track:eba649e45bafb4fa525f05363c216887b1d2d8f3d5d42a051badfc14f3b1e01e` |
| 42 | `theorem` | [accepted_output_keys_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/accepted-output-keys-unique--3f8dbe7a6ccda9c77062df4c.md) | 253 | `result-track:3f8dbe7a6ccda9c77062df4c165ce8993840844b6ede23e9c950504602b199ca` |
| 43 | `theorem` | [literal_payload_drift_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/literal-payload-drift-rejected--36c2becc05dd4a882d19fd88.md) | 266 | `result-track:36c2becc05dd4a882d19fd889d0ddfc186cc745f6fd775226d2ebabf140baccb` |
| 44 | `theorem` | [changed_output_inventory_rejected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/changed-output-inventory-rejected--3aa5b14ae0ef694534bb821d.md) | 274 | `result-track:3aa5b14ae0ef694534bb821d286912f6b2cd45bb8210d551aa0f98a143843c31` |
| 45 | `theorem` | [plan_certificate_exact_decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/plan-certificate-exact-decode--da56c7c4b38426d504ca9401.md) | 282 | `result-track:da56c7c4b38426d504ca9401744985e1e2eb3bc090af3569e9ab151012cfa873` |
| 46 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralReadsetCertificates.lean/declarations/example--d19c67fa3b5432ada6202167.md) | 296 | `declaration-track:d19c67fa3b5432ada62021672c6622b5e79f83eb046a5c85c041b47b52d14018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
