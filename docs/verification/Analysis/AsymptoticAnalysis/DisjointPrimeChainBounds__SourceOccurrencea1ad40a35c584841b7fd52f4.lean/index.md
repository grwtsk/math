# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "251102665590ff9a533578fd068bedbd933252a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `251102665590ff9a533578fd068bedbd933252a1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds`](../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound`](../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [harmonicMass_union](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/declarations/harmonicmass-union--d13cc1bfa76429c291f12adb.md) | 15 | `result-track:d13cc1bfa76429c291f12adb8f75637d41dca09a2e622073dc50c93c57381ca7` |
| 2 | `theorem` | [completion_prefix_mass](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/declarations/completion-prefix-mass--95b4adcfe7b3ebdb58dd24c2.md) | 20 | `result-track:95b4adcfe7b3ebdb58dd24c2118062301355cfda84a986e7b51652a919e54084` |
| 3 | `theorem` | [completion_total_mass](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/declarations/completion-total-mass--81905092a3aa301e4fdfdbb4.md) | 29 | `result-track:81905092a3aa301e4fdfdbb4765296f0380d45329c870f1f27708630475ee98b` |
| 4 | `def` | [budgetedChain](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/declarations/budgetedchain--03791c8afc0ec426070c5133.md) | 35 | `declaration-track:03791c8afc0ec426070c5133aee0b4ff87f9b3121788573b382789d634af2db3` |
| 5 | `theorem` | [AS_with_complete_admissible_chains_implies_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/DisjointPrimeChainBounds__SourceOccurrencea1ad40a35c584841b7fd52f4.lean/declarations/as-with-complete-admissible-chains-implies-p04--678e000bf98a6f2f9da7543f.md) | 46 | `result-track:678e000bf98a6f2f9da7543ffdc1834233d04c72d5d08c3362e1afc5931dfd7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
