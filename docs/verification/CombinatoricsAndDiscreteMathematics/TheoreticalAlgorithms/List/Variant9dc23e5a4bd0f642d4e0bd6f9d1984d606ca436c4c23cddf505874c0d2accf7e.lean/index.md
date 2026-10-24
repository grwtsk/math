# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50fefbf4d136f318585c0c797cc941ddb5261e72",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50fefbf4d136f318585c0c797cc941ddb5261e72`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [formPerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm--877eed3eb32e74486b315a11.md) | 54 | `declaration-track:877eed3eb32e74486b315a11d8b77e08fc1003eb11983206eb9e49a1d32b61c5` |
| 2 | `theorem` | [formPerm_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-nil--9d4b6b8661dce220a6ac6bf9.md) | 58 | `result-track:9d4b6b8661dce220a6ac6bf91759be3cbf43ccdbf0e8528ee1b836b3d40846d8` |
| 3 | `theorem` | [formPerm_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-singleton--4522ec4eae3cc4526f337036.md) | 62 | `result-track:4522ec4eae3cc4526f3370367bbc721c82c66a80749b9b366f8379ec67de2a9f` |
| 4 | `theorem` | [formPerm_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-cons-cons--9fb014fdf635f12313ae13f9.md) | 66 | `result-track:9fb014fdf635f12313ae13f9fd000cffdf61d30f3943809c4570802f8ceb9944` |
| 5 | `theorem` | [formPerm_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-pair--ab371aabf5a1c8c2606748e1.md) | 70 | `result-track:ab371aabf5a1c8c2606748e193b3a03d70d266f912112a58a0351bd94f4c8d2e` |
| 6 | `theorem` | [mem_or_mem_of_zipWith_swap_prod_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/mem-or-mem-of-zipwith-swap-prod-ne--480bcc0d6a8b172ed4a99d51.md) | 73 | `result-track:480bcc0d6a8b172ed4a99d51b9a39d5e2f94266b19d5b64b213c4e96f4e7d0f8` |
| 7 | `theorem` | [zipWith_swap_prod_support'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/zipwith-swap-prod-support--651988a0a82e267b45e8f92e.md) | 84 | `result-track:651988a0a82e267b45e8f92e71bf1ed80d09c207e987b204768e949563916ba5` |
| 8 | `theorem` | [zipWith_swap_prod_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/zipwith-swap-prod-support--6d6f42c336f986b360920de3.md) | 88 | `result-track:6d6f42c336f986b360920de3449a5b64e3ba3c2c7efe3917c3b46cfa7584dc60` |
| 9 | `theorem` | [support_formPerm_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/support-formperm-le--180a00f95497d3a5292c6638.md) | 94 | `result-track:180a00f95497d3a5292c66382c4158dc314270c9da38ea03b8d869783125db08` |
| 10 | `theorem` | [support_formPerm_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/support-formperm-le--0aeccc502992566595c9aa8b.md) | 98 | `result-track:0aeccc502992566595c9aa8bcaf8b5d1afd2c2a95d68dc319179a7aaa4a99dae` |
| 11 | `theorem` | [mem_of_formPerm_apply_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/mem-of-formperm-apply-ne--c7cc394ed8635c2161fa5ce2.md) | 105 | `result-track:c7cc394ed8635c2161fa5ce2b4133a28ca3783b180e752901edbf5030749f9bd` |
| 12 | `theorem` | [formPerm_apply_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-of-notmem--f6a509b08413be65cad07b29.md) | 108 | `result-track:f6a509b08413be65cad07b29c08067daad88863b4b0a3bd75f47aca8cc98a37d` |
| 13 | `theorem` | [formPerm_apply_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-mem-of-mem--fd51d93be27a2b59b7b07df0.md) | 113 | `result-track:fd51d93be27a2b59b7b07df0ea513486d315cf4ca09e2c76af92c792d9fa38b2` |
| 14 | `theorem` | [mem_of_formPerm_apply_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/mem-of-formperm-apply-mem--e30ebf0adb0615087e419322.md) | 127 | `result-track:e30ebf0adb0615087e4193220011f270945fe350fbbb5c35b3b939584724f5c9` |
| 15 | `theorem` | [formPerm_mem_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-mem-iff-mem--71e7643caa0b48ed31374da8.md) | 132 | `result-track:71e7643caa0b48ed31374da8e18df5063a3cda0cd480c6e9fe49e129870eff27` |
| 16 | `theorem` | [formPerm_cons_concat_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-cons-concat-apply-last--b9679aae5f64799c12fbb3b3.md) | 136 | `result-track:b9679aae5f64799c12fbb3b362f8dd3b05c0b816a46d5d37c3aa700a49912eda` |
| 17 | `theorem` | [formPerm_apply_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-getlast--21610d2e241c9cd875fb31fb.md) | 143 | `result-track:21610d2e241c9cd875fb31fb6920c367e4478650e7710046b1cac65db2538ab0` |
| 18 | `theorem` | [formPerm_apply_getElem_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-getelem-length--197214ffb74425c980097451.md) | 148 | `result-track:197214ffb74425c980097451e7afd048189cc9457769e66cf650fa4b13f11d23` |
| 19 | `theorem` | [formPerm_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-head--ca690fc2404f62dc742b9a3a.md) | 152 | `result-track:ca690fc2404f62dc742b9a3afb994594171d253be7d3b32e047d4bc5811b4500` |
| 20 | `theorem` | [formPerm_apply_getElem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-getelem-zero--5530acc85774af51a6894bbb.md) | 155 | `result-track:5530acc85774af51a6894bbb00f1f00cb4906ed62d1feeb4de4da625eac457be` |
| 21 | `theorem` | [formPerm_eq_head_iff_eq_getLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-eq-head-iff-eq-getlast--8ebcdc9a0e0f8a35bb2d48e9.md) | 164 | `result-track:8ebcdc9a0e0f8a35bb2d48e96c6c6de9a103d2c2e0def117fe20ee179f1464d2` |
| 22 | `theorem` | [formPerm_apply_lt_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-lt-getelem--98cd9c1b1d6268e1f827d6bd.md) | 168 | `result-track:98cd9c1b1d6268e1f827d6bd4489d5e016f8e8a67b91f6ca75f2c435cb9ad832` |
| 23 | `theorem` | [formPerm_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-getelem--ce118b107480efffdbc62d9f.md) | 184 | `result-track:ce118b107480efffdbc62d9fee3083413f7cfaf71031b6f5306ca45d6ce2e760` |
| 24 | `theorem` | [support_formPerm_of_nodup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/support-formperm-of-nodup--2936ec2bfc345ed176c0172b.md) | 198 | `result-track:2936ec2bfc345ed176c0172b73fe4727263415ec7f08cd3ddabf87223347e9dc` |
| 25 | `theorem` | [support_formPerm_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/support-formperm-of-nodup--75d60c7e724bbb610f15f544.md) | 215 | `result-track:75d60c7e724bbb610f15f5441763b908ecca5a056be7cd41b051aa67e4f53b63` |
| 26 | `theorem` | [formPerm_rotate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-rotate-one--47a3a69994149e2327162027.md) | 221 | `result-track:47a3a69994149e2327162027813c14b8818eba47e2fb9c8d7eb7b2fb7e7f8d6d` |
| 27 | `theorem` | [formPerm_rotate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-rotate--9e1b53fb886486121cf6ee22.md) | 231 | `result-track:9e1b53fb886486121cf6ee22672985af1d0d33906a65832384c2bbcfcddce6be` |
| 28 | `theorem` | [formPerm_eq_of_isRotated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-eq-of-isrotated--03ffca3af39a64cb732ed434.md) | 240 | `result-track:03ffca3af39a64cb732ed434f28bdb5e4dbfc3e989f01faf17ad3fc7704087d1` |
| 29 | `theorem` | [formPerm_append_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-append-pair--ec451b6a2b1d9943448a6bc6.md) | 245 | `result-track:ec451b6a2b1d9943448a6bc6465f33a208c87d36eabadca64a403f84407ee1d5` |
| 30 | `theorem` | [formPerm_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-reverse--944abbb5810462706edb3ab0.md) | 252 | `result-track:944abbb5810462706edb3ab0c397097537dd8704023b814e20024f9249f92dc7` |
| 31 | `theorem` | [formPerm_pow_apply_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-pow-apply-getelem--92176f0cad30b684b61d5346.md) | 258 | `result-track:92176f0cad30b684b61d5346b307f206c665271af39545269a176925b7309399` |
| 32 | `theorem` | [formPerm_pow_apply_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-pow-apply-head--1fbacb0a62c51185dd4e3051.md) | 267 | `result-track:1fbacb0a62c51185dd4e305143f32cb89663dc3be69f26549d0c4114287d6711` |
| 33 | `theorem` | [formPerm_ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-ext-iff--8cb9664e6ccfd1f93b30a44b.md) | 273 | `result-track:8cb9664e6ccfd1f93b30a44b70097eab3ef4e337955f45b5b179dc31e4466b98` |
| 34 | `theorem` | [formPerm_apply_mem_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-mem-eq-self-iff--8a80bd28a57e69558cbd0274.md) | 308 | `result-track:8a80bd28a57e69558cbd0274fc4b994fb98eec8def8a26121d5d040f6a03a803` |
| 35 | `theorem` | [formPerm_apply_mem_ne_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-apply-mem-ne-self-iff--d4cced1d84f66bf108483be4.md) | 320 | `result-track:d4cced1d84f66bf108483be431d67109f2d250fce531f642b1a716c9386bd80e` |
| 36 | `theorem` | [mem_of_formPerm_ne_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/mem-of-formperm-ne-self--c12de362f57be73c87451875.md) | 325 | `result-track:c12de362f57be73c874518750b73f07751594b6cde59d96f5a4bef8527cd1503` |
| 37 | `theorem` | [formPerm_eq_self_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-eq-self-of-notmem--31030579f3b741f29ebe0fd9.md) | 331 | `result-track:31030579f3b741f29ebe0fd9a4df10c9b6e1344f98e172b8d9d3ed808ac51f67` |
| 38 | `theorem` | [formPerm_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-eq-one-iff--855827f669eec8a9170600b2.md) | 337 | `result-track:855827f669eec8a9170600b20085260aae30eee879732034ba57c15090ea5bcd` |
| 39 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-eq-formperm-iff--ab10478e7922cdc422fd1d97.md) | 348 | `result-track:ab10478e7922cdc422fd1d97586f14e2afdf805c43aae8928ac0da17938cea7f` |
| 40 | `theorem` | [form_perm_zpow_apply_mem_imp_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/form-perm-zpow-apply-mem-imp-mem--78d59ff91f0ebaed448075e0.md) | 368 | `result-track:78d59ff91f0ebaed448075e0362a4985cb7bdd196a5fdd978969399f82a49faa` |
| 41 | `theorem` | [formPerm_pow_length_eq_one_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9dc23e5a4bd0f642d4e0bd6f9d1984d606ca436c4c23cddf505874c0d2accf7e.lean/declarations/formperm-pow-length-eq-one-of-nodup--6e83aefe74b23e42eb72df70.md) | 377 | `result-track:6e83aefe74b23e42eb72df70d90aa4f80966ec5dc1f875afc72ae0a9e3f89bce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
