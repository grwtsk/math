# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ExternalPNTAndChebyshevThetaPortControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d25278c4c6f7c58307485fd82ae0e7fe01d16eeb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d25278c4c6f7c58307485fd82ae0e7fe01d16eeb`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndChebyshevThetaPort`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [replay_sourcePrimeLogSum_eq_localTheta](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/declarations/replay-sourceprimelogsum-eq-localtheta--1e132175eee030aacb343085.md) | 16 | `result-track:1e132175eee030aacb3430858b213c0a2a2bbb60ad1bf9842c1d14252527dbad` |
| 2 | `theorem` | [replay_PNTAndAsymptotic_iff_namedThetaPNT](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/declarations/replay-pntandasymptotic-iff-namedthetapnt--49981157062b262076965c53.md) | 22 | `result-track:49981157062b262076965c53e8599c0f5242403468ff96c3cd8eb3349f5aedd8` |
| 3 | `theorem` | [no_integerPsiCapacity_of_externalPNTAnd_proof](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/declarations/no-integerpsicapacity-of-externalpntand-proof--eaac877ca652a8486521cc25.md) | 29 | `result-track:eaac877ca652a8486521cc25cec4376ce72186b4041708d0b71a48b597cc5bd4` |
| 4 | `def` | [remainingSourcePortObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/declarations/remainingsourceportobligations--cc8007a6ed6b5ac16bd3eba9.md) | 37 | `declaration-track:cc8007a6ed6b5ac16bd3eba9412ede21fcc476c3c590223e1d0dd4d908bdc8ab` |
| 5 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ExternalPNTAndChebyshevThetaPortControls.lean/declarations/prohibitedpromotions--66d03fec0501aefb45fa9c86.md) | 45 | `declaration-track:66d03fec0501aefb45fa9c867b9b6192ada1ffe850f17fb11237731d6214041a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
