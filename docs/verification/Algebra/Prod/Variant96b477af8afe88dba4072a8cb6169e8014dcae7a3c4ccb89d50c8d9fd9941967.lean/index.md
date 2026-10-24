# Verification target: GRWTSK.Algebra.Prod.Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "516dc58738fe331f866fd0018bb48946e55f8482",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `516dc58738fe331f866fd0018bb48946e55f8482`.

Source path: `GRWTSK/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistrib](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instdistrib--c49229aadf1df92e79ae9278.md) | 33 | `declaration-track:c49229aadf1df92e79ae927808c983e24c56a1dadced409b849761e57fb847b4` |
| 2 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonunitalnonassocsemiring--56088aceb166989940bdda0a.md) | 38 | `declaration-track:56088aceb166989940bdda0a05b7946364df72cc6ce3a03f3fe5ca814892ef9f` |
| 3 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonunitalsemiring--1e3b9e93f97efcc02dbcbc3e.md) | 45 | `declaration-track:1e3b9e93f97efcc02dbcbc3ee9fe06b77807a2d60860d3de4480d9e085c1e022` |
| 4 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonassocsemiring--a6d3181e2be651288dcbd8b5.md) | 51 | `declaration-track:a6d3181e2be651288dcbd8b5300c5d3c676de3c5081b2c150fa7877b6594018b` |
| 5 | `instance` | [instSemiring](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instsemiring--39f649eff140f9a3ef884ebf.md) | 58 | `declaration-track:39f649eff140f9a3ef884ebf02543acb122ced9cfc77488c7c59e42626dd91f9` |
| 6 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonunitalcommsemiring--1e058a20cbb61943d961fad2.md) | 64 | `declaration-track:1e058a20cbb61943d961fad2361a6f417d2a5276eade9107e74affb25b26369c` |
| 7 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instcommsemiring--f279d97d3c105314101cb7c8.md) | 69 | `declaration-track:f279d97d3c105314101cb7c8bb87bdef84019e4cadb11ba903fdbb7777b2cf91` |
| 8 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonunitalnonassocring--0840a18ce690adb856c8b3b4.md) | 72 | `declaration-track:0840a18ce690adb856c8b3b465a1c6aa83eb79bcd1f18104c10d37a799fffd3d` |
| 9 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonunitalring--6ce3cf43a876f48eb00503c9.md) | 77 | `declaration-track:6ce3cf43a876f48eb00503c98148681c18b803522d53b25312f218af177cde59` |
| 10 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonassocring--86b02b13c28a40e46fcce6d6.md) | 81 | `declaration-track:86b02b13c28a40e46fcce6d69f8435ed8c8ed41cfd3646b3cb701dfb51a0a3f2` |
| 11 | `instance` | [instRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instring--aaf4e5681ee47f90f409c6c5.md) | 87 | `declaration-track:aaf4e5681ee47f90f409c6c57e175ace8b9681edc2ea96fd39a4a680804ea3e5` |
| 12 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instnonunitalcommring--91ec474f21c7d856798b5148.md) | 93 | `declaration-track:91ec474f21c7d856798b51480648aedda07ad61fbacfa4cf952e397e1acc4c45` |
| 13 | `instance` | [instCommRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instcommring--7097c2793478416397bc0c36.md) | 98 | `declaration-track:7097c2793478416397bc0c36927293a7b9d599ff5311e1765b02f85b77963a8d` |
| 14 | `def` | [fst](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/fst--b0eb9b6c777edc47dd3a758b.md) | 108 | `declaration-track:b0eb9b6c777edc47dd3a758b7dedbf640d4ce997301c506b5f8531a1717a9d59` |
| 15 | `def` | [snd](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/snd--fd8de2d691543296429f5139.md) | 113 | `declaration-track:fd8de2d691543296429f5139a045059f3817f4ec8105b72d5061caead83b4abe` |
| 16 | `theorem` | [coe_fst](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-fst--a24185ec88ce7c329fdf1e2c.md) | 120 | `result-track:a24185ec88ce7c329fdf1e2ccd10e72a7577e6bbbf9aaedde19aa2dbd724cf9a` |
| 17 | `theorem` | [coe_snd](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-snd--2624eea9a726c828481eded6.md) | 125 | `result-track:2624eea9a726c828481eded653e3a7ee1f67a693e79b3660a118a79ae6f01765` |
| 18 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod--f42a82132746fd1524a2915b.md) | 135 | `declaration-track:f42a82132746fd1524a2915bcb0eae7f165bce5d32d76245add78490030a9b33` |
| 19 | `theorem` | [prod_apply](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod-apply--2aa25fa3d921709e5214a580.md) | 141 | `result-track:2aa25fa3d921709e5214a580cfa1820cd4d06af8075e9dd12b5c4cc22fea5eed` |
| 20 | `theorem` | [fst_comp_prod](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/fst-comp-prod--08e0dd8b37a0a10cbc3437f3.md) | 146 | `result-track:08e0dd8b37a0a10cbc3437f304d990b72a8034728dd3198add884d0349d5235a` |
| 21 | `theorem` | [snd_comp_prod](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/snd-comp-prod--10508a253104df84ed1c2fa1.md) | 151 | `result-track:10508a253104df84ed1c2fa17accdcd7eb29be480b3a6e9d1a7b897bfd34d0b2` |
| 22 | `theorem` | [prod_unique](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod-unique--1fea08a22059b27abbee650c.md) | 155 | `result-track:1fea08a22059b27abbee650c78aa5ba6b4f086c8f66ad3c17ac25169489414eb` |
| 23 | `def` | [prodMap](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodmap--83fe3a265c650d085b2fa0fe.md) | 168 | `declaration-track:83fe3a265c650d085b2fa0fe389be379b879be467b3ace6f1eca4ce1f04dfa36` |
| 24 | `theorem` | [prodMap_def](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodmap-def--d9d6c3ab56312663b2b8ca3c.md) | 172 | `result-track:d9d6c3ab56312663b2b8ca3c37456c19efdfca85f6ba69f0cf4c65fc16ec9e46` |
| 25 | `theorem` | [coe_prodMap](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-prodmap--81a55e4da74cfca50eaa3d7f.md) | 177 | `result-track:81a55e4da74cfca50eaa3d7fdf4e0eed71b0793ce7448f5a78d666298df01775` |
| 26 | `theorem` | [prod_comp_prodMap](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod-comp-prodmap--29cca8354e74013f47b239d2.md) | 181 | `result-track:29cca8354e74013f47b239d22d48423c281ddf8efdbdf59b9739f10e5702dd32` |
| 27 | `def` | [fst](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/fst--6db6cb7dc763971d6e543dd7.md) | 195 | `declaration-track:6db6cb7dc763971d6e543dd789ce29392cf71e8f4df1b750debc9cf8e491319f` |
| 28 | `def` | [snd](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/snd--e29b2ab2ee6f0a9a77b00edf.md) | 200 | `declaration-track:e29b2ab2ee6f0a9a77b00edfd6997a446313471de4dd159696c0888c17c34472` |
| 29 | `theorem` | [coe_fst](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-fst--5028fc00be24979f2b20c00e.md) | 207 | `result-track:5028fc00be24979f2b20c00e188dbf6de2ebac40147fb6a9df557979ad0e6d99` |
| 30 | `theorem` | [coe_snd](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-snd--bbc0cda515bcfd4fcc288915.md) | 212 | `result-track:bbc0cda515bcfd4fcc288915ee5566ebbb2628719577259105cff713f9efe564` |
| 31 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod--fa6f7a2b37c5027eb319891c.md) | 222 | `declaration-track:fa6f7a2b37c5027eb319891cf589d655d9ccbcbb16bae3f5294399fa3233af11` |
| 32 | `theorem` | [prod_apply](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod-apply--58d9e57b2ed6ee36370886aa.md) | 228 | `result-track:58d9e57b2ed6ee36370886aae19640547f0cfee248b171759de3b319c583b3c9` |
| 33 | `theorem` | [fst_comp_prod](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/fst-comp-prod--4c97ec65f8c490e7c4ebad78.md) | 233 | `result-track:4c97ec65f8c490e7c4ebad786ff4f62732a3f69d4b7e55c1b2a50283751b1f56` |
| 34 | `theorem` | [snd_comp_prod](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/snd-comp-prod--5c8e0bcbd46bc0b803ddad61.md) | 238 | `result-track:5c8e0bcbd46bc0b803ddad61a6d8927835d3ea6c80b6850162a9e0008a4b092c` |
| 35 | `theorem` | [prod_unique](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod-unique--3cd11e6220c3fe14c38bf4fb.md) | 242 | `result-track:3cd11e6220c3fe14c38bf4fbf8da9ad6cfe2456c95afd9a2aa674ad93b028567` |
| 36 | `def` | [prodMap](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodmap--6ab315353ef924100acefe5f.md) | 255 | `declaration-track:6ab315353ef924100acefe5f9ace1037523f68507261afe36b04d520d18977aa` |
| 37 | `theorem` | [prodMap_def](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodmap-def--91561521e83d917a5bd842f9.md) | 259 | `result-track:91561521e83d917a5bd842f999a7da13de70916c27de390eaefd8b7103cabd04` |
| 38 | `theorem` | [coe_prodMap](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-prodmap--392f21b8c13b716301e20b2d.md) | 264 | `result-track:392f21b8c13b716301e20b2d201dce1ee2c2513c91054e468fe8451e3c4b2ad3` |
| 39 | `theorem` | [prod_comp_prodMap](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prod-comp-prodmap--f66e7e4ff6a39b607a162b51.md) | 268 | `result-track:f66e7e4ff6a39b607a162b5120db31e40f68aa19232ada213cbaf70c79bc834e` |
| 40 | `def` | [prodComm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodcomm--b1b900850c578584156f408e.md) | 282 | `declaration-track:b1b900850c578584156f408ece14a06c6cc645ea859a7a76ea45c0c8d05757df` |
| 41 | `theorem` | [coe_prodComm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-prodcomm--7d1da73dac6b4c92799b933b.md) | 287 | `result-track:7d1da73dac6b4c92799b933b55164bc3421c8ea61d9959ecf939d50c4a26134b` |
| 42 | `theorem` | [coe_prodComm_symm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/coe-prodcomm-symm--c846b84bb1319e4b7c954bad.md) | 292 | `result-track:c846b84bb1319e4b7c954badf496d204f463d95e95ed6d0f4a13fa2932051799` |
| 43 | `theorem` | [fst_comp_coe_prodComm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/fst-comp-coe-prodcomm--1dc4f8f0fa065a2599260c1f.md) | 297 | `result-track:1dc4f8f0fa065a2599260c1f29f5b27a501b0a63867513b05a898766af7893b5` |
| 44 | `theorem` | [snd_comp_coe_prodComm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/snd-comp-coe-prodcomm--0a7e80fa911586240bb77f71.md) | 303 | `result-track:0a7e80fa911586240bb77f71146c0cde79da07f3e382f4eeca14a00964770281` |
| 45 | `def` | [prodProdProdComm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodprodprodcomm--107a61f4915d898804201af2.md) | 314 | `declaration-track:107a61f4915d898804201af2514d24090b98a0de4360fd949779c05254eeb8b6` |
| 46 | `theorem` | [prodProdProdComm_symm](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodprodprodcomm-symm--207dbd8cf93725e3117c33ce.md) | 321 | `result-track:207dbd8cf93725e3117c33cee475d7cb654b525984882883f1b407d446d6593f` |
| 47 | `theorem` | [prodProdProdComm_toAddEquiv](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodprodprodcomm-toaddequiv--f1c9ea2003e947cd6a37ca93.md) | 326 | `result-track:f1c9ea2003e947cd6a37ca93511ce1c5a07369f77fdb271d54ae2674d1a0a7d5` |
| 48 | `theorem` | [prodProdProdComm_toMulEquiv](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodprodprodcomm-tomulequiv--34a8a062d19fce414ee07338.md) | 332 | `result-track:34a8a062d19fce414ee0733862a2179fefc9e1f6d5ff6ae5e0bfc7d7b52f5aa6` |
| 49 | `theorem` | [prodProdProdComm_toEquiv](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodprodprodcomm-toequiv--88f06ead6f15ed667842a7d0.md) | 338 | `result-track:88f06ead6f15ed667842a7d0631fe68126c931f7c1f4890b40a2bba7726ab8e5` |
| 50 | `def` | [prodZeroRing](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/prodzeroring--2d4dab5b9867f1eeda63b1f0.md) | 349 | `declaration-track:2d4dab5b9867f1eeda63b1f0c54eafae59f71a3c056bafd979cc2f8e8d0c675f` |
| 51 | `def` | [zeroRingProd](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/zeroringprod--d7ecf3d8e78e0529880fe990.md) | 362 | `declaration-track:d7ecf3d8e78e0529880fe99087d42a03c8c0edeaf1fa4e16ab39a76d927b2885` |
| 52 | `theorem` | [false_of_nontrivial_of_product_domain](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/false-of-nontrivial-of-product-domain--086af7d255a38d49680d1997.md) | 376 | `result-track:086af7d255a38d49680d19970d9bcfe353824057d465d917ce0f61b8ee440f9e` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instance--fe6b8352890ea17b7b80b762.md) | 389 | `declaration-track:fe6b8352890ea17b7b80b7629afb32462e05cf74c3c2d40fe80db50b67e02e3a` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instance--82358df97bf79649fddd14d7.md) | 397 | `declaration-track:82358df97bf79649fddd14d7a399f4dd3e5e06ee3214d64ab6ed4599edbbd3c7` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instance--bec0b0800a232fddbb54d768.md) | 401 | `declaration-track:bec0b0800a232fddbb54d76814660d8cca9f13ee7f6606092b7442bc76fc9dbf` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant96b477af8afe88dba4072a8cb6169e8014dcae7a3c4ccb89d50c8d9fd9941967.lean/declarations/instance--d20ac7ba9a51eef59b4693b3.md) | 406 | `declaration-track:d20ac7ba9a51eef59b4693b38759dec4c62c5cc53b1f69fd6e23454157106f56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
