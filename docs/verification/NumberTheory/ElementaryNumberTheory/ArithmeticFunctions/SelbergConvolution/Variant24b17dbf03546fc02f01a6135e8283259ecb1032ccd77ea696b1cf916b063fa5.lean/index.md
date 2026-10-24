# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergConvolution.Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22a2d6c040356dbaed7c68e8e5d30b1c59e645f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22a2d6c040356dbaed7c68e8e5d30b1c59e645f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean.json)

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
| 1 | `theorem` | [log_pmul_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/log-pmul-convolution--541372eb306b31c064ef87f1.md) | 22 | `result-track:541372eb306b31c064ef87f13d41c530ec2a864d307875e6715637cf3adea651` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/log-pmul-zeta--4fc54c22639e6309b24cce2b.md) | 38 | `result-track:4fc54c22639e6309b24cce2b0281b051a08408331be850f8e0a2ad0de702b3f9` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selberg-dirichlet-identity--45cf5d0137a56998ca076941.md) | 43 | `result-track:45cf5d0137a56998ca07694194f263c1fcc42ea39c25389ae41280b6235a4ee7` |
| 4 | `def` | [selbergCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergcoefficient--853139982713160979cfa75f.md) | 65 | `declaration-track:853139982713160979cfa75f50af110ebbf45a3d8bfca7840a4784f55d4e4ebc` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selberg-coefficient-identity--077ffe1e024bae642a499aba.md) | 70 | `result-track:077ffe1e024bae642a499aba46050a7de322b98ad06d4ee107cc73b19952d3e2` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergcoefficient-nonneg--361030b13c971df884f74a95.md) | 82 | `result-track:361030b13c971df884f74a95e94e5df180b91851cc599bf8acb70f2f592cfed7` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergcoefficient-zero--0d1b87ee87ce44a4ddd22ab5.md) | 88 | `result-track:0d1b87ee87ce44a4ddd22ab5b50782b94b3b281050c182c3a660d3ee531e2029` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergcoefficient-one--86a4ba9fcfb6539b82ecf822.md) | 92 | `result-track:86a4ba9fcfb6539b82ecf82282175e04d33108a0c1256ad9b7700157a87500cc` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selberg-antidiagonal-identity--9cbac61d392d04b33c61579a.md) | 96 | `result-track:9cbac61d392d04b33c61579aea966bd7f5fdea2e04b516eb6fc34c8751e59202` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/closed-factor-cutoff-eq--dd36e5dbeb8c9678e6276947.md) | 104 | `result-track:dd36e5dbeb8c9678e6276947214ad06cfdbc334d80495d41fff953cde30ce2d7` |
| 11 | `def` | [selbergPrefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergprefix--06b5a2cfe5afe3e98fa17174.md) | 119 | `declaration-track:06b5a2cfe5afe3e98fa17174d4b0d753b0f8cdd469fb8658642549b5ddcd6b01` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selberg-prefix-identity--792f055925b76e3f3f5c7ffd.md) | 124 | `result-track:792f055925b76e3f3f5c7ffd753233f51c0a61dd6e7edd42d925a7007f14160a` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergprefix-nonneg--b408b0ff6f97516e9998ebe5.md) | 145 | `result-track:b408b0ff6f97516e9998ebe5483e3e3640c7df1554e404333c1e2fe919b619a7` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergprefix-zero--886fd7f18a934a5d748ad92f.md) | 150 | `result-track:886fd7f18a934a5d748ad92fb88e7a31ba809181066c6810d57d11a901c3f640` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selbergprefix-one--a9087a598fdb2bbc52391bd4.md) | 154 | `result-track:a9087a598fdb2bbc52391bd4a80c7f4dde24b907fd51fb8d56918c47ee68230c` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolution/Variant24b17dbf03546fc02f01a6135e8283259ecb1032ccd77ea696b1cf916b063fa5.lean/declarations/selberg-prefix-expanded--56efecb78624e20cf7741e6c.md) | 158 | `result-track:56efecb78624e20cf7741e6ce5cf09c49bd8891ab93f2541c893cdaf6618826d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
