# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.HorizontalLogDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "673dcccd858866aa66b420141af02e3fbbf80070",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `673dcccd858866aa66b420141af02e3fbbf80070`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LeftLogDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_ne_zero_left_nonreal](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/zeta-ne-zero-left-nonreal--741d2d40e7cecbd731992c91.md) | 34 | `result-track:741d2d40e7cecbd731992c91ba6c2df38b72a3929ed07f2385c5858831ce9295` |
| 2 | `theorem` | [cotangent_even_shift](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/cotangent-even-shift--340f09cbdc774842252d6a7c.md) | 42 | `result-track:340f09cbdc774842252d6a7c5d1916d3ba8c0ae8256b45cfc5931c74096c7b31` |
| 3 | `theorem` | [negative_logDeriv_even_shift](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/negative-logderiv-even-shift--96760739f9151adf938417ca.md) | 56 | `result-track:96760739f9151adf938417ca144e5ac2052b6325daa538f158da77769850cd42` |
| 4 | `theorem` | [norm_even_shift_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/norm-even-shift-le--932c8698eefc362f7d76265f.md) | 80 | `result-track:932c8698eefc362f7d76265fb49512beab58db4275418d9a3282f6598ac271c3` |
| 5 | `theorem` | [exists_horizontal_anchor](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/exists-horizontal-anchor--9efebfe584ac7278066d947c.md) | 103 | `result-track:9efebfe584ac7278066d947c7231eefa97da13a4859654c01cc382480dd45cf3` |
| 6 | `theorem` | [norm_horizontal_le_of_strip_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/norm-horizontal-le-of-strip-bound--51ea4db8675e17237cdf0ef9.md) | 117 | `result-track:51ea4db8675e17237cdf0ef9288949a917e111c62ad4cc79f120fc7ea2779846` |
| 7 | `theorem` | [zeta_ne_zero_horizontal](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/zeta-ne-zero-horizontal--9ba4b11525add97ed77489ce.md) | 141 | `result-track:9ba4b11525add97ed77489ceb2338b92180ea3cbce3f84fb8ea4290f80f1b1f8` |
| 8 | `theorem` | [continuous_horizontal_logDeriv](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/continuous-horizontal-logderiv--8ddcc6f4a2894d6330d42189.md) | 154 | `result-track:8ddcc6f4a2894d6330d42189c24998ed8d05d7d61f92d8930e3af4eef9e3e324` |
| 9 | `theorem` | [exists_horizontal_strip_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/HorizontalLogDerivative.lean/declarations/exists-horizontal-strip-bound--e4ad711b65312ee724314310.md) | 170 | `result-track:e4ad711b65312ee724314310a821f29b64c22013100b7b5f7e65f1f800347a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
