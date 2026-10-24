# Verification target: GRWTSK.Algebra.SuccPred.Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21c94f84d0df0b6a24f8d01a989b7e40c4e105f9",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/index.md) · [Full source](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21c94f84d0df0b6a24f8d01a989b7e40c4e105f9`.

Source path: `GRWTSK/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SuccPred` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.SuccPred` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_add_one_left_eq_Ioo](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ico-add-one-left-eq-ioo--810989ed35ce22f9b75eb19e.md) | 56 | `result-track:810989ed35ce22f9b75eb19edbd3eec2113e374eadf7cf4e3e6cee5b55a9fce7` |
| 2 | `lemma` | [Icc_add_one_left_eq_Ioc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/icc-add-one-left-eq-ioc-of-not-ismax--3d0c577ddf53c74f471d74c5.md) | 59 | `result-track:3d0c577ddf53c74f471d74c5c4ad3a753eb5f9207ea6ae326f8928ecf7b40722` |
| 3 | `lemma` | [Ico_add_one_right_eq_Icc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ico-add-one-right-eq-icc-of-not-ismax--02641602af50ee4c135bd643.md) | 62 | `result-track:02641602af50ee4c135bd64398ba685e1072109cda6734d2c9010afeeb366697` |
| 4 | `lemma` | [Ioo_add_one_right_eq_Ioc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioo-add-one-right-eq-ioc-of-not-ismax--b12ad984d548273fe1d4d5f2.md) | 65 | `result-track:b12ad984d548273fe1d4d5f200bd4a9ed3b70717e934a11cbbeac5bf317e36d7` |
| 5 | `lemma` | [Ico_add_one_add_one_eq_Ioc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ico-add-one-add-one-eq-ioc-of-not-ismax--11d2142a09856c98de97c6a2.md) | 68 | `result-track:11d2142a09856c98de97c6a22b53dcdbb3bd836abc23caac319c9df71bae7ef1` |
| 6 | `lemma` | [insert_Icc_add_one_left_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-icc-add-one-left-eq-icc--3d685b705821a3271bb12eea.md) | 74 | `result-track:3d685b705821a3271bb12eeae7f628e6bbe66fb02546a54d356f25a8e7b1f8b2` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_add_one](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-icc-right-eq-icc-add-one--e534c57468efd777ad2518eb.md) | 77 | `result-track:e534c57468efd777ad2518eb6ab4667b3d15b47a7204f73d9492606113d93d92` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_add_one_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ico-right-eq-ico-add-one-of-not-ismax--b72ee6645d7614dcc995ea26.md) | 84 | `result-track:b72ee6645d7614dcc995ea26bbe3ba97371101da74165260420d043c1b4ba51d` |
| 9 | `lemma` | [insert_Ico_add_one_left_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ico-add-one-left-eq-ico--e81d6e8cb3cb32c384fea2f2.md) | 92 | `result-track:e81d6e8cb3cb32c384fea2f278837e69dbad2618aa26f1d07e046828173d1dbb` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_add_one_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ioc-right-eq-ioc-add-one-of-not-ismax--d242378a812f8f801cc10035.md) | 95 | `result-track:d242378a812f8f801cc1003514c126bfbb03a0e29699e1c841bbe98c6c634e01` |
| 11 | `lemma` | [insert_Ioc_add_one_left_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ioc-add-one-left-eq-ioc--739d8e13010d4f1ddb7b1cc5.md) | 99 | `result-track:739d8e13010d4f1ddb7b1cc5862618eeff81ebb561eebad6203e1befa86b4c59` |
| 12 | `lemma` | [Icc_add_one_left_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/icc-add-one-left-eq-ioc--370a5a968efba82f4be3957b.md) | 110 | `result-track:370a5a968efba82f4be3957b3397bd37d762ed61c3cac001d3ccc89b6c7b20c8` |
| 13 | `lemma` | [Ico_add_one_right_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ico-add-one-right-eq-icc--7a9a1faf89372ef789da7e24.md) | 113 | `result-track:7a9a1faf89372ef789da7e248d89bfd3adfaa1af6613af352e51c76ba261dbb7` |
| 14 | `lemma` | [Ioo_add_one_right_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioo-add-one-right-eq-ioc--b5fd589bc2121a692b07dbe7.md) | 116 | `result-track:b5fd589bc2121a692b07dbe7d16bae1b43613a61b6e927d7e0dd58d5d4655238` |
| 15 | `lemma` | [Ico_add_one_add_one_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ico-add-one-add-one-eq-ioc--f5647d6933762dcd1f21fda7.md) | 119 | `result-track:f5647d6933762dcd1f21fda73da5534aa98315660c7bafc529464a45a5cf4d0e` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_add_one](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ico-right-eq-ico-add-one--1a467c9e101b8a07846bd14d.md) | 124 | `result-track:1a467c9e101b8a07846bd14d2db776b695123f05ded772f28e6be4589f22cc6a` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_add_one](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ioc-right-eq-ioc-add-one--25696a84b70d652f69cd88ba.md) | 130 | `result-track:25696a84b70d652f69cd88ba70ba5c95b87d44193cfdebf8c29fdeebd869a333` |
| 18 | `lemma` | [Ioc_sub_one_right_eq_Ioo](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioc-sub-one-right-eq-ioo--008c84b07c0bd3e4481ebf60.md) | 144 | `result-track:008c84b07c0bd3e4481ebf60ae98962b4f8e6a14f58583c8dce82405c85220e7` |
| 19 | `lemma` | [Icc_sub_one_right_eq_Ico_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/icc-sub-one-right-eq-ico-of-not-ismin--401ac93cb6043e5d163d6171.md) | 147 | `result-track:401ac93cb6043e5d163d61713b2634e039c40a92fcbe61c81a4de6da9484b08f` |
| 20 | `lemma` | [Ioc_sub_one_left_eq_Icc_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioc-sub-one-left-eq-icc-of-not-ismin--de4b5be6cf6c1dbd86cbc540.md) | 150 | `result-track:de4b5be6cf6c1dbd86cbc5405a3cf5c6a35239f529e350a706b8208c40906f07` |
| 21 | `lemma` | [Ioo_sub_one_left_eq_Ioc_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioo-sub-one-left-eq-ioc-of-not-ismin--1528bbe2109f41ede248e346.md) | 153 | `result-track:1528bbe2109f41ede248e346a0581ca221d67b4701eb49725f20a2cf57d064a2` |
| 22 | `lemma` | [Ioc_sub_one_sub_one_eq_Ico_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioc-sub-one-sub-one-eq-ico-of-not-ismin--0a5bf368416608c67b8ec87f.md) | 156 | `result-track:0a5bf368416608c67b8ec87f1402c3d9e974fad24780df5a68f9dc253ca0fbcd` |
| 23 | `lemma` | [insert_Icc_sub_one_right_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-icc-sub-one-right-eq-icc--9aaf025fd0891613492db014.md) | 162 | `result-track:9aaf025fd0891613492db01466a592b4f6beac3a4ae7e828d382d99933bbba4a` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_sub_one](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-icc-left-eq-icc-sub-one--f9d48f7438535338d5cf41bf.md) | 165 | `result-track:f9d48f7438535338d5cf41bf68a71179f1b8e8297f13dbe18836c37e18058258` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_sub_one_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ioc-left-eq-ioc-sub-one-of-not-ismin--b8586fb6b630d55e3537c0a7.md) | 172 | `result-track:b8586fb6b630d55e3537c0a739166ce5ccae2de0adf2b996be69a7ea5a7c07d7` |
| 26 | `lemma` | [insert_Ioc_sub_one_right_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ioc-sub-one-right-eq-ioc--ea38b51e324f143cf2c9e6d6.md) | 180 | `result-track:ea38b51e324f143cf2c9e6d638d0b42d70916d83dfb2ecb034b7fe1ff2bb01f4` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_sub_one_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ico-left-eq-ico-sub-one-of-not-ismin--d25b980b8c10aac33a6898d3.md) | 183 | `result-track:d25b980b8c10aac33a6898d37da37fd515c40f15cf624ced8c73283a722996c6` |
| 28 | `lemma` | [insert_Ico_sub_one_right_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ico-sub-one-right-eq-ico--93f2e1ce7e37ada0c510b532.md) | 187 | `result-track:93f2e1ce7e37ada0c510b532e6e0543ee31165114c83a1318985d9ec0ef03eda` |
| 29 | `lemma` | [Icc_sub_one_right_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/icc-sub-one-right-eq-ico--b98611bb6b9185d4d7898c96.md) | 198 | `result-track:b98611bb6b9185d4d7898c96dc51a476ecff7fc61150d5066191af24bbfcf1a6` |
| 30 | `lemma` | [Ioc_sub_one_left_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioc-sub-one-left-eq-icc--1ad86e9fadfaf0148ffee8c3.md) | 201 | `result-track:1ad86e9fadfaf0148ffee8c36e17c5eb4bb424db2fb4f8c4dfd4fb8f0371d21c` |
| 31 | `lemma` | [Ioo_sub_one_left_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioo-sub-one-left-eq-ioc--fd1c4baaff47735f93618e2e.md) | 204 | `result-track:fd1c4baaff47735f93618e2edeae092cbc705a77a5fd788ceea32a662b493c4b` |
| 32 | `lemma` | [Ioc_sub_one_sub_one_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioc-sub-one-sub-one-eq-ico--ebf16a65cda801a3ca112678.md) | 207 | `result-track:ebf16a65cda801a3ca112678327fc778bff679a9a4c8d5abd1cdfee99127a698` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_sub_one](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ioc-left-eq-ioc-sub-one--7dae3b79a17fbacc0098cfba.md) | 212 | `result-track:7dae3b79a17fbacc0098cfbae1d40177882bb7f0e86ff6a67c1651c57fbe034e` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_sub_one](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/insert-ico-left-eq-ico-sub-one--6ed40681ca137f10816221ac.md) | 218 | `result-track:6ed40681ca137f10816221ac89ff41d1b72ca33dcbf24c51a20f5aee3d33443e` |
| 35 | `lemma` | [Icc_add_one_sub_one_eq_Ioo](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/icc-add-one-sub-one-eq-ioo--175708d46312eaa98ee289fd.md) | 226 | `result-track:175708d46312eaa98ee289fd98de1358c9d84be40c9d7c9812b06212612cfe96` |
| 36 | `lemma` | [Iio_add_one_eq_Iic_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/iio-add-one-eq-iic-of-not-ismax--3abdfd79c5c48594c36e9dc3.md) | 240 | `result-track:3abdfd79c5c48594c36e9dc3480a068c21d4759f6d3c6e1ecbdb9da23e31fc04` |
| 37 | `lemma` | [Iio_add_one_eq_Iic](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/iio-add-one-eq-iic--ba28fbdc0e673a0fd5d04a39.md) | 245 | `result-track:ba28fbdc0e673a0fd5d04a39b6edc54ba7754bf49d0f49c65e730e0b4f981eed` |
| 38 | `lemma` | [Iic_sub_one_eq_Iio_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/iic-sub-one-eq-iio-of-not-ismin--89791cc0ff54c4028c03e4d7.md) | 253 | `result-track:89791cc0ff54c4028c03e4d7a70096092615b84f5f59eb12b53a899aa32d2219` |
| 39 | `lemma` | [Iic_sub_one_eq_Iio](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/iic-sub-one-eq-iio--028e559246d9105526a1a694.md) | 258 | `result-track:028e559246d9105526a1a69463294da28098992ade9ed5909010e4518873f642` |
| 40 | `lemma` | [Ici_add_one_eq_Ioi_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ici-add-one-eq-ioi-of-not-ismax--80c279cc4cd0bb89408bdf0e.md) | 272 | `result-track:80c279cc4cd0bb89408bdf0e7cff793d8e67731b03d1bf75b32bd3ae9b541f9a` |
| 41 | `lemma` | [Ici_add_one_eq_Ioi](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ici-add-one-eq-ioi--b011dfa94172cd42f8bc331c.md) | 277 | `result-track:b011dfa94172cd42f8bc331cde40b868092ae812744204cd49942cf134b1eb54` |
| 42 | `lemma` | [Ioi_sub_one_eq_Ici_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioi-sub-one-eq-ici-of-not-ismin--44a634a4bd4cfa19e618695c.md) | 285 | `result-track:44a634a4bd4cfa19e618695c500d145f237f74dfedd64be7c62342d0d13c1392` |
| 43 | `lemma` | [Ioi_sub_one_eq_Ici](../../../../mathematics/Algebra/SuccPred/Variant784c3c418031b24d8bb54635af1b0f508402bd0c2bf1bc0b542254473911ae2b.lean/declarations/ioi-sub-one-eq-ici--d400ae22983c2b08af8e95e6.md) | 290 | `result-track:d400ae22983c2b08af8e95e6123e77dc8901afbf8dbdf43ccee8012de027ea59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
