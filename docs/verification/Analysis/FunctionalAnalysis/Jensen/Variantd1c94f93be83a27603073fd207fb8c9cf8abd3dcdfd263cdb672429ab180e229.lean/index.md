# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Jensen.Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a73d553653e061a1168aa6ed7b5b55cca8e7ceb9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a73d553653e061a1168aa6ed7b5b55cca8e7ceb9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.map_centerMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/convexon-map-centermass-le--fb3b87ac804cc546d23a9ce8.md) | 46 | `result-track:fb3b87ac804cc546d23a9ce89350dc292a09dc68a531653f20d489879b2359b3` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/concaveon-le-map-centermass--ed91f58ccdbe110e147853b4.md) | 56 | `result-track:ed91f58ccdbe110e147853b45dfa899fb5abec5cfad79b29f332e8af9e29f17b` |
| 3 | `theorem` | [ConvexOn.map_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/convexon-map-sum-le--a9a01f500d8bd81d3f5432e4.md) | 63 | `result-track:a9a01f500d8bd81d3f5432e423083d770ef4f91a1df38585e050b94ee13b0b14` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/concaveon-le-map-sum--3a419ac36fcc1b3e8306865f.md) | 70 | `result-track:3a419ac36fcc1b3e8306865fc2a6dae5eb13804a7ee8f3dd91b82dfa75b0583f` |
| 5 | `theorem` | [le_sup_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/le-sup-of-mem-convexhull--e51badf36347b1cc16751a0f.md) | 87 | `result-track:e51badf36347b1cc16751a0f8479c53d5223c25c5300d9a730d97ead5a4b3af6` |
| 6 | `theorem` | [inf_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/inf-le-of-mem-convexhull--d2403610e5ca3862ad7a42da.md) | 95 | `result-track:d2403610e5ca3862ad7a42da882e03795b50f6ae39e9b3b77dae357cb918566d` |
| 7 | `theorem` | [ConvexOn.exists_ge_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/convexon-exists-ge-of-centermass--2a5b18be57e96de84ec24174.md) | 103 | `result-track:2a5b18be57e96de84ec24174b8f4b1685b99c8c2e230861ee3b6bdb2ddcb0677` |
| 8 | `theorem` | [ConcaveOn.exists_le_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/concaveon-exists-le-of-centermass--e84d6f1e53c71cc3f551c6f2.md) | 120 | `result-track:e84d6f1e53c71cc3f551c6f20faeb06214294d37f17a0d23228c4afffd3bbdf8` |
| 9 | `theorem` | [ConvexOn.exists_ge_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/convexon-exists-ge-of-mem-convexhull--aa65e19ae1a1ab2bd063a933.md) | 127 | `result-track:aa65e19ae1a1ab2bd063a9337e29ebcaccb977f750660d702d5aa5493cf79ce5` |
| 10 | `theorem` | [ConcaveOn.exists_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantd1c94f93be83a27603073fd207fb8c9cf8abd3dcdfd263cdb672429ab180e229.lean/declarations/concaveon-exists-le-of-mem-convexhull--2fdabb16f7cb00de67742eeb.md) | 139 | `result-track:2fdabb16f7cb00de67742eeba033bb0058254a9cf1ce067a4a46a703e0f5362d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
