# Verification target: GRWTSK.Algebra.FiniteField.GF128.InverseSteps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4150031fa925242918cd2d8dec009cd9f65f31ff",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/InverseSteps.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseSteps.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseSteps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4150031fa925242918cd2d8dec009cd9f65f31ff`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/InverseSteps.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/InverseSteps.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.Bitwise`](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_even_step](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseSteps.lean/declarations/pow-even-step--e39c0fb229a2b428556ef854.md) | 7 | `result-track:e39c0fb229a2b428556ef85444473af2eb067c147f8ecede0ab2aa5be2592e8f` |
| 2 | `theorem` | [pow_odd_step](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseSteps.lean/declarations/pow-odd-step--25d795eee29e8d4003b776ea.md) | 13 | `result-track:25d795eee29e8d4003b776ea0f5d60243d4556c4e612c3df513e6cabd5807579` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
