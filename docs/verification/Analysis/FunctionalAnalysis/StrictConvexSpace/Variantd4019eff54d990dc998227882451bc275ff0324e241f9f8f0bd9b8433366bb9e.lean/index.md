# Verification target: GRWTSK.Analysis.FunctionalAnalysis.StrictConvexSpace.Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c85b502c6a46387ab12bd17029c343d942d3f84",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c85b502c6a46387ab12bd17029c343d942d3f84`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Normed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Strict` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AddTorsor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AffineIsometry` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace--ccb46f755489631be1e686ce.md) | 72 | `declaration-track:ccb46f755489631be1e686ce4260c0a78f8803efff06c6e93a93ec7e16001cf1` |
| 2 | `theorem` | [strictConvex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvex-closedball--568167c4c467a2e1edd05d4e.md) | 81 | `result-track:568167c4c467a2e1edd05d4e58ee36e41034119eaff375c4a185723f8839b4a3` |
| 3 | `theorem` | [StrictConvexSpace.of_strictConvex_closed_unit_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace-of-strictconvex-closed-unit-ball--4f7f517fd185a5374e39002e.md) | 92 | `result-track:4f7f517fd185a5374e39002e7dd0813e1b29be7988f4e20a44cfa79e5a0f1fbc` |
| 4 | `theorem` | [StrictConvexSpace.of_norm_combo_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace-of-norm-combo-lt-one--9b573b73844ad732404a245c.md) | 100 | `result-track:9b573b73844ad732404a245c29b054a7fb7c5954f8467d122784fb19dbac11c1` |
| 5 | `theorem` | [StrictConvexSpace.of_norm_combo_ne_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace-of-norm-combo-ne-one--19e6a25c75df38dcd922e2cb.md) | 114 | `result-track:19e6a25c75df38dcd922e2cb2f5c1f32af7dfd87045fb26cf93fdebcc53bff91` |
| 6 | `theorem` | [StrictConvexSpace.of_norm_add_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace-of-norm-add-ne-two--263a95a7d9a5475bd0ec26c1.md) | 128 | `result-track:263a95a7d9a5475bd0ec26c19df6c853d9fc0f62435d2e5711ded42a90df8629` |
| 7 | `theorem` | [StrictConvexSpace.of_pairwise_sphere_norm_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace-of-pairwise-sphere-norm-ne-two--b46f6c89cb37d3442f1830e9.md) | 138 | `result-track:b46f6c89cb37d3442f1830e942e5028acb3fb3fb224fc7adde07820a64d95a47` |
| 8 | `theorem` | [StrictConvexSpace.of_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/strictconvexspace-of-norm-add--88d68c35e7f8f4a492f171b9.md) | 146 | `result-track:88d68c35e7f8f4a492f171b9cc66f94da112adf3e936b0ea73bf0330313cf111` |
| 9 | `theorem` | [combo_mem_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/combo-mem-ball-of-ne--c732defdf6a528476c270ad2.md) | 157 | `result-track:c732defdf6a528476c270ad224e1a048e22802325e369969416f3b9c6c737067` |
| 10 | `theorem` | [openSegment_subset_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/opensegment-subset-ball-of-ne--a67c0f0de837860b4a613ace.md) | 168 | `result-track:a67c0f0de837860b4a613ace09e6fd610a2e7d63dc88ca86a2a68cac77f57d96` |
| 11 | `theorem` | [norm_combo_lt_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/norm-combo-lt-of-ne--769578673bbc64e85cd6fa98.md) | 175 | `result-track:769578673bbc64e85cd6fa98e8fe777f87975029273f4219f83fc1cb7204a544` |
| 12 | `theorem` | [norm_add_lt_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/norm-add-lt-of-not-sameray--bc9ea641976e0e62df4bbbff.md) | 183 | `result-track:bc9ea641976e0e62df4bbbffeb6e2164d4d8bbc933e67d8a5c9091f81334ef64` |
| 13 | `theorem` | [lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/lt-norm-sub-of-not-sameray--46881cd2a72027631dee818f.md) | 197 | `result-track:46881cd2a72027631dee818faa161f12a9a30f93799113c8fb78398eeb2d6ff9` |
| 14 | `theorem` | [abs_lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/abs-lt-norm-sub-of-not-sameray--e1afa71c59ccc9ce7781db63.md) | 202 | `result-track:e1afa71c59ccc9ce7781db63fa61e548ada3b15fc47e6c55277f814f9cbbeee2` |
| 15 | `theorem` | [sameRay_iff_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/sameray-iff-norm-add--3d607d2ca778e36b30a36858.md) | 210 | `result-track:3d607d2ca778e36b30a368586ec60a5a4ea39d1d8ddd360e3f70d71e57abd4da` |
| 16 | `theorem` | [eq_of_norm_eq_of_norm_add_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/eq-of-norm-eq-of-norm-add-eq--69eb0d37709b0c0dda7cfbcf.md) | 216 | `result-track:69eb0d37709b0c0dda7cfbcf3f59c7ffc7bd6dd27743d19edf4d25e4300babb6` |
| 17 | `theorem` | [not_sameRay_iff_norm_add_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/not-sameray-iff-norm-add-lt--a79482bbe514e79f4559810a.md) | 222 | `result-track:a79482bbe514e79f4559810aff18a1a0dc7fe5cfaecc83f68aeac65ac5ec5c12` |
| 18 | `theorem` | [sameRay_iff_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/sameray-iff-norm-sub--39eedc086834efbbd98e11d9.md) | 226 | `result-track:39eedc086834efbbd98e11d93402b53cd12cc070534ba19986254b059ef2ff61` |
| 19 | `theorem` | [not_sameRay_iff_abs_lt_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/not-sameray-iff-abs-lt-norm-sub--77462ac78583c4dbfa8433dd.md) | 231 | `result-track:77462ac78583c4dbfa8433dd8fdc2000a7c85fc949904a413442bf98413bdce4` |
| 20 | `theorem` | [dist_add_dist_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/dist-add-dist-eq-iff--e6a3813a993465c3712d5a18.md) | 237 | `result-track:e6a3813a993465c3712d5a1817ed0fadf4cf1d247f7222c8c2a0511821440d5c` |
| 21 | `theorem` | [norm_midpoint_lt_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/norm-midpoint-lt-iff--033f44bb82b5352449e3f8dc.md) | 242 | `result-track:033f44bb82b5352449e3f8dc9f19623d4000f4a38c34734401fd50be4e7edaa5` |
| 22 | `theorem` | [eq_lineMap_of_dist_eq_mul_of_dist_eq_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/eq-linemap-of-dist-eq-mul-of-dist-eq-mul--6583c42df69d794676e2590a.md) | 254 | `result-track:6583c42df69d794676e2590a346264de94553cc764a8b7e4dba6cd97f02f29b7` |
| 23 | `theorem` | [eq_midpoint_of_dist_eq_half](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/eq-midpoint-of-dist-eq-half--8d38e35556174c906ef16216.md) | 271 | `result-track:8d38e35556174c906ef162168cc7ab5628360b1ac6301b9180e64444aadc6b8a` |
| 24 | `def` | [affineIsometryOfStrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/affineisometryofstrictconvexspace--debd1b40b68eeec1a0424aee.md) | 283 | `declaration-track:debd1b40b68eeec1a0424aeef89f69ec5d0636937d9c1b0a006c46b623bdc22b` |
| 25 | `theorem` | [coe_affineIsometryOfStrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/coe-affineisometryofstrictconvexspace--38e3a86cbf82510a16609e95.md) | 297 | `result-track:38e3a86cbf82510a16609e950600a42915e9bd2bcc14e1f89bff50fae54dcc70` |
| 26 | `theorem` | [affineIsometryOfStrictConvexSpace_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantd4019eff54d990dc998227882451bc275ff0324e241f9f8f0bd9b8433366bb9e.lean/declarations/affineisometryofstrictconvexspace-apply--573276af3ecf5f1f63d00d6f.md) | 303 | `result-track:573276af3ecf5f1f63d00d6fc0a465c40f38562b597e6a4e1a1ffc006d8c44d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
