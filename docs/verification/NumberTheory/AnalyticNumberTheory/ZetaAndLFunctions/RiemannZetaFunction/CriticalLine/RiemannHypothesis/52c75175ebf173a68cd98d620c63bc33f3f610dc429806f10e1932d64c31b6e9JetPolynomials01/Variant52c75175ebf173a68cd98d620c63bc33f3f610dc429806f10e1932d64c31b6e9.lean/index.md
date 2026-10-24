# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01.Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "558f4f68a08cc5f5b47c7b20a890919bfd9ff3e2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `558f4f68a08cc5f5b47c7b20a890919bfd9ff3e2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean/declarations/thetaphijetpolynomial--7b8e82e195f6d1d056d5dc12.md) | 17 | `declaration-track:7b8e82e195f6d1d056d5dc129d1025a688065bbadaa97b6d35bd7fc5ebcf8b88` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9JetPolynomials01/Variant52c75175ebf173a68cd98d620c63bc33f3f610dc429806f10e1932d64c31b6e9.lean/declarations/thetaphijetpolynomial-abs-le--055dce0246190ab3962cd5d7.md) | 26 | `result-track:055dce0246190ab3962cd5d7fc0cd57ac88686c439d7d21ff0f06c8c77ac32ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
