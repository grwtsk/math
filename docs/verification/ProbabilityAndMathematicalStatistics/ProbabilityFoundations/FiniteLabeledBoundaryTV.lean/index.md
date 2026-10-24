# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteLabeledBoundaryTV

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef98d8ed605c977f8ab20b777cde2961c314fff9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef98d8ed605c977f8ab20b777cde2961c314fff9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshTotalVariation`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [categoricalPatternCount](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterncount--f3ccd22e98f4a26085ca77c7.md) | 34 | `declaration-track:f3ccd22e98f4a26085ca77c74dfaadd883af6e578d5ed4bbe887c1d03cf11bcc` |
| 2 | `theorem` | [categoricalPatternCount_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterncount-nonneg--47eaa830e02aa1fb3acd595c.md) | 40 | `result-track:47eaa830e02aa1fb3acd595c2c6f9b6cebe271cb676ac7dd0df6e8dce1abc227` |
| 3 | `theorem` | [categoricalPatternCount_total](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterncount-total--c39aa8db46505314cc9660cb.md) | 50 | `result-track:c39aa8db46505314cc9660cbf7c777daee8afe003964c9b01cbc7e5f3c95a62f` |
| 4 | `theorem` | [categoricalPatternCount_split](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterncount-split--dc903c187e49f326a8db513e.md) | 67 | `result-track:dc903c187e49f326a8db513e719568735e126511220960c982f20c9e7b8db3f9` |
| 5 | `theorem` | [categoricalPatternCount_agree_off](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterncount-agree-off--e215ce3494f1e722b689b1cf.md) | 78 | `result-track:e215ce3494f1e722b689b1cfa5faa2d18a0043877b731a1c1277075e65714276` |
| 6 | `theorem` | [categoricalPatternDifference_supported](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterndifference-supported--e4f7e219ae027ddda5f32212.md) | 91 | `result-track:e4f7e219ae027ddda5f32212f0c69a2d04cb1747a2b0bfd75c86865550849a6c` |
| 7 | `theorem` | [categoricalPatternDifference_abs_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatterndifference-abs-le--d3ba27a06375d3a2118d3df9.md) | 105 | `result-track:d3ba27a06375d3a2118d3df96d5cbeff0f5462296d9473eb6fea36fbcf1b524f` |
| 8 | `theorem` | [categoricalPatternL1_le_twice_exception](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricalpatternl1-le-twice-exception--603be0682d9961157b9ecdc8.md) | 121 | `result-track:603be0682d9961157b9ecdc8b385c9e06aff9cb79ac903c616d70304ba642a49` |
| 9 | `def` | [categoricalTotalVariation](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricaltotalvariation--603c8e4bdd27856ea0b630e3.md) | 143 | `declaration-track:603c8e4bdd27856ea0b630e3c3e66d6b3fa0efa50a297b05abf63353586f3232` |
| 10 | `theorem` | [categoricalTotalVariation_le_exception](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/categoricaltotalvariation-le-exception--425aa9898310d753e2589390.md) | 151 | `result-track:425aa9898310d753e25893900ff1c10a67e40e14ba73345c12e75b2d74424e19` |
| 11 | `theorem` | [coordinateIndicator_eq_pattern](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/coordinateindicator-eq-pattern--be6667025a392938b70230ff.md) | 175 | `result-track:be6667025a392938b70230ffb3942cd97a04185c7e8b39a79b6bd7eb9d4ca5b1` |
| 12 | `theorem` | [fullCubePatternCount_eq_categorical](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/fullcubepatterncount-eq-categorical--49053f7244f02488068956f8.md) | 196 | `result-track:49053f7244f02488068956f8e8ecd4e7d24a2df3c076c6113d89d5828a588827` |
| 13 | `theorem` | [fullCubeEmpirical_eq_categorical](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/fullcubeempirical-eq-categorical--aa8bfefef322b9e4fd446fa0.md) | 209 | `result-track:aa8bfefef322b9e4fd446fa0e525123eec7b218b1a8fd94db5748e60f22088a1` |
| 14 | `theorem` | [fullCubeBoundaryTV_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/fullcubeboundarytv-le--e0fefc5a0d31de8fb00e504c.md) | 219 | `result-track:e0fefc5a0d31de8fb00e504c6da92baf6b879ff65fa04dac3333cd390f5a478c` |
| 15 | `theorem` | [missing_label_agreement_fixture](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/missing-label-agreement-fixture--4eb1d5358474e44a10fd6997.md) | 231 | `result-track:4eb1d5358474e44a10fd69977c1331248747982fa3d6f3abe5d21f9d591caf0f` |
| 16 | `theorem` | [one_root_sharp_tv_fixture](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/declarations/one-root-sharp-tv-fixture--9e1e4fd4e4259a17696cbe8b.md) | 238 | `result-track:9e1e4fd4e4259a17696cbe8bba946ade5f6afc6ecb780c6b84b8b053f3128667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
