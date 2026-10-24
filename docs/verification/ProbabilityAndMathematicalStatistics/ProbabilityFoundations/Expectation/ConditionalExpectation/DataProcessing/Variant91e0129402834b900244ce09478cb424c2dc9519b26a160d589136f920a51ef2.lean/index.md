# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.DataProcessing.Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93946a6fef0ae4d0214857d8d031e11e9aaae0a5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93946a6fef0ae4d0214857d8d031e11e9aaae0a5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Approximation` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Deriv` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.InformationTheory.KullbackLeibler.ChainRule` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondJensen` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.RadonNikodym` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_condExp_rnDeriv_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/map-condexp-rnderiv-le--1007e72dc968d2fb668d8790.md) | 56 | `result-track:1007e72dc968d2fb668d8790c66fc928bd651b520acd56e5e461c990029f0410` |
| 2 | `lemma` | [comp_rnDeriv_map_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/comp-rnderiv-map-le--7e311a238d093fe2095133fb.md) | 64 | `result-track:7e311a238d093fe2095133fbcd9dfe21091a8d297e3f4868806904017037dcd3` |
| 3 | `lemma` | [integrable_comp_rnDeriv_map](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/integrable-comp-rnderiv-map--500e9d5aa12a9f8c1f738420.md) | 75 | `result-track:500e9d5aa12a9f8c1f7384209fcbc5351910e925f03c3958a872c0afa4c168e9` |
| 4 | `lemma` | [comp_rnDeriv_trim_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/comp-rnderiv-trim-le--18bbbbf3bd30de0b7fc428c3.md) | 95 | `result-track:18bbbbf3bd30de0b7fc428c3d42c3f6b63c5da826231e15f09eae0de21ae5685` |
| 5 | `lemma` | [integrable_comp_rnDeriv_trim](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/integrable-comp-rnderiv-trim--66e6e04b18b12d837e10b53f.md) | 106 | `result-track:66e6e04b18b12d837e10b53fbad07e63645cb08ce74805039bbeaa589603a9f3` |
| 6 | `lemma` | [integrable_comp_condExp_rnDeriv](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/integrable-comp-condexp-rnderiv--4fe91aa70c2e0a2e32921f12.md) | 123 | `result-track:4fe91aa70c2e0a2e32921f127465a48b55eb65ac68a84ffaafafe8bba9154e9f` |
| 7 | `lemma` | [integrable_llr_map](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/integrable-llr-map--2ed0d670e53674e06f33e840.md) | 139 | `result-track:2ed0d670e53674e06f33e8402ff215224926d18b178b91b44042d694eb5c470f` |
| 8 | `lemma` | [toReal_klDiv_map_of_ac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/toreal-kldiv-map-of-ac--5731f6ec90bc78e5ad20759a.md) | 146 | `result-track:5731f6ec90bc78e5ad20759a2b3c408a8154193cdb827d0dbb852f553d176d7a` |
| 9 | `lemma` | [klDiv_map_of_ac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/kldiv-map-of-ac--e3146a8d15718646fb3935ab.md) | 154 | `result-track:e3146a8d15718646fb3935abcc5087c472e3e42c15e732a69c1e88faddcbaaa9` |
| 10 | `lemma` | [toReal_klDiv_trim_of_ac](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/toreal-kldiv-trim-of-ac--9c14bb2e25569467c0d0135e.md) | 161 | `result-track:9c14bb2e25569467c0d0135e8fdd9e4d393653038e525b3869533fb4157d0ce7` |
| 11 | `theorem` | [klDiv_map_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/kldiv-map-le--eadccbb3085b5e6c62f13b51.md) | 168 | `result-track:eadccbb3085b5e6c62f13b51c706eafc92e4819c66174c6c12ae7ae8b3b2f2cb` |
| 12 | `theorem` | [klDiv_trim_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/kldiv-trim-le--af8c065cf2e70eadcd0f09fa.md) | 188 | `result-track:af8c065cf2e70eadcd0f09fa533196b1942be5526fcf32b040d7e3f837f471ee` |
| 13 | `theorem` | [klDiv_comp_right_le](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/declarations/kldiv-comp-right-le--229dcca31bd15f9285f36f69.md) | 194 | `result-track:229dcca31bd15f9285f36f690f59ffcf1377146f768052648c841cbb3093fda4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
