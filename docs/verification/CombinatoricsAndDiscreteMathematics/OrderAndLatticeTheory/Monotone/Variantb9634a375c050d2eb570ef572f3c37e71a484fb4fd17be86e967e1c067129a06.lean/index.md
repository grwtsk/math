# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1462d9337d47eb83caef9ae7ec0c3b79df50b94",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1462d9337d47eb83caef9ae7ec0c3b79df50b94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean.json)

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
| 1 | `theorem` | [_root_.MonotoneOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-monotoneon-congr--dfe927dcd14bc4bec34e5516.md) | 28 | `result-track:dfe927dcd14bc4bec34e5516d4765722af9eff0b4890eb44f549085b5473da89` |
| 2 | `theorem` | [_root_.AntitoneOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-antitoneon-congr--20a8e07a46d2be5eb95bc88d.md) | 33 | `result-track:20a8e07a46d2be5eb95bc88d8b6e1933e0241f87baa4527e2a5de9b77e125093` |
| 3 | `theorem` | [_root_.StrictMonoOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-strictmonoon-congr--58dff6fa294ec8e9d723b52f.md) | 36 | `result-track:58dff6fa294ec8e9d723b52f9a0f279e4398d535506ed81a5fcd263a54c3eca5` |
| 4 | `theorem` | [_root_.StrictAntiOn.congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-strictantion-congr--02d39e4e9572ec5637def4a2.md) | 42 | `result-track:02d39e4e9572ec5637def4a2af0b9d8c9d06bf3ddd5457acfa696c6a67462a5e` |
| 5 | `theorem` | [EqOn.congr_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/eqon-congr-monotoneon--a6a8fd30f7caf3111ae1149d.md) | 45 | `result-track:a6a8fd30f7caf3111ae1149d76cd217192dabb54090f21eeeeafec6b75cd08cf` |
| 6 | `theorem` | [EqOn.congr_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/eqon-congr-antitoneon--426292e716a78833f9fb2162.md) | 48 | `result-track:426292e716a78833f9fb21623fe235f5478289abbe4600b136451807154ca1db` |
| 7 | `theorem` | [EqOn.congr_strictMonoOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/eqon-congr-strictmonoon--dcf316ef66273266c3ec9033.md) | 51 | `result-track:dcf316ef66273266c3ec9033feb80aaf3780094993425ae6a7eecfb1f59b754d` |
| 8 | `theorem` | [EqOn.congr_strictAntiOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/eqon-congr-strictantion--430eb3da60a7c05082d1d40e.md) | 54 | `result-track:430eb3da60a7c05082d1d40eecab65f00faee0b81a448dc784225409ac0220dc` |
| 9 | `theorem` | [_root_.MonotoneOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-monotoneon-mono--b8d866241f17a4e647f4ce8f.md) | 64 | `result-track:b8d866241f17a4e647f4ce8f44cccef133ca01e2eab12958f973174a936a06d5` |
| 10 | `theorem` | [_root_.AntitoneOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-antitoneon-mono--1fdf7b08b76b1d61859d3011.md) | 67 | `result-track:1fdf7b08b76b1d61859d30119fca7d3e1fe0fb81ed41016c1d3226f7fa379b36` |
| 11 | `theorem` | [_root_.StrictMonoOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-strictmonoon-mono--28a392fec7199b27d5c9df6b.md) | 70 | `result-track:28a392fec7199b27d5c9df6bd8c8dfda7ba9098af0d0019e2c5ea936dc5286da` |
| 12 | `theorem` | [_root_.StrictAntiOn.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-strictantion-mono--f573d30916f4de271cab6e06.md) | 73 | `result-track:f573d30916f4de271cab6e06ce280c9c8581a0b6f78431cb52c46bd4ace2d01d` |
| 13 | `theorem` | [_root_.MonotoneOn.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-monotoneon-monotone--f61afe4bf21bc698158d8b95.md) | 76 | `result-track:f61afe4bf21bc698158d8b95ceb3ffd2bafb37d144544277576262ee5219c3c0` |
| 14 | `theorem` | [_root_.AntitoneOn.monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-antitoneon-monotone--ed24f55d1b743dea2ebf6adc.md) | 80 | `result-track:ed24f55d1b743dea2ebf6adc4fba81721398c5fbda278973ed484bcda48661d5` |
| 15 | `theorem` | [_root_.StrictMonoOn.strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-strictmonoon-strictmono--4d97c0a765e54246e30b4f8e.md) | 84 | `result-track:4d97c0a765e54246e30b4f8ed9a6947cc84ad65eb1d6ab82f84c32b1e043c27b` |
| 16 | `theorem` | [_root_.StrictAntiOn.strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/root-strictantion-strictanti--b6eb5f4c2da871ba081f82ae.md) | 88 | `result-track:b6eb5f4c2da871ba081f82ae224a4c46d393efb204ef59a49a05476b22adffaf` |
| 17 | `lemma` | [monotoneOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/monotoneon-insert-iff--d131bd43b962cfc53eb97f45.md) | 92 | `result-track:d131bd43b962cfc53eb97f45c2030f1d3b999bb20bb0d4e2cf2d8fcfd7b31ceb` |
| 18 | `lemma` | [antitoneOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/antitoneon-insert-iff--f999b5b6f56363b4f2d4dc08.md) | 97 | `result-track:f999b5b6f56363b4f2d4dc085b1c918813254e29ea2d76b09e47b369676da4e9` |
| 19 | `theorem` | [domRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/domrestrict--5958e0ccc1d75031e6149305.md) | 115 | `result-track:5958e0ccc1d75031e6149305fcd17a8c3e238653c10eb46f5694f21090b4b75a` |
| 20 | `theorem` | [codRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/codrestrict--69fa33cf5133c18369f6b63b.md) | 120 | `result-track:69fa33cf5133c18369f6b63b02a00d0a5b84f9f5d717333fabe3473e98469689` |
| 21 | `theorem` | [rangeFactorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/rangefactorization--d9568c5795a82ece483b57f8.md) | 124 | `result-track:d9568c5795a82ece483b57f846e561b879e3019b1735ee32ef2c122a788d5954` |
| 22 | `theorem` | [strictMono_domRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmono-domrestrict--9a6667fb16ed83cf5bb67fe3.md) | 134 | `result-track:9a6667fb16ed83cf5bb67fe3fd57937848166152eab30650abe88636f5c4b68f` |
| 23 | `theorem` | [StrictMono.codRestrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmono-codrestrict--4240d602435db1c9fd36b302.md) | 145 | `result-track:4240d602435db1c9fd36b3026e080068bf0a8fe7ef3722120b8b8881634eb248` |
| 24 | `lemma` | [strictMonoOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmonoon-insert-iff--482e062867cc045abb31e685.md) | 149 | `result-track:482e062867cc045abb31e6857c6f5a9ce051f85e34ece48ef1ca3cdd9a4e3731` |
| 25 | `lemma` | [strictAntiOn_insert_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictantion-insert-iff--f7ad2e0f55bc33f37d826588.md) | 154 | `result-track:f7ad2e0f55bc33f37d826588ce64fb491fb4826d6fb64058a1a3ebd076c57328` |
| 26 | `lemma` | [strictMonoOn_insert_iff_of_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmonoon-insert-iff-of-forall-le--5b0bde33bd2c19880af71e10.md) | 159 | `result-track:5b0bde33bd2c19880af71e1011a4ce071381ffe6a942e1759f85c47fb4a4a137` |
| 27 | `lemma` | [strictMonoOn_insert_iff_of_forall_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmonoon-insert-iff-of-forall-ge--83e4386fa934b2ed7d748221.md) | 167 | `result-track:83e4386fa934b2ed7d748221f9ea39c4f0b5be04a1261251831300a1697ae81a` |
| 28 | `lemma` | [strictAntiOn_insert_iff_of_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictantion-insert-iff-of-forall-le--1fef8b08b9a663f7a1c4f7a8.md) | 175 | `result-track:1fef8b08b9a663f7a1c4f7a8d9e4b181defb3629bec5e2fca1689329685661de` |
| 29 | `lemma` | [strictAntiOn_insert_iff_of_forall_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictantion-insert-iff-of-forall-ge--bb8050fa54808e35097bfcb2.md) | 183 | `result-track:bb8050fa54808e35097bfcb2a8c1ffdc1a580cc46f676dee0d19388f2b3d2ced` |
| 30 | `theorem` | [monotoneOn_of_rightInvOn_of_mapsTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/monotoneon-of-rightinvon-of-mapsto--70d4972f137788e7ddd9eecb.md) | 197 | `result-track:70d4972f137788e7ddd9eecb74af5e9e58d5349e400e58877c1de5c5f7e62600` |
| 31 | `theorem` | [strictMonoOn_of_rightInvOn_of_mapsTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmonoon-of-rightinvon-of-mapsto--e81000184dc6b6260650cccb.md) | 208 | `result-track:e81000184dc6b6260650cccb14a59a3f25f53df6c20aebabd189ffd23f7a95c9` |
| 32 | `theorem` | [antitoneOn_of_rightInvOn_of_mapsTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/antitoneon-of-rightinvon-of-mapsto--403d6311066bdedd093b9f00.md) | 214 | `result-track:403d6311066bdedd093b9f00b6f7ff2d2deccace24e8cdc448b3a8a7b0ef9f6c` |
| 33 | `theorem` | [strictAntiOn_of_rightInvOn_of_mapsTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictantion-of-rightinvon-of-mapsto--9a7ab0774c01eefcc63d5382.md) | 219 | `result-track:9a7ab0774c01eefcc63d53824b369497b06053677cf6480db24cbd33812fc2a1` |
| 34 | `theorem` | [monotone_of_rightInverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/monotone-of-rightinverse--bd16743ef51d6b062948607b.md) | 224 | `result-track:bd16743ef51d6b062948607be715627909b0aad34d682519ead8a2bbc1002867` |
| 35 | `theorem` | [strictMono_of_rightInverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictmono-of-rightinverse--95b119442b3181a3932d8911.md) | 230 | `result-track:95b119442b3181a3932d8911d6280db48d5f2a797529024564111e51f7689bce` |
| 36 | `theorem` | [antitone_of_rightInverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/antitone-of-rightinverse--fb961a31ccbf5dbc5d0cf67c.md) | 236 | `result-track:fb961a31ccbf5dbc5d0cf67c89737553aefebc75b41e6e9955c0b7081e1e5130` |
| 37 | `theorem` | [strictAnti_of_rightInverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Monotone/Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.lean/declarations/strictanti-of-rightinverse--0ebe7e6c9f47dd2fbe04595d.md) | 241 | `result-track:0ebe7e6c9f47dd2fbe04595d1bac9e8bf52b79f36ce2610160179b2b0436f0ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
