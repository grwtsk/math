# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SelbergConvolutionStatements.Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4577bce36d6406ea5c288296000ce863b054caae",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4577bce36d6406ea5c288296000ce863b054caae`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean.json)

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
| 1 | `theorem` | [log_pmul_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/log-pmul-convolution--84e1a1c8547a78ae4725bd6b.md) | 22 | `result-track:84e1a1c8547a78ae4725bd6ba3bb8356fb4cce0a8a0bdfc4fa2326cdd40476a4` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/log-pmul-zeta--cdb2e44850f3cdc7cfecee87.md) | 38 | `result-track:cdb2e44850f3cdc7cfecee87284e6fa9a19e7a30b82481659aac1ea837b6e007` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selberg-dirichlet-identity--1a4343f15fa60b41e9ce6622.md) | 43 | `result-track:1a4343f15fa60b41e9ce6622e6df4d4a85f01097a1af9678d129d02e71d3630f` |
| 4 | `def` | [selbergCoefficient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergcoefficient--878d2837895e039e6d45bd31.md) | 65 | `declaration-track:878d2837895e039e6d45bd3115f7c020a139b73f232ed483e951f4e50e27e10b` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selberg-coefficient-identity--87a81b213f69ec05a994ae56.md) | 70 | `result-track:87a81b213f69ec05a994ae56e4c1c3657a2864a52a0c4e2b69e9fd44e84244af` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergcoefficient-nonneg--b65282dbd7e20cae907c5259.md) | 82 | `result-track:b65282dbd7e20cae907c5259a1cc8fdef1bbc8b4e06a192b5ba0149cd87e39d5` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergcoefficient-zero--ec6b0677c992f4addf0eb9f7.md) | 88 | `result-track:ec6b0677c992f4addf0eb9f7d51111f46a5b386aaf6abca7df77ed5afe46f97e` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergcoefficient-one--95d18662f9df7d63fa0f9f12.md) | 92 | `result-track:95d18662f9df7d63fa0f9f1217d9d6b8305d781f1534b46feec20e3877d77c7a` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selberg-antidiagonal-identity--5d44461482324752e81bd045.md) | 96 | `result-track:5d44461482324752e81bd045d08b81da462fc362400724fa0f5de9dcdfb9f7fd` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/closed-factor-cutoff-eq--29850a548e168853f8de1f94.md) | 104 | `result-track:29850a548e168853f8de1f945fa8a1785792c75174e99b01d943b8ed78545cab` |
| 11 | `def` | [selbergPrefix](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergprefix--24087b6fc5e4d324dbd2d4ff.md) | 119 | `declaration-track:24087b6fc5e4d324dbd2d4ff72cdbe5b0bfedd46f02126e34159ca1536536f5a` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selberg-prefix-identity--2f74bb41c710473d06438917.md) | 124 | `result-track:2f74bb41c710473d0643891730cc3b11064b30206019a3f2ac96c5fece627a38` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergprefix-nonneg--92c8744bc76759201f961cd1.md) | 145 | `result-track:92c8744bc76759201f961cd193087723b288e01c32d9ce50b4d86269c7182102` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergprefix-zero--edd1a1e656613a951a716b30.md) | 150 | `result-track:edd1a1e656613a951a716b3045b0672fde725e7bb6a49023a489aea78b269a1b` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selbergprefix-one--5b6e5f08b5cd0858993c8bed.md) | 154 | `result-track:5b6e5f08b5cd0858993c8bed708d62085c465eb48e049964b36af416d8686dbb` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/selberg-prefix-expanded--82b4bba889c01984b9120562.md) | 158 | `result-track:82b4bba889c01984b9120562c1a91465d93b1ba2135077dc7076fd7d283fca56` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--87a6a3ec3b3331313a567197.md) | 179 | `declaration-track:87a6a3ec3b3331313a5671973334a3483a75ce4956d1f9ac48fb26b9209f1df6` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--ed66ad8a6f929ce12854950a.md) | 184 | `declaration-track:ed66ad8a6f929ce12854950aef7f7f255ee357a0516f443ba54bac4077f13cdc` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--067e6bdda24fdacd21c96d51.md) | 188 | `declaration-track:067e6bdda24fdacd21c96d519f1b29ea19d58bcdd88c229c4f8b576cea5193a8` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--13cccb77f4dc4cf694eee568.md) | 194 | `declaration-track:13cccb77f4dc4cf694eee568de6dc85bab37eff1082de194786de92d53c004b0` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--f8e90f9c79e5c456c6e06891.md) | 198 | `declaration-track:f8e90f9c79e5c456c6e068914dd1d77c8ea4c7a06f748ce9f6c0a9e707b4d54b` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--9a63bdce22b60ac561b8029b.md) | 203 | `declaration-track:9a63bdce22b60ac561b8029ba29350ccca22e7c641ef18c85b3a3ab457ff1793` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--21108fb5b109d53269c2799c.md) | 206 | `declaration-track:21108fb5b109d53269c2799ca6d7fe3c495d472f99445979d068cd72ceed02ad` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--0d805bdb54559c5728f1ae90.md) | 209 | `declaration-track:0d805bdb54559c5728f1ae900fc84b7c5d2db5fb5053d082d68aa37de7a65f7d` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--5c51a834b0e24656da1084d7.md) | 212 | `declaration-track:5c51a834b0e24656da1084d734a23345d36cfec27f63c7e77862605af96e0269` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--6353fb95a2f79ce7b6d67b6d.md) | 217 | `declaration-track:6353fb95a2f79ce7b6d67b6da876c95dd8ea451091db90093119b337afb4fdf9` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--df4bad12a9a01b6d4d3da1b1.md) | 221 | `declaration-track:df4bad12a9a01b6d4d3da1b1dfb1c69306e406e0b8a2fbb769bee9dab57a7fec` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--5a296614310e6de6a756444b.md) | 225 | `declaration-track:5a296614310e6de6a756444b8aef35e8a674ac7b9286a99d0e72c409e3b07037` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--52748429f40735fd836a8e66.md) | 229 | `declaration-track:52748429f40735fd836a8e6640c1aee22332713a3a007a356b6a72ecdcfb2051` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--15252a780ff18746d752b1bb.md) | 232 | `declaration-track:15252a780ff18746d752b1bb2ce1e13057515654870b89ee033837928051f0b8` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--e2fc4dad926f3ce17694b371.md) | 235 | `declaration-track:e2fc4dad926f3ce17694b37154c1b460e8c2d29bbae51c58d6e547944b9f91d7` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/declarations/example--13115c472ab17319ffd9bda3.md) | 238 | `declaration-track:13115c472ab17319ffd9bda38ff58b13f889da89d0e77a5288ce175a0435a697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
