# Verification target: GRWTSK.NumberTheory.Moebius.FiniteEulerProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a0c950106c27253ef900e21866b01cd4a25dca",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a0c950106c27253ef900e21866b01cd4a25dca`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteEulerProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_subset_weight](../../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/declarations/prime-subset-weight--9d02351498e209f1959c8ab5.md) | 26 | `result-track:9d02351498e209f1959c8ab569adb5d6adf2f4232fa410a96dec54d4f246ca52` |
| 2 | `theorem` | [born_prime_subset_sum](../../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/declarations/born-prime-subset-sum--f0e7e2960ef4f163b4b6e2dc.md) | 43 | `result-track:f0e7e2960ef4f163b4b6e2dc06a0d510f442fa0aaba57236d4e9e26f3ec031c4` |
| 3 | `theorem` | [finite_euler_product_cutoff](../../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/declarations/finite-euler-product-cutoff--09e55421d694a9fe824bb962.md) | 82 | `result-track:09e55421d694a9fe824bb962d9b8b62f6e012a6e5b9c592c94cc55bd620fed75` |
| 4 | `theorem` | [finite_euler_product_cutoff_zero](../../../../mathematics/NumberTheory/Moebius/FiniteEulerProduct.lean/declarations/finite-euler-product-cutoff-zero--b3e142ef845686f98422fc9b.md) | 106 | `result-track:b3e142ef845686f98422fc9be13091424f06d88193d279fc65c4720fb00ee226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
