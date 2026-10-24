# Verification target: GRWTSK.Analysis.FunctionalAnalysis.StrictConvexSpace.Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c84211c530fcb836e83252d0b44f609b5472495",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c84211c530fcb836e83252d0b44f609b5472495`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Normed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Strict` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AddTorsor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AffineIsometry` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace--e0a814508b6a3be29b4f84c1.md) | 80 | `declaration-track:e0a814508b6a3be29b4f84c1904c55431d0b6b88559d66d62342064343c04420` |
| 2 | `theorem` | [strictConvex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvex-closedball--d41369a38eb035c4b5d0e330.md) | 89 | `result-track:d41369a38eb035c4b5d0e330ca154951aa624a3d71ca19cfe510497d60107861` |
| 3 | `theorem` | [StrictConvexSpace.of_strictConvex_closed_unit_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace-of-strictconvex-closed-unit-ball--95fffed93b595d24173c8af5.md) | 100 | `result-track:95fffed93b595d24173c8af5f7fee7c899e8f3f572e82119968aa295516cf388` |
| 4 | `theorem` | [StrictConvexSpace.of_norm_combo_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace-of-norm-combo-lt-one--a9ff8761382c1011ba5931aa.md) | 108 | `result-track:a9ff8761382c1011ba5931aa8cc1b6342704ed0aea66ced9dc0d5001cccc0ab4` |
| 5 | `theorem` | [StrictConvexSpace.of_norm_combo_ne_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace-of-norm-combo-ne-one--0553492933fa8e03005e1a06.md) | 122 | `result-track:0553492933fa8e03005e1a0651f0c9018f6029f0e990f45ed71bff718b260159` |
| 6 | `theorem` | [StrictConvexSpace.of_norm_add_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace-of-norm-add-ne-two--e51010f53081843c8f070f9e.md) | 136 | `result-track:e51010f53081843c8f070f9e2d4923f0f2027dbae2edc7605fc49cd85ad1d4d0` |
| 7 | `theorem` | [StrictConvexSpace.of_pairwise_sphere_norm_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace-of-pairwise-sphere-norm-ne-two--9f06af18a3f0af3e5a55cc19.md) | 146 | `result-track:9f06af18a3f0af3e5a55cc19885ad8c7d2c738838a18e34603f799f894aa3daa` |
| 8 | `theorem` | [StrictConvexSpace.of_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/strictconvexspace-of-norm-add--60e1cab70c008e54d57c6666.md) | 154 | `result-track:60e1cab70c008e54d57c666684edd3a78cb40849b36e7d5dea5b5efe1f7f24a5` |
| 9 | `theorem` | [combo_mem_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/combo-mem-ball-of-ne--045796311a3f783579c39578.md) | 165 | `result-track:045796311a3f783579c39578856bf8c02bdfaa76ed8262a33b0a677ba57b1c1c` |
| 10 | `theorem` | [openSegment_subset_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/opensegment-subset-ball-of-ne--c85d1283cacdbba6b93635de.md) | 176 | `result-track:c85d1283cacdbba6b93635dec16010707a553acfc25cda01d2138fe5e86af5c0` |
| 11 | `theorem` | [norm_combo_lt_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/norm-combo-lt-of-ne--8e5e418efcaaeaab4090b18f.md) | 183 | `result-track:8e5e418efcaaeaab4090b18f3a76336055e6aa5db31cadd9122828e7af3e4e29` |
| 12 | `theorem` | [norm_add_lt_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/norm-add-lt-of-not-sameray--45494c579227379a77a9cc04.md) | 191 | `result-track:45494c579227379a77a9cc0422e722e13962997100cee748810322f6b615f429` |
| 13 | `theorem` | [lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/lt-norm-sub-of-not-sameray--746f1fd07572aa5bd5c63c13.md) | 205 | `result-track:746f1fd07572aa5bd5c63c13433da0871ec81b7ccb740ad3cd9f65a2d8f1d1c1` |
| 14 | `theorem` | [abs_lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/abs-lt-norm-sub-of-not-sameray--a1bd929c2c5e575ffdaf0a91.md) | 210 | `result-track:a1bd929c2c5e575ffdaf0a91688e265d365317311c6e3aa5423c5b8ff3fc77ed` |
| 15 | `theorem` | [sameRay_iff_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/sameray-iff-norm-add--68007185b8f63edccced7952.md) | 218 | `result-track:68007185b8f63edccced7952df5d01461aa1eaa29e4b1c2ee06e1cffd10862fe` |
| 16 | `theorem` | [eq_of_norm_eq_of_norm_add_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/eq-of-norm-eq-of-norm-add-eq--f03b3374cad30b89c6beb14c.md) | 224 | `result-track:f03b3374cad30b89c6beb14cbdef5baf4b9b037b77f679791e19a3f5d68598cb` |
| 17 | `theorem` | [not_sameRay_iff_norm_add_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/not-sameray-iff-norm-add-lt--61c499199edf6adc5a26c297.md) | 230 | `result-track:61c499199edf6adc5a26c2972c03280d2c626200330fc653b8054e7262f74675` |
| 18 | `theorem` | [sameRay_iff_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/sameray-iff-norm-sub--a1073474993d4502d4d7c4ff.md) | 234 | `result-track:a1073474993d4502d4d7c4ff96b121566ef31e418a9d73eb4729b491160cc422` |
| 19 | `theorem` | [not_sameRay_iff_abs_lt_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/not-sameray-iff-abs-lt-norm-sub--e3e5d375742cde9c9270d7d9.md) | 239 | `result-track:e3e5d375742cde9c9270d7d937ce7cee87d4b40435bb3ce89f0e60840372edf1` |
| 20 | `theorem` | [dist_add_dist_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/dist-add-dist-eq-iff--7971f2ebd305840c7da5cdd5.md) | 245 | `result-track:7971f2ebd305840c7da5cdd55cd3223a106ec622870fc7ca105dd89b76d4947e` |
| 21 | `theorem` | [norm_midpoint_lt_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/norm-midpoint-lt-iff--42018a4476e34830c3037f4d.md) | 250 | `result-track:42018a4476e34830c3037f4db08430ef0d612802fa694a24e23652ae776a8cb3` |
| 22 | `theorem` | [eq_lineMap_of_dist_eq_mul_of_dist_eq_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/eq-linemap-of-dist-eq-mul-of-dist-eq-mul--77989d27b9c99820a0dc0bb9.md) | 262 | `result-track:77989d27b9c99820a0dc0bb988a1684bc0ac5aa9ba74c4a27f80fbbb56c6e0fd` |
| 23 | `theorem` | [eq_midpoint_of_dist_eq_half](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/eq-midpoint-of-dist-eq-half--8b91e38fd6269f9becfcfcd8.md) | 279 | `result-track:8b91e38fd6269f9becfcfcd8e114d5447a0c95a1746828e032aa77e2004ad2fe` |
| 24 | `def` | [affineIsometryOfStrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/affineisometryofstrictconvexspace--ae196cc3298caaacdc331e33.md) | 291 | `declaration-track:ae196cc3298caaacdc331e33e51e21fb867334c335aff70ab6157865cd593b05` |
| 25 | `theorem` | [coe_affineIsometryOfStrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/coe-affineisometryofstrictconvexspace--251803c0ec3e096ebd1e2385.md) | 305 | `result-track:251803c0ec3e096ebd1e238539a1fd29cee3f58f95488b1c012940acf244d7cd` |
| 26 | `theorem` | [affineIsometryOfStrictConvexSpace_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variant5a869563b68286d61a231ce4a992546da9b3a3cbecc75a52d88a7ce6af1ffece.lean/declarations/affineisometryofstrictconvexspace-apply--d3a2d3adb90672143954a362.md) | 311 | `result-track:d3a2d3adb90672143954a362c8dc08ff3d8ba5e53a37fcb1bd8c9a22b4bcd532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
