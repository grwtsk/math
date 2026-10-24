# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdb9c1ad70d67f6b3713aa00810fe38e40fd7be9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdb9c1ad70d67f6b3713aa00810fe38e40fd7be9`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.TypeTags` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Representation](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/representation--27bf2418624ea9729ca2e443.md) | 52 | `declaration-track:27bf2418624ea9729ca2e443909a0b2a249ee9bf1336dc0c425d81e71369dfe9` |
| 2 | `def` | [trivial](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/trivial--7584ecfb956dd7eac83a5468.md) | 65 | `declaration-track:7584ecfb956dd7eac83a54682567e9568c6fb0b2703193a4fa197f0eadfc736a` |
| 3 | `theorem` | [trivial_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/trivial-apply--306e46da9688a4ffbde28ec4.md) | 71 | `result-track:306e46da9688a4ffbde28ec4176c28d1a3dd3bc3f409af765707af746e086cb1` |
| 4 | `class` | [IsTrivial](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/istrivial--e837f91f57f2357ddfcde10b.md) | 77 | `declaration-track:e837f91f57f2357ddfcde10b1c196cb974a7744011f401ccd4f325873de60e43` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--54af61a447a1018cfde4742e.md) | 80 | `declaration-track:54af61a447a1018cfde4742e4876b684a461ca08d78775ac9a5d338f2d6c7ab0` |
| 6 | `theorem` | [isTrivial_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/istrivial-def--f4db07bbf134087ad7285aba.md) | 83 | `result-track:f4db07bbf134087ad7285abaa6b0ee59b0fbf40202519b5c80e2b934dc91b8eb` |
| 7 | `theorem` | [isTrivial_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/istrivial-apply--2becb96f9d760ff471ae8cda.md) | 86 | `result-track:2becb96f9d760ff471ae8cdaa76e86b0e7417518dc271cbac5a3088e2f0108fe` |
| 8 | `theorem` | [inv_self_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/inv-self-apply--6317c60aee2f3277e24d7266.md) | 97 | `result-track:6317c60aee2f3277e24d7266d52b8371aedc5ca7c740818a380fc4eb56e0fc4b` |
| 9 | `theorem` | [self_inv_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/self-inv-apply--396ba679152d145782e7e102.md) | 102 | `result-track:396ba679152d145782e7e1021563db9d0c5e4cc22ef657e50d31dfc8ee4f83a5` |
| 10 | `lemma` | [apply_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/apply-bijective--1fbea33d1b26b5fcb915be3d.md) | 106 | `result-track:1fbea33d1b26b5fcb915be3dd6c3e2dec0ad30a8cb1690ae100ec472850b5363` |
| 11 | `def` | [asAlgebraHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asalgebrahom--a62f1089261728484c3cb4ca.md) | 120 | `declaration-track:a62f1089261728484c3cb4ca69a599bf7e3e9dbf05374e73a310067ed95d0cab` |
| 12 | `theorem` | [asAlgebraHom_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asalgebrahom-def--806a48d8cc6a0ffcdc07c3fb.md) | 123 | `result-track:806a48d8cc6a0ffcdc07c3fb7f8e3774a03cbe8527e775ce386cd1b422b69bcf` |
| 13 | `theorem` | [asAlgebraHom_single](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asalgebrahom-single--c0796ec18689b22d491e4da6.md) | 127 | `result-track:c0796ec18689b22d491e4da6583ac7c2111a1474d55a39e1d44fcb2b4a38869f` |
| 14 | `theorem` | [asAlgebraHom_single_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asalgebrahom-single-one--85aab1e87285e9889de7278a.md) | 131 | `result-track:85aab1e87285e9889de7278a3ce2ea4d1512afff20098e39cda96d90ec3130b7` |
| 15 | `theorem` | [asAlgebraHom_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asalgebrahom-of--28dee760213533af0e312526.md) | 133 | `result-track:28dee760213533af0e312526fcea656f351d74c358cb8b3a349db7666bbb53ec` |
| 16 | `def` | [asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asmodule--0975666c018a2f8823b2c5e1.md) | 142 | `declaration-track:0975666c018a2f8823b2c5e139601e8bfc681106e05b2c340f0d7dbf77c69fc0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--33d09cf8791e3d5201b4634c.md) | 147 | `declaration-track:33d09cf8791e3d5201b4634cc07ed5ce6df0277675adb0c28477389c890ea920` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--13756d80ebf58d42edc6c626.md) | 149 | `declaration-track:13756d80ebf58d42edc6c626b2073c6e51ee889034dd62b6b64ff8ac6b4e4b95` |
| 19 | `instance` | [instModuleAsModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instmoduleasmodule--bd4cf54ada86f15bbb011eef.md) | 155 | `declaration-track:bd4cf54ada86f15bbb011eef6af624d414234ee1b61b848c7e4c854b9e7ad4b3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--f227c331b6a7d5470810c133.md) | 158 | `declaration-track:f227c331b6a7d5470810c1335d36343ea15f50c389dc10dd75e1906a01f83f50` |
| 21 | `def` | [asModuleEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asmoduleequiv--b3bbb44686b696a8901cb915.md) | 165 | `declaration-track:b3bbb44686b696a8901cb915a0f719e16cbe4bd2ce562807eb2cf42c07e7647a` |
| 22 | `theorem` | [asModuleEquiv_map_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asmoduleequiv-map-smul--e0ee4eb4a5b4a4b1ecd0505d.md) | 169 | `result-track:e0ee4eb4a5b4a4b1ecd0505d53ae931106324d5488e10754e87185af1f2acf79` |
| 23 | `theorem` | [asModuleEquiv_symm_map_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asmoduleequiv-symm-map-smul--6089c2b21740d64edb6d631c.md) | 173 | `result-track:6089c2b21740d64edb6d631cf3215bf80d78001754177240d52f0eb1217ef5d5` |
| 24 | `theorem` | [asModuleEquiv_symm_map_rho](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asmoduleequiv-symm-map-rho--67998cf53408f51caec064ea.md) | 179 | `result-track:67998cf53408f51caec064ea25cd88894885b66efc2390ebfd68ebc62658604e` |
| 25 | `def` | [ofModule'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmodule--76b33f3142c307faf4feb25b.md) | 193 | `declaration-track:76b33f3142c307faf4feb25b093a26d7533348d10fa19c5249219978ba729d46` |
| 26 | `def` | [ofModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmodule--09694a157017096de777e210.md) | 206 | `declaration-track:09694a157017096de777e21062cd84206ce84933d4356b8a41f8bc842b028cc0` |
| 27 | `theorem` | [ofModule_asAlgebraHom_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmodule-asalgebrahom-apply-apply--2fed6527f3853a29a41018c2.md) | 231 | `result-track:2fed6527f3853a29a41018c235dee2fa308653e675a709ab29ab7417543b78b4` |
| 28 | `theorem` | [ofModule_asModule_act](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmodule-asmodule-act--665bfeb0b36260cd932bcf0b.md) | 246 | `result-track:665bfeb0b36260cd932bcf0bfd716730142e5c535bdd4abbf34b6eb770b632e0` |
| 29 | `theorem` | [smul_ofModule_asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/smul-ofmodule-asmodule--4f151c3f1748180b78228ed4.md) | 255 | `result-track:4f151c3f1748180b78228ed47f97673f28608a3b6244669d7feaca95c391c147` |
| 30 | `lemma` | [single_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/single-smul--22c59229c32deb6a23ce36f5.md) | 264 | `result-track:22c59229c32deb6a23ce36f5b835161c18fb82c47511bce611caa05df7fad993` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--c99b102444600d626cee1cac.md) | 269 | `declaration-track:c99b102444600d626cee1cacb73284d9a415a2e2083d009cc5c2f91f4c74027b` |
| 32 | `def` | [subrepresentation](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/subrepresentation--37ebdfadfeb1630a7a424c24.md) | 290 | `declaration-track:37ebdfadfeb1630a7a424c24f9664e4b3867eb91a0c03da91475de61399ead42` |
| 33 | `def` | [quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/quotient--23aab69dad3efe4e56dcb045.md) | 306 | `declaration-track:23aab69dad3efe4e56dcb045cf189022712231a20338780d04582120c18d5e6c` |
| 34 | `lemma` | [apply_eq_of_coe_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/apply-eq-of-coe-eq--8be9d9a5a71869a2c9ec1686.md) | 319 | `result-track:8be9d9a5a71869a2c9ec1686258851eb7646bbbe23362e4fdc937cd8b9eb2b9c` |
| 35 | `def` | [ofQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofquotient--b6839d9429a12f6431a9b274.md) | 330 | `declaration-track:b6839d9429a12f6431a9b274102abfa2819c17d7a4bf4211f207afed2e7689bd` |
| 36 | `lemma` | [ofQuotient_coe_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofquotient-coe-apply--e3fd91ce931834e2d67137ce.md) | 339 | `result-track:e3fd91ce931834e2d67137ce45b4ee640c670c293994567938e1d5ee7ad1c723` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--3f7bb238bbe3fcd742dca28e.md) | 350 | `declaration-track:3f7bb238bbe3fcd742dca28e628ba0bb6454a71eb5bab05aedaa724bae9b2c5e` |
| 38 | `def` | [ofMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmulaction--7202c6ca428671be68c9175c.md) | 360 | `declaration-track:7202c6ca428671be68c9175cffe8ca7aedb3c2fc02916e7a7cdde35d2d3243cf` |
| 39 | `theorem` | [ofMulAction_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmulaction-def--8db1b77f3be3fd23c993a5ab.md) | 372 | `result-track:8db1b77f3be3fd23c993a5abf0cc3e530888de2786e8285b876a6539d8110c77` |
| 40 | `theorem` | [ofMulAction_single](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmulaction-single--6a129024a57cd86b61e9659f.md) | 376 | `result-track:6a129024a57cd86b61e9659f7fe6efee8849a55c32aef09f5e4097deec8fefc7` |
| 41 | `def` | [ofDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofdistribmulaction--fcd92f1eed08b118e9a8f058.md) | 388 | `declaration-track:fcd92f1eed08b118e9a8f058a76f4a3ce9f1745ed5fad6c9b372c1dc8a3fc3eb` |
| 42 | `theorem` | [ofDistribMulAction_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofdistribmulaction-apply-apply--cb5f13fc7c06ce34b7a69b73.md) | 397 | `result-track:cb5f13fc7c06ce34b7a69b73d03f453a8b97aa5545b0a535f70fc2ad7114d61c` |
| 43 | `def` | [ofMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmuldistribmulaction--6eb8e7815b5e092ba8f5c9e2.md) | 406 | `declaration-track:6eb8e7815b5e092ba8f5c9e226bf2c30a935878d3d342a4463e44cbdf2da94cb` |
| 44 | `theorem` | [ofMulDistribMulAction_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmuldistribmulaction-apply-apply--1135cef3f6a50d829c188cdb.md) | 410 | `result-track:1135cef3f6a50d829c188cdbd58b1e680fdcbabda6fa07d2e466a46a24cc670e` |
| 45 | `theorem` | [ofMulAction_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmulaction-apply--a0bcb595d9e41b35e0756a1e.md) | 420 | `result-track:a0bcb595d9e41b35e0756a1e43228d5ef664c6b1f02e0b2f6d9dabdffdfbc688` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/instance--7439945b14e0ed6840369e07.md) | 431 | `declaration-track:7439945b14e0ed6840369e07be18924e30b2b87cdf7fbce1e313a1986513d6a3` |
| 47 | `theorem` | [ofMulAction_self_smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmulaction-self-smul-eq-mul--930e0bd3130b7bd0fa64179a.md) | 435 | `result-track:930e0bd3130b7bd0fa64179ab3329159f8a750b398c0c7d58147a17c63b3374d` |
| 48 | `def` | [ofMulActionSelfAsModuleEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/ofmulactionselfasmoduleequiv--8d614a64eb1b67329feac6d2.md) | 456 | `declaration-track:8d614a64eb1b67329feac6d2289b1cc4d0c8e5cd80d9704a8761aa5509c00803` |
| 49 | `def` | [asGroupHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asgrouphom--7f5b8a08a36f18d8ccdc7eb4.md) | 463 | `declaration-track:7f5b8a08a36f18d8ccdc7eb4a56d6e7d930745d1e4a976da939e096ecc457472` |
| 50 | `theorem` | [asGroupHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/asgrouphom-apply--e1b0ba3304f9d1302b5fae0f.md) | 466 | `result-track:e1b0ba3304f9d1302b5fae0f9af98a14b698bb1962f9421ed4e9ce660b022993` |
| 51 | `def` | [tprod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/tprod--1c2092a03c718de12e76e0be.md) | 482 | `declaration-track:1c2092a03c718de12e76e0be96bc7ad81d6ed11b3d60593b1d0466c2d030839f` |
| 52 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/tprod-apply--d8ebac36cf06946ea21fe6da.md) | 490 | `result-track:d8ebac36cf06946ea21fe6da0aee8eaec91d559f6af73c104eddeb18f195e6e0` |
| 53 | `theorem` | [smul_tprod_one_asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/smul-tprod-one-asmodule--bf173e1ed27aab27479adb91.md) | 493 | `result-track:bf173e1ed27aab27479adb91de2c5a3ce17929256625e197eaafe40c4e6bcad1` |
| 54 | `theorem` | [smul_one_tprod_asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/smul-one-tprod-asmodule--da573354b03fcc3b3ca17553.md) | 504 | `result-track:da573354b03fcc3b3ca17553f3e9c95e7762f1835b6318d65ca98be237f8f289` |
| 55 | `def` | [linHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/linhom--2406ed5a29397a2bda0b3b25.md) | 525 | `declaration-track:2406ed5a29397a2bda0b3b2582689ae07b380ee6b9c98bb1023317c50cdab93e` |
| 56 | `theorem` | [linHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/linhom-apply--c51392a3a5e9e48cba37ec2d.md) | 534 | `result-track:c51392a3a5e9e48cba37ec2d65e44250857f557291093954da8d1e71f49cc9f8` |
| 57 | `def` | [dual](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/dual--53e137d04837c19bda49851f.md) | 540 | `declaration-track:53e137d04837c19bda49851f16d9b12a50a7931cfe727b8e16161ae53be0ef8e` |
| 58 | `theorem` | [dual_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/dual-apply--f2af240b97591d1cc8d0ffe5.md) | 551 | `result-track:f2af240b97591d1cc8d0ffe549b5d5c6a929304e8d41269ec1125cac4c0ef0de` |
| 59 | `theorem` | [dualTensorHom_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5e550c77165d01bf9628bf3f294997191d20f03f29ec76c405e05465bf8f0275.lean/declarations/dualtensorhom-comm--90987322fefea5c0851389ef.md) | 560 | `result-track:90987322fefea5c0851389ef75260bd343b5e3717129db830664c1a507ed4d1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
