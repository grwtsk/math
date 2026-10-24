# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38f935dcf27ce241ecefb40f4385e2eefeac322b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38f935dcf27ce241ecefb40f4385e2eefeac322b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectivizationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/projectivizationsetoid--51a1382f8d40b5202d75159c.md) | 47 | `declaration-track:51a1382f8d40b5202d75159cde7f7a08c5bbe2a61d718396c2e436026b7c58b8` |
| 2 | `def` | [Projectivization](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/projectivization--31cffaddeb2715deec2ecddf.md) | 53 | `declaration-track:31cffaddeb2715deec2ecddffba24529cd6744e660927e789d6851ad69094827` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk--72e5cdc179d5fa0c70e4ffc4.md) | 63 | `declaration-track:72e5cdc179d5fa0c70e4ffc4cd55e21a69a43b88ef298ce9b248f85700b3f076` |
| 4 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk--66d261fd44c686472a7b82fb.md) | 68 | `declaration-track:66d261fd44c686472a7b82fb9e6a15dfb802363a9ca737a3f0c0669ef76d79f8` |
| 5 | `theorem` | [mk'_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk-eq-mk--ca6b2ed17144276b01a30c35.md) | 73 | `result-track:ca6b2ed17144276b01a30c35ba8262a61c6c561b85459c80e705959715f31a63` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/instance--77abb9868e4d2bc912ad90fe.md) | 76 | `declaration-track:77abb9868e4d2bc912ad90fecd7af36067db1d39c603a6caff19c76f1fb0d2c7` |
| 7 | `def` | [rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/rep--47bfca9774049f37168fb4df.md) | 83 | `declaration-track:47bfca9774049f37168fb4dffafce2da4d7a1cc584768ea86044404ce8995669` |
| 8 | `theorem` | [rep_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/rep-nonzero--bbb659f1170eeef01f0cd73c.md) | 87 | `result-track:bbb659f1170eeef01f0cd73ca69c5d4d8c84b2a6911d15d995c8116fb6233d03` |
| 9 | `theorem` | [mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk-rep--dde7a87d1e68a87742cfb2bd.md) | 92 | `result-track:dde7a87d1e68a87742cfb2bde42b27605be5adf34c091bf2657469d68285f86e` |
| 10 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/submodule--fb890e63f4d21a7e722f8de3.md) | 98 | `declaration-track:fb890e63f4d21a7e722f8de3be853f452515df98de46af6542115489bd3df7c2` |
| 11 | `theorem` | [mk_eq_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk-eq-mk-iff--0d839589d2add6f06d0b5642.md) | 106 | `result-track:0d839589d2add6f06d0b5642ba26ccd9f64bae1eb910c5beecf1001e63ed174b` |
| 12 | `theorem` | [mk_eq_mk_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk-eq-mk-iff--813c01b92cae082b7bf0c9ee.md) | 113 | `result-track:813c01b92cae082b7bf0c9eee3f98a8517bcc18c3452f90978451715e94e444a` |
| 13 | `theorem` | [exists_smul_eq_mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/exists-smul-eq-mk-rep--ea2a92c79f7fc587b12aa33e.md) | 124 | `result-track:ea2a92c79f7fc587b12aa33e1de80ae0ebab84514d31991aa0b8603402329b19` |
| 14 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/ind--cc984b35072a21dcc175675c.md) | 133 | `result-track:cc984b35072a21dcc175675c6c289e069497fbed896d238afd95743ccc0a9ac5` |
| 15 | `theorem` | [submodule_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/submodule-mk--90a95999d0763fdfbebe146a.md) | 138 | `result-track:90a95999d0763fdfbebe146ae14f3134060302a36aad93f526b48fc7119d4bd5` |
| 16 | `theorem` | [submodule_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/submodule-eq--7e111b4a01d29da7fef257ae.md) | 142 | `result-track:7e111b4a01d29da7fef257ae958962ba51fc0f1557aaecb20904c24c7967b45c` |
| 17 | `theorem` | [finrank_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/finrank-submodule--15ce3b0bea05cc2ee2a6620f.md) | 146 | `result-track:15ce3b0bea05cc2ee2a6620fa144657c22cb38c4805623b64dda35550b5b85af` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/instance--dc195f16e1b7dd92611ebdbe.md) | 151 | `declaration-track:dc195f16e1b7dd92611ebdbe8fafed56b366be71ad16aad47ce700ba36a3c937` |
| 19 | `theorem` | [submodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/submodule-injective--a6d283fd7e6683c21f499b97.md) | 156 | `result-track:a6d283fd7e6683c21f499b972e2cfe4deeeaa5ae48d167e3c10177e118b6f341` |
| 20 | `def` | [equivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/equivsubmodule--5f61cd033d1024f663266f47.md) | 168 | `declaration-track:5f61cd033d1024f663266f475d57836c18f8bd2a72664c7e136d9e3ce4b7828e` |
| 21 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk--370fa2cb6660b9269f8e00cf.md) | 182 | `declaration-track:370fa2cb6660b9269f8e00cfb7830eaedc2d7d15d937c129528b0d239292962a` |
| 22 | `theorem` | [submodule_mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/submodule-mk--eee1481447481e26dd189d78.md) | 187 | `result-track:eee1481447481e26dd189d78a341fcf09e53167b3878920fcc9b1a98720e99cd` |
| 23 | `theorem` | [mk''_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/mk-submodule--823655b89eb4287f5ce1f1d5.md) | 192 | `result-track:823655b89eb4287f5ce1f1d5dbe2f5ae2d362ba090e243b816a89dd4827c2060` |
| 24 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/map--b1302afe52acbcdc3cfc3386.md) | 201 | `declaration-track:b1302afe52acbcdc3cfc33860ecb26dba8558b741e0f2279f4483aa71210fb44` |
| 25 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/map-mk--f14209252eaf7e47009261cb.md) | 210 | `result-track:f14209252eaf7e47009261cb3d6519e1972d4b007eeb490d3298029acae8548d` |
| 26 | `theorem` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/map-injective--19477a3ebde35e47279c0424.md) | 216 | `result-track:19477a3ebde35e47279c04249e906c05e61b5fcd11c8f21c4bb4f029e6685c91` |
| 27 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/map-id--b431254fd3ecfa749c2abeda.md) | 226 | `result-track:b431254fd3ecfa749c2abedab1c491ec698188166c6831f6b91f22551535b25d` |
| 28 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant08ede3ee33489be9f2d23724407bd5a1037c394f3868adb866505ae68c11d114.lean/declarations/map-comp--30d2c53addfb0d1baced6255.md) | 232 | `result-track:30d2c53addfb0d1baced6255fe554d111a9f460114a54c0ca5417ce20364908a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
