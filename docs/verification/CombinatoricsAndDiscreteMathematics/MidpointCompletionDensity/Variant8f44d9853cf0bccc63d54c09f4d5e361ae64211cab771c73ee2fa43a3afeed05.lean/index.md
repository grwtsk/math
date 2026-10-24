# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MidpointCompletionDensity.Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b282f6790eef6d2005521f393b9aa75186c18ee7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b282f6790eef6d2005521f393b9aa75186c18ee7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.OpenElement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.FiniteHammingSupport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.GeodesicCompletion` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CoordinateSeed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/coordinateseed--e91d371b5385a995290c3eaa.md) | 32 | `declaration-track:e91d371b5385a995290c3eaa579049af7b07db0381e8ef407aabab034d8ce111` |
| 2 | `def` | [CoordinateSeedMidpointDensityStatement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/coordinateseedmidpointdensitystatement--99aa74145e8ce14af9f54379.md) | 37 | `declaration-track:99aa74145e8ce14af9f54379872a11fcb96529e13d96f4f22cdc2a039b2a9a64` |
| 3 | `def` | [coordinateSeedMidpointDensityOpenElement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/coordinateseedmidpointdensityopenelement--803520881729a2fd3cfb7895.md) | 43 | `declaration-track:803520881729a2fd3cfb7895cfe2e6637748e97e2f6486a60153d548c78043fa` |
| 4 | `theorem` | [retainGeneratedBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/retaingeneratedby--73f98025d217ab412cb02606.md) | 58 | `result-track:73f98025d217ab412cb026062c124c4dddb4e210ad88b019c97ff4f2289e6d29` |
| 5 | `theorem` | [generatedIncidenceOfSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/generatedincidenceofsupport--02a8a70d552a97752994b42c.md) | 77 | `result-track:02a8a70d552a97752994b42ce662749186e7c22548c26580856c1067363646c2` |
| 6 | `theorem` | [coordinateSeedMidpointDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/coordinateseedmidpointdensity--53c2ae9c0f14b84822db75d3.md) | 200 | `result-track:53c2ae9c0f14b84822db75d3cc21a398225ea0555aa41070d360ca3fa018895e` |
| 7 | `def` | [coordinateSeedMidpointDensityTheoremElement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MidpointCompletionDensity/Variant8f44d9853cf0bccc63d54c09f4d5e361ae64211cab771c73ee2fa43a3afeed05.lean/declarations/coordinateseedmidpointdensitytheoremelement--8e19203887d0df8a60ccb16b.md) | 208 | `declaration-track:8e19203887d0df8a60ccb16b28c1d7facfb3ba89c426b968e412c0a9fc4679c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
