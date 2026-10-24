# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Integral.Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "420e844d167c2de565c57c154c88446a3f7ba8d6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `420e844d167c2de565c57c154c88446a3f7ba8d6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.integral_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convex-integral-mem--c47316f67b9e670c233d8c95.md) | 56 | `result-track:c47316f67b9e670c233d8c95d538bf40d6b4debf1786f2aba06c9f5c5ecce676` |
| 2 | `theorem` | [Convex.average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convex-average-mem--db94ed97c069cba26bab35f2.md) | 87 | `result-track:db94ed97c069cba26bab35f27e56899788970613c8cfdbd7766bc6a3cea71d37` |
| 3 | `theorem` | [Convex.set_average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convex-set-average-mem--71ec11785822205e7824afe0.md) | 96 | `result-track:71ec11785822205e7824afe085e6fbd1c93292e34188a053ec943a94e0f0087b` |
| 4 | `theorem` | [Convex.set_average_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convex-set-average-mem-closure--beedc54e029d09fb71b48c8c.md) | 106 | `result-track:beedc54e029d09fb71b48c8ca317695c87fdfc51efcd599fd433b41fba0d9156` |
| 5 | `theorem` | [ConvexOn.average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convexon-average-mem-epigraph--ccff6625ffbddf6961d7c320.md) | 112 | `result-track:ccff6625ffbddf6961d7c3200a1ff5bd465e0dc92d948da8ee910e414f6269ce` |
| 6 | `theorem` | [ConcaveOn.average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/concaveon-average-mem-hypograph--ad669bc60fd1b2840989e2e9.md) | 122 | `result-track:ad669bc60fd1b2840989e2e90b7c7cc8b4df016f8652806826234e6904cee154` |
| 7 | `theorem` | [ConvexOn.map_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convexon-map-average-le--576d61aa72e944a485ba6d2e.md) | 135 | `result-track:576d61aa72e944a485ba6d2ed06b254f1c108594dd7229e50418f19e0e2a5e22` |
| 8 | `theorem` | [ConcaveOn.le_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/concaveon-le-map-average--7ed9da2728884a8e0a625869.md) | 147 | `result-track:7ed9da2728884a8e0a6258695ed1eac54bfde46601798562f346f775176b8d2b` |
| 9 | `theorem` | [ConvexOn.set_average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convexon-set-average-mem-epigraph--146b55c60b3e8d94165b0004.md) | 159 | `result-track:146b55c60b3e8d94165b00043d8b5e924c8fbae811b41ea615c651794675f9e6` |
| 10 | `theorem` | [ConcaveOn.set_average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/concaveon-set-average-mem-hypograph--148dc4a541a1de2267413b72.md) | 173 | `result-track:148dc4a541a1de2267413b72a16a9b128fc1f6acc18a98b0cabf2f8f0837d56d` |
| 11 | `theorem` | [ConvexOn.map_set_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convexon-map-set-average-le--b8ed70a9b02359848cced9a3.md) | 186 | `result-track:b8ed70a9b02359848cced9a3327e41a97758c7126946b2371a2f31a65336bdfa` |
| 12 | `theorem` | [ConcaveOn.le_map_set_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/concaveon-le-map-set-average--51b99f84fdd257abc54c70d9.md) | 198 | `result-track:51b99f84fdd257abc54c70d99b843112f616d5b6129c86f445746c08dabba2cb` |
| 13 | `theorem` | [ConvexOn.map_integral_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convexon-map-integral-le--9f85c2910e4a07f1fd88a8d4.md) | 210 | `result-track:9f85c2910e4a07f1fd88a8d49f4ff432d9d3ba7f6311cbd78517c2ce8dc8a38d` |
| 14 | `theorem` | [ConcaveOn.le_map_integral](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/concaveon-le-map-integral--b1c616ea442ea883a05b5841.md) | 220 | `result-track:b1c616ea442ea883a05b58410b91825015076dbcc6b1030ade95718e04149909` |
| 15 | `theorem` | [ae_eq_const_or_exists_average_ne_compl](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/ae-eq-const-or-exists-average-ne-compl--f085a8e490aa1841c48328f3.md) | 234 | `result-track:f085a8e490aa1841c48328f37a7c0a4a0a2dcdc28b604e8db35924a03dc8f6f3` |
| 16 | `theorem` | [Convex.average_mem_interior_of_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/convex-average-mem-interior-of-set--59dcc97dd4102d6c935eff81.md) | 253 | `result-track:59dcc97dd4102d6c935eff810eb44fc671892218dec779e134b9843709f4f589` |
| 17 | `theorem` | [StrictConvex.ae_eq_const_or_average_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/strictconvex-ae-eq-const-or-average-mem-interior--f5e532afbb91794742cd2763.md) | 271 | `result-track:f5e532afbb91794742cd2763ba4a1251374e0344de3ba6d33b18e58b004ee6e7` |
| 18 | `theorem` | [StrictConvexOn.ae_eq_const_or_map_average_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/strictconvexon-ae-eq-const-or-map-average-lt--d07801f3a1cc1fa3a8be3f04.md) | 286 | `result-track:d07801f3a1cc1fa3a8be3f04da4d4eb67b156f21b5517f4672645deb6fe1077e` |
| 19 | `theorem` | [StrictConcaveOn.ae_eq_const_or_lt_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/strictconcaveon-ae-eq-const-or-lt-map-average--eb1a29c5f59a4fb740b6e399.md) | 315 | `result-track:eb1a29c5f59a4fb740b6e39931c9ddbd347c904d2ac3d1b81d346e60f94122a4` |
| 20 | `theorem` | [ae_eq_const_or_norm_average_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/ae-eq-const-or-norm-average-lt-of-norm-le-const--127dee9e6474eceffe5a0cad.md) | 326 | `result-track:127dee9e6474eceffe5a0cad4bdc50bcb26605020702f25246cd621854739ecc` |
| 21 | `theorem` | [ae_eq_const_or_norm_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/ae-eq-const-or-norm-integral-lt-of-norm-le-const--4d74d8c854119df8cf058668.md) | 345 | `result-track:4d74d8c854119df8cf05866826e03065793c9df542f7f1e8c6096701b5494026` |
| 22 | `theorem` | [ae_eq_const_or_norm_set_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant39cf2cb630a11b6461f2c6794d02fdd536dbdcefd9f032e119dd93ec03528910.lean/declarations/ae-eq-const-or-norm-set-integral-lt-of-norm-le-const--fd8c9fa435803d9192c04a35.md) | 359 | `result-track:fd8c9fa435803d9192c04a354533bce624616289a42d9b770df94ec0c9e52b73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
