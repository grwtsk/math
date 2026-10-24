# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Mobius.Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b73a31d80520248076b59b0d5fdc7bc23e4ee97d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b73a31d80520248076b59b0d5fdc7bc23e4ee97d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.DivisorSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusFn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/declarations/mobiusfn--02c4e1bf479b17b12060c037.md) | 26 | `declaration-track:02c4e1bf479b17b12060c03711b234a21fcb70237950227722e68e89e0da8060` |
| 2 | `theorem` | [mobius_sum_divisors_eq_one_or_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/declarations/mobius-sum-divisors-eq-one-or-zero--cba7a58cc2c8f77b8599a278.md) | 29 | `result-track:cba7a58cc2c8f77b8599a278e2bd8ffcbf32d256ac8f5b9520461d3170d60983` |
| 3 | `theorem` | [mobius_inversion_finite_checked](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/declarations/mobius-inversion-finite-checked--ba4c6d45c7bd11c1d7ec264d.md) | 46 | `result-track:ba4c6d45c7bd11c1d7ec264d03413f2143f48f6750735a2e8eabe43ec179d6bf` |
| 4 | `theorem` | [mobius_inversion](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39.lean/declarations/mobius-inversion--e7f209d941f00ff987fbac81.md) | 69 | `result-track:e7f209d941f00ff987fbac819eea13d7824aa73cd5279b35495afc07d6666480` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
