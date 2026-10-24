# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Normed.Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1297a3b29322fb88300a2f4d1864864925486c8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1297a3b29322fb88300a2f4d1864864925486c8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Ray` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexon-norm--21a1330b2fb609d460198206.md) | 47 | `result-track:21a1330b2fb609d460198206906177f3e08475f07de8ffe23eb85d4a7a2ef82a` |
| 2 | `theorem` | [convexOn_univ_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexon-univ-norm--b7555e0545409f731a81d97f.md) | 57 | `result-track:b7555e0545409f731a81d97fe29467d882bf7fd38547ca63733f360c81afcecc` |
| 3 | `theorem` | [convexOn_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexon-dist--2cac880f34fb9aefe70fbd54.md) | 61 | `result-track:2cac880f34fb9aefe70fbd545403b4c129eb73006f9f9db1ce469f036d63c8dd` |
| 4 | `theorem` | [convexOn_univ_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexon-univ-dist--91a7203842d6d21f36c5022b.md) | 66 | `result-track:91a7203842d6d21f36c5022bdfc5577a45db1b98f4910d6b9fdc9bc55bab4323` |
| 5 | `theorem` | [convex_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convex-ball--3e2751df57476edec4d34f79.md) | 70 | `result-track:3e2751df57476edec4d34f79eca8471073aae28e973137a9a8fc80c86c4eced8` |
| 6 | `theorem` | [convex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convex-closedball--073dcafbcb623a774e64c010.md) | 74 | `result-track:073dcafbcb623a774e64c01066710ea94da4e16686444945d237463d9327aa3a` |
| 7 | `theorem` | [Convex.thickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convex-thickening--c6a5838d8d59248bf6f3c233.md) | 78 | `result-track:c6a5838d8d59248bf6f3c2335fd6e9a2331f48a07bf7417a20c69c9b9ea385c2` |
| 8 | `theorem` | [Convex.cthickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convex-cthickening--e0f03b8333e9a3f9b0689cc4.md) | 83 | `result-track:e0f03b8333e9a3f9b0689cc4a670d3048aa9365bbd55e6db762378dce7e07325` |
| 9 | `theorem` | [convexHull_exists_dist_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexhull-exists-dist-ge--e8780597a1f32cb9303b0891.md) | 93 | `result-track:e8780597a1f32cb9303b08911212267735c1643c07d557817f00db376baeb401` |
| 10 | `theorem` | [convexHull_exists_dist_ge2](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexhull-exists-dist-ge2--b0ae20834a3767870711fd03.md) | 100 | `result-track:b0ae20834a3767870711fd037e31142c0a79f5515354234f8f06b61ef7db926a` |
| 11 | `theorem` | [convexHull_ediam](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexhull-ediam--0e7561a478302a9eb1dca4ac.md) | 110 | `result-track:0e7561a478302a9eb1dca4acb960bdf5fd9a8b538bc69874aac65fad36c7ddb9` |
| 12 | `theorem` | [convexHull_diam](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/convexhull-diam--04cd974903f44035eaa83bf6.md) | 121 | `result-track:04cd974903f44035eaa83bf6549f6ff08459172be6b302e9982a9269f313c2cc` |
| 13 | `theorem` | [bounded_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/bounded-convexhull--31a27a6d16075819987bef85.md) | 127 | `result-track:31a27a6d16075819987bef8533d89f1ed838c0e2109d48ba0a0ab33337d33937` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/instance--f7c7a99206ce2d7b87adb761.md) | 131 | `declaration-track:f7c7a99206ce2d7b87adb7619dff1810135366425b0ab72107e92939c0a4617b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/instance--a29bac82ab047c8d66e7036c.md) | 135 | `declaration-track:a29bac82ab047c8d66e7036c0835a498cc12b329d624fa2b01ac334ba21a86a2` |
| 16 | `theorem` | [dist_add_dist_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/dist-add-dist-of-mem-segment--a7859ec7f193552a554cd5bf.md) | 140 | `result-track:a7859ec7f193552a554cd5bf1c14be9c8ee41d821d5b2d127bc08b5a67ec7cd5` |
| 17 | `theorem` | [isConnected_setOf_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/isconnected-setof-sameray--5c9820f1726af95de5e5c905.md) | 147 | `result-track:5c9820f1726af95de5e5c905f1bec79711624e444c4e366dc310e73216684ad5` |
| 18 | `theorem` | [isConnected_setOf_sameRay_and_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Normed/Variant3461265f31df4acff493df795912459896e4509f70130953b8fa53e1f80ad68e.lean/declarations/isconnected-setof-sameray-and-ne-zero--d71c6f8337fcce5e4081ed95.md) | 154 | `result-track:d71c6f8337fcce5e4081ed95f7549729dcd4632bd6c5edf0f891a1df518d4999` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
