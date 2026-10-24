# Verification target: GRWTSK.Algebra.Basic.Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "164b38c75a3ab44187c161adcae0783dfaed43e1",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `164b38c75a3ab44187c161adcae0783dfaed43e1`.

Source path: `GRWTSK/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Sigma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Submonoid` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectSum](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/directsum--f368aeb8c51fe5495155b27b.md) | 34 | `declaration-track:f368aeb8c51fe5495155b27bb04bc5ed95d14c14fc7498b3017c73aaf992b7a5` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/instance--71c4f834532abcd46f979353.md) | 40 | `declaration-track:71c4f834532abcd46f97935358cc3dac45a67e5c376e732944708e73c2037f2e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/instance--a331de80d68c1437e8d9d3dd.md) | 43 | `declaration-track:a331de80d68c1437e8d9d3dd4b0b60b394a65b598feec4d37337a0814dbf0b93` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/instance--85c50a2a2b9cae9ed0209bfd.md) | 46 | `declaration-track:85c50a2a2b9cae9ed0209bfd214d530699ac78d8a8d7e0bb68bcc919618612a7` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/instance--d27652c1ab06c536918f151a.md) | 49 | `declaration-track:d27652c1ab06c536918f151ac9017e9efd1396b3267ccded56fde97dd11f1b60` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/instance--8206b1df8e5784604c47d5b3.md) | 67 | `declaration-track:8206b1df8e5784604c47d5b340bbd10b491cd57f9864c39b76d7ea3d64cee0b1` |
| 7 | `def` | [coeFnAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/coefnaddmonoidhom--6ad4631b48d081b721e7be12.md) | 76 | `declaration-track:6ad4631b48d081b721e7be12ae45b30a2694b295f5d2674efa9e2260b7ff4cf0` |
| 8 | `lemma` | [coeFnAddMonoidHom_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/coefnaddmonoidhom-apply--9208695f8a7eb3219d1ac875.md) | 81 | `result-track:9208695f8a7eb3219d1ac87526cf082d6ae916468c5e89f69cb975b099115bf9` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/instance--810d1f7cc68f53287573c27b.md) | 89 | `declaration-track:810d1f7cc68f53287573c27bff0b481bc7fb8f038d59bd35cf0fad0e968642c6` |
| 10 | `theorem` | [sub_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sub-apply--300341f85080320afea95a44.md) | 94 | `result-track:300341f85080320afea95a44550072a0603f50d949799d229f9837f55a44a379` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/ext--5f2bd76ca3520c8135dc6c7a.md) | 101 | `result-track:5f2bd76ca3520c8135dc6c7a0264888d7daada476cb81f95df0875b1fdcea09f` |
| 12 | `theorem` | [zero_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/zero-apply--6f1e22923050803c7cdbdbba.md) | 105 | `result-track:6f1e22923050803c7cdbdbbaa7b0700b185db8d41cabafa68b9e5856fb2be82a` |
| 13 | `theorem` | [add_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/add-apply--ba04c282ddd87360da7374b6.md) | 111 | `result-track:ba04c282ddd87360da7374b686af0eb048975acba217a8baa38831842ca52a15` |
| 14 | `def` | [mk](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/mk--4cc7a536c9726d5dee0ccd77.md) | 122 | `declaration-track:4cc7a536c9726d5dee0ccd77cb56d62699ca49c0a44fd98361027be2b98c9180` |
| 15 | `def` | [of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/of--c1f08cb40412c6ec4d9b5079.md) | 128 | `declaration-track:c1f08cb40412c6ec4d9b507941675373bff357df73f0287da758a7b2be74b98d` |
| 16 | `theorem` | [of_eq_same](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/of-eq-same--83568da8a5283457528f3f34.md) | 134 | `result-track:83568da8a5283457528f3f3448fb2b553c77cc971629ddfd3f1b1dbf27ce6be7` |
| 17 | `theorem` | [of_eq_of_ne](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/of-eq-of-ne--b003f1b87f0cdb34b6a54c9e.md) | 137 | `result-track:b003f1b87f0cdb34b6a54c9e4c19eb4150dc2942a374a56282ba706aef23a130` |
| 18 | `lemma` | [of_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/of-apply--15d0e21ef47fcd16ff3ba6ca.md) | 140 | `result-track:15d0e21ef47fcd16ff3ba6ca17d0f2906d941c1cc5936513b7b18511446e7a90` |
| 19 | `theorem` | [mk_apply_of_mem](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/mk-apply-of-mem--bf92baf54217620aa9d34364.md) | 143 | `result-track:bf92baf54217620aa9d34364efc274d2517473f194b84c18d8a45703da9462e1` |
| 20 | `theorem` | [mk_apply_of_notMem](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/mk-apply-of-notmem--b6716de03858d8460e92f02e.md) | 148 | `result-track:b6716de03858d8460e92f02e69cd4ebefd053e5cdd63d49ca4f935b826f5838a` |
| 21 | `theorem` | [support_zero](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/support-zero--d872627d8e123190bec20874.md) | 156 | `result-track:d872627d8e123190bec20874a5f4a0269266d7c18df96e9610a160c34418d7e9` |
| 22 | `theorem` | [support_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/support-of--d8b0de8998d3c4268fcdb62f.md) | 160 | `result-track:d8b0de8998d3c4268fcdb62ffa2cf98bbe56fc9121944bdeb412a9d58dac981a` |
| 23 | `theorem` | [support_of_subset](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/support-of-subset--e290d8f2030de56d0cbedb00.md) | 164 | `result-track:e290d8f2030de56d0cbedb00728fe15ff4a2ddda9506ed8c1b05c6b2d8dbe6cb` |
| 24 | `theorem` | [sum_support_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sum-support-of--7ec6890306b118e6bb05f5cc.md) | 168 | `result-track:7ec6890306b118e6bb05f5cc546588830b0742525e6b15637d72d9accfe2f4b8` |
| 25 | `theorem` | [sum_univ_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sum-univ-of--923354f2e7ddc5f55422f4ca.md) | 172 | `result-track:923354f2e7ddc5f55422f4ca83ca86b5ab27a82d0d0c61377b221d674d9224a7` |
| 26 | `theorem` | [mk_injective](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/mk-injective--c1d01512a3c8fbff370e9cca.md) | 178 | `result-track:c1d01512a3c8fbff370e9cca40efacc47f3802c9a6f299d06c989276710ce23e` |
| 27 | `theorem` | [of_injective](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/of-injective--5607c3c1da280df3ef22edac.md) | 181 | `result-track:5607c3c1da280df3ef22edacce44bc78f68da073095e54f770f978150d09d71d` |
| 28 | `theorem` | [induction_on](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/induction-on--3d2777869e7840641c49747e.md) | 185 | `result-track:3d2777869e7840641c49747e01d2f9c9984ea53f66757b8663985adb6cc8ce7a` |
| 29 | `theorem` | [addHom_ext](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/addhom-ext--3575e73f54a6cba1beb668f9.md) | 194 | `result-track:3575e73f54a6cba1beb668f9d9ad8a04d067b3d080b403e16be4eec5a993d104` |
| 30 | `theorem` | [addHom_ext'](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/addhom-ext--02afd61edb90f23b6ceaeeb1.md) | 203 | `result-track:02afd61edb90f23b6ceaeeb1b515498d96e37cde936c502c6a95ec0dd5292740` |
| 31 | `def` | [toAddMonoid](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/toaddmonoid--542204e500860e89d7599e45.md) | 218 | `declaration-track:542204e500860e89d7599e45c498943a6f98d4b2b4dad159b92f1dd344cd7e73` |
| 32 | `theorem` | [toAddMonoid_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/toaddmonoid-of--7f486169dc02f69a07a3a04e.md) | 222 | `result-track:7f486169dc02f69a07a3a04e9f3e66f4c0162d25700225e028ad97ebab449d26` |
| 33 | `theorem` | [toAddMonoid.unique](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/toaddmonoid-unique--e9921fe05379ddc6741d2977.md) | 225 | `result-track:e9921fe05379ddc6741d29773ffc6f205f897439fd9c47e317b2967be31ba4fe` |
| 34 | `lemma` | [toAddMonoid_injective](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/toaddmonoid-injective--db52fbdb9e7a0278862e8506.md) | 231 | `result-track:db52fbdb9e7a0278862e8506fccf1348cbc2699516a766146ef545316dc9118c` |
| 35 | `lemma` | [toAddMonoid_inj](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/toaddmonoid-inj--80ac71678a4e8398f2af98b8.md) | 234 | `result-track:80ac71678a4e8398f2af98b8fec843f960f34f3b9a92b1807e31c63d485120c8` |
| 36 | `def` | [fromAddMonoid](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/fromaddmonoid--f839c71d5d75318e19c95eb8.md) | 245 | `declaration-track:f839c71d5d75318e19c95eb8b8f19118d76bde4bdbaca83e50e6bb0713fb7173` |
| 37 | `theorem` | [fromAddMonoid_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/fromaddmonoid-of--faef1a558ca9505662f2cfff.md) | 249 | `result-track:faef1a558ca9505662f2cfff74b9be0f06d92a574ee9012f8aa34bb2ab0a229a` |
| 38 | `theorem` | [fromAddMonoid_of_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/fromaddmonoid-of-apply--6039be54e4d39b1660631af8.md) | 253 | `result-track:6039be54e4d39b1660631af8df7c3f0c471798bd063929ea6cc6d5dd81f1f73d` |
| 39 | `def` | [setToSet](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/settoset--676fece92493511b9e160c8a.md) | 264 | `declaration-track:676fece92493511b9e160c8a75fe81ef03c47792526f6bfe086c3807e796850d` |
| 40 | `instance` | [unique](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/unique--aee8059c49f9c72dec933046.md) | 269 | `declaration-track:aee8059c49f9c72dec933046838823d04e3078863d2892f46e949c6326bb1fc3` |
| 41 | `instance` | [uniqueOfIsEmpty](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/uniqueofisempty--e20d3f54c2a106435e0a6dc8.md) | 273 | `declaration-track:e20d3f54c2a106435e0a6dc86488ef757e6368085d3c8f48500e6656bdd7bcb2` |
| 42 | `def` | [id](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/id--e3852de4e5361c96b0743df1.md) | 277 | `declaration-track:e3852de4e5361c96b0743df17f3020c71af3501c53a915915623f57748dd1f53` |
| 43 | `def` | [equivCongrLeft](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/equivcongrleft--c36267b5a470507e60e7eddc.md) | 296 | `declaration-track:c36267b5a470507e60e7eddc1d4308c9f36feb809d68c65de972d28b4d56fb36` |
| 44 | `theorem` | [equivCongrLeft_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/equivcongrleft-apply--51fab16f7cf4b360518a9f33.md) | 300 | `result-track:51fab16f7cf4b360518a9f33aac99881fdc247c2c213b3d7609f7be5fdb17c4b` |
| 45 | `def` | [addEquivProdDirectSum](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/addequivproddirectsum--e524827038532e67488eaaae.md) | 312 | `declaration-track:e524827038532e67488eaaae8e03e094b00380c55aae1bc73452869d7503631c` |
| 46 | `def` | [sigmaCurry](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sigmacurry--82ea600be167899887f9d39a.md) | 322 | `declaration-track:82ea600be167899887f9d39aebfff1ee3b99b60d2daccdab32daadc53a59dafb` |
| 47 | `theorem` | [sigmaCurry_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sigmacurry-apply--e30da820c3121542f3182a8d.md) | 328 | `result-track:e30da820c3121542f3182a8d26b68b1aae139c79bb0b999037222a50400e1416` |
| 48 | `def` | [sigmaUncurry](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sigmauncurry--bd55daf7f13277761514973a.md) | 334 | `declaration-track:bd55daf7f13277761514973abac65c90cbdd70a18c2fab222f0276f23b43ed15` |
| 49 | `theorem` | [sigmaUncurry_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sigmauncurry-apply--331fc45e48cba94a095c153d.md) | 340 | `result-track:331fc45e48cba94a095c153dfaa286ffab8c4c64121b91b27a6e79e4d023de9c` |
| 50 | `def` | [sigmaCurryEquiv](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/sigmacurryequiv--4dc1a891067bd8c2e61f3466.md) | 345 | `declaration-track:4dc1a891067bd8c2e61f3466268a04cb3afe30c04cffdf12d72a483763aee86f` |
| 51 | `def` | [coeAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/coeaddmonoidhom--12ca8f401dd2a197fea447cc.md) | 354 | `declaration-track:12ca8f401dd2a197fea447cc462451e985284a0087601cf2d079032d5e9e7f10` |
| 52 | `theorem` | [coeAddMonoidHom_eq_dfinsuppSum](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/coeaddmonoidhom-eq-dfinsuppsum--d8c7c53ca4cecfe1006a46d7.md) | 358 | `result-track:d8c7c53ca4cecfe1006a46d74186d7828ce17fb015daf98099cea4f142bd9c34` |
| 53 | `theorem` | [coeAddMonoidHom_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/coeaddmonoidhom-of--cbbf9d8ce8521f1b66e15668.md) | 370 | `result-track:cbbf9d8ce8521f1b66e15668011a6f58fb8daab4138ca7de34c3ab08dd57727b` |
| 54 | `theorem` | [coe_of_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/coe-of-apply--c1d4efe5292f8c0f5e6e605a.md) | 375 | `result-track:c1d4efe5292f8c0f5e6e605a8068c9b8c745333841c94c42e45c5435be590816` |
| 55 | `def` | [IsInternal](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/isinternal--44996f1c9a8ef8f602c507a5.md) | 388 | `declaration-track:44996f1c9a8ef8f602c507a56333a6efa794daed7d140791e0581d12ef9ab72a` |
| 56 | `theorem` | [IsInternal.addSubmonoid_iSup_eq_top](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/isinternal-addsubmonoid-isup-eq-top--20d7fd91eaed5d54d24a15fe.md) | 392 | `result-track:20d7fd91eaed5d54d24a15fe4294db9343b1d68fba932907b3ab495a103e00d4` |
| 57 | `theorem` | [support_subset](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/support-subset--19d16cafd9718ed454bdc7b9.md) | 399 | `result-track:19d16cafd9718ed454bdc7b962becf194b536d8db3651a848e8900bf6af4bdd6` |
| 58 | `theorem` | [finite_support](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/finite-support--59381fea6e21156dd4b76e67.md) | 405 | `result-track:59381fea6e21156dd4b76e67e322aa24cbaf6dc4c2cf9b75e6cde7f401bd7347` |
| 59 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map--7e8011d36bdd1cb8aaa05912.md) | 416 | `declaration-track:7e8011d36bdd1cb8aaa05912041feb90b4d477aa6a35c1038b08ace2d055b751` |
| 60 | `lemma` | [map_of](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-of--3caad4b8b4517417bd7c0c6e.md) | 418 | `result-track:3caad4b8b4517417bd7c0c6eeb0cc93634a5542a2b1062a4afa88469f1c88fd5` |
| 61 | `lemma` | [map_apply](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-apply--20cbfcedd6e6d9ab347069ea.md) | 421 | `result-track:20cbfcedd6e6d9ab347069ea75cf074788a662e489fb24d73a65f3f3d7f18062` |
| 62 | `lemma` | [map_id](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-id--ace1ca824d884715f4d99cc4.md) | 424 | `result-track:ace1ca824d884715f4d99cc4d7f8df96383c741304fe23baf1a4d95e8dcabe7d` |
| 63 | `lemma` | [map_comp](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-comp--0d1dfb08b885d3ba1daa904e.md) | 428 | `result-track:0d1dfb08b885d3ba1daa904e92c184f3551f977206d5928b9bfbb8d8f7f847a7` |
| 64 | `lemma` | [map_injective](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-injective--cf1b3399cec2758d31c93010.md) | 433 | `result-track:cf1b3399cec2758d31c93010e4ae9bb66bd10324d466edbfaa3a90a8c7815057` |
| 65 | `lemma` | [map_surjective](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-surjective--5f86e5ff52e9167739af6d2c.md) | 436 | `result-track:5f86e5ff52e9167739af6d2c1f1df0834d8af53a76b77cc8452586f981bb8608` |
| 66 | `lemma` | [map_eq_iff](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/map-eq-iff--0bcdf4af98c8f7ca5670cc66.md) | 439 | `result-track:0bcdf4af98c8f7ca5670cc663089106d3929c17068fd8db7ecf26eb96c5205e3` |
| 67 | `def` | [DirectSum.addEquivProd](../../../../mathematics/Algebra/Basic/Variant43f23214fc9b0493adb058fcf467386e34251c30a6d3e2a69572d57090f6ae1f.lean/declarations/directsum-addequivprod--0cc6f429082648bfe38d48b2.md) | 449 | `declaration-track:0cc6f429082648bfe38d48b259fc433ce918dd9cd7a838597d3015e52d8bdc40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
