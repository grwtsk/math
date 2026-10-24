# Verification target: GRWTSK.LinearAlgebra.Schrodinger.SampledPotential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57cb5cfe99168d654f8ee2bba20f131d7af9b5d8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Schrodinger/SampledPotential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57cb5cfe99168d654f8ee2bba20f131d7af9b5d8`.

Source path: `GRWTSK/LinearAlgebra/Schrodinger/SampledPotential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Schrodinger/SampledPotential.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledPotential](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/declarations/sampledpotential--0b0c0316f9721683dc95ec34.md) | 18 | `declaration-track:0b0c0316f9721683dc95ec34ec3e71121b9694616b47a2e2e353eefb7d94b9f8` |
| 2 | `def` | [transfer](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/declarations/transfer--d26bfea68798dfa3e3fe83f1.md) | 20 | `declaration-track:d26bfea68798dfa3e3fe83f1509383aa72f57c6a89872853816b21063a7dc9e2` |
| 3 | `theorem` | [transfer_det](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/declarations/transfer-det--33c482dfb0e3ff7712177088.md) | 22 | `result-track:33c482dfb0e3ff77121770885e5f8973791f2e88b10a989a54d6d399554b172b` |
| 4 | `theorem` | [transfer_trace](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/declarations/transfer-trace--cb2ae753a3ab5ae7e0c68e0b.md) | 24 | `result-track:cb2ae753a3ab5ae7e0c68e0bd93d531458fb089ce113a78e2e6538a7bc366ded` |
| 5 | `theorem` | [transfer_unbounded_trace](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/declarations/transfer-unbounded-trace--400fde0642dceb615e410e6f.md) | 26 | `result-track:400fde0642dceb615e410e6fa243260593cf342579026992a4dd41e1eb520a49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
