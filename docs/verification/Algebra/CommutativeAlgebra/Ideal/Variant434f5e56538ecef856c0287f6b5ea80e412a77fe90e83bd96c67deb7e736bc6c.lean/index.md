# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Ideal.Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cd0537bee02899f19cd3a3b07c5dd4a1312ba5e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cd0537bee02899f19cd3a3b07c5dd4a1312ba5e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.RingDivision` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_span_C_X_sub_C_X_sub_C_iff_eval_eval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean/declarations/mem-span-c-x-sub-c-x-sub-c-iff-eval-eval-eq-zero--3a9965978d45c39b149f71ea.md) | 34 | `result-track:3a9965978d45c39b149f71ea64ce7b73f266746368cafdf3f9c4a1cf38cd263a` |
| 2 | `theorem` | [ker_evalRingHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean/declarations/ker-evalringhom--39c1f133deb437bc13c2fb90.md) | 44 | `result-track:39c1f133deb437bc13c2fb909b5d82c966a672089f6a47ff5a9df1af0db8396b` |
| 3 | `theorem` | [ker_modByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean/declarations/ker-modbymonichom--16d4fa4cedc916fc1c6482ad.md) | 49 | `result-track:16d4fa4cedc916fc1c6482ade91c134124faf3781a1fb512041ab210f9aaff11` |
| 4 | `lemma` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.MemSpanCXSubCXSubCIffEvalEvalEqZero.Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.Algebra.mem_ideal_map_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Variant434f5e56538ecef856c0287f6b5ea80e412a77fe90e83bd96c67deb7e736bc6c.lean/declarations/root-grwtsk-algebra-commutativealgebra-memspancxsubcxsubciffevalevaleqze--6c7d0e5264fce10b3b60829b.md) | 54 | `result-track:6c7d0e5264fce10b3b60829bc7e2ed5b5e45f2291c24cd309e9ab5a17a999f61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
