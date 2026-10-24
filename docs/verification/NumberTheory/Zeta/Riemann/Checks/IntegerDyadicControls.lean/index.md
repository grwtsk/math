# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.IntegerDyadicControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd67e170d670f0753bcff8a1e0c67bfe9f468cd9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd67e170d670f0753bcff8a1e0c67bfe9f468cd9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenIntegerRefinement`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenIntegerRefinement.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_real_floor](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/negative-real-floor--b4937c23baf717cf3831585b.md) | 14 | `result-track:b4937c23baf717cf3831585b8837cc6ad1df4369eaec802e613bc31de81f0ffc` |
| 2 | `theorem` | [negative_imaginary](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/negative-imaginary--5053108b3cb0704c33cbeed0.md) | 16 | `result-track:5053108b3cb0704c33cbeed0641f62a56a2b78577bc4bf076498abee341c260b` |
| 3 | `theorem` | [zero_bits](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/zero-bits--9e77e3b2a6efdf875d003149.md) | 18 | `result-track:9e77e3b2a6efdf875d003149db2d62406307c3b8d18637e4949b3fb65e5b122d` |
| 4 | `theorem` | [both_residuals](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/both-residuals--a421dfcbcbed5d5c434d1837.md) | 20 | `result-track:a421dfcbcbed5d5c434d1837446a4176ccf35934fcbc3775453144a382bd20eb` |
| 5 | `theorem` | [nonlinear_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/nonlinear-error--b3e4c79e0862833a9ffdc71f.md) | 23 | `result-track:b3e4c79e0862833a9ffdc71f0a4bc755bf1c0fab6fc60ff2b58684887a5b68b5` |
| 6 | `theorem` | [outward_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/outward-error--6e69c8674bf3cad01f13f8b9.md) | 26 | `result-track:6e69c8674bf3cad01f13f8b93d123ef6f50f17fad82e3088bfd33d2a04ec046b` |
| 7 | `theorem` | [signed_ceiling](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/signed-ceiling--48772b21a27d465d268bfa5d.md) | 29 | `result-track:48772b21a27d465d268bfa5d9e909cc3694ea2f10c94d5f1d2b113aec8f38b77` |
| 8 | `theorem` | [residual_needed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/residual-needed--e338b8ca72073b4ef00b404e.md) | 32 | `result-track:e338b8ca72073b4ef00b404ea5ba5d1802ef2a7ca555838df7cc7092a6602d98` |
| 9 | `theorem` | [empty_seed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/empty-seed--be27c00f8e9475a72ee62b73.md) | 35 | `result-track:be27c00f8e9475a72ee62b73c84af76a60523cd7d3182b3c8048e60f76087cee` |
| 10 | `theorem` | [exact_seed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/exact-seed--99a2d5471f8e95d88433a430.md) | 38 | `result-track:99a2d5471f8e95d88433a4301d3408d081c5f7f1da5296a6fc317b60ffa47107` |
| 11 | `theorem` | [square_example](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/square-example--30617a467a0fb48136755372.md) | 41 | `result-track:30617a467a0fb481367553724e3337f8100983f4378df859787d5311fe8766c3` |
| 12 | `theorem` | [midpoint_not_state](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/midpoint-not-state--c16e21971c0f20a2a0ab794e.md) | 44 | `result-track:c16e21971c0f20a2a0ab794e93740a029e0a4ca7d061bd53e29f158eb122b4f6` |
| 13 | `theorem` | [original_obligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/IntegerDyadicControls.lean/declarations/original-obligations--62738f42d049a7bd3a544512.md) | 47 | `result-track:62738f42d049a7bd3a5445123bd46d645b0b5ad51b921067b215f2aeeff21f5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
