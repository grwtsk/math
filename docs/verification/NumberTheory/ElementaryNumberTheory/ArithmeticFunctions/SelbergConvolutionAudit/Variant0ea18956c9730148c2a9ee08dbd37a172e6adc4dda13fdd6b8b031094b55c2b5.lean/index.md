# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergConvolutionAudit.Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bb7c8297dc0eb7ea8e2a7d751659bdae1efc841",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bb7c8297dc0eb7ea8e2a7d751659bdae1efc841`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pmul_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/log-pmul-convolution--7fbd2f6805e8782262911264.md) | 14 | `result-track:7fbd2f6805e8782262911264af6cd0563facf3db53bf8a59af1c1e2caeb52ca5` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/log-pmul-zeta--7d388d2bc5a3db258152085c.md) | 30 | `result-track:7d388d2bc5a3db258152085c07488abd357e85dddaffeae66e1a5978c999028a` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selberg-dirichlet-identity--ddfa03bdfcba9abdedd30c6c.md) | 35 | `result-track:ddfa03bdfcba9abdedd30c6cc2af136ff9b5e46307fe8ceccb8111ed43a5afbd` |
| 4 | `def` | [selbergCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergcoefficient--d292f198b6c3484e724012ab.md) | 57 | `declaration-track:d292f198b6c3484e724012ab320354b38004873dbfdcfe45aebe63216e7c7057` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selberg-coefficient-identity--39dc69e9310dd81fb7550442.md) | 62 | `result-track:39dc69e9310dd81fb7550442ef3ec8b10181e5e4b051bb4405e8ae0554d20a88` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergcoefficient-nonneg--54826912304a25889cf0f922.md) | 74 | `result-track:54826912304a25889cf0f922dda54379d30140b6173cbf5b69a250bd9e82bae1` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergcoefficient-zero--20b329b6e54b55078bab9435.md) | 80 | `result-track:20b329b6e54b55078bab943546323cf927d47acdb3d2bc7f99baf77bd5794db9` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergcoefficient-one--244bbb3d6e5d89b37bb309d5.md) | 84 | `result-track:244bbb3d6e5d89b37bb309d53cc866a9c8c3907d6806fd675afecb93c1c92dc8` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selberg-antidiagonal-identity--e6ceb2843dc08e38ac4091b0.md) | 88 | `result-track:e6ceb2843dc08e38ac4091b034343d379d1635a7d08ad6ae7f2aea43ff07ebf8` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/closed-factor-cutoff-eq--a925f7b637623294c1bdfa61.md) | 96 | `result-track:a925f7b637623294c1bdfa61bb3f81714a35b173c1988b31b180a4b60d01a03c` |
| 11 | `def` | [selbergPrefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergprefix--38782448e6c688a633db2fd3.md) | 111 | `declaration-track:38782448e6c688a633db2fd3e979a6aefcf920b20ccf77b95e452839b9095164` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selberg-prefix-identity--61856384b6ef516040ca0cc4.md) | 116 | `result-track:61856384b6ef516040ca0cc4009f6da11142b25f32dadb1eb9ab91f0445084a8` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergprefix-nonneg--92c012fda7b64df7ebc4836a.md) | 137 | `result-track:92c012fda7b64df7ebc4836a7629e3e3b68d7b280401ad6438d894c215bf56e2` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergprefix-zero--029ba396e75a586dc38fd2b1.md) | 142 | `result-track:029ba396e75a586dc38fd2b18750c3bff887ff441a58f696b2d706477054aa72` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selbergprefix-one--935056a3b32a545fe45fb356.md) | 146 | `result-track:935056a3b32a545fe45fb356593e8820f132900a24ac4634b61af94e3ca76d72` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionAudit/Variant0ea18956c9730148c2a9ee08dbd37a172e6adc4dda13fdd6b8b031094b55c2b5.lean/declarations/selberg-prefix-expanded--f759666a9d386b950e139911.md) | 150 | `result-track:f759666a9d386b950e1399117fd3d9be316e7718c4937a588afa81cd1406b81f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
