# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fin.Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c109e5c7d8409792940ee655dcf237289833d90a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c109e5c7d8409792940ee655dcf237289833d90a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Fin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-range--0bf8e6caa9316bbe101e3d9a.md) | 36 | `result-track:0bf8e6caa9316bbe101e3d9aa9d1285b4893dbb6664a7b95aebb04ee6259e918` |
| 2 | `theorem` | [prod_univ_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-def--4d5c2d51d837144f27114580.md) | 47 | `result-track:4d5c2d51d837144f2711458097a24f804999f65671b3f8b941c8ce3cf78a2682` |
| 3 | `theorem` | [prod_ofFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-offn--9a0f69b803a0ab1df907c2fa.md) | 53 | `result-track:9a0f69b803a0ab1df907c2fa87f473b3dc61c0df0e19a114f27b368dbe581e18` |
| 4 | `theorem` | [prod_univ_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-zero--2d46c622587e5343593b4c8c.md) | 60 | `result-track:2d46c622587e5343593b4c8c03a8fbf3de8596e8920651af0dd3b294ea4639b9` |
| 5 | `theorem` | [prod_univ_succAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-succabove--a6193a7e04df66db2ef1266e.md) | 69 | `result-track:a6193a7e04df66db2ef1266e1a3b4de9d5b6f0fa7d45062e33285e3dca2d6833` |
| 6 | `theorem` | [prod_univ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-succ--95cb5c054d9157ca06075ca0.md) | 81 | `result-track:95cb5c054d9157ca06075ca00879866ebbbfdd99a68374af930b0484788e626f` |
| 7 | `theorem` | [prod_univ_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-castsucc--ada2bba838bc6b8a57d15a08.md) | 91 | `result-track:ada2bba838bc6b8a57d15a084903f74f253473a75f28a229d48bf93dc5b69d8a` |
| 8 | `theorem` | [prod_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-cons--ccf4a8da0d6a7e2de3d663ca.md) | 98 | `result-track:ccf4a8da0d6a7e2de3d663caa269dd41b7bbd83ce84908959e8618b0510ed06f` |
| 9 | `theorem` | [prod_univ_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-one--8673e6e51bb300bb6eb446ba.md) | 105 | `result-track:8673e6e51bb300bb6eb446ba08f2d3b3ad872a9fbe7c446c6018ca6d29d92950` |
| 10 | `theorem` | [prod_univ_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-two--93f88e5a7f00d01b26a2befd.md) | 110 | `result-track:93f88e5a7f00d01b26a2befd69a2d8c409e3be8f74d64a495c3752881556caa4` |
| 11 | `theorem` | [prod_univ_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-three--61e95cbbb29097d9728a7f25.md) | 116 | `result-track:61e95cbbb29097d9728a7f25c848229277eeecce012c4aa2d2b4e55a2576f45f` |
| 12 | `theorem` | [prod_univ_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-four--6011b8adb30b873367891e87.md) | 123 | `result-track:6011b8adb30b873367891e87a838b246224b1f3a315983c39096715b0309cfc9` |
| 13 | `theorem` | [prod_univ_five](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-five--5894f42919dc0287b30fa63e.md) | 130 | `result-track:5894f42919dc0287b30fa63e61c8bfea7871e6d8e078ee1d23f7f1dabd11546b` |
| 14 | `theorem` | [prod_univ_six](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-six--192239f7a5aa817b909093b3.md) | 138 | `result-track:192239f7a5aa817b909093b326b3a7940dd6bdd4a154d52b5bf148272fbf8090` |
| 15 | `theorem` | [prod_univ_seven](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-seven--727a271aac1721bea775784f.md) | 146 | `result-track:727a271aac1721bea775784f123ff25b76052a94e0552c77b086e18cd6d0318a` |
| 16 | `theorem` | [prod_univ_eight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-eight--979f54ba5e8c5d4fa414cbb1.md) | 154 | `result-track:979f54ba5e8c5d4fa414cbb1f522dadf00cf47f2575de0f570ce9a0ab4fc72b9` |
| 17 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/sum-pow-mul-eq-add-pow--3ef7fa672554bbfaaa7b5384.md) | 161 | `result-track:3ef7fa672554bbfaaa7b53845b8f7c40385bf4a6d68433caba94e02e3ef38140` |
| 18 | `theorem` | [prod_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-const--7ac5fb704dbcf8fc3db50469.md) | 166 | `result-track:7ac5fb704dbcf8fc3db50469dfb9160068c52fafa4c981fdfc763505c62f7054` |
| 19 | `theorem` | [sum_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/sum-const--3416c040fb0a1542b72383f0.md) | 169 | `result-track:3416c040fb0a1542b72383f03d56305ac2bd6a926419588b1c48aef4773526c7` |
| 20 | `theorem` | [prod_Ioi_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-ioi-zero--444df40d92e86a20f2fdab2b.md) | 173 | `result-track:444df40d92e86a20f2fdab2b65c3e681d424ff48cef9fe21c1239a3a85c54030` |
| 21 | `theorem` | [prod_Ioi_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-ioi-succ--2251a824cd5365592f198930.md) | 180 | `result-track:2251a824cd5365592f1989309f2dd812c5552602c8e462357bbefb81f58eae49` |
| 22 | `theorem` | [prod_congr'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-congr--f25e919593fb484f5e2feb87.md) | 187 | `result-track:f25e919593fb484f5e2feb87c3d16fb3e69ce60789b185848190c579987c47da` |
| 23 | `theorem` | [prod_univ_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-univ-add--ec48584d3286fd5ebac4d969.md) | 195 | `result-track:ec48584d3286fd5ebac4d969800808a1c59ce03a60fc90a059ccd6e9dcf59b54` |
| 24 | `theorem` | [prod_trunc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-trunc--3e8a26318434f2a322f819ae.md) | 205 | `result-track:3e8a26318434f2a322f819ae96d954a4302dfd961df061d4e83e4e171d66fddb` |
| 25 | `def` | [partialProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/partialprod--871f11c272648d24ad8ebc8e.md) | 220 | `declaration-track:871f11c272648d24ad8ebc8e91460fb59b7e4a732d04ece113a3e84299d6ffcd` |
| 26 | `theorem` | [partialProd_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/partialprod-zero--672a43f3199599649ebfda9a.md) | 226 | `result-track:672a43f3199599649ebfda9ab69b0ed29964f0ae0451951b9ffd0ca54803374c` |
| 27 | `theorem` | [partialProd_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/partialprod-succ--0a5e74ace5d6e53f7815f88b.md) | 231 | `result-track:0a5e74ace5d6e53f7815f88b524ee774af0b291b862c5a2813da0e1e34f81cbd` |
| 28 | `theorem` | [partialProd_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/partialprod-succ--78731c20b4208cc5476ea2e5.md) | 238 | `result-track:78731c20b4208cc5476ea2e5632a0387409947afe6ca39d2b6362286fd752a99` |
| 29 | `theorem` | [partialProd_left_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/partialprod-left-inv--81cd134fbbb2d90f2abde8e9.md) | 246 | `result-track:81cd134fbbb2d90f2abde8e9ed7e90473c324b981612382d0fc99405305f9f13` |
| 30 | `theorem` | [partialProd_right_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/partialprod-right-inv--8902a90a968505942f1aad3d.md) | 255 | `result-track:8902a90a968505942f1aad3dfbf3ee6c5e0028d32e4322c4c3c8512970647415` |
| 31 | `theorem` | [inv_partialProd_mul_eq_contractNth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/inv-partialprod-mul-eq-contractnth--d4239b5420f390035c55eb1d.md) | 283 | `result-track:d4239b5420f390035c55eb1d869212be3a2e88a8ef2564dda1d9bce1f196286d` |
| 32 | `def` | [finFunctionFinEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/finfunctionfinequiv--368c3069ef58aa074f0bbc37.md) | 311 | `declaration-track:368c3069ef58aa074f0bbc37531a448ebdd4beab4b0c129f31cf12c678f021e3` |
| 33 | `theorem` | [finFunctionFinEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/finfunctionfinequiv-apply--17cdd092a46a32e037c37569.md) | 347 | `result-track:17cdd092a46a32e037c37569364b1fa7d0ee00860bfc787ae13166b0bb230cb0` |
| 34 | `theorem` | [finFunctionFinEquiv_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/finfunctionfinequiv-single--241b3da5e5cbd8629131eaf0.md) | 352 | `result-track:241b3da5e5cbd8629131eaf0e31d5906de7451a97a6872e30dea3eb32ea74cb1` |
| 35 | `def` | [finPiFinEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/finpifinequiv--859c88d5e109bd959533e454.md) | 360 | `declaration-track:859c88d5e109bd959533e454770378b0b5cc427b34e267ee7f9ee29b4e0e124b` |
| 36 | `theorem` | [finPiFinEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/finpifinequiv-apply--4a8f07080b154fe38e11266f.md) | 430 | `result-track:4a8f07080b154fe38e11266ff553a4e770595aec559e34b593effb4805ceda24` |
| 37 | `theorem` | [finPiFinEquiv_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/finpifinequiv-single--ee851d00b422dccfebeeeb62.md) | 434 | `result-track:ee851d00b422dccfebeeeb620b395f781608c9af7317c8ba74f29aabb913d0bf` |
| 38 | `theorem` | [prod_take_ofFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-take-offn--3f1b90151d45291ff2a0c66b.md) | 450 | `result-track:3f1b90151d45291ff2a0c66b56df0a32b4cd425026186f87e9327eaab1929cad` |
| 39 | `theorem` | [prod_ofFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/prod-offn--8c0fd0627ca9dad436bf01d5.md) | 480 | `result-track:8c0fd0627ca9dad436bf01d52f96da9907ef4aa6ecc71ccd02f8c89ad2ac3eb4` |
| 40 | `theorem` | [alternatingProd_eq_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Variant4c39bb0788e1bf7cefdd46cf00ae07bc1d9946d0dfd708584f2952739c9fe522.lean/declarations/alternatingprod-eq-finset-prod--a924c20fa5c5dbb8805974de.md) | 491 | `result-track:a924c20fa5c5dbb8805974de79839d787c251bcf1326f8807dc2b29f0d468da8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
