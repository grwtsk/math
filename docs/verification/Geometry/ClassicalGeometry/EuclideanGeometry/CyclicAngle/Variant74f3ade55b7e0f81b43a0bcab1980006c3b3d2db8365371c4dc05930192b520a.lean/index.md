# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CyclicAngle.Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02259d9142d6f65d0c1d73989ef15cb68ffa4a74",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02259d9142d6f65d0c1d73989ef15cb68ffa4a74`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TurnCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/turncircle--1c9d87825ae8a550428648b4.md) | 58 | `declaration-track:1c9d87825ae8a550428648b451e99d41e8824674b28828c962d074eba23c0230` |
| 2 | `def` | [turnCircleEquivAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/turncircleequivangle--01d8f14b4dd49babf31ea3ce.md) | 63 | `declaration-track:01d8f14b4dd49babf31ea3ce46b0220e4f2a6e738b7ea16b77c1791e352c2cb7` |
| 3 | `theorem` | [turnCircleEquivAngle_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/turncircleequivangle-coe--7d69514885213d42246eb2cc.md) | 69 | `result-track:7d69514885213d42246eb2cc05dbff604bc71b542146393876fca3ee98a9e4bb` |
| 4 | `def` | [turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/turnstoangle--09827e9c14f6b48af80d3e93.md) | 85 | `declaration-track:09827e9c14f6b48af80d3e9346a123a2d914ee30527651c278298d1b9daa7981` |
| 5 | `def` | [toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle--3108597102b820051ee41f0b.md) | 93 | `declaration-track:3108597102b820051ee41f0b2fef971b3897487b0e87ec855cd13440f4cabc2a` |
| 6 | `def` | [radiansIco](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/radiansico--b435e1c0e4545731b807909f.md) | 98 | `declaration-track:b435e1c0e4545731b807909fc6cdcebf89e6222cebd160b3cd3abe4fd7a68bba` |
| 7 | `def` | [fromAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/fromangle--e6edb96436d49348db756b7a.md) | 112 | `declaration-track:e6edb96436d49348db756b7ae5a787ff9dca6b63f9792bea648900f989f1f5df` |
| 8 | `theorem` | [phaseAngle_mem_Ico](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/phaseangle-mem-ico--a312044c028f085974d4a9dd.md) | 118 | `result-track:a312044c028f085974d4a9ddf059139cd4e095067807ce03ae618e819f127c43` |
| 9 | `theorem` | [toAngle_toReal_eq_phaseAngle_of_le_half](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-toreal-eq-phaseangle-of-le-half--23cce3f61da4d9acfb19e252.md) | 134 | `result-track:23cce3f61da4d9acfb19e2527218cf96f4339156c48db2c7e4da36e1010b24c3` |
| 10 | `theorem` | [toAngle_toReal_eq_phaseAngle_sub_two_pi_of_half_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-toreal-eq-phaseangle-sub-two-pi-of-half-lt--bd9e7d4db4542f8b7a8e3842.md) | 156 | `result-track:bd9e7d4db4542f8b7a8e3842f432a33a0cb6b1946a8c382379be161901152ad0` |
| 11 | `theorem` | [fromAngle_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/fromangle-toangle--f02520f57937342a0a252fda.md) | 173 | `result-track:f02520f57937342a0a252fda7ed02123b1b052e8f4713edd06852f1f64dbff93` |
| 12 | `theorem` | [toAngle_fromAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-fromangle--14bbbd69e44f795dbc57986f.md) | 194 | `result-track:14bbbd69e44f795dbc57986fa4b7e80aaeeefe1893b8b8d2b83136daaa8ea193` |
| 13 | `def` | [normalizedPhaseEquivAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/normalizedphaseequivangle--670e3c089f058c4a7fc9a69f.md) | 212 | `declaration-track:670e3c089f058c4a7fc9a69f549e87b545e5734ed7582dff0edd03098916c510` |
| 14 | `def` | [normalizedPhaseEquivTurnCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/normalizedphaseequivturncircle--c4693e05687744452b3e5c2e.md) | 224 | `declaration-track:c4693e05687744452b3e5c2ee8768ef2940c3c9f6b04bcc9c1478738401f9c68` |
| 15 | `theorem` | [normalizedPhaseEquivTurnCircle_symm_apply_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/normalizedphaseequivturncircle-symm-apply-apply--fb9b350470af43a1e50504e5.md) | 228 | `result-track:fb9b350470af43a1e50504e5e25ed0eb3cdcefc1f37852cda02a77753f52f265` |
| 16 | `theorem` | [normalizedPhaseEquivTurnCircle_apply_symm_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/normalizedphaseequivturncircle-apply-symm-apply--a37f44e27e527e12ee3fe384.md) | 235 | `result-track:a37f44e27e527e12ee3fe3840dab18c6d1355f65d8997c52de51527f6287af3b` |
| 17 | `theorem` | [toAngle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-zero--afd1391eed1e1db0a119cf8a.md) | 242 | `result-track:afd1391eed1e1db0a119cf8a778c8020884b0246d442b31a5e8fbbcff043a0fb` |
| 18 | `theorem` | [toAngle_quarter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-quarter--7fa647390f65e6a6168e3246.md) | 246 | `result-track:7fa647390f65e6a6168e324616fcc36ce63595bc03ed6414e89cf65c7eba62f1` |
| 19 | `theorem` | [toAngle_half](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-half--6f72ce7e7ddb1b86a9373dcb.md) | 254 | `result-track:6f72ce7e7ddb1b86a9373dcbee8789caef8c3e1a12e44073ade23acb15ca48b1` |
| 20 | `theorem` | [toAngle_threeQuarters](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/toangle-threequarters--102d45bf924c1622e7722aad.md) | 262 | `result-track:102d45bf924c1622e7722aad0a2cb7977dc1b4915ac8400264e8cb16bc5eba1b` |
| 21 | `theorem` | [fromAngle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/fromangle-zero--986165c53f5de407236d5ac2.md) | 270 | `result-track:986165c53f5de407236d5ac20d814a2ca4d69e94197c545c76ad9641df58cd5f` |
| 22 | `theorem` | [fromAngle_piDivTwo](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/fromangle-pidivtwo--26e2c9e8fc247b8f6190029a.md) | 275 | `result-track:26e2c9e8fc247b8f6190029a1977aacf4111418f4b2343b7d42d78eeedbe1d4e` |
| 23 | `theorem` | [fromAngle_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/fromangle-pi--0f71cad42d316502b602477c.md) | 281 | `result-track:0f71cad42d316502b602477c1e2a711e4077cdb13f4709c9542be3c072008d1a` |
| 24 | `theorem` | [fromAngle_threePiDivTwo](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/fromangle-threepidivtwo--9b2ffb3b534f0f3522880b03.md) | 287 | `result-track:9b2ffb3b534f0f3522880b038ec0970cf019c8f54fee29dee8736fedf95acf68` |
| 25 | `def` | [lightness](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/lightness--d3ccad3645a368038c633b84.md) | 297 | `declaration-track:d3ccad3645a368038c633b848b29ef0a4872e7c7dc212b91ef5b52ccf7d7cf4f` |
| 26 | `def` | [opacityBase](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/opacitybase--0b2774f2fba95c97dcc62efb.md) | 302 | `declaration-track:0b2774f2fba95c97dcc62efba3b7c5ca020e865c4ead996821788e03bd389f58` |
| 27 | `def` | [greenShift](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/greenshift--5eaba7550b08de7ac5d6e2a2.md) | 307 | `declaration-track:5eaba7550b08de7ac5d6e2a2f56af2fe9d6304d77ce797afd2788518e3bf1b9e` |
| 28 | `def` | [opacity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/opacity--0814d470e94e495eae7d3491.md) | 312 | `declaration-track:0814d470e94e495eae7d3491063cedd9ec7351b7655ab4d2197cde1a063957ce` |
| 29 | `theorem` | [lightness_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/lightness-turnstoangle--f54948d4c5e4121330e21b69.md) | 317 | `result-track:f54948d4c5e4121330e21b69899b57164b0785e55e0a94c2eefec636ca84f3d9` |
| 30 | `theorem` | [opacityBase_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/opacitybase-turnstoangle--c32d828cc9a7be50bee834d4.md) | 325 | `result-track:c32d828cc9a7be50bee834d4585672f161494cbd3dc6f5d093c4c939faa500d4` |
| 31 | `theorem` | [greenShift_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/greenshift-turnstoangle--680d08e218235fa47129127e.md) | 332 | `result-track:680d08e218235fa47129127efd6808c39a50991a92032ad81bb7bb98054cb80f` |
| 32 | `theorem` | [opacity_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/opacity-turnstoangle--15896b5dc0f12fe8bcdf00b9.md) | 338 | `result-track:15896b5dc0f12fe8bcdf00b972627a8b40031bb7445ada152cba11dff87e8108` |
| 33 | `theorem` | [lightness_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/lightness-toangle--a0da10faaa2e1eaa31ece222.md) | 344 | `result-track:a0da10faaa2e1eaa31ece22276aeaae24a0cf054e50d1cb449ebd3096bb54e9f` |
| 34 | `theorem` | [opacityBase_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/opacitybase-toangle--3fd498eefa124665e0188d8d.md) | 350 | `result-track:3fd498eefa124665e0188d8d525d74cd231f007b5a30c14827424a40299e01af` |
| 35 | `theorem` | [greenShift_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/greenshift-toangle--5b3639f2036b408b54a96478.md) | 355 | `result-track:5b3639f2036b408b54a96478b6cd0fa755851b37fc8ef5e931a759a0270e1b82` |
| 36 | `theorem` | [opacity_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/opacity-toangle--3aba6606363f0b7ac948edf0.md) | 360 | `result-track:3aba6606363f0b7ac948edf06079c4d06e2677df03c12a53af5e11eef61702b5` |
| 37 | `def` | [ProvesEllipticUniformization](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/provesellipticuniformization--07fca7e47b867837cfff18a4.md) | 368 | `declaration-track:07fca7e47b867837cfff18a49ac7759870292ca38747f5381beda2b785ddbbf1` |
| 38 | `theorem` | [cyclicAngle_has_no_elliptic_uniformization_authority](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant74f3ade55b7e0f81b43a0bcab1980006c3b3d2db8365371c4dc05930192b520a.lean/declarations/cyclicangle-has-no-elliptic-uniformization-authority--29d4bdaba17ebe4804a1afa9.md) | 371 | `result-track:29d4bdaba17ebe4804a1afa9bbf49179b315fcaea74495aa2669ec1029490aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
