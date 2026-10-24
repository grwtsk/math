# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergConvolutionAudit.Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41c56c7e97ca4ee649e5d1c5931e919aeab8177f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41c56c7e97ca4ee649e5d1c5931e919aeab8177f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pmul_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/log-pmul-convolution--0fa698eefa84134b9ddeb44d.md) | 22 | `result-track:0fa698eefa84134b9ddeb44d5375aa103b56980933fa1f7c0aed2378a24fb8cd` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/log-pmul-zeta--d31625bde90a259ea858b7e1.md) | 38 | `result-track:d31625bde90a259ea858b7e13c5bcd75a537c70d9d9ca088b10a0c0232e08096` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selberg-dirichlet-identity--7b8b59597d56747e77206f0e.md) | 43 | `result-track:7b8b59597d56747e77206f0e792f40e576fbc5290b67ddb75bdecc3fbb52394b` |
| 4 | `def` | [selbergCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergcoefficient--ba544a8fb3ad18b022d80023.md) | 65 | `declaration-track:ba544a8fb3ad18b022d80023bcb19131cc03d9c50e58ff7fab637b5a40439a28` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selberg-coefficient-identity--534ec2a5a60e38ec9b9a27f6.md) | 70 | `result-track:534ec2a5a60e38ec9b9a27f6803154353512dc1cc381f89f73d9a3bb4c9ef348` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergcoefficient-nonneg--b78259cf5ee986911f63e9ba.md) | 82 | `result-track:b78259cf5ee986911f63e9bab3fb9c382bb7b27d7902b7112423343080fc1702` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergcoefficient-zero--11ae4be1e78394fe73e236a6.md) | 88 | `result-track:11ae4be1e78394fe73e236a60358f0e17f76cb6fd5058a7150535faaf960ecdd` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergcoefficient-one--7e6c4293984b7bc3619cf71a.md) | 92 | `result-track:7e6c4293984b7bc3619cf71aeb4b83ee05280ae273805117ca7c8c7f0536386b` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selberg-antidiagonal-identity--113639f136b8b30d97100c3f.md) | 96 | `result-track:113639f136b8b30d97100c3f7d786625458c3da40c9a25dbf207d783aebbd5fe` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/closed-factor-cutoff-eq--994490a2f07dcf478ec2a342.md) | 104 | `result-track:994490a2f07dcf478ec2a342a8f59c3c7fa0af7bd60644d1a31f933cd632bf71` |
| 11 | `def` | [selbergPrefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergprefix--f6afd587557b1522347d24a1.md) | 119 | `declaration-track:f6afd587557b1522347d24a1fe2ef3757472484dd7e72b52c605d0786455acb4` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selberg-prefix-identity--485f14b579f67c133bfbaec2.md) | 124 | `result-track:485f14b579f67c133bfbaec260dad5ecfc121785848a334e468d8f63a0f73563` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergprefix-nonneg--7f752b3f608c129ed921431d.md) | 145 | `result-track:7f752b3f608c129ed921431df99b143e874b0da8cd4ec015e3af5e6ea37714f0` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergprefix-zero--8192dc4dd7bcf98f9d28e81c.md) | 150 | `result-track:8192dc4dd7bcf98f9d28e81c322d2362b972fe6c271de758466fb9a8c417e373` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selbergprefix-one--4273677b7f22016b3ada895f.md) | 154 | `result-track:4273677b7f22016b3ada895f890f99bf70dad1d35906b7c9070f7c1fe029235c` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant92fac81a5c451d77fc13012c1fcb51290e9d137431ec7a2f4b8b1873c9a55841.lean/declarations/selberg-prefix-expanded--4b73b4329999725351ca486e.md) | 158 | `result-track:4b73b4329999725351ca486e9da502578810bb3e9397504cba00320148a3f7e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
