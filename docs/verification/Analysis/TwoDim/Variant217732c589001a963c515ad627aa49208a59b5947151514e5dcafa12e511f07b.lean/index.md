# Verification target: GRWTSK.Analysis.TwoDim.Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a31c3f87e7716c7cadccdd2c48dfb8d1c0174a61",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/index.md) · [Full source](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a31c3f87e7716c7cadccdd2c48dfb8d1c0174a61`.

Source path: `GRWTSK/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Orientation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Orientation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating.Curry` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [FiniteDimensional.of_fact_finrank_eq_two](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/finitedimensional-of-fact-finrank-eq-two--f1959b0b88d3c18e16492fbe.md) | 85 | `result-track:f1959b0b88d3c18e16492fbe8acfb790aecdace5153dbf46f1dd81cdde401ad2` |
| 2 | `theorem` | [areaForm_to_volumeForm](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-to-volumeform--4f21806b4775f4489a335089.md) | 108 | `result-track:4f21806b4775f4489a335089b2345d4dc21f488c6eb32f6d70cdc7e0c549e359` |
| 3 | `theorem` | [areaForm_apply_self](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-apply-self--d8b57342de9303be6202d514.md) | 111 | `result-track:d8b57342de9303be6202d51435aafa344d88e47cbd8b52836e40e47ad7e7af70` |
| 4 | `theorem` | [areaForm_swap](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-swap--1bd9264a98cb116631c0accd.md) | 117 | `result-track:1bd9264a98cb116631c0accdfba46577adf719dc2f22ef106435d248fee935a5` |
| 5 | `theorem` | [areaForm_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-neg-orientation--718744dc519a8ce13d3ef2e3.md) | 125 | `result-track:718744dc519a8ce13d3ef2e3b9feaad84a48555a0abdd9ec8d14508102df7efd` |
| 6 | `def` | [areaForm'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform--041096ba3d7ce703b92fe176.md) | 130 | `declaration-track:041096ba3d7ce703b92fe176caeb889ccdf2807faa95da174ca20a587320f34f` |
| 7 | `theorem` | [areaForm'_apply](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-apply--5f05f13cccc13bd2f2f8acd2.md) | 135 | `result-track:5f05f13cccc13bd2f2f8acd2642159f7871ea8fcd0e495007a92438171ac71e3` |
| 8 | `theorem` | [abs_areaForm_le](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/abs-areaform-le--d54cd97b66a754d40bd2a226.md) | 139 | `result-track:d54cd97b66a754d40bd2a22630d4a3af753f582542812423ac02fe0796ddb587` |
| 9 | `theorem` | [areaForm_le](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-le--bc87eb5a71e2258f2b657308.md) | 142 | `result-track:bc87eb5a71e2258f2b65730803a4aa73f897a86b1c88c4a4f9342d14e5cc82f0` |
| 10 | `theorem` | [abs_areaForm_of_orthogonal](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/abs-areaform-of-orthogonal--1749f1e84481dcefba7fd381.md) | 145 | `result-track:1749f1e84481dcefba7fd38186814494efe3f6bbbd13b66ef4b8b5f7c9391b88` |
| 11 | `theorem` | [areaForm_map](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-map--a9fc4d601384f5304595ed6a.md) | 155 | `result-track:a9fc4d601384f5304595ed6aa28065cf35b6a480d4ea77f0d3d66e92f5b97440` |
| 12 | `theorem` | [areaForm_comp_linearIsometryEquiv](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-comp-linearisometryequiv--0e632951364345b16dd2febd.md) | 165 | `result-track:0e632951364345b16dd2febdb0040971936cd51044c5b67c7bff03ce8f169f1d` |
| 13 | `theorem` | [inner_rightAngleRotationAux₁_left](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotationaux-left--70e19a8575722a5852771172.md) | 183 | `result-track:70e19a8575722a5852771172c64c1a1e2648c286ae1c14dd7bf6bf1d1d1405f9` |
| 14 | `theorem` | [inner_rightAngleRotationAux₁_right](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotationaux-right--0064d57a452ad8a3a5a3249b.md) | 191 | `result-track:0064d57a452ad8a3a5a3249bac0d066e02abab98f9a8ce2ae3027b8f920549bb` |
| 15 | `def` | [rightAngleRotationAux₂](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotationaux--f21ca76734099033b6dc8557.md) | 198 | `declaration-track:f21ca76734099033b6dc8557bd74c6f46ef854f18ff5c096f32ef8cf5b7ccc7c` |
| 16 | `theorem` | [rightAngleRotationAux₁_rightAngleRotationAux₁](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotationaux-rightanglerotationaux--5ac04d98ebc6594fa9931993.md) | 227 | `result-track:5ac04d98ebc6594fa9931993d8c989766b45ecb2630808cb07657949bb1bd2e1` |
| 17 | `theorem` | [inner_rightAngleRotation_left](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotation-left--bdb26125ff6de26c06c13469.md) | 246 | `result-track:bdb26125ff6de26c06c13469849c03c9b567f58a4d5548147bdc0a91b2e8d38a` |
| 18 | `theorem` | [inner_rightAngleRotation_right](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotation-right--a43d99da9a00b647ff7be309.md) | 251 | `result-track:a43d99da9a00b647ff7be3097559874ab46ac72a79e26d181bf76572cd737e58` |
| 19 | `theorem` | [rightAngleRotation_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-rightanglerotation--1dcde71bea7a73764b6992fe.md) | 256 | `result-track:1dcde71bea7a73764b6992fe9609f03bb90f573c3bd583b586f7f3cd941254ba` |
| 20 | `theorem` | [rightAngleRotation_symm](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-symm--503f35f9e3a027fddbaf7f07.md) | 261 | `result-track:503f35f9e3a027fddbaf7f07b14600840f9b4f66f06094b68830e6c70865a5ac` |
| 21 | `theorem` | [inner_rightAngleRotation_self](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotation-self--1fe40cd4d57ee69dbd36d3aa.md) | 266 | `result-track:1fe40cd4d57ee69dbd36d3aa257916e879482ae120c5557bc3a1a40f523b5d54` |
| 22 | `theorem` | [inner_rightAngleRotation_swap](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotation-swap--b05f38649015462062110e0b.md) | 268 | `result-track:b05f38649015462062110e0bdc654e2953d7c2cf9819237f7a6baded1ac381ed` |
| 23 | `theorem` | [inner_rightAngleRotation_swap'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-rightanglerotation-swap--d07c2df53cb9b4b88603c192.md) | 270 | `result-track:d07c2df53cb9b4b88603c192f8e6d7f507439a023cfa1dd299d10225dcbd1b44` |
| 24 | `theorem` | [inner_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-comp-rightanglerotation--5a102774c5eb179466cee774.md) | 273 | `result-track:5a102774c5eb179466cee7744ebac2dad21d3515d08f5f06bcbd7cb08bdb5461` |
| 25 | `theorem` | [areaForm_rightAngleRotation_left](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-rightanglerotation-left--36e08b0b3da153a61b7899e6.md) | 277 | `result-track:36e08b0b3da153a61b7899e695bae47f640f8e4ade14e7ff817e6a84bb09a269` |
| 26 | `theorem` | [areaForm_rightAngleRotation_right](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-rightanglerotation-right--b0fd474d942fdc0c0b70e107.md) | 281 | `result-track:b0fd474d942fdc0c0b70e1074ea34ea11f86b5b993c8b555de68cccaa2446669` |
| 27 | `theorem` | [areaForm_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-comp-rightanglerotation--ef7ae5811c644a620df57a45.md) | 284 | `result-track:ef7ae5811c644a620df57a4548507ecfa2b8b3a836a3274ebf5bb32ab4fcc9e2` |
| 28 | `theorem` | [rightAngleRotation_trans_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-trans-rightanglerotation--27748cc4916ba07cdbe6b7b6.md) | 287 | `result-track:27748cc4916ba07cdbe6b7b61b3f037f14428c7fa1ac184831a18956a4a46941` |
| 29 | `theorem` | [rightAngleRotation_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-neg-orientation--f7e91feacf7e2376c4e4b65d.md) | 290 | `result-track:f7e91feacf7e2376c4e4b65d1c57ed0b57c309abce4b56ba5d12a69a814417ee` |
| 30 | `theorem` | [rightAngleRotation_trans_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-trans-neg-orientation--ae4bd394f3a628d32c430276.md) | 298 | `result-track:ae4bd394f3a628d32c430276d33c897af50160292359d2b90eb314ae1b8fa4ce` |
| 31 | `theorem` | [rightAngleRotation_map](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-map--1d9d2b021f5f8817d649d2a0.md) | 302 | `result-track:1d9d2b021f5f8817d649d2a0dd9029093c2eca68f6c8b3fa4b143fd352da0cb9` |
| 32 | `theorem` | [linearIsometryEquiv_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/linearisometryequiv-comp-rightanglerotation--ca7887ba7679d8d8eb2d016b.md) | 316 | `result-track:ca7887ba7679d8d8eb2d016b0241fd8e306de49a89a6e6e63829053b312ece74` |
| 33 | `theorem` | [rightAngleRotation_map'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-map--15a7dde1c61bed6adfcc1f71.md) | 324 | `result-track:15a7dde1c61bed6adfcc1f71f64d239fec69f9b9ac08e7322151b1f65e275ce4` |
| 34 | `theorem` | [linearIsometryEquiv_comp_rightAngleRotation'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/linearisometryequiv-comp-rightanglerotation--3450c2317cc01bdcc6aa4b8c.md) | 331 | `result-track:3450c2317cc01bdcc6aa4b8c7fe7165dc5485da967655eebb5bbeace53c75d14` |
| 35 | `def` | [basisRightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/basisrightanglerotation--1c02865a3338da06aee1b3b2.md) | 338 | `declaration-track:1c02865a3338da06aee1b3b22d559ea3b8fcb593ab1497fb971adb54437b68e5` |
| 36 | `theorem` | [coe_basisRightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/coe-basisrightanglerotation--805773b07f6f9937ed3351cf.md) | 347 | `result-track:805773b07f6f9937ed3351cf60d779a4f3380f8b4e2cfa73b099704c23b793ee` |
| 37 | `theorem` | [inner_mul_inner_add_areaForm_mul_areaForm'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-mul-inner-add-areaform-mul-areaform--152c31f8488da5faa021874d.md) | 353 | `result-track:152c31f8488da5faa021874d6e25960404ef82d7338cb9605266f17828117f80` |
| 38 | `theorem` | [inner_mul_inner_add_areaForm_mul_areaForm](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-mul-inner-add-areaform-mul-areaform--2ab49a87b7c00307f024c003.md) | 364 | `result-track:2ab49a87b7c00307f024c003012a78c241f343abdb53e1701ec06bea55b1e166` |
| 39 | `theorem` | [inner_sq_add_areaForm_sq](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-sq-add-areaform-sq--faf8ba64293284ffecbaf352.md) | 368 | `result-track:faf8ba64293284ffecbaf352ad7f3fcaba629b969bdaa80cd17c9e7c796f3558` |
| 40 | `theorem` | [inner_mul_areaForm_sub'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-mul-areaform-sub--6a70dfdab3f6b5ae7b68e6ed.md) | 373 | `result-track:6a70dfdab3f6b5ae7b68e6ed295d35455b9d4cebcc86cd49a96a0ed346a8f6bc` |
| 41 | `theorem` | [inner_mul_areaForm_sub](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/inner-mul-areaform-sub--85011975dce4d84801699111.md) | 383 | `result-track:85011975dce4d848016991110ce034aa277f171594ea1375837aa6ce3d805e8a` |
| 42 | `theorem` | [nonneg_inner_and_areaForm_eq_zero_iff_sameRay](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/nonneg-inner-and-areaform-eq-zero-iff-sameray--a3c9142308abcf57081d6b9f.md) | 386 | `result-track:a3c9142308abcf57081d6b9f5aad9f4095ff5e777fa4375b89aa380d26269dc3` |
| 43 | `def` | [kahler](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler--ea45d33210c9b214b9eb795d.md) | 417 | `declaration-track:ea45d33210c9b214b9eb795d1b5494716ab67e926f975c44472aaca69e0957ab` |
| 44 | `theorem` | [kahler_apply_apply](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-apply-apply--8d3e677b754098bba200c511.md) | 421 | `result-track:8d3e677b754098bba200c511954a2c9607045698feac54255b80bace5c81ae0f` |
| 45 | `theorem` | [kahler_swap](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-swap--e7eb0c6cb7c0e17d292b6428.md) | 424 | `result-track:e7eb0c6cb7c0e17d292b64282f9cc19f53e68c4d3f7c1b99731e81af5d5c5ff9` |
| 46 | `theorem` | [kahler_apply_self](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-apply-self--3baae51d7823a6a7e93bc627.md) | 430 | `result-track:3baae51d7823a6a7e93bc627a93c9f1063d5af2027093f9f7ab042fb13735160` |
| 47 | `theorem` | [kahler_rightAngleRotation_left](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-rightanglerotation-left--65da5956d87ad1dc3c92373c.md) | 434 | `result-track:65da5956d87ad1dc3c92373c617e737069bbaa8d3da81cb8c2ffafa321165079` |
| 48 | `theorem` | [kahler_rightAngleRotation_right](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-rightanglerotation-right--e482dba2aa566d624be3ebf0.md) | 441 | `result-track:e482dba2aa566d624be3ebf02060eb666af8a1cab771e834c0df323baa0c5776` |
| 49 | `theorem` | [kahler_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-comp-rightanglerotation--24392a37556f51f1b7195c2d.md) | 448 | `result-track:24392a37556f51f1b7195c2db9923a7ab339a2d9c5e55a1d5843eb9dd626288c` |
| 50 | `theorem` | [kahler_comp_rightAngleRotation'](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-comp-rightanglerotation--567b11feb83d72afc08f1f63.md) | 452 | `result-track:567b11feb83d72afc08f1f63fa050d8a4a56ee128bb990cdad0eee8bfccbebfd` |
| 51 | `theorem` | [kahler_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-neg-orientation--8d95cd794271ce15c855d872.md) | 457 | `result-track:8d95cd794271ce15c855d8720d8da649e3f01385337e0b7d352e1957714c9c06` |
| 52 | `theorem` | [kahler_mul](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-mul--b710a4fd4af29f9e85b14371.md) | 460 | `result-track:b710a4fd4af29f9e85b14371163ecc1cd2157199c49eeb8a313b931874fd6886` |
| 53 | `theorem` | [normSq_kahler](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/normsq-kahler--1a15e405f42397a65b2b1887.md) | 473 | `result-track:1a15e405f42397a65b2b18874eca00e71ba41660153cac0194310bc5207dafd4` |
| 54 | `theorem` | [norm_kahler](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/norm-kahler--b332cfa1bd4bb07eb1277e34.md) | 476 | `result-track:b332cfa1bd4bb07eb1277e3474c6b3bb521d268d5fb6ef4cdfab06936652c611` |
| 55 | `theorem` | [eq_zero_or_eq_zero_of_kahler_eq_zero](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/eq-zero-or-eq-zero-of-kahler-eq-zero--be4587fdd63bac3ee7101120.md) | 484 | `result-track:be4587fdd63bac3ee71011206ddc0830c9c7fbdeb24f7a9330fc4eccfca74a51` |
| 56 | `theorem` | [kahler_eq_zero_iff](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-eq-zero-iff--e8a410a0aeea5c3396a040f0.md) | 492 | `result-track:e8a410a0aeea5c3396a040f0fbab16f4fd68b6a9b5b93f6dc9d098fc6bade309` |
| 57 | `theorem` | [kahler_ne_zero](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-ne-zero--0d636edbd9c15146db4d72a8.md) | 496 | `result-track:0d636edbd9c15146db4d72a8e4740fd4bbe21ae52ccddea683c512d10df7ea6e` |
| 58 | `theorem` | [kahler_ne_zero_iff](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-ne-zero-iff--e88f8ba25fdbfc4dbb11aa2b.md) | 500 | `result-track:e88f8ba25fdbfc4dbb11aa2be4169104ebbf4274c2765ffa51fde9c4b073c6f3` |
| 59 | `theorem` | [kahler_map](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-map--0807c2497eb50b1aced77f2e.md) | 506 | `result-track:0807c2497eb50b1aced77f2e47a9143af90f4ee5907ab5635a33a50d1a02b179` |
| 60 | `theorem` | [kahler_comp_linearIsometryEquiv](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-comp-linearisometryequiv--f28ee2c73a4dbb6ca54c12b8.md) | 513 | `result-track:f28ee2c73a4dbb6ca54c12b805177d67b298d3ae9e5d87f80dc83f300d2c7d9d` |
| 61 | `theorem` | [areaForm](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform--920f1949ca7390f83157253b.md) | 525 | `result-track:920f1949ca7390f83157253b11d3cf6232c934d4cd61051dca2ca30bdb810239` |
| 62 | `theorem` | [rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation--ef32b48e03e2e2b8f4d7445d.md) | 534 | `result-track:ef32b48e03e2e2b8f4d7445d96e93bb2e1bf1d25b3006f719bce187a3759cfc4` |
| 63 | `theorem` | [kahler](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler--49f77efc13355c9b9d460128.md) | 544 | `result-track:49f77efc13355c9b9d460128e45778a8301fb414c77bc8ba0b678a18c8dcd0dc` |
| 64 | `theorem` | [areaForm_map_complex](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/areaform-map-complex--c449ba0ee73533ac366b68f3.md) | 565 | `result-track:c449ba0ee73533ac366b68f3b5bef8e290f5650623cc716e2602159bc95ffa01` |
| 65 | `theorem` | [rightAngleRotation_map_complex](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/rightanglerotation-map-complex--8daa8e6931564a8d50c77812.md) | 573 | `result-track:8daa8e6931564a8d50c7781234294029b81dbb69d385032b42c9fa4dcd5f56ea` |
| 66 | `theorem` | [kahler_map_complex](../../../../mathematics/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/declarations/kahler-map-complex--972cbbed254455d12ed39ba2.md) | 581 | `result-track:972cbbed254455d12ed39ba232edca7dd8ce47d197114e3e3b9fa0a336cc9375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
