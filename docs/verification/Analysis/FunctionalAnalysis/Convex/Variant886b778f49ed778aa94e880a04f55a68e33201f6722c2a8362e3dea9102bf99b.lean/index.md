# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Convex.Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d117987a83e30aaabe8d0c32a0e4ba5ceaebc9e3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d117987a83e30aaabe8d0c32a0e4ba5ceaebc9e3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexon-norm--cb954ad21c4a6a1edde1fda2.md) | 52 | `result-track:cb954ad21c4a6a1edde1fda254622bca77af1e6885dc2718d0a66c1ad83e7982` |
| 2 | `theorem` | [convexOn_univ_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexon-univ-norm--3bfd05ff9718b4d9624bc016.md) | 61 | `result-track:3bfd05ff9718b4d9624bc0168d509ea2390a29c68bf829be14677a25524879b6` |
| 3 | `theorem` | [convexOn_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexon-dist--63ab3006b44a71b78fd090eb.md) | 64 | `result-track:63ab3006b44a71b78fd090eb7050843a274c4740857a1f63e5c7fbd9cf141c43` |
| 4 | `theorem` | [convexOn_univ_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexon-univ-dist--0cf0ffa9c20d3f368cf5e291.md) | 68 | `result-track:0cf0ffa9c20d3f368cf5e2913598729a2db9618b31f582df488f4b50ba5fd7a6` |
| 5 | `theorem` | [convex_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convex-ball--36ab36859a405eb330738edb.md) | 71 | `result-track:36ab36859a405eb330738edb198f5a752fae22e681ad4fa07febf7eca715b77e` |
| 6 | `theorem` | [convex_eball](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convex-eball--582b94c33749745f32aff6b9.md) | 74 | `result-track:582b94c33749745f32aff6b9bf55e325d4ca56f559e041328d31cc930d939251` |
| 7 | `theorem` | [convex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convex-closedball--2b67e222db8188c4b36e3782.md) | 79 | `result-track:2b67e222db8188c4b36e3782393ed55033d9cb1731868b0102545b05f65ac456` |
| 8 | `theorem` | [norm_sum_smul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/norm-sum-smul-le--9acf6f314b76f9a845edca58.md) | 83 | `result-track:9acf6f314b76f9a845edca58a59569d465ae08904ee13bf86aabbf49f53702ea` |
| 9 | `theorem` | [segment_subset_closedBall_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/segment-subset-closedball-left--f082c4c203ae587e25475eee.md) | 92 | `result-track:f082c4c203ae587e25475eee5ecfeb1e3ec89a157d2a27a2c9117eee59aa2b04` |
| 10 | `theorem` | [segment_subset_closedBall_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/segment-subset-closedball-right--575b2e304a911a201ddce288.md) | 98 | `result-track:575b2e304a911a201ddce2882fcab82bc5b21f38374809e314315a3282351833` |
| 11 | `theorem` | [convex_closedEBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convex-closedeball--cf8a9154d00c5e76702c4359.md) | 103 | `result-track:cf8a9154d00c5e76702c4359a6e36d01dc758d68b0f60ae457f7e6098b2a3a40` |
| 12 | `theorem` | [convexHull_sphere_eq_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexhull-sphere-eq-closedball--59aaeefe3119b9597888d2e1.md) | 109 | `result-track:59aaeefe3119b9597888d2e13700268f32b6aacdf9388f1da07272282194f700` |
| 13 | `theorem` | [convexHull_exists_dist_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexhull-exists-dist-ge--d77d04a63fba65bdd80a4f1b.md) | 139 | `result-track:d77d04a63fba65bdd80a4f1b4cc02771c34afc3e1b29ac120780200495dcd8dd` |
| 14 | `theorem` | [Convex.thickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convex-thickening--2679c84718788ee6303fc4dd.md) | 143 | `result-track:2679c84718788ee6303fc4ddc8f8eea5f77f5aa69bb4909f1a83cfe19870207c` |
| 15 | `theorem` | [Convex.cthickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convex-cthickening--f0d769fef7e7b346dc36b1bd.md) | 147 | `result-track:f0d769fef7e7b346dc36b1bd776df75f9aa0fb8942b25df80bb46a1341987e00` |
| 16 | `theorem` | [convexHull_exists_dist_ge2](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexhull-exists-dist-ge2--298434893e3a008a9f1bdeae.md) | 156 | `result-track:298434893e3a008a9f1bdeae08ea9c3ed67fda7e640fefb042df51eb14fded92` |
| 17 | `theorem` | [convexHull_ediam](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexhull-ediam--74bba0cbf8e6bc48e2666282.md) | 165 | `result-track:74bba0cbf8e6bc48e2666282275e8a4e77d89e8bd8a8e010c0893409ebfc5db1` |
| 18 | `theorem` | [convexHull_diam](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/convexhull-diam--72b6448fed6c954ef6e865cf.md) | 175 | `result-track:72b6448fed6c954ef6e865cf27cf5a18ba9684b48f83c294a246358ab30ea1b1` |
| 19 | `theorem` | [isBounded_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/isbounded-convexhull--1cc109df88f203db5f8f1254.md) | 180 | `result-track:1cc109df88f203db5f8f1254a166b95f6a7edfd107fe9ff3aade50aa2875e8e5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/instance--ec4930d63e20c571ba72b27c.md) | 184 | `declaration-track:ec4930d63e20c571ba72b27c06e84da70ee2aa54b86ab2f4b36c612a54932150` |
| 21 | `theorem` | [isConnected_setOfPred_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/isconnected-setofpred-sameray--2841132649f1dcf2ac0b65fe.md) | 188 | `result-track:2841132649f1dcf2ac0b65feac37e1faa73183523ab280d1a900c0abc63aa8c1` |
| 22 | `theorem` | [isConnected_setOfPred_sameRay_and_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/isconnected-setofpred-sameray-and-ne-zero--1102ded4f224bba8ed1ff95e.md) | 197 | `result-track:1102ded4f224bba8ed1ff95e360bb9be92ff095db664517849b024fa8f05dc06` |
| 23 | `lemma` | [norm_sub_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/norm-sub-le-of-mem-segment--546f840e3df95e684f506df5.md) | 205 | `result-track:546f840e3df95e684f506df5d6d4b453ec9b8911113235832d03016758efe774` |
| 24 | `theorem` | [Eventually.segment_of_prod_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/eventually-segment-of-prod-nhds--6976c3927ba70a0bb9a8a44d.md) | 220 | `result-track:6976c3927ba70a0bb9a8a44d46a80c5872b8c0b0f3fa31d856e2e7ee79841871` |
| 25 | `theorem` | [Eventually.segment_of_prod_nhdsWithin](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant886b778f49ed778aa94e880a04f55a68e33201f6722c2a8362e3dea9102bf99b.lean/declarations/eventually-segment-of-prod-nhdswithin--ccaffcc260c42dfedb3ecf5f.md) | 227 | `result-track:ccaffcc260c42dfedb3ecf5fc84ec1f9813dd3d046493f795a90694d02a8851b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
