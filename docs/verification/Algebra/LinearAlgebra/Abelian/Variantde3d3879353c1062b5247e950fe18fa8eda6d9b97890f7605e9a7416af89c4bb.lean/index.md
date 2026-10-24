# Verification target: GRWTSK.Algebra.LinearAlgebra.Abelian.Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58471b252e3b4f8b6ef845c5371f240f55b56ba2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58471b252e3b4f8b6ef845c5371f240f55b56ba2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LieModule.IsTrivial](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/liemodule-istrivial--0b2b072296c6be05c1818889.md) | 38 | `declaration-track:0b2b072296c6be05c18188892550928d6123ca5b7de7726619b90039b512637d` |
| 2 | `theorem` | [trivial_lie_zero](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/trivial-lie-zero--82d0cfefedb30e83bccacd30.md) | 43 | `result-track:82d0cfefedb30e83bccacd308cdf4b4871ffdd1ea12c6fe357cbd16569304d62` |
| 3 | `abbrev` | [IsLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/islieabelian--31ce8d6985c691a9c65a2556.md) | 49 | `declaration-track:31ce8d6985c691a9c65a25568d2278374e0adbe28447edd1c5ee311e957e2b24` |
| 4 | `instance` | [LieIdeal.isLieAbelian_of_trivial](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/lieideal-islieabelian-of-trivial--08014899306e9b6562ac25b1.md) | 53 | `declaration-track:08014899306e9b6562ac25b176c89ed274062b9faeeadf8e540d948567adb488` |
| 5 | `theorem` | [Function.Injective.isLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/function-injective-islieabelian--776d4198237488164fa00736.md) | 58 | `result-track:776d4198237488164fa00736c012e40995a0e60f72cf359cba90a866c0b29c01` |
| 6 | `theorem` | [Function.Surjective.isLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/function-surjective-islieabelian--73ab57f70620d8291c5745b5.md) | 68 | `result-track:73ab57f70620d8291c5745b5fee077529820c973869bfa60464c1ac7cd7cc20c` |
| 7 | `theorem` | [lie_abelian_iff_equiv_lie_abelian](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/lie-abelian-iff-equiv-lie-abelian--d93349c63e0a41be66ad59a2.md) | 77 | `result-track:d93349c63e0a41be66ad59a29d849d82df903c4ab43dbe1c14183804455539d0` |
| 8 | `theorem` | [commutative_ring_iff_abelian_lie_ring](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/commutative-ring-iff-abelian-lie-ring--ce79923baca1fb3d434bdd5d.md) | 83 | `result-track:ce79923baca1fb3d434bdd5d9f174afba2fb8bc0e3a7a4e0d9994f256e451cbb` |
| 9 | `theorem` | [LieAlgebra.isLieAbelian_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/liealgebra-islieabelian-bot--8bbe936331c9176279e8ccea.md) | 90 | `result-track:8bbe936331c9176279e8ccea4cdf3d2ff1feb7a5612e783751c035df4d248fa9` |
| 10 | `def` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/ker--56d1f027ada946d723c80f40.md) | 108 | `declaration-track:56d1f027ada946d723c80f4056f8385384ac6de74924bd6b5f9c29a3afca4c3f` |
| 11 | `theorem` | [mem_ker](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/mem-ker--ca3552d174d29d72cdb0fab3.md) | 113 | `result-track:ca3552d174d29d72cdb0fab3629653273b5311187d5d6567a5a6149a8feff44f` |
| 12 | `def` | [maxTrivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/maxtrivsubmodule--e9834ba603b29d4e694ac991.md) | 119 | `declaration-track:e9834ba603b29d4e694ac99152e7f3e5d2430695547b122a4999a5841d287fdc` |
| 13 | `theorem` | [mem_maxTrivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/mem-maxtrivsubmodule--9714d488950bc3e1c2cfc589.md) | 128 | `result-track:9714d488950bc3e1c2cfc5891ad524fb6dc7cd686ae8c9565ee51f25bfbae94c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/instance--e48e7af75f270de554f23db0.md) | 132 | `declaration-track:e48e7af75f270de554f23db07aebc6a1edbd728438616f6dc9c97e599509c030` |
| 15 | `theorem` | [ideal_oper_maxTrivSubmodule_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/ideal-oper-maxtrivsubmodule-eq-bot--7ce5e30f6e48ad79ab2b2831.md) | 135 | `result-track:7ce5e30f6e48ad79ab2b28316670253ba50842a90d3ba384d0854a1772265bfe` |
| 16 | `theorem` | [le_max_triv_iff_bracket_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/le-max-triv-iff-bracket-eq-bot--51b6b75d6d8ed2544109e01a.md) | 143 | `result-track:51b6b75d6d8ed2544109e01a8de75ae4a51be0e9ee083be5844b6e21d8856df1` |
| 17 | `theorem` | [trivial_iff_le_maximal_trivial](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/trivial-iff-le-maximal-trivial--b58ec91180110ec36c0ad942.md) | 153 | `result-track:b58ec91180110ec36c0ad9422172ad1cffbb2a29ce0776aaf7a45112142cab20` |
| 18 | `theorem` | [isTrivial_iff_max_triv_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/istrivial-iff-max-triv-eq-top--5418a7062814f853c15e3129.md) | 159 | `result-track:5418a7062814f853c15e3129dbae7d6043ab15828e92061028170c4bb29b1a2b` |
| 19 | `def` | [maxTrivHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/maxtrivhom--932336cd028d6f91b39f334d.md) | 169 | `declaration-track:932336cd028d6f91b39f334dd58c4e2e4db327e38ca218818f2912ba54bf2af3` |
| 20 | `theorem` | [coe_maxTrivHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/coe-maxtrivhom-apply--22bcd77600d5574e22193228.md) | 179 | `result-track:22bcd77600d5574e2219322874633126406b073263277a796fdfecb2071188f7` |
| 21 | `def` | [maxTrivEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/maxtrivequiv--0b96b3bf3f03e3b7029ce9c8.md) | 185 | `declaration-track:0b96b3bf3f03e3b7029ce9c8442be69f82eedc8938698901065cfc182dbd46aa` |
| 22 | `theorem` | [coe_maxTrivEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/coe-maxtrivequiv-apply--995541e0b10cbed30202ee7c.md) | 194 | `result-track:995541e0b10cbed30202ee7c291a707941e858269f866d9248adc734e00c9580` |
| 23 | `theorem` | [maxTrivEquiv_of_refl_eq_refl](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/maxtrivequiv-of-refl-eq-refl--458dcc666332b839565a9d10.md) | 200 | `result-track:458dcc666332b839565a9d1096e50f6efae5e2a5c189adb51e58d45d84941f40` |
| 24 | `theorem` | [maxTrivEquiv_of_equiv_symm_eq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/maxtrivequiv-of-equiv-symm-eq-symm--54f1f26d31b124be83cd28bb.md) | 206 | `result-track:54f1f26d31b124be83cd28bbabc7f958e20aa3d8f00ef52559bd467661146e6e` |
| 25 | `def` | [maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/maxtrivlinearmapequivliemodulehom--ea06da26632061ba3f080c98.md) | 213 | `declaration-track:ea06da26632061ba3f080c98a16f68e7cf02cc064563438bf900a3ffad697e62` |
| 26 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/coe-maxtrivlinearmapequivliemodulehom--55246cb884af3b505abc2610.md) | 227 | `result-track:55246cb884af3b505abc26109ba58767ad1fd777129a463fe2e1f6b1cd10667a` |
| 27 | `theorem` | [coe_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/coe-maxtrivlinearmapequivliemodulehom-symm--f14e65381855d67081f9042f.md) | 232 | `result-track:f14e65381855d67081f9042f2d691d78919263d1089e06c8b4930a57e20ed8ed` |
| 28 | `theorem` | [coe_linearMap_maxTrivLinearMapEquivLieModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/coe-linearmap-maxtrivlinearmapequivliemodulehom--5e7f5ea763d0f96920050a85.md) | 238 | `result-track:5e7f5ea763d0f96920050a853ef28d478ddf46415a3202b715cf67bd098a1189` |
| 29 | `theorem` | [coe_linearMap_maxTrivLinearMapEquivLieModuleHom_symm](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/coe-linearmap-maxtrivlinearmapequivliemodulehom-symm--6dec8ead26660848cb29ba91.md) | 243 | `result-track:6dec8ead26660848cb29ba91ec01581a9f72e8d04cb275f38175c1d7913bcb8d` |
| 30 | `abbrev` | [center](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/center--5c77326519efa89a21f37710.md) | 255 | `declaration-track:5c77326519efa89a21f37710b26edafebd15da3daf4a332597a1e6e04c9ee232` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/instance--38962054922371c1211eba45.md) | 259 | `declaration-track:38962054922371c1211eba45c6a7b3cfa6b648e427a27e95245ab592f017e5cf` |
| 32 | `theorem` | [ad_ker_eq_self_module_ker](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/ad-ker-eq-self-module-ker--19ae2dbfb5aa4bf5432dbcba.md) | 263 | `result-track:19ae2dbfb5aa4bf5432dbcba4d538df0a3fd62db230742e432c080dbb20cf3d9` |
| 33 | `theorem` | [self_module_ker_eq_center](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/self-module-ker-eq-center--8d1e3ee358182feec22e2841.md) | 268 | `result-track:8d1e3ee358182feec22e2841229ea4b221f8eea66132d96e95a090b8ac3531f6` |
| 34 | `theorem` | [abelian_of_le_center](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/abelian-of-le-center--550e9ec7ed13ea0ee844d9e2.md) | 273 | `result-track:550e9ec7ed13ea0ee844d9e2c50fed598829a638c9f1bff393d890f5fa2ff81b` |
| 35 | `theorem` | [isLieAbelian_iff_center_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/islieabelian-iff-center-eq-top--78c16ef9211f5c44a2706967.md) | 278 | `result-track:78c16ef9211f5c44a27069671b1b27a574d82f2671ea765fe0a998a51b124d2b` |
| 36 | `theorem` | [LieSubmodule.trivial_lie_oper_zero](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/liesubmodule-trivial-lie-oper-zero--715bbf454b663dfbc946761a.md) | 299 | `result-track:715bbf454b663dfbc946761a1d20a8f2fe996d950b1d36a5d5f4139959895623` |
| 37 | `theorem` | [LieSubmodule.lie_abelian_iff_lie_self_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Abelian/Variantde3d3879353c1062b5247e950fe18fa8eda6d9b97890f7605e9a7416af89c4bb.lean/declarations/liesubmodule-lie-abelian-iff-lie-self-eq-bot--b43760d1541cb99d0ffdd676.md) | 305 | `result-track:b43760d1541cb99d0ffdd676b908e497af140c9359cc384b608373fea4a46e94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
