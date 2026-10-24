# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989f0df8df4ce11f8f8ab6fa1a00556883ad13c2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989f0df8df4ce11f8f8ab6fa1a00556883ad13c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/prod-antidiagonal-succ--5b3c1da44967f305a5b3163a.md) | 25 | `result-track:5b3c1da44967f305a5b3163a8af9447e2621f3a396b2bac51f4b1f8b79aa8014` |
| 2 | `theorem` | [sum_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/sum-antidiagonal-succ--2a85e891704b73cc3a861203.md) | 30 | `result-track:2a85e891704b73cc3a861203546c7de038bc3a0884a88ecad58304b6f79b880d` |
| 3 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/prod-antidiagonal-swap--3333ceffb405e3b2336585df.md) | 36 | `result-track:3333ceffb405e3b2336585df6fa47005d258d7ff85c01677203526c8eb38c21b` |
| 4 | `theorem` | [prod_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/prod-antidiagonal-succ--1a801b988b6627b270902129.md) | 42 | `result-track:1a801b988b6627b27090212906f0133a04cb91744851b655594d29ca3ebb7fc2` |
| 5 | `theorem` | [sum_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/sum-antidiagonal-succ--89f2584bdada471d32b83daa.md) | 48 | `result-track:89f2584bdada471d32b83daa6048e43bea94581ae70be1c92e0e2fbf7e690d20` |
| 6 | `theorem` | [prod_antidiagonal_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/prod-antidiagonal-subst--f3961932d730ca4ea17c892b.md) | 54 | `result-track:f3961932d730ca4ea17c892b335b7aff07a3cc96d12df28e7c9ed19f320dfc1b` |
| 7 | `theorem` | [prod_antidiagonal_eq_prod_range_succ_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/prod-antidiagonal-eq-prod-range-succ-mk--09d5c8bc05f754585485f0e5.md) | 61 | `result-track:09d5c8bc05f754585485f0e53ca8f69e31bc3bbb668db5869433d42f7160debe` |
| 8 | `theorem` | [prod_antidiagonal_eq_prod_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant220454c6d8d846f5a39bcf54e14525c7b1901107eeade0e26fd5c7c7a0d7978a.lean/declarations/prod-antidiagonal-eq-prod-range-succ--d9caf415830881a32b8b5470.md) | 71 | `result-track:d9caf415830881a32b8b5470a813166c9234de926ad396d444fe2dba0ad45191` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
