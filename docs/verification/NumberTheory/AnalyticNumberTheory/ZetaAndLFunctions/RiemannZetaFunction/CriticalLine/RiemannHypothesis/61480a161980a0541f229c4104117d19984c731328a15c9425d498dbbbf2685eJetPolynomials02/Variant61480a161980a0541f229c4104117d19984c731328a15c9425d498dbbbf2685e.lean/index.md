# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02.Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c36d6f0e6e2bfd56688726fde228dbd9513f561",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c36d6f0e6e2bfd56688726fde228dbd9513f561`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean.json)

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
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean/declarations/thetaphijetpolynomial--c85c523290a10edbab141451.md) | 17 | `declaration-track:c85c523290a10edbab141451287744395c5f8c9026b149a3b24ef5b1001e1d1f` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685eJetPolynomials02/Variant61480a161980a0541f229c4104117d19984c731328a15c9425d498dbbbf2685e.lean/declarations/thetaphijetpolynomial-abs-le--e7adfbf08b765ce1537905e1.md) | 26 | `result-track:e7adfbf08b765ce1537905e1c4da729a2236ef1a6369591a1f9e64113ac60a5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
