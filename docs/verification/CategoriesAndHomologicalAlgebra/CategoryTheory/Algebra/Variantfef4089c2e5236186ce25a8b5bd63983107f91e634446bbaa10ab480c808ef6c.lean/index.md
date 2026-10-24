# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Algebra.Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af3810d6c357d28bf140842ecddc5620baa78a9",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af3810d6c357d28bf140842ecddc5620baa78a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra--d17ee6ce96e97987470797c0.md) | 46 | `declaration-track:d17ee6ce96e97987470797c0b06c084e19e160d578d1fdb2422c1a099ccdc53a` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/hom--88768f2b7a9c52f80a9ea52d.md) | 64 | `declaration-track:88768f2b7a9c52f80a9ea52dae0576bb4ef92af4b64984bed58d2291f87bd822` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/id--90f50041bb2f1ec582233fd4.md) | 78 | `declaration-track:90f50041bb2f1ec582233fd449fca151b8c750cd65bcf7dac5dffa3f478a8df4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/instance--a5f8c0070dbb35d9c5f0e69b.md) | 80 | `declaration-track:a5f8c0070dbb35d9c5f0e69b860c9f6771c6311f18dbfee0330cc1bd13ab2e17` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/comp--9459f7b01bebeef15e65d871.md) | 84 | `declaration-track:9459f7b01bebeef15e65d8711c759114210e377ea00aaa17f176222e5b432f39` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/instance--bde22b5802f0a19601230aa4.md) | 88 | `declaration-track:bde22b5802f0a19601230aa48e05c4876056d4a11ee3b826cd53a404b1a592b5` |
| 7 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/hom-ext--5e6e1d88d0fdb3bb5bcc8ee3.md) | 95 | `result-track:5e6e1d88d0fdb3bb5bcc8ee3403019c063801e33cd5cdfd5573b1c36d2c5a269` |
| 8 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/comp-eq-comp--62dc8fe7e223e04afdea4aea.md) | 98 | `result-track:62dc8fe7e223e04afdea4aeaa36a055b14b578739ce19953e1af68cb3bdd12d4` |
| 9 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/id-eq-id--89f0d99fe5181a3a1ec088da.md) | 103 | `result-track:89f0d99fe5181a3a1ec088dad1c831881765d210e40316e37baefb76cd8f4d2e` |
| 10 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/id-f--d7619db75fb87f88d0c5ef6a.md) | 107 | `result-track:d7619db75fb87f88d0c5ef6abbcd7815a634e47f2a4982e00eff846d27ee3d0c` |
| 11 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/comp-f--51f65d156bd890edde2aca7e.md) | 111 | `result-track:51f65d156bd890edde2aca7eca5f29ca878e4dc603a9ceff791cad7a546e6426` |
| 12 | `instance` | [eilenbergMoore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/eilenbergmoore--53ed2790a6b3df31b8c5b8c3.md) | 116 | `declaration-track:53ed2790a6b3df31b8c5b8c3197bcfc119961cc54b92c914d9493262e2f34cc7` |
| 13 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/isomk--56082569cdafab5f79dae6db.md) | 123 | `declaration-track:56082569cdafab5f79dae6dbefe94f8b21c95d9fcb14fdc61054dda462277754` |
| 14 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/forget--d26e877eab2d3e53847da3ad.md) | 138 | `declaration-track:d26e877eab2d3e53847da3ad4b98086e295b6fdd2ded12a4c1d3f8ef751bd951` |
| 15 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/free--303f581dd755ddfed4e56501.md) | 144 | `declaration-track:303f581dd755ddfed4e56501d707c799e7c84d15b77ee03003296322af41cfbb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/instance--4c230df27ce2d8451452a328.md) | 153 | `declaration-track:4c230df27ce2d8451452a328e758c2e17edc38b5fc76b512531b9e2178e72c45` |
| 17 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/adj--f2404e16f1f25b79aae1f050.md) | 161 | `declaration-track:f2404e16f1f25b79aae1f050d717059ef7f2475099d133424c65614b0ac38dd0` |
| 18 | `theorem` | [algebra_iso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra-iso-of-iso--a87224bee45448662a5bbd5b.md) | 181 | `result-track:a87224bee45448662a5bbd5b9210677da3a055ebd1bae428e98688fc3841647a` |
| 19 | `instance` | [forget_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/forget-reflects-iso--a49820f29f3b1b78af11dbc4.md) | 188 | `declaration-track:a49820f29f3b1b78af11dbc4e8d06e2d7f5e317c459dd8ba48be0c38338e27c1` |
| 20 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/forget-faithful--0ee147a62bb347e0fbda73da.md) | 192 | `declaration-track:0ee147a62bb347e0fbda73dadf194aa9170398f47609faec89dcf35b91a7666f` |
| 21 | `theorem` | [algebra_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra-epi-of-epi--17a54a613f2eea8cb9fb37bc.md) | 196 | `result-track:17a54a613f2eea8cb9fb37bc4f2964cc839b6b3e1bb20497959fa3477bb21d3e` |
| 22 | `theorem` | [algebra_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra-mono-of-mono--fdc4a310a1db60bdf69a7971.md) | 201 | `result-track:fdc4a310a1db60bdf69a797122f3012586e9dd672ccfd85f67538f2f6de29c4e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/instance--0382bc5c9fbd9c20cfc2a4b2.md) | 204 | `declaration-track:0382bc5c9fbd9c20cfc2a4b213f9fab882a250c510b5ba65ecb34a94ef2fd093` |
| 24 | `def` | [algebraFunctorOfMonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebrafunctorofmonadhom--045abf9adad0301ca5466cb2.md) | 212 | `declaration-track:045abf9adad0301ca5466cb2628a792b5a82fffe5d8ff9d423610e9c3dd7cd4c` |
| 25 | `def` | [algebraFunctorOfMonadHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebrafunctorofmonadhomid--001e0d8014f929144191130d.md) | 229 | `declaration-track:001e0d8014f929144191130dc0bc2d9e56071e2dcfad0e455a0099b0bd6a72b8` |
| 26 | `def` | [algebraFunctorOfMonadHomComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebrafunctorofmonadhomcomp--6f2f061c7a725d5f3aaf5b00.md) | 235 | `declaration-track:6f2f061c7a725d5f3aaf5b00818c28b312a6ddec724e1f4b993309af9c6ebdd6` |
| 27 | `def` | [algebraFunctorOfMonadHomEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebrafunctorofmonadhomeq--559ccf2c49bfb4d82c8c0535.md) | 245 | `declaration-track:559ccf2c49bfb4d82c8c0535d2c63d96c5ab6e789ee773b776534557b4eb2b82` |
| 28 | `def` | [algebraEquivOfIsoMonads](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebraequivofisomonads--f7ab9a1776b90504a363ee41.md) | 253 | `declaration-track:f7ab9a1776b90504a363ee41a540ba759281102c0d86b95d975d66bed5f982b1` |
| 29 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra-equiv-of-iso-monads-comp-forget--7b42b3c769f688001c42e7e1.md) | 264 | `result-track:7b42b3c769f688001c42e7e16ad4cc31d35e6915b8798b3fa2a6cc7bdf772414` |
| 30 | `structure` | [Coalgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/coalgebra--0918162d63767d249d72df18.md) | 273 | `declaration-track:0918162d63767d249d72df1819ad9094ed556c4d243c4c3933a32ef08bb07844` |
| 31 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/hom--eefc42a433a2f384f54c7ba2.md) | 298 | `declaration-track:eefc42a433a2f384f54c7ba28010478016b91e092bd71a85af3697f007fa427a` |
| 32 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/id--92280c3de821d269d27d987d.md) | 312 | `declaration-track:92280c3de821d269d27d987de2e407ad41f00e7a75eefddef9f59420f0826361` |
| 33 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/comp--f953120a6fe22ddc8286d627.md) | 315 | `declaration-track:f953120a6fe22ddc8286d627d11252eb5c4ab4aed0fe253c89befdbd94da0136` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/instance--d8053f7cca2f7186e8c2bf3b.md) | 320 | `declaration-track:d8053f7cca2f7186e8c2bf3bc60f5aebecbbc35b910020ad403047b0e1187438` |
| 35 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/hom-ext--3b92fed691fc431dca8180b0.md) | 327 | `result-track:3b92fed691fc431dca8180b0106bd2b6e5794509ef4162cc9de55a418fd66abc` |
| 36 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/comp-eq-comp--c1c4369dd107375bbf68f6dd.md) | 330 | `result-track:c1c4369dd107375bbf68f6dd89146e10f403d0a4c0ddfd98d14e4410f3d8b5c0` |
| 37 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/id-eq-id--7e71a662ffa83cfcdede9d4b.md) | 335 | `result-track:7e71a662ffa83cfcdede9d4bdc04ec651f1c13c5dcdff329bae1bee249692b35` |
| 38 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/id-f--d657c473253bab012ed7a60b.md) | 339 | `result-track:d657c473253bab012ed7a60bd4f29f482cd197b51c1aa6a13bd1147596e98f7b` |
| 39 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/comp-f--103aaff925de4091bcb5e16a.md) | 343 | `result-track:103aaff925de4091bcb5e16a4b32e661f5b135e39b1c18818a039cfe5203eef0` |
| 40 | `instance` | [eilenbergMoore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/eilenbergmoore--5a2ccf6ba2a25b8402412f58.md) | 347 | `declaration-track:5a2ccf6ba2a25b8402412f58b50afa6dec126ad6ebf7d756992984301d152e97` |
| 41 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/isomk--7ef897872105115e7a2adb18.md) | 354 | `declaration-track:7ef897872105115e7a2adb180e99eee1f438aafc4655600545a9b419c50759a9` |
| 42 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/forget--416cceabee88a4eb0b8e5aaa.md) | 370 | `declaration-track:416cceabee88a4eb0b8e5aaa912ff48212256883d60c1cebca0eb86b9d5f34a1` |
| 43 | `def` | [cofree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/cofree--0c464c0e1ad9fd898aee5fab.md) | 377 | `declaration-track:0c464c0e1ad9fd898aee5fabfa47ee32dc3f3f020d5c1615a9cdb134b15df3a9` |
| 44 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/adj--88ad89673a4be4b0ea8c41f7.md) | 392 | `declaration-track:88ad89673a4be4b0ea8c41f797bfb18924dced5e1e2d2e93b7b2cc8c4c2b7593` |
| 45 | `theorem` | [coalgebra_iso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/coalgebra-iso-of-iso--842bbd2ab52d5db9fb1a28f0.md) | 411 | `result-track:842bbd2ab52d5db9fb1a28f075752b4ac793a171668f04039643a60785ed2d2f` |
| 46 | `instance` | [forget_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/forget-reflects-iso--bcba7b9af32a933ac958ebd9.md) | 418 | `declaration-track:bcba7b9af32a933ac958ebd9880bd9e4c449d7e708fd521ea608ae6df4cc07c3` |
| 47 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/forget-faithful--23af9526384d2c780d2d8a02.md) | 422 | `declaration-track:23af9526384d2c780d2d8a027e3fffb2619e61f1f983e2c9dcb3d4f2bad342b3` |
| 48 | `theorem` | [algebra_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra-epi-of-epi--265b2dea5eb8f75d19cfd940.md) | 426 | `result-track:265b2dea5eb8f75d19cfd940733492279d8bed9e2394009a9fc8fcc0c931a9d6` |
| 49 | `theorem` | [algebra_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/algebra-mono-of-mono--c05848da5391f7a5795ae67a.md) | 431 | `result-track:c05848da5391f7a5795ae67a9bbd6c296737d5e429da28d4acb7c0215c220862` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variantfef4089c2e5236186ce25a8b5bd63983107f91e634446bbaa10ab480c808ef6c.lean/declarations/instance--ce017b8e3c213ca6f83d05b1.md) | 434 | `declaration-track:ce017b8e3c213ca6f83d05b18be4bb5f8d1c8b87c99aa2bc6b560d7cd5f4d3b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
