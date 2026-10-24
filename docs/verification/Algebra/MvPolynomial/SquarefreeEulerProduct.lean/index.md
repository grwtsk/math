# Verification target: GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e49195f804e0f12ecfbf2059230230d3df0b91b8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md) · [Full source](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e49195f804e0f12ecfbf2059230230d3df0b91b8`.

Source path: `GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MvPolynomial/SquarefreeEulerProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../mathematics/NumberTheory/Moebius/MoebiusEulerProduct.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Algebra.MvPolynomial.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentMask](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/exponentmask--a569aa8040e0b2ef190fb5e3.md) | 16 | `declaration-track:a569aa8040e0b2ef190fb5e3057be8ed0d9570617a5c1c91dc6f339e70ac5eb5` |
| 2 | `def` | [finiteEulerPolynomial](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/finiteeulerpolynomial--babe6fc84b90e3b427d13146.md) | 17 | `declaration-track:babe6fc84b90e3b427d13146be4ce0532a78e0b2ee31989043a15db7c29866ec` |
| 3 | `theorem` | [exponentMask_apply](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/exponentmask-apply--89677cf7bc06a11f54f70b9c.md) | 20 | `result-track:89677cf7bc06a11f54f70b9c72227e60315addb023cf7f13922742ac4a09436f` |
| 4 | `theorem` | [exponentMask_support](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/exponentmask-support--25957cf04caf08d106bf200c.md) | 24 | `result-track:25957cf04caf08d106bf200cb613083c599025ccc4c96b7e20ae9f29bc8dd259` |
| 5 | `theorem` | [exponentMask_eq_iff](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/exponentmask-eq-iff--403da2b8decd04f5a4ff097b.md) | 28 | `result-track:403da2b8decd04f5a4ff097bb4402ee15b6b8f38aa2530229ddeb2d1d494a43a` |
| 6 | `theorem` | [finiteEulerPolynomial_expansion](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/finiteeulerpolynomial-expansion--0c265a9c196701c03da3cef9.md) | 49 | `result-track:0c265a9c196701c03da3cef952330c17a3bd8a597115c42f71f5f7bb720e99b6` |
| 7 | `theorem` | [finiteEulerPolynomial_coeff_sum](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/finiteeulerpolynomial-coeff-sum--d16b7350a4f8b29ad087bfde.md) | 56 | `result-track:d16b7350a4f8b29ad087bfdef9de47ad4a7f264e41b92bde150bd9606ac10f55` |
| 8 | `theorem` | [finiteEulerPolynomial_coeff](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/finiteeulerpolynomial-coeff--de5189d6152c348b69dc1940.md) | 70 | `result-track:de5189d6152c348b69dc19403817ecd26cd160880cc1ff09091751d83b50e5cd` |
| 9 | `theorem` | [polynomial_integer_coefficient](../../../../mathematics/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/declarations/polynomial-integer-coefficient--94b0e72a839a273e77321e6b.md) | 97 | `result-track:94b0e72a839a273e77321e6b0c0b20b69fe34b5dab0703bcbbd350115e9f7bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
