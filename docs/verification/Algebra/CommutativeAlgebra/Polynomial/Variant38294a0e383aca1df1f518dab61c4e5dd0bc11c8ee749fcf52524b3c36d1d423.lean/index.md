# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4603a5d433de2b44d65bcf8eaa8a0bf3e7e1af54",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4603a5d433de2b44d65bcf8eaa8a0bf3e7e1af54`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Rolle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_roots_toFinset_le_card_roots_derivative_diff_roots_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean/declarations/card-roots-tofinset-le-card-roots-derivative-diff-roots-succ--bcf33a57d6aab2d75876060a.md) | 42 | `result-track:bcf33a57d6aab2d75876060aab360e32bc3f0dcc159ecc2bf98059d31b28487b` |
| 2 | `theorem` | [card_roots_toFinset_le_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean/declarations/card-roots-tofinset-le-derivative--adcde40a1f7391ce165c1656.md) | 56 | `result-track:adcde40a1f7391ce165c16566ee7d561d8e63b73c6e8eaa78c5989e52ba4af78` |
| 3 | `theorem` | [card_roots_le_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean/declarations/card-roots-le-derivative--e7857b01fd3dbedbb8b35f70.md) | 63 | `result-track:e7857b01fd3dbedbb8b35f70a33765935db317ea86b1fc907dd0eac64b016b26` |
| 4 | `theorem` | [card_rootSet_le_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant38294a0e383aca1df1f518dab61c4e5dd0bc11c8ee749fcf52524b3c36d1d423.lean/declarations/card-rootset-le-derivative--f3226948a58e88c8ed35556d.md) | 94 | `result-track:f3226948a58e88c8ed35556d7833a4be10037f927b98a9a1cc2afe9d4b5a46b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
