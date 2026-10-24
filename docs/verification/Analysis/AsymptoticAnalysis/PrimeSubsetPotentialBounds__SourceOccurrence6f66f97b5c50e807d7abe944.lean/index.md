# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PrimeSubsetPotentialBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean.json)

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
| 1 | `theorem` | [harmonicMass_subset](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/declarations/harmonicmass-subset--acc07f903dc1144b822c58b0.md) | 14 | `result-track:acc07f903dc1144b822c58b09c9f61b26661a29a5059fb55a42136e6db583ae7` |
| 2 | `theorem` | [subset_potential_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/declarations/subset-potential-bound--9457e1f5bf9e5122efa7ff7d.md) | 21 | `result-track:9457e1f5bf9e5122efa7ff7ddcb931379ec27d44025be192ac2fbdf6e6ccf778` |
| 3 | `theorem` | [AS_implies_uniform_subset_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/declarations/as-implies-uniform-subset-polynomial--644d3f493cc20a9c116d8f2a.md) | 99 | `result-track:644d3f493cc20a9c116d8f2a484aff13d962500b29fd069da7202080b5db917f` |
| 4 | `theorem` | [primeBand_subset_inventory](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/declarations/primeband-subset-inventory--95507c074a56303780054162.md) | 176 | `result-track:95507c074a5630378005416264a78669b1de72e81548397485505ecf50b10eb3` |
| 5 | `theorem` | [threeQuarterBand_eventually_eligible](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/declarations/threequarterband-eventually-eligible--8ea615a7cff754bd14d68dca.md) | 190 | `result-track:8ea615a7cff754bd14d68dca8fe8bb0d384d24b96a0e8633bd360293593ece9e` |
| 6 | `theorem` | [AS_implies_threeQuarterBand_eventual_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence6f66f97b5c50e807d7abe944.lean/declarations/as-implies-threequarterband-eventual-polynomial--c0638aa26f7dbd976b0e2ba6.md) | 209 | `result-track:c0638aa26f7dbd976b0e2ba617c2529c9edb115d8240e603007a5d7e8e7c4cb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
