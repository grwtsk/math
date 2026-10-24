# Verification target: GRWTSK.NumberTheory.DerivativeBound.Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48bb7940f906548d6b15cd41978ba8bc8a127f46",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DerivativeBound/Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/DerivativeBound/Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/DerivativeBound/Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48bb7940f906548d6b15cd41978ba8bc8a127f46`.

Source path: `GRWTSK/NumberTheory/DerivativeBound/Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DerivativeBound/Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Zeta` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Defs` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Within` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.AbsMax` — import line 28; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.BorelCaratheodory` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [derivativeBound](../../../../mathematics/NumberTheory/DerivativeBound/Variant9bd6293bef812c70c998a7eb7c9a8ed6b4ea1612a3b4d26053c575fbd161ab04.lean/declarations/derivativebound--9ebdedcf6a465d75f342d8e6.md) | 60 | `result-track:9ebdedcf6a465d75f342d8e61de01f35b607646305e96fa91ef7b13be5fdf545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
