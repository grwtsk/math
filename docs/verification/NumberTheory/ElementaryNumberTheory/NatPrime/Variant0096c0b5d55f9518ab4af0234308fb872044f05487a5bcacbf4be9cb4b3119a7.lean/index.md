# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.NatPrime.Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_prime_of_int_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/declarations/not-prime-of-int-mul--0e0b0235faea34fba086730a.md) | 19 | `result-track:0e0b0235faea34fba086730ae9a665318d4069b692e24dc8a4a03d1e0d21545e` |
| 2 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--94abd7162a9f2215e0f2a2f9.md) | 23 | `result-track:94abd7162a9f2215e0f2a2f9b00f1532cdbfe4cfc161ab0ba3f902ac8e9604e2` |
| 3 | `theorem` | [Prime.dvd_natAbs_of_coe_dvd_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/declarations/prime-dvd-natabs-of-coe-dvd-sq--22252aae9b21adb89e1f984f.md) | 34 | `result-track:22252aae9b21adb89e1f984fe649e97425cc45a49d1aa8460dd9636ec9e3c890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
