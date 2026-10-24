# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Convex.Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00bb83c8b79f98b208faeb26f80cc92dfa2b5b93",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00bb83c8b79f98b208faeb26f80cc92dfa2b5b93`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Jensen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convexOn_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexon-norm--3fbbfa344316e0c16ead3340.md) | 45 | `result-track:3fbbfa344316e0c16ead3340e527e931fbe13c73de7095b47ec12b894e5c45f6` |
| 2 | `theorem` | [convexOn_univ_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexon-univ-norm--94f71514632f1d613d832646.md) | 54 | `result-track:94f71514632f1d613d83264688224c911d51ffdfdbf7692b46d9392702813048` |
| 3 | `theorem` | [convexOn_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexon-dist--56d40aed7cf39ea526de704f.md) | 57 | `result-track:56d40aed7cf39ea526de704f4eebe111c210939b16226bf03a33bfb602653c82` |
| 4 | `theorem` | [convexOn_univ_dist](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexon-univ-dist--e4c9909ca436dc39ba5dd003.md) | 61 | `result-track:e4c9909ca436dc39ba5dd0032bb73c28795895135308bfff279bf0c44fdc82c9` |
| 5 | `theorem` | [convex_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convex-ball--13a7100795c7f1a220f9b375.md) | 64 | `result-track:13a7100795c7f1a220f9b375b87cc65d878fdc7445f2e5ed739c2b7c19eb12a1` |
| 6 | `theorem` | [convex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convex-closedball--5e2c15d199327a4f5750d8b7.md) | 67 | `result-track:5e2c15d199327a4f5750d8b772d651b912a2b89d5ce4273d4f10e9af065ecad5` |
| 7 | `theorem` | [convexHull_exists_dist_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexhull-exists-dist-ge--784f9de634c60d13f0a14bd7.md) | 72 | `result-track:784f9de634c60d13f0a14bd7a3e4a3d48a4ecdaa8882c3dc079e9d07db916e8c` |
| 8 | `theorem` | [Convex.thickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convex-thickening--7720c04b069817c7bdd693cd.md) | 76 | `result-track:7720c04b069817c7bdd693cd4a4de2d9e171762cea6c2ceeef60966e23346ce8` |
| 9 | `theorem` | [Convex.cthickening](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convex-cthickening--6d74a459ab40209e9e3f7b86.md) | 80 | `result-track:6d74a459ab40209e9e3f7b86a329c33803d74e242b2e94873013bf6eef43582d` |
| 10 | `theorem` | [convexHull_exists_dist_ge2](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexhull-exists-dist-ge2--a592c20ecd35f48faf77d25d.md) | 89 | `result-track:a592c20ecd35f48faf77d25dde640a483e14b710785dc381edaf25b092b855f8` |
| 11 | `theorem` | [convexHull_ediam](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexhull-ediam--2de87c6ce9f543f656be8067.md) | 98 | `result-track:2de87c6ce9f543f656be80670009532c6209fd2bcf92fca6eba7a76c2da3473a` |
| 12 | `theorem` | [convexHull_diam](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/convexhull-diam--5d52813816276de0bd0be154.md) | 108 | `result-track:5d52813816276de0bd0be1547aea774e95aee0ad45d67e4796c2efdf037b9f25` |
| 13 | `theorem` | [isBounded_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/isbounded-convexhull--c1c5d0cf5267cef5e9c505a7.md) | 113 | `result-track:c1c5d0cf5267cef5e9c505a7469fdab111d777a3e38f56951242ac1169cc1d6b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/instance--991b793fafd156ee3545943e.md) | 117 | `declaration-track:991b793fafd156ee3545943ed073ff7c45abef03f444f09bb545d237084728cc` |
| 15 | `theorem` | [isConnected_setOf_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/isconnected-setof-sameray--7370cfecfc093cf464beea59.md) | 121 | `result-track:7370cfecfc093cf464beea59f428f28287e0bfdb0bd115af4a1105306186b72b` |
| 16 | `theorem` | [isConnected_setOf_sameRay_and_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/isconnected-setof-sameray-and-ne-zero--a1722e1cc45fc46a6a965a8e.md) | 127 | `result-track:a1722e1cc45fc46a6a965a8eb0fb53e117ebf04086fccdad3a3e263a7f2f2c43` |
| 17 | `lemma` | [norm_sub_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Convex/Variant0f6df5c61e1665867919dc6d6df6cf9e5bb9195c2e914ce51362084a3e495c92.lean/declarations/norm-sub-le-of-mem-segment--fa2d1a7749ac8b9199d39e4b.md) | 132 | `result-track:fa2d1a7749ac8b9199d39e4b2c61de27021141c48845d483c2e7970e2454f043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
