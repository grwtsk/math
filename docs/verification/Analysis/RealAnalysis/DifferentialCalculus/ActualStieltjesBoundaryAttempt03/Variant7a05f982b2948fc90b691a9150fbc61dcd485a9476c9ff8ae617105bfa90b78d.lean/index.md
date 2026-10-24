# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualStieltjesBoundaryAttempt03.Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c13860f2d4e84edd5e9321daa09b3447a29155",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c13860f2d4e84edd5e9321daa09b3447a29155`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_termTSum_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/declarations/actual-termtsum-one--b2760f3e0bc5827751b2d371.md) | 24 | `result-track:b2760f3e0bc5827751b2d37190886b5f41103b0f0b416c693510edb21f6562b2` |
| 2 | `theorem` | [actual_regular_zeta_real_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/declarations/actual-regular-zeta-real-right--557023443a9879f1584bf56b.md) | 28 | `result-track:557023443a9879f1584bf56b62592b5c7ddcd78959480bd5fe6d8ec2c88cd85f` |
| 3 | `theorem` | [actual_real_regular_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/declarations/actual-real-regular-derivative-of-termtsum--ff200356df2cd7d644944a19.md) | 47 | `result-track:ff200356df2cd7d644944a19bf2b02ddac29cf140d9c2fdd7b70e5cbd42da4c0` |
| 4 | `theorem` | [actual_regular_zeta_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt03/Variant7a05f982b2948fc90b691a9150fbc61dcd485a9476c9ff8ae617105bfa90b78d.lean/declarations/actual-regular-zeta-derivative-of-termtsum--9110248a1609fc660b0dd74e.md) | 58 | `result-track:9110248a1609fc660b0dd74e1ae101037484a55e55414005edfa5484b32ece40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
