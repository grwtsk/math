# Verification target: GRWTSK.NumberTheory.SourceNativeDirichletMoments.Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec47dfc19abafa0889d0e20e088290804329318",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec47dfc19abafa0889d0e20e088290804329318`.

Source path: `GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/dirichletmoment--6a8b1e36f7becb658af96b85.md) | 23 | `declaration-track:6a8b1e36f7becb658af96b85c7aa00ee95027e162b408b806a01ee3ad16a8ee1` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/dirichletmoment-nonneg--99d3c1176cba42c9ef8ebec3.md) | 27 | `result-track:99d3c1176cba42c9ef8ebec313d3257bb900bc54529da1c5a5ce869ed1d9882c` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/mangoldt-abscissa-le-one--0d8f178f519d92d40a30172a.md) | 34 | `result-track:0d8f178f519d92d40a30172ac82874116e03626d30bd15ce28b6f4442fd32bec` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/iterate-logmul-eq--19dc0628fcbd98931ba37e75.md) | 40 | `result-track:19dc0628fcbd98931ba37e75222ed8d2d8de16c25813c42d520fd5b459cdcaa3` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/dirichletmoment-summable--b94ee6ebbede754a08d4a505.md) | 49 | `result-track:b94ee6ebbede754a08d4a505066e323993465315ed98ad9fb5d3a47d73ed9ef0` |
| 6 | `theorem` | [log_moment_series_eq](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/log-moment-series-eq--28cff2de60ba352f8dcf0d14.md) | 71 | `result-track:28cff2de60ba352f8dcf0d14e7e8e843dd3a18371e1f937d790a0a9d6fd108a4` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/native-series-hasderivat-two--c65e4897fd46e3246f1f086b.md) | 98 | `result-track:c65e4897fd46e3246f1f086bc6fcc7317178d00b9b18a731497e17e21ff77555` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../mathematics/NumberTheory/SourceNativeDirichletMoments/Variant65f4a1094d93a8a250a67253fe0990bf4e85238053991033a00dc2ccf2de9905.lean/declarations/native-series-second-derivative-two--ca34da41e1b442793d98d49e.md) | 109 | `result-track:ca34da41e1b442793d98d49eedfba9a5766836ad7651d86e9fba2456c1d2e675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
