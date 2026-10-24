# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.RationalSqrtTwoCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce132e758905ebacc112934c7dc9f44bbcf5152c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce132e758905ebacc112934c7dc9f44bbcf5152c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Real.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rational_pair_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/rational-pair-eq-zero-iff--496a1c956060372998dda56d.md) | 30 | `result-track:496a1c956060372998dda56d96547153c665d34b9b666df6df29a76736a021a1` |
| 2 | `def` | [weightedMean](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/weightedmean--38d6f2e9c77643bbd9d871f1.md) | 46 | `declaration-track:38d6f2e9c77643bbd9d871f1cee11346f87093d77f2827ff32965f6a056b2335` |
| 3 | `def` | [centeredResidual](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/centeredresidual--19a6984336182d793e59eaec.md) | 50 | `declaration-track:19a6984336182d793e59eaec34cd2cf339625f6633b344e4934e93b94ca66c4d` |
| 4 | `def` | [weightedEnergy](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/weightedenergy--9a414f6d5ee9b202cd7e972e.md) | 54 | `declaration-track:9a414f6d5ee9b202cd7e972e429d60e261c7d921bd800224b63a604cdff5f89e` |
| 5 | `def` | [residualEnergy](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/residualenergy--3821550e4d1d144fb7d9e603.md) | 58 | `declaration-track:3821550e4d1d144fb7d9e603f98ba04bb874225b05c9c0519ff9b85dd122fd0a` |
| 6 | `theorem` | [centeredResidual_sum_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/centeredresidual-sum-eq-zero--082e2376abce9104e3de7ff3.md) | 62 | `result-track:082e2376abce9104e3de7ff3f0a9fee8675c5759836a6c6f9e36bc75a0cf601e` |
| 7 | `theorem` | [energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/energy-decomposition--a96197ec76251e1f648947a1.md) | 72 | `result-track:a96197ec76251e1f648947a142719c561873266939b7b8e8611142e48ba928e9` |
| 8 | `theorem` | [weightedEnergy_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/weightedenergy-eq-zero-iff--0f2314659060547abd41f5ae.md) | 99 | `result-track:0f2314659060547abd41f5ae8f1cf4fd69362a00701b5d4131667c0e36f5d708` |
| 9 | `theorem` | [moments_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/moments-eq-zero-iff--ca39f9280c491e29eeac876e.md) | 118 | `result-track:ca39f9280c491e29eeac876eb4cbeca5101d8d571f8aa292c1e7e09554f94c9e` |
| 10 | `theorem` | [exact_sqrtTwo_certificate_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearAndQuadraticForms/RationalSqrtTwoCertificate.lean/declarations/exact-sqrttwo-certificate-iff--33afed17e65e3014143616f5.md) | 137 | `result-track:33afed17e65e3014143616f5537f3ccb31e1d874a4fa2632591303d8f4582e4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
