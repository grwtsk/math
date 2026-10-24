# Verification target: GRWTSK.Algebra.Localization.Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0f42fb2b767cda39bab581085ef117a8e0a895d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0f42fb2b767cda39bab581085ef117a8e0a895d`.

Source path: `GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AsSubring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.RingHom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iInf_localization_eq_bot](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/iinf-localization-eq-bot--f3943be5aecc15460cb70495.md) | 31 | `result-track:f3943be5aecc15460cb70495a2f8793eee9ba460750e7b9fe292e1d1a14dff34` |
| 2 | `theorem` | [iInf_localization_eq_bot](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/iinf-localization-eq-bot--452d132f49b68b54139d37e5.md) | 56 | `result-track:452d132f49b68b54139d37e52147993818883f808e2563f5a9d6cbbf1abce44e` |
| 3 | `abbrev` | [PiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalization--4527456a57034378e7ee668b.md) | 66 | `declaration-track:4527456a57034378e7ee668b74e3de57cb0c454e362e96b13202cd4ebfbeeb22` |
| 4 | `def` | [toPiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization--b22e2ae5079659434125ad54.md) | 70 | `declaration-track:b22e2ae5079659434125ad54d8fde4805c39078dfc8df93157e0ead82118ac97` |
| 5 | `theorem` | [toPiLocalization_injective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization-injective--8e25632def4f58bc9ec0ace3.md) | 72 | `result-track:8e25632def4f58bc9ec0ace36eb442bc0d17ddf09c58658f224ea29006eebf64` |
| 6 | `theorem` | [toPiLocalization_apply_apply](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization-apply-apply--26629aa1d4cdb992b218698b.md) | 79 | `result-track:26629aa1d4cdb992b218698bbd0b1c4e544da0a1e4ae61d34302fe1493c03378` |
| 7 | `def` | [mapPiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization--8026c46be0c28d479a39abfb.md) | 85 | `declaration-track:8026c46be0c28d479a39abfbefe99fb686f8de7628ae4608ee8c6be5f7248d6e` |
| 8 | `theorem` | [mapPiLocalization_naturality](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-naturality--49ee553a3271e420d78e3996.md) | 89 | `result-track:49ee553a3271e420d78e3996f97c06a4925305121d41c767f43d2e49774660a8` |
| 9 | `theorem` | [mapPiLocalization_id](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-id--8c5f48140eef358774f46671.md) | 98 | `result-track:8c5f48140eef358774f46671afc62f383a25d106c5a893b8f92f75f52be4c6f6` |
| 10 | `theorem` | [mapPiLocalization_comp](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-comp--b2af27bd5b0bc86a0f1060a1.md) | 101 | `result-track:b2af27bd5b0bc86a0f1060a10fb8365c1434631613a8e4bf8caa9c069c2624cf` |
| 11 | `theorem` | [mapPiLocalization_bijective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-bijective--1f7dc61114c7ba12053b6366.md) | 106 | `result-track:1f7dc61114c7ba12053b6366273e10e2443c1fcc5eedca3a375a2f31d731b2fa` |
| 12 | `theorem` | [toPiLocalization_not_surjective_of_infinite](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization-not-surjective-of-infinite--25fd7e6ea9c0b8082de48c46.md) | 120 | `result-track:25fd7e6ea9c0b8082de48c46a2adeec212d4df4f0c9a91028a780f52022861ab` |
| 13 | `theorem` | [finite_of_toPiLocalization_pi_surjective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/finite-of-topilocalization-pi-surjective--5645866055ac33e568fcd4c4.md) | 138 | `result-track:5645866055ac33e568fcd4c4c3d0080667ba6063a5579a83309930fd98cc493c` |
| 14 | `theorem` | [finite_of_toPiLocalization_surjective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/finite-of-topilocalization-surjective--bce22514f134b058cbff4616.md) | 146 | `result-track:bce22514f134b058cbff46167b79af6170300b0c4607259b34c010aabec9b222` |
| 15 | `abbrev` | [PiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalization--f56abaad0116592cbe6ecbdc.md) | 159 | `declaration-track:f56abaad0116592cbe6ecbdc03327dacfb5d9f77ed5ffaed7e3ca4a80048462b` |
| 16 | `def` | [toPiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization--c8a04715d1425808345864c9.md) | 163 | `declaration-track:c8a04715d1425808345864c9fc11d1260c20c0dbba74382c36410c7572bda001` |
| 17 | `theorem` | [toPiLocalization_injective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization-injective--afeb367a3d55f169f219b433.md) | 165 | `result-track:afeb367a3d55f169f219b433a513cf3b8fda4aff225d376be0eb72506414b04b` |
| 18 | `def` | [piLocalizationToMaximal](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalizationtomaximal--dc7091f6612d756a87f0190f.md) | 171 | `declaration-track:dc7091f6612d756a87f0190fcaf8211917599eb5046373ac15d06390d8c0cf8b` |
| 19 | `theorem` | [piLocalizationToMaximal_surjective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalizationtomaximal-surjective--17e009b421b2dc8cbb7e25f3.md) | 175 | `result-track:17e009b421b2dc8cbb7e25f306b4da46d9d2187ec8a0cd70339037e289b2e602` |
| 20 | `def` | [piLocalizationToMaximalEquiv](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalizationtomaximalequiv--cd14fb4015d508555bb7e5df.md) | 181 | `declaration-track:cd14fb4015d508555bb7e5dfa8078106b4897b608ab77ee0971784431c7924eb` |
| 21 | `theorem` | [piLocalizationToMaximal_bijective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalizationtomaximal-bijective--bb8a1dfb017a548da6f25ffa.md) | 188 | `result-track:bb8a1dfb017a548da6f25ffa262d01d7ff432b595da1b85801a8fff75f3696a0` |
| 22 | `theorem` | [piLocalizationToMaximal_comp_toPiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/pilocalizationtomaximal-comp-topilocalization--7836abad2b44136f20b6df4f.md) | 192 | `result-track:7836abad2b44136f20b6df4fb306ef1625bc0e76098b0d29696e876d4171ceb2` |
| 23 | `theorem` | [isMaximal_of_toPiLocalization_surjective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/ismaximal-of-topilocalization-surjective--3021a1920eb1eb0be496bdf1.md) | 198 | `result-track:3021a1920eb1eb0be496bdf1a7a04024a3bfbac91d340441b51d6597497a3c26` |
| 24 | `def` | [mapPiLocalization](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization--2ba4a7ae21d269fa37eb6123.md) | 215 | `declaration-track:2ba4a7ae21d269fa37eb61230b66de3b3fd47d80f191ca83555d1912f7a2231a` |
| 25 | `theorem` | [mapPiLocalization_naturality](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-naturality--8689feaa94e8d27b1fd54b98.md) | 218 | `result-track:8689feaa94e8d27b1fd54b9827bd8b5c532ded46ef6973cc8859cb77ec765e56` |
| 26 | `theorem` | [mapPiLocalization_id](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-id--16570e4dbd4b7259c54b69d6.md) | 226 | `result-track:16570e4dbd4b7259c54b69d6446faed358c02f7616adf96ce7e1952662a671f4` |
| 27 | `theorem` | [mapPiLocalization_comp](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-comp--c4e889775e91274e3b8f5160.md) | 229 | `result-track:c4e889775e91274e3b8f516041f39068ffd90946b176cbf738cc5f8ee449e5c1` |
| 28 | `theorem` | [mapPiLocalization_bijective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/mappilocalization-bijective--1f3bd01a6f43b60ccb11ba9b.md) | 233 | `result-track:1f3bd01a6f43b60ccb11ba9bba3ab16f90ed995034e1b02a73008f7ad6074945` |
| 29 | `theorem` | [toPiLocalization_not_surjective_of_infinite](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/topilocalization-not-surjective-of-infinite--fe9385edfcd2e6af478d75cb.md) | 245 | `result-track:fe9385edfcd2e6af478d75cbaf380eab8f7389da9ff78738010e9fd6d8254844` |
| 30 | `theorem` | [finite_of_toPiLocalization_pi_surjective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/finite-of-topilocalization-pi-surjective--fcad436e84d826f4eccf6e24.md) | 253 | `result-track:fcad436e84d826f4eccf6e244a1c735f2b2b7be20cde40045156bfd69e52ccd1` |
| 31 | `theorem` | [finite_of_toPiLocalization_surjective](../../../../mathematics/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/declarations/finite-of-topilocalization-surjective--1ee6c5dc8c78c89cd5a6c30f.md) | 261 | `result-track:1ee6c5dc8c78c89cd5a6c30f9c454092eb80f96742e7677983a5c52c0f8eb36b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
