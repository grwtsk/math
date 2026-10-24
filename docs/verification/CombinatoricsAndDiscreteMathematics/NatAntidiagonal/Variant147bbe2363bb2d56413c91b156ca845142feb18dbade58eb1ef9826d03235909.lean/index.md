# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "613be354eede4f74ce27ea489c829e1969638926",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `613be354eede4f74ce27ea489c829e1969638926`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/prod-antidiagonal-succ--29a80022c6a59e2740ed1fff.md) | 21 | `result-track:29a80022c6a59e2740ed1fffdfab53f32b28e868c171cecf71e39385d01860fa` |
| 2 | `theorem` | [sum_antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/sum-antidiagonal-succ--b97a8b3aaaffb7d432e9d5ef.md) | 26 | `result-track:b97a8b3aaaffb7d432e9d5ef8a67113f6b266e54bc8bc05701d93a8b78a58f34` |
| 3 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/prod-antidiagonal-swap--752c59d3753502d10245c8c1.md) | 31 | `result-track:752c59d3753502d10245c8c1efff1e3d9753357649e2167f44d46b6b549625d9` |
| 4 | `theorem` | [prod_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/prod-antidiagonal-succ--98295514528b78905f7908f8.md) | 36 | `result-track:98295514528b78905f7908f84d91804c5dd94cbacf93e7d812dcabf5ceb50928` |
| 5 | `theorem` | [sum_antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/sum-antidiagonal-succ--d500f9285fee9dc039fdeb05.md) | 41 | `result-track:d500f9285fee9dc039fdeb052b49a3a596361ded0fdd33e9dbf546a931208b1e` |
| 6 | `theorem` | [prod_antidiagonal_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/prod-antidiagonal-subst--4a88107a13cf65fd633bc651.md) | 46 | `result-track:4a88107a13cf65fd633bc651bb4592a3dd8a4f5bf1cb87d9d4509d1b1e6e3527` |
| 7 | `theorem` | [prod_antidiagonal_eq_prod_range_succ_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/prod-antidiagonal-eq-prod-range-succ-mk--78f07d51af5d02438a8a9b75.md) | 51 | `result-track:78f07d51af5d02438a8a9b7548a49a0ae48541404ef414f8cbf0b3a7979d35de` |
| 8 | `theorem` | [prod_antidiagonal_eq_prod_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variant147bbe2363bb2d56413c91b156ca845142feb18dbade58eb1ef9826d03235909.lean/declarations/prod-antidiagonal-eq-prod-range-succ--76f12c3bcb0d3356d3fe4a3f.md) | 59 | `result-track:76f12c3bcb0d3356d3fe4a3f528dd2ed2ca25d49911754242f5d94225721aa2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
