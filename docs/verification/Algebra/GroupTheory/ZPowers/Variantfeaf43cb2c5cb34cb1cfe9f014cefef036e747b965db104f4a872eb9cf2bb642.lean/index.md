# Verification target: GRWTSK.Algebra.GroupTheory.ZPowers.Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00f14a592266f1e3402365d3dbd6213ee2ba8a40",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00f14a592266f1e3402365d3dbd6213ee2ba8a40`.

Source path: `GRWTSK/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers--c985986ddba9856f1b5965aa.md) | 28 | `declaration-track:c985986ddba9856f1b5965aa8e0b245120c4aa43dde6f0d895b42dc079791621` |
| 2 | `theorem` | [mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/mem-zpowers--af007bb183bf964f4ed74bca.md) | 32 | `result-track:af007bb183bf964f4ed74bca826b1ae223756d101b0bc1043d9e4ef8118f8bea` |
| 3 | `theorem` | [coe_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/coe-zpowers--7a445afad8f04b748b86ea95.md) | 36 | `result-track:7a445afad8f04b748b86ea959c54025b1371626dbe98fdf3b704ea9f4f2929d9` |
| 4 | `theorem` | [zpowers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers-eq-closure--69a36c519adab26de9555ef6.md) | 40 | `result-track:69a36c519adab26de9555ef63fd075e60516592e44f7e8513117639cfac22fbc` |
| 5 | `theorem` | [range_zpowersHom](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/range-zpowershom--b04b67b3d404adb801aa3bc4.md) | 45 | `result-track:b04b67b3d404adb801aa3bc4084317e29eb5156ced7335606d561a8995565cbe` |
| 6 | `theorem` | [mem_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/mem-zpowers-iff--6ff589d077cf42d19d1d1a0b.md) | 49 | `result-track:6ff589d077cf42d19d1d1a0b8cd580f5fcd53798984681ff3e5359a04f0acbae` |
| 7 | `theorem` | [zpow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpow-mem-zpowers--fac6fc0150c7baa2e816913a.md) | 53 | `result-track:fac6fc0150c7baa2e816913ac1de9e0c77786865fdb58aa423dba710b115f1ec` |
| 8 | `theorem` | [npow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/npow-mem-zpowers--46670a7a172d252097cf7b2e.md) | 57 | `result-track:46670a7a172d252097cf7b2e733c0f537721a314f305e9c5151662f315a28109` |
| 9 | `theorem` | [forall_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/forall-zpowers--0bc6a609b857348b55b54156.md) | 61 | `result-track:0bc6a609b857348b55b541567f3831a2bcabc7c8935a8331355c0768d1621649` |
| 10 | `theorem` | [exists_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/exists-zpowers--e12dc47233609454a1157366.md) | 65 | `result-track:e12dc47233609454a1157366344ecd793e97b324ab4d40c4d36d8833a879a21a` |
| 11 | `theorem` | [forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/forall-mem-zpowers--9e4a8385302deac18a3c8a4a.md) | 69 | `result-track:9e4a8385302deac18a3c8a4ae02c9eec8a7c49e06f55d89fc410ec6ad51a53d4` |
| 12 | `theorem` | [exists_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/exists-mem-zpowers--cb5ce60e46c2404df28f5196.md) | 73 | `result-track:cb5ce60e46c2404df28f5196cce71bc4c2de3df54084504da3a2221890203ad1` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/instance--8ac4756a1605f64e2ac37d88.md) | 77 | `declaration-track:8ac4756a1605f64e2ac37d8809c3c490e61d30ccdf57afde0abb9f3d311ce6ac` |
| 14 | `def` | [zmultiples](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zmultiples--2a6814673cf89966bb1e7d27.md) | 85 | `declaration-track:2a6814673cf89966bb1e7d27070ec4c6d04013cba38c2e73be8e4f479d6e142c` |
| 15 | `theorem` | [range_zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/range-zmultipleshom--c8806c781c07c9842617fa20.md) | 90 | `result-track:c8806c781c07c9842617fa204bd531401187c7aa663d71103576c914a4438b7a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/instance--28b98761e56414b50bbef0d0.md) | 130 | `declaration-track:28b98761e56414b50bbef0d041beb88d1011f378e704f2e091c0556d8939bb08` |
| 17 | `theorem` | [int_cast_mul_mem_zmultiples](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/int-cast-mul-mem-zmultiples--a1bd2c4f217754d5b1e6bc31.md) | 138 | `result-track:a1bd2c4f217754d5b1e6bc31c834ecaf082964feb34ef6cc4a7b7e4fabc5e9ed` |
| 18 | `theorem` | [int_cast_mem_zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/int-cast-mem-zmultiples-one--974865b10569e6d368fe6bf5.md) | 143 | `result-track:974865b10569e6d368fe6bf53995e44c4b43429d80ea38861d04207a4eac1df8` |
| 19 | `lemma` | [Int.range_castAddHom](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/int-range-castaddhom--dba61067627599c589bda240.md) | 151 | `result-track:dba61067627599c589bda2408fccc3fc0e2362456c5dfa716b483df49901e42a` |
| 20 | `theorem` | [MonoidHom.map_zpowers](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/monoidhom-map-zpowers--bb5df4076bd8966b2313f952.md) | 157 | `result-track:bb5df4076bd8966b2313f952f3f9589a97d0389f569ad3c9824b358fa1fbb0a4` |
| 21 | `theorem` | [Int.mem_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/int-mem-zmultiples-iff--b350e05c3612cfc1f8451b61.md) | 163 | `result-track:b350e05c3612cfc1f8451b616dc0bf7a1b022683d664dfa93e655a09bc7647ec` |
| 22 | `theorem` | [ofMul_image_zpowers_eq_zmultiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/ofmul-image-zpowers-eq-zmultiples-ofmul--8c6c0794cb081ed13d45ec59.md) | 167 | `result-track:8c6c0794cb081ed13d45ec59007afb58d491b918bc0a1198d812d828ea887799` |
| 23 | `theorem` | [ofAdd_image_zmultiples_eq_zpowers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/ofadd-image-zmultiples-eq-zpowers-ofadd--6962f664cc761c7c6aa8fec2.md) | 180 | `result-track:6962f664cc761c7c6aa8fec26427eb70a4e304e8e4654d109ff5a30b9c1a6522` |
| 24 | `instance` | [zpowers_isCommutative](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers-iscommutative--b6de4cb2dc1cb16277d9cb18.md) | 193 | `declaration-track:b6de4cb2dc1cb16277d9cb18c39bbb239cf0bcb6ea337d02ccf4fefd002a0239` |
| 25 | `theorem` | [zpowers_le](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers-le--40fc04ac2317bd4922e89ada.md) | 201 | `result-track:40fc04ac2317bd4922e89ada711f3fe59199e040e850384fdeb315b64ed09301` |
| 26 | `theorem` | [zpowers_eq_bot](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers-eq-bot--62cb466e3e29d5ea7f7cb685.md) | 215 | `result-track:62cb466e3e29d5ea7f7cb685694f3254d31f36ab856f316d49c04f3651477911` |
| 27 | `theorem` | [zpowers_ne_bot](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers-ne-bot--64e050308054092e99d05f5c.md) | 220 | `result-track:64e050308054092e99d05f5c8c1f7a3b8138d86a7f89777184f353f4a6e137d6` |
| 28 | `theorem` | [zpowers_one_eq_bot](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/zpowers-one-eq-bot--572c1797dd04dc0267d7bf3c.md) | 226 | `result-track:572c1797dd04dc0267d7bf3c6b64e8e4e279d99c21f8f96785e0db60222bf84d` |
| 29 | `theorem` | [centralizer_closure](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/centralizer-closure--659df213135ac950712a20bc.md) | 232 | `result-track:659df213135ac950712a20bc044a71a62bbc99f8c2d37217ea5a731768746862` |
| 30 | `theorem` | [center_eq_iInf](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/center-eq-iinf--de89316c5b8c31d818426e5c.md) | 243 | `result-track:de89316c5b8c31d818426e5cc01b8e5a7b3f321ae2b501fa1a886b69fb8886ba` |
| 31 | `theorem` | [center_eq_infi'](../../../../../mathematics/Algebra/GroupTheory/ZPowers/Variantfeaf43cb2c5cb34cb1cfe9f014cefef036e747b965db104f4a872eb9cf2bb642.lean/declarations/center-eq-infi--5d4419a696717153901e6ccd.md) | 250 | `result-track:5d4419a696717153901e6ccd5abafa1982ddcd2795ea30f54a34a4846555e6a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
