# Verification target: GRWTSK.Analysis.Complex.FinitePoleSubtraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1686ea7594c4c99791be80c7603cc94612f2150c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1686ea7594c4c99791be80c7603cc94612f2150c`.

Source path: `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/FinitePoleSubtraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart`](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticAt_dividedDifference](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/analyticat-divideddifference--50fc66775305aab8aca960ef.md) | 29 | `result-track:50fc66775305aab8aca960ef19b2f8d15adf38cae81fa579bcf3987f40083160` |
| 2 | `theorem` | [principal_part_mul](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/principal-part-mul--3a0b0b7a24f638c7061ad39a.md) | 35 | `result-track:3a0b0b7a24f638c7061ad39a659bddf545dc2d284a0138319f427aedddbe3d6c` |
| 3 | `theorem` | [simple_zero_factorization](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/simple-zero-factorization--cdd07a7a88dad49c88563836.md) | 52 | `result-track:cdd07a7a88dad49c88563836b972c89ac3dd05ba1886265aaf47b1d4ca4dc07b` |
| 4 | `theorem` | [simple_zero_order_nat](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/simple-zero-order-nat--a61196c91a851652eba22a10.md) | 61 | `result-track:a61196c91a851652eba22a10c931058e780d6a41cb80c38751757071528f08bb` |
| 5 | `theorem` | [simple_zero_log_principal_part](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/simple-zero-log-principal-part--86280084efb032bfea80ad7b.md) | 71 | `result-track:86280084efb032bfea80ad7b13f258bea3f598b88f97951ea78968594cc8132f` |
| 6 | `theorem` | [one_pole_subtraction](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/one-pole-subtraction--211d7068ee3f5d8490205c19.md) | 81 | `result-track:211d7068ee3f5d8490205c19cc6730aad848fc7a83a720ca371763490da2c17d` |
| 7 | `theorem` | [finite_pole_subtraction](../../../../mathematics/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/declarations/finite-pole-subtraction--7fd46d67cb924824ff30267b.md) | 102 | `result-track:7fd46d67cb924824ff30267b8c8324dcaa153a5e37a3ec62e401e996ffdcf569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
