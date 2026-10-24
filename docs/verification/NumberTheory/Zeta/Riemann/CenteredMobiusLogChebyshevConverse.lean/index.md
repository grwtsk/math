# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevConverse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cca8ce62b8af6a33c248bd428f27965d7711fe8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cca8ce62b8af6a33c248bd428f27965d7711fe8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevStrength`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicChebyshevError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/declarations/dyadicchebysheverror--d3489ab465dc0c970b7edaf7.md) | 15 | `declaration-track:d3489ab465dc0c970b7edaf769f97c609aa6ad290860c4f1b32b00a851a74fce` |
| 2 | `theorem` | [dyadicChebyshevError_increment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/declarations/dyadicchebysheverror-increment--5be537ebbf5699bfa59eae14.md) | 18 | `result-track:5be537ebbf5699bfa59eae14ff35cf4dcc76fec137400518163a2385441bd398` |
| 3 | `theorem` | [dyadicChebyshevError_eq_base_add_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/declarations/dyadicchebysheverror-eq-base-add-sum--5604cb1b2fe5c4423c7c5654.md) | 31 | `result-track:5604cb1b2fe5c4423c7c5654538fbe2fef169034a4266c3a6b45d170a8967a26` |
| 4 | `theorem` | [abs_dyadicChebyshevError_le_of_prefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevConverse.lean/declarations/abs-dyadicchebysheverror-le-of-prefix--c6b319e410c1ef0e91d54fac.md) | 46 | `result-track:c6b319e410c1ef0e91d54fac8579c99ea96d5de25c4ace48f6460427e53ffcfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
