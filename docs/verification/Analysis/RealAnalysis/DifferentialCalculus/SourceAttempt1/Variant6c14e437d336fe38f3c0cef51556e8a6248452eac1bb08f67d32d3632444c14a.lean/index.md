# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt1.Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b199a82edb1a09d4de4c2426799683d8205b7f2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b199a82edb1a09d4de4c2426799683d8205b7f2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [peanoScale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/peanoscale--8cf7454997304032f1e3b7c2.md) | 26 | `declaration-track:8cf7454997304032f1e3b7c200fa87305b5f9f542d6833c68bbc9eb2ed7fc16f` |
| 2 | `def` | [boundaryPeano](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/boundarypeano--c0112c9176214c2164bef0ae.md) | 29 | `declaration-track:c0112c9176214c2164bef0ae98069f89783dc83bd9dc8854eb814b1c117b5fb8` |
| 3 | `def` | [boundaryKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/boundarykernel--860cfaf2d2ca200f1073b368.md) | 33 | `declaration-track:860cfaf2d2ca200f1073b3681da1048959b6286bc36ca7ab11ace597ffa6fb9b` |
| 4 | `theorem` | [boundaryPeano_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/boundarypeano-contdiff-two--6aa86f9a8d4955e585a6ef7e.md) | 37 | `result-track:6aa86f9a8d4955e585a6ef7eaf163774f69500fae7ec3742c2d4d2019a52ee8e` |
| 5 | `theorem` | [boundaryPeano_second_deriv_eq_scaled](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/boundarypeano-second-deriv-eq-scaled--51942ad5b48dabb223482591.md) | 42 | `result-track:51942ad5b48dabb223482591796d68d3369cdc5da384b9907d586ade74057426` |
| 6 | `theorem` | [boundaryPeano_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/boundarypeano-second-deriv--396bc3167daed526811b1aac.md) | 62 | `result-track:396bc3167daed526811b1aac662d60115d2e5ec091f6e25b5310199eb11b94f5` |
| 7 | `theorem` | [boundaryPeano_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/boundarypeano-nonneg--198275610d3f058d9adaf17b.md) | 76 | `result-track:198275610d3f058d9adaf17b313c9bc2919364aec8b4a30b12e197ae7686d7d7` |
| 8 | `theorem` | [peanoScale_mul_closedPrimeMoment_eq_atoms](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/peanoscale-mul-closedprimemoment-eq-atoms--17ff7da6bb5180696b3657e5.md) | 84 | `result-track:17ff7da6bb5180696b3657e5241ab6b49ed4fff3cb690966373961cb0d9f1595` |
| 9 | `theorem` | [peanoScale_mul_mertensResidual_eq_atoms](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/declarations/peanoscale-mul-mertensresidual-eq-atoms--29371f1b603e04615351dee2.md) | 99 | `result-track:29371f1b603e04615351dee27174005dddb88dc0367469715fcafb766b1f61e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
