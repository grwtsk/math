# Verification target: GRWTSK.Topology.GeneralTopology.Covolume.Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27d6e0d0b791b553ec941145a34af57a38708e06",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27d6e0d0b791b553ec941145a34af57a38708e06`.

Source path: `GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.UnitPartition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume--443a375bb1979ac1cd96b3fc.md) | 72 | `declaration-track:443a375bb1979ac1cd96b3fcc3629630bb406af2838b95bd0e8233e3601b3408` |
| 2 | `theorem` | [covolume_eq_measure_fundamentalDomain](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-eq-measure-fundamentaldomain--6fda0d1c32cdbd71a1eabec4.md) | 83 | `result-track:6fda0d1c32cdbd71a1eabec4d547f71941b67608260060429e475f58856adca4` |
| 3 | `theorem` | [covolume_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-ne-zero--aa77d52b537e88e87e499c69.md) | 89 | `result-track:aa77d52b537e88e87e499c698a46f152448b07b77faa7b5fb9e0b1ce77223ccb` |
| 4 | `theorem` | [covolume_pos](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-pos--5697b866d14e7f9103e4fcf1.md) | 95 | `result-track:5697b866d14e7f9103e4fcf1965ec5aec5b02a6f72ba133ada2c6016e083065e` |
| 5 | `theorem` | [covolume_comap](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-comap--f293ee23c14f19e977ff29c2.md) | 98 | `result-track:f293ee23c14f19e977ff29c29f391ab35a17e83a8e087f5adbe7e306e99ac449` |
| 6 | `theorem` | [covolume_eq_det_mul_measureReal](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-eq-det-mul-measurereal--f1e7495f20976c20d0d95f47.md) | 110 | `result-track:f1e7495f20976c20d0d95f47b71c3af087195240048ac6176e103a00ea1158dd` |
| 7 | `theorem` | [covolume_eq_det](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-eq-det--0de1494f0396dce59036e94f.md) | 123 | `result-track:0de1494f0396dce59036e94f4d48fa597c1d6a3775f90a22ce2bbcdba5cd966c` |
| 8 | `theorem` | [covolume_eq_det_inv](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/covolume-eq-det-inv--0053c5e1650fc1087366dc3d.md) | 132 | `result-track:0053c5e1650fc1087366dc3dd78d5e98f172f7224dc00266b250a8b60097dea7` |
| 9 | `theorem` | [volume_image_eq_volume_div_covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/volume-image-eq-volume-div-covolume--e131434247d4bca1f2ea12fa.md) | 141 | `result-track:e131434247d4bca1f2ea12fad745bbd0b7fca79202f971185df02611e822aa3e` |
| 10 | `theorem` | [volume_image_eq_volume_div_covolume'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/volume-image-eq-volume-div-covolume--f4bf56a470eeae6a3810b1f9.md) | 151 | `result-track:f4bf56a470eeae6a3810b1f99725ebf6a166383f58fbfc972de5c53552181ec7` |
| 11 | `theorem` | [tendsto_card_div_pow''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-div-pow--48b7a9521f095a3679457d4b.md) | 186 | `result-track:48b7a9521f095a3679457d4b31253c193b32521cb737415a30caedcfe6d5aec3` |
| 12 | `theorem` | [tendsto_card_le_div''_aux](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-le-div-aux--3e957bf14fe1f80b597b0fb3.md) | 205 | `result-track:3e957bf14fe1f80b597b0fb3d3db09b67c9790185e25f6812cdb8595eca5c031` |
| 13 | `theorem` | [tendsto_card_le_div''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-le-div--e93febba765852df56b59477.md) | 216 | `result-track:e93febba765852df56b594774a51b57eb76561fdcc670ddcf21ddecc66fa78dc` |
| 14 | `theorem` | [frontier_equivFun](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/frontier-equivfun--7dd2c2565e2d49185819c305.md) | 261 | `result-track:7dd2c2565e2d49185819c305f14654876737eb74a561ca6d5fa81994b16ced3e` |
| 15 | `theorem` | [tendsto_card_div_pow](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-div-pow--32773b8d086351aa68c51602.md) | 271 | `result-track:32773b8d086351aa68c51602f6edad65eda59f1cd101284e98a5ecb70985d505` |
| 16 | `theorem` | [tendsto_card_le_div](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-le-div--d88a8732dab1173679270484.md) | 282 | `result-track:d88a8732dab1173679270484200267c0b3970c94bfd9bd1b4877822ef13b0a7d` |
| 17 | `theorem` | [tendsto_card_div_pow'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-div-pow--f158ef0c1698ea56dfac22d0.md) | 312 | `result-track:f158ef0c1698ea56dfac22d0c76c211f3a538c9c0b9ac9bd5d81d75289e68c22` |
| 18 | `theorem` | [tendsto_card_le_div'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/declarations/tendsto-card-le-div--b0b95e1286dbb9467fe9ba00.md) | 327 | `result-track:b0b95e1286dbb9467fe9ba0010b5f0f0321cfd534e8694e837fede546ea171ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
