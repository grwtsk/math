# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a31dc0f484562b4891fb9516a8e92201de24ad7b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a31dc0f484562b4891fb9516a8e92201de24ad7b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittilt--68f0a36ee34745087b5865cd.md) | 29 | `declaration-track:68f0a36ee34745087b5865cd8ed360a75b4779c1e374426e4ac7df2c3f937a6f` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittiltenergy--6a31bbcfd84119983150a058.md) | 33 | `declaration-track:6a31bbcfd84119983150a058ddb7505db12af6b7c95a4d3b8f41374bf4dd74fc` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittilt-sq-integrable--6cb09b30a1dd43259ac46f69.md) | 37 | `result-track:6cb09b30a1dd43259ac46f690aaf95792fdfdd69709a49ef58474804a65ff5cd` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittiltenergy-eq-integral--61af826b2d4a56f43fac12a5.md) | 52 | `result-track:61af826b2d4a56f43fac12a52a4f5b84b6c74818f4d253aadbb3e09a4b082f38` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittilt-transform--0873b85ce2e4f8ccfea31629.md) | 62 | `result-track:0873b85ce2e4f8ccfea31629fb89b3ec6cfd6f776574cad5208db7cca97e398c` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittilt-integral-sq-le--9b6fbebddbc38c9d0827810b.md) | 70 | `result-track:9b6fbebddbc38c9d0827810ba0936b6e5d0dcbecedaf552fb5110c237610e47b` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittiltenergy-eventually-ge--6fd8d0b7b6391eede9770d0c.md) | 100 | `result-track:6fd8d0b7b6391eede9770d0c9c33d29848fb303ecf97798c932185f7e13d9cf1` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantf6070574307f0fdc5a3586280d3e8a60ca077d8085def62b419c0c295c19ddff.lean/declarations/actualunittiltenergy-tendsto-attop--40aecb56caa955b5794ea164.md) | 150 | `result-track:40aecb56caa955b5794ea164ff047e38dea3b7a41255e184776665e7664f03f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
