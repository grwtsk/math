# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Open.Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f8aa5beeeef1ef909f1abbd57e480dea0eacee0",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f8aa5beeeef1ef909f1abbd57e480dea0eacee0`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Cover.MorphismProperty` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [OpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover--65bb9ffdd0cf5871c8461f7c.md) | 41 | `declaration-track:65bb9ffdd0cf5871c8461f7c9ca03d87d649391ea6bbf1d6160d5840562d9350` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/instance--fd336781aa3c1ed0fe744d95.md) | 48 | `declaration-track:fd336781aa3c1ed0fe744d95099e76cb5d6ea7089f441c08a2cbc3623024f1a1` |
| 3 | `def` | [affineCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinecover--f0d986ea9fa99f27f5f4b5ca.md) | 51 | `declaration-track:f0d986ea9fa99f27f5f4b5caaba09ebc7df851a681f490ecef5618759e8a8409` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/instance--7ff57fd88366a4f5e6673090.md) | 68 | `declaration-track:7ff57fd88366a4f5e6673090eb7e5a2062388d86cfbb15c2f1304640f226372c` |
| 5 | `theorem` | [OpenCover.iSup_opensRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-isup-opensrange--62f2e5cac9799244fc737ada.md) | 71 | `result-track:62f2e5cac9799244fc737ada9a8c5ebef01fc590a763f85df6eb62b1e3846f56` |
| 6 | `lemma` | [OpenCover.isOpenCover_opensRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-isopencover-opensrange--26f323b871bf8319c1bad732.md) | 76 | `result-track:26f323b871bf8319c1bad732a28d6b06127f835b02bb1fb9a2a8b2e2f441fa9d` |
| 7 | `def` | [OpenCover.finiteSubcover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-finitesubcover--823a4bed6efb9a7f2dd95283.md) | 83 | `declaration-track:823a4bed6efb9a7f2dd952831f74069bc0afb96b0f1736397e18864a0cfb9727` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/instance--cafeceef8761849ed9bab998.md) | 102 | `declaration-track:cafeceef8761849ed9bab9988ab13b3c1fcc1741d35ab871d4f4600ae5c9ec45` |
| 9 | `theorem` | [OpenCover.compactSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-compactspace--6497d7b231a6130b3a2c374b.md) | 105 | `result-track:6497d7b231a6130b3a2c374bac7415deca387ed0e8d6b4fac0ba8bb17934004b` |
| 10 | `abbrev` | [AffineOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affineopencover--9ff15bba7a15d8d70fb284f2.md) | 123 | `declaration-track:9ff15bba7a15d8d70fb284f27c8ed98992ea0597e56646a34157db5317f4cb80` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/instance--0bd57c2dedb5cfe894c8af5a.md) | 128 | `declaration-track:0bd57c2dedb5cfe894c8af5ae96feeefe13db6aed0f40f8557423828936f2e49` |
| 12 | `def` | [openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover--ee9b3f395cea9ca311f63980.md) | 133 | `declaration-track:ee9b3f395cea9ca311f639803dc1a030b7e647fdbaeba8b33830b5d046e1ea09` |
| 13 | `def` | [affineOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affineopencover--4951e4823884f771fc3f3637.md) | 140 | `declaration-track:4951e4823884f771fc3f3637386107853eee9d42dc1937754a7662adbd4c3f00` |
| 14 | `lemma` | [openCover_affineOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-affineopencover--56691bbb8ffcc1f0db7ba724.md) | 148 | `result-track:56691bbb8ffcc1f0db7ba72410b1f57eeb453b33c5238def0d5deda9c8ecd0a9` |
| 15 | `def` | [OpenCover.affineRefinement](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-affinerefinement--d6c2b5bd70098134a9a8c1da.md) | 155 | `declaration-track:d6c2b5bd70098134a9a8c1da5231d754e0a7746daa72dd1c8ebad0727fedeeb3` |
| 16 | `def` | [OpenCover.pullbackCoverAffineRefinementObjIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-pullbackcoveraffinerefinementobjiso--1481569209268251f53575d3.md) | 163 | `declaration-track:1481569209268251f53575d3f00a5e28899d9431052602582a335481c6f141ec` |
| 17 | `lemma` | [OpenCover.pullbackCoverAffineRefinementObjIso_inv_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-pullbackcoveraffinerefinementobjiso-inv-map--d9ec5ac6cda3bdfdcdcce3d9.md) | 171 | `result-track:d9ec5ac6cda3bdfdcdcce3d95c8ea32692189802dab9afc8b43e1e923345be74` |
| 18 | `lemma` | [OpenCover.pullbackCoverAffineRefinementObjIso_inv_pullbackHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-pullbackcoveraffinerefinementobjiso-inv-pullbackhom--4660dc7c8a3cedd29af8974d.md) | 185 | `result-track:4660dc7c8a3cedd29af8974dc056d3ccdc9fe4ed8349ab4b1c4211b42c9bb6b0` |
| 19 | `def` | [affineOpenCoverOfSpanRangeEqTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affineopencoverofspanrangeeqtop--73f079406219d2891a03670e.md) | 200 | `declaration-track:73f079406219d2891a03670e042ebed6b5feb281238aceb653dfa7f326669384` |
| 20 | `def` | [OpenCover.fromAffineRefinement](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-fromaffinerefinement--ee086fdff71934b4949733ee.md) | 216 | `declaration-track:ee086fdff71934b4949733eeb6b0b3e7dc9859e4fbf7430024a425d06698a2f9` |
| 21 | `lemma` | [OpenCover.ext_elem](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/opencover-ext-elem--d56857cb180cf4b559e6d701.md) | 223 | `result-track:d56857cb180cf4b559e6d701502cf4b109ed50472c907bd9f394bf2c97cb9274` |
| 22 | `lemma` | [zero_of_zero_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/zero-of-zero-cover--f7dd262b72dcfe3508cc42d5.md) | 239 | `result-track:f7dd262b72dcfe3508cc42d55f37f93e9d31e5584180e0c211f6ba8e3a3e55af` |
| 23 | `lemma` | [isNilpotent_of_isNilpotent_cover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/isnilpotent-of-isnilpotent-cover--8ab7bdc7e6eaa2f13405883e.md) | 245 | `result-track:8ab7bdc7e6eaa2f13405883e9576ed830ac4d5256ae792299c0e1062ebe43e9a` |
| 24 | `def` | [affineBasisCoverOfAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinebasiscoverofaffine--3860213dc278c539ad67e15f.md) | 262 | `declaration-track:3860213dc278c539ad67e15fd2607daf6d3ccd1c639990fcceacaae92c320825` |
| 25 | `def` | [affineBasisCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinebasiscover--ee3716575e48d8a32a1c9191.md) | 275 | `declaration-track:ee3716575e48d8a32a1c9191ec434e6b058e0b9da46d477d7513fdda1e902c66` |
| 26 | `def` | [affineBasisCoverRing](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinebasiscoverring--a57c03f8da45c4e217943bf1.md) | 279 | `declaration-track:a57c03f8da45c4e217943bf19d49a37806ef20ac9fd1285dd67aba7f713af014` |
| 27 | `theorem` | [affineBasisCover_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinebasiscover-obj--cb6944824efcc87e35429668.md) | 282 | `result-track:cb6944824efcc87e3542966808e5b26e96643485cfd200d2875d318b9efe1da2` |
| 28 | `theorem` | [affineBasisCover_map_range](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinebasiscover-map-range--565a549ab1f87dd3a712c5c2.md) | 286 | `result-track:565a549ab1f87dd3a712c5c21323c31b2ccb8da447a66bf01c41fc781544c18c` |
| 29 | `theorem` | [affineBasisCover_is_basis](../../../../../mathematics/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/declarations/affinebasiscover-is-basis--a82e83276343ff14dde7e02f.md) | 296 | `result-track:a82e83276343ff14dde7e02f0e04ac8e40fcd59d8c18de969cb42981cf93bbde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
