# Verification target: GRWTSK.Algebra.UniversalAlgebra.ContinuantsRecurrence.Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b1ca0df3b7ca20d481eb4ad0def42fbf9a0a416",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b1ca0df3b7ca20d481eb4ad0def42fbf9a0a416`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contsAux_recurrence](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/declarations/contsaux-recurrence--525251382d06d02993ab3e40.md) | 32 | `result-track:525251382d06d02993ab3e4038ce42e06998a1ba6c2f62a2d9c04dfef3a6faf7` |
| 2 | `theorem` | [conts_recurrenceAux](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/declarations/conts-recurrenceaux--c1f94c2a7b37ced4c79325fb.md) | 38 | `result-track:c1f94c2a7b37ced4c79325fbc3799eb68829ebbca361860b0de39a45abe5a97c` |
| 3 | `theorem` | [conts_recurrence](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/declarations/conts-recurrence--fad7386c5e7761c9699fd16e.md) | 46 | `result-track:fad7386c5e7761c9699fd16e45b6b262bd032fc091772e1499563b4c84929c6c` |
| 4 | `theorem` | [nums_recurrence](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/declarations/nums-recurrence--83dfdac0d546fa8e2ca7a431.md) | 53 | `result-track:83dfdac0d546fa8e2ca7a431a6e71976354d2f105c7046acaca6927dd9eb9b7e` |
| 5 | `theorem` | [dens_recurrence](../../../../../mathematics/Algebra/UniversalAlgebra/ContinuantsRecurrence/Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185.lean/declarations/dens-recurrence--25ebb95f537d52cae27d8558.md) | 65 | `result-track:25ebb95f537d52cae27d8558e0aef829f2592a52956e342358ccb92f9e5df2b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
