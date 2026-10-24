# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFactorizationPlumbing.Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "036decd3afbc6150f08db6daf202d4acaf416b8b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `036decd3afbc6150f08db6daf202d4acaf416b8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.FactorizationRebuild` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_prime_power_eval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/declarations/factorization-prime-power-eval--12ff24bbc22a061671421d9d.md) | 25 | `result-track:12ff24bbc22a061671421d9db200ec7fdb27ab851b61364b2d2387ffc0ea099f` |
| 2 | `theorem` | [factorization_exponentVectorNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/declarations/factorization-exponentvectornat--f9685934fc52bbf46f39e095.md) | 44 | `result-track:f9685934fc52bbf46f39e0957db196d37adede332c252529d74c1d1645403d2d` |
| 3 | `theorem` | [factorization_exponentVectorNat_at_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/declarations/factorization-exponentvectornat-at-mem--10b1b22d33588063f8959a40.md) | 107 | `result-track:10b1b22d33588063f8959a402aa2e9428969c64d7748d900ce1363fae8f9b334` |
| 4 | `theorem` | [factorization_exponentVectorNat_at_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/declarations/factorization-exponentvectornat-at-not-mem--2a1e485f50578881f8a1dec3.md) | 119 | `result-track:2a1e485f50578881f8a1dec35a5505ef721d5a5d67a524f5e15649fd7b8b9f58` |
| 5 | `theorem` | [exponentVectorNat_injective_of_prime_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72.lean/declarations/exponentvectornat-injective-of-prime-set--01413f94695cc5f2513bc1c8.md) | 137 | `result-track:01413f94695cc5f2513bc1c8011b0a7e3d12e5201f5052384ed73230b012d02c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
