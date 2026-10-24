# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevAbelAttempt02.Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cdd2464acaa259838d0cebe59d4edf6a87d5d63",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cdd2464acaa259838d0cebe59d4edf6a87d5d63`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTMoment` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/inverse-hasderivat--ad47f068b85fba76ca739e33.md) | 18 | `result-track:ad47f068b85fba76ca739e330eb095e6480626b07a655b1312b61c904cca789b` |
| 2 | `theorem` | [inverse_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/inverse-derivative-integrable--6177ee5f77aaa120b8e374f9.md) | 23 | `result-track:6177ee5f77aaa120b8e374f9c041ea180a6474056609c4fbeb4722b0a042cc61` |
| 3 | `theorem` | [weightedMangoldt_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/weightedmangoldt-sum-icc--1a3859e30e2be5c10ab86709.md) | 36 | `result-track:1a3859e30e2be5c10ab86709e527d4cd6c35a04fd830a5caef110ab461b4463c` |
| 4 | `theorem` | [weightedMangoldt_eq_psi_add_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/weightedmangoldt-eq-psi-add-integral--d481f7b6fe33f2c41f796f9d.md) | 43 | `result-track:d481f7b6fe33f2c41f796f9dee14990fce1bcf205fbb1f2cc7709ede9aa06bb7` |
| 5 | `theorem` | [psi_integral_log_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/psi-integral-log-dictionary--6e1f921c74ab84b1a43e348d.md) | 64 | `result-track:6e1f921c74ab84b1a43e348dccc077e16f4b514115e2bad03b2eb9ea05038ee2` |
| 6 | `theorem` | [mangoldtLogPrefix_eq_psiRelativeError_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/mangoldtlogprefix-eq-psirelativeerror-integral--c7c2cad81b6bd9e6080f2bc0.md) | 82 | `result-track:c7c2cad81b6bd9e6080f2bc09950097f88fcff7934c61cedac1e9334ec1e0733` |
| 7 | `theorem` | [mangoldtLogError_centered_eq_psiRelativeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/mangoldtlogerror-centered-eq-psirelativeerror--40651bea63e4a228a1047338.md) | 93 | `result-track:40651bea63e4a228a1047338bd8e4d386110aeee77f2d800eb9c854382d90880` |
| 8 | `theorem` | [mangoldtLogError_centered_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variant2fb3a4a9c7204877003d0a8a9dc6807f0243e48ab415ca972f6a339dd631cece.lean/declarations/mangoldtlogerror-centered-eq-interval--fe2554b38a1582b6c86f7607.md) | 109 | `result-track:fe2554b38a1582b6c86f7607682027957a2d51888f0a219ab446a24dc3b24afa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
