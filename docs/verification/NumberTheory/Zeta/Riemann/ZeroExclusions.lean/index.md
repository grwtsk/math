# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bec50d5cb82d43c6e815a59fe9c56a46756750c3",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroExclusions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bec50d5cb82d43c6e815a59fe9c56a46756750c3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroExclusions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZeroExclusions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [trivial_zero_is_excluded](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/declarations/trivial-zero-is-excluded--c0d4c975c9b509c0d6a038a9.md) | 25 | `result-track:c0d4c975c9b509c0d6a038a9340c28400cf7a6c1af576343a887ad8a7047a4ef` |
| 2 | `theorem` | [pole_is_excluded](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/declarations/pole-is-excluded--fdd89c0acd9d094a8ab03245.md) | 35 | `result-track:fdd89c0acd9d094a8ab0324577d403f2a1e1181b98c018b54b7d967e8a93cac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
