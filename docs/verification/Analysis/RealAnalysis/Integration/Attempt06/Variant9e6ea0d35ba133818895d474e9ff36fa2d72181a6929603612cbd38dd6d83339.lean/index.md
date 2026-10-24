# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt06.Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c6f152648d81a9d059997bcf077928305504739",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c6f152648d81a9d059997bcf077928305504739`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/normalizedtransform--40b32d17026b398a6c5c07d7.md) | 33 | `declaration-track:40b32d17026b398a6c5c07d7273005976b048733af8573ebcb1b1f7a4958696a` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/boundarytransform--7698c6421f22d9fee7b1b1ed.md) | 38 | `declaration-track:7698c6421f22d9fee7b1b1edc956bf0966b9059e06e27d406efc89b0e9b5811e` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/normalizedtransform-dictionary--6258287c0e283bc136fd761f.md) | 41 | `result-track:6258287c0e283bc136fd761f7006c0e6a161a39925469a33ce870a251c5807c3` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/normalized-integrand-integrable--1b3f61866e77c260f697bd43.md) | 51 | `result-track:1b3f61866e77c260f697bd435b8b47bebdfdba34c0e388f8f43fe9f6c7e13a23` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/full-complex-correlation-square--fd2bcf935f0de7bc92f01022.md) | 62 | `result-track:fd2bcf935f0de7bc92f01022e0d6816b9702abfed34064c4e7bf3a9892e3cb3d` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/interval-complex-correlation-square--581c05cc52fbf17f9962e80e.md) | 92 | `result-track:581c05cc52fbf17f9962e80e1e9d2c7318804f870f8417b76c1f9bff95cd6300` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/critical-complex-ibp--85088ce892821292fed6d9ee.md) | 113 | `result-track:85088ce892821292fed6d9eed73705530296c4eb348153ec7d7b3419be4a860f` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt06/Variant9e6ea0d35ba133818895d474e9ff36fa2d72181a6929603612cbd38dd6d83339.lean/declarations/boundary-transform-exact--43e6cf85699db3cdb4cce12d.md) | 161 | `result-track:43e6cf85699db3cdb4cce12dbab2e4bab78764de1ee5b025e3a74d0a644bf563` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
