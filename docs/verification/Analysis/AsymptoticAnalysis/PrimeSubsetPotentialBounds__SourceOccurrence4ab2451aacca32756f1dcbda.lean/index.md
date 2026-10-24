# Verification target: GRWTSK.Analysis.Asymptotics.PrimeSubsetPotentialBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623`.

Source path: `GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [harmonicMass_subset](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/declarations/harmonicmass-subset--291946689f1e1a16ed318d3a.md) | 14 | `result-track:291946689f1e1a16ed318d3a0128f7d3ee5351287b9a211edbfd9a934facaad3` |
| 2 | `theorem` | [subset_potential_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/declarations/subset-potential-bound--b9c7ad29ecec91d7a9ad45e5.md) | 21 | `result-track:b9c7ad29ecec91d7a9ad45e5ea392270c9a90d56596b32369e84c7b764956e30` |
| 3 | `theorem` | [AS_implies_uniform_subset_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/declarations/as-implies-uniform-subset-polynomial--bd4765dfbdd0dc4ca1417a47.md) | 99 | `result-track:bd4765dfbdd0dc4ca1417a47b3e70b6e270f006bf244cce2c68071d3b8049dc6` |
| 4 | `theorem` | [primeBand_subset_inventory](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/declarations/primeband-subset-inventory--608d985e39cf0d830b992cfe.md) | 176 | `result-track:608d985e39cf0d830b992cfe18b86f4f78c4c1d6f231f4d9ed2d4d302e7ce946` |
| 5 | `theorem` | [threeQuarterBand_eventually_eligible](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/declarations/threequarterband-eventually-eligible--b4634f4b80b6ea6b408919c8.md) | 190 | `result-track:b4634f4b80b6ea6b408919c8c6b7468fcad6ceac1226f5f51f83cf419a8e4060` |
| 6 | `theorem` | [AS_implies_threeQuarterBand_eventual_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/declarations/as-implies-threequarterband-eventual-polynomial--bd7a57bbea8095576eae7eaf.md) | 209 | `result-track:bd7a57bbea8095576eae7eafed0fa9edda26a53f6fa3d28bca7db3c1e9301c90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
