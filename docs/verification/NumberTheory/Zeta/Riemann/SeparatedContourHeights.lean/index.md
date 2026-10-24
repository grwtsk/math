# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SeparatedContourHeights

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c1ae3bb0688226f32cee4ec90515f373174376b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c1ae3bb0688226f32cee4ec90515f373174376b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.FiniteIntervalSeparation`](../../../../../mathematics/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [heightBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/heightband--ae4ad23d1ad86846036002bd.md) | 31 | `declaration-track:ae4ad23d1ad86846036002bd306a84d96b481b845570be3e1e39a8a4dc5e78fe` |
| 2 | `theorem` | [mem_heightBand](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/mem-heightband--6987f7c911b295be3213c3bb.md) | 35 | `result-track:6987f7c911b295be3213c3bbe0e9fdc5bab6f415846d10a640b7da068559d771` |
| 3 | `def` | [bandMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/bandmass--41b45fd29becab8f08ae300c.md) | 42 | `declaration-track:41b45fd29becab8f08ae300c36ff0e7604dff5664a99c273d86a63ed00eb4450` |
| 4 | `theorem` | [band_card_le_mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/band-card-le-mass--67fc6ffaf85be93f0454a693.md) | 44 | `result-track:67fc6ffaf85be93f0454a693ed9d01cab412862771fc48100f7d71c5e8f1656c` |
| 5 | `theorem` | [bandMass_le_heightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/bandmass-le-heightcount--f3abdece4bf8fe83318dfeca.md) | 49 | `result-track:f3abdece4bf8fe83318dfecad4e471cefd6b4ecfc5610c80e49c56bb6a8ef1c8` |
| 6 | `def` | [heightClearance](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/heightclearance--c34aeb20042653cd70c2c6af.md) | 56 | `declaration-track:c34aeb20042653cd70c2c6aff4008bf2f8141cf27ebc6f73cf83a3dc6b97f9e3` |
| 7 | `theorem` | [heightClearance_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/heightclearance-pos--f32f03ab625421841b800135.md) | 58 | `result-track:f32f03ab625421841b80013519dc2b49c11a05d2eaf6aa9dbaa5bea805d5f0b7` |
| 8 | `theorem` | [heightClearance_le_quarter](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/heightclearance-le-quarter--98ab9dba838d5561ba3253d6.md) | 61 | `result-track:98ab9dba838d5561ba3253d69b10e4b2acce74281ebee533ebf3320c953cd047` |
| 9 | `theorem` | [exists_separated_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/exists-separated-height--fbf1f5528e8862520f06333b.md) | 65 | `result-track:fbf1f5528e8862520f06333b965c89a5604004948321c9696f150b6b127582ba` |
| 10 | `def` | [separatedHeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight--e1b88d678e8ca2c6f6a3e464.md) | 89 | `declaration-track:e1b88d678e8ca2c6f6a3e4640781ed2536564e1b06cf52a4eb8a9a00fe7718d0` |
| 11 | `theorem` | [separatedHeight_endpoint_clearance](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-endpoint-clearance--675338853f7c5259f7f006e0.md) | 91 | `result-track:675338853f7c5259f7f006e0637defbaba0576ab22a93c260cc71cd79872dce3` |
| 12 | `theorem` | [separatedHeight_clearance](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-clearance--23753611ebfd3250f2797ad1.md) | 97 | `result-track:23753611ebfd3250f2797ad117272bae9d44e4adb21b8ea0316047c9ab01c087` |
| 13 | `theorem` | [separatedHeight_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-bounds--7f18c54059120174f50d784d.md) | 101 | `result-track:7f18c54059120174f50d784de45a98648ee6ee01e65a4dde529b3dda7a7806b9` |
| 14 | `theorem` | [separatedHeight_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-pos--b614f89248dfa1167c188ac5.md) | 107 | `result-track:b614f89248dfa1167c188ac5db0b1473b4cb4840b6171d777de7de40b6051560` |
| 15 | `theorem` | [separatedHeight_strictMono](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-strictmono--0540d5420bc73d7fa7bb6e0a.md) | 111 | `result-track:0540d5420bc73d7fa7bb6e0a371f49e3793f1456ee6666785af55d89576c0d3a` |
| 16 | `theorem` | [separatedHeight_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-tendsto--011b572cf1b3268f9ec78d16.md) | 116 | `result-track:011b572cf1b3268f9ec78d1692489441e474c11e8cfc4a083e54f4f4cb5448c6` |
| 17 | `theorem` | [separatedHeight_avoids](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/separatedheight-avoids--db5bee8a21ddd7831e2fff38.md) | 121 | `result-track:db5bee8a21ddd7831e2fff381e48f1d9329b15a480e76f475dd170f8fab03211` |
| 18 | `theorem` | [mem_selected_head_iff_lt](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/mem-selected-head-iff-lt--069b6f784c2d730f6923d4e0.md) | 128 | `result-track:069b6f784c2d730f6923d4e0098c4d26649b713fb3e5ac65870277947864ec82` |
| 19 | `theorem` | [horizontal_distance](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/horizontal-distance--255948a05bce9b9784e76e13.md) | 137 | `result-track:255948a05bce9b9784e76e13161788498544e9ed1ba4881dee4b7479f2f10850` |
| 20 | `theorem` | [rounded_height_clearance](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/rounded-height-clearance--945be87c969848c9b4c5090d.md) | 147 | `result-track:945be87c969848c9b4c5090d88fe49f8e3b39659c67fda46a27e716f85d91721` |
| 21 | `theorem` | [rounded_height_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/rounded-height-bounds--43e2a58589533654473cc07a.md) | 155 | `result-track:43e2a58589533654473cc07a58813b16922516a3cf493f49dce72539e9f2bbde` |
| 22 | `theorem` | [rounded_heightHead_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/rounded-heighthead-eq--01e69e324e74c0b75d56336e.md) | 164 | `result-track:01e69e324e74c0b75d56336e23249c1f4df7fa61e314a8dc01f36abc808d1097` |
| 23 | `theorem` | [heightClearance_lower_of_card_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/heightclearance-lower-of-card-bound--32c435968fcb4235caf4fb01.md) | 175 | `result-track:32c435968fcb4235caf4fb019676913f1b5fd24ced73661fe0b5fc00c126592f` |
| 24 | `theorem` | [local_principal_sum_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/declarations/local-principal-sum-bound--b320e601577b13e63f3614b7.md) | 184 | `result-track:b320e601577b13e63f3614b748d103d9ca56132bfedca8570fa5b9d552f66d66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
