# Verification target: GRWTSK.Algebra.UniversalAlgebra.Determinant.Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc47ab611ad636aaf2f0a10fccb42b120b3e4a78",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc47ab611ad636aaf2f0a10fccb42b120b3e4a78`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [determinant_aux](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean/declarations/determinant-aux--6922ab63ffb4da092a28a4d6.md) | 35 | `result-track:6922ab63ffb4da092a28a4d6a26127e9628a6d932bf1d72e5effaab43a634794` |
| 2 | `theorem` | [determinant](../../../../../mathematics/Algebra/UniversalAlgebra/Determinant/Variantd4ebefae2e11ee98967e7ba4e7ba5475f7b78c6c8413bb1898ec696d9efedee1.lean/declarations/determinant--a864f7f9c2badb453a288eb6.md) | 74 | `result-track:a864f7f9c2badb453a288eb600b9492ba651c95aeeaf84821ede2d884b1664bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
