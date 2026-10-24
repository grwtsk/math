# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6970b6fb4c077fd968e4c8e9c6b6a44a37e2a592",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6970b6fb4c077fd968e4c8e9c6b6a44a37e2a592`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod--10c83e1b2a0b657f72e25f22.md) | 40 | `declaration-track:10c83e1b2a0b657f72e25f22b2915bf1f50b65c9bf8e133fc8997a6033f55fbc` |
| 2 | `theorem` | [prod_repr_inl](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-repr-inl--0af0f6d316279a413f26a7dd.md) | 44 | `result-track:0af0f6d316279a413f26a7dd0073761675df3aef3dc929a138bda4121b3d0ad7` |
| 3 | `theorem` | [prod_repr_inr](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-repr-inr--5224d40c95b093c8e64420a1.md) | 48 | `result-track:5224d40c95b093c8e64420a19bf6d0cbe3eb117074d9a24060a3fc901655c3d2` |
| 4 | `theorem` | [prod_apply_inl_fst](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-apply-inl-fst--5967572289f01a0e210fb159.md) | 51 | `result-track:5967572289f01a0e210fb1596e591e5cbf032e77c1a1badc0a03bed0218ea477` |
| 5 | `theorem` | [prod_apply_inr_fst](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-apply-inr-fst--b268b0233e981efe53b1ca0a.md) | 59 | `result-track:b268b0233e981efe53b1ca0aa0d63c5d1aa309dbc019377bc428a9c3bdc19357` |
| 6 | `theorem` | [prod_apply_inl_snd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-apply-inl-snd--ebbe8e565d2c5bab2e44278b.md) | 68 | `result-track:ebbe8e565d2c5bab2e44278b5aded9c7c824ca8e94725670b9d88298c5a2da22` |
| 7 | `theorem` | [prod_apply_inr_snd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-apply-inr-snd--075c0cb2f201135736f8d2bf.md) | 77 | `result-track:075c0cb2f201135736f8d2bfca3992e35aac54db864a19f4f12b9f55c476eaf8` |
| 8 | `theorem` | [prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod-apply--2210ff6a32126a4b342b683c.md) | 86 | `result-track:2210ff6a32126a4b342b683cf90f5ce0b1b8a5319c1db67109ce8bec97c22b76` |
| 9 | `instance` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant2960e8de28d6b946f1d90e3fbbd21c85d210ffc6c1a732bcabd6d85b0329f253.lean/declarations/prod--67dd9f0f2fb3b2413feb45ef.md) | 99 | `declaration-track:67dd9f0f2fb3b2413feb45ef875691396c0c6041ef367e73960f773c1e93e52e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
