# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffMobiusInversion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3f545d399326589f9a8e0848dbf33ea1be7dcc0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3f545d399326589f9a8e0848dbf33ea1be7dcc0`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCoprimeTailSplit`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gcdCutoffIndicator](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffindicator--f3b119ae250ae990259bd52a.md) | 42 | `declaration-track:f3b119ae250ae990259bd52a0b75492a850a2f8e05dd3c4538042e69fdf82899` |
| 2 | `theorem` | [gcdCutoffIndicator_zero](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffindicator-zero--206d00473ece085031669f6b.md) | 47 | `result-track:206d00473ece085031669f6bc3e43fe0d48c8e7ac65c91090cde0a93aef70c61` |
| 3 | `theorem` | [gcdCutoffIndicator_of_pos](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffindicator-of-pos--1c2dd8d2e3e8534e293761e3.md) | 52 | `result-track:1c2dd8d2e3e8534e293761e3c8d8273217d77e495189e5ab0980ddadfe6f057c` |
| 4 | `def` | [gcdCutoffMobiusCoefficient](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffmobiuscoefficient--884f0cc0ca7d56cc4507dbbb.md) | 59 | `declaration-track:884f0cc0ca7d56cc4507dbbba89fa7cc134966e8619760b642eef205f00050cd` |
| 5 | `theorem` | [gcdCutoffMobiusCoefficient_divisor_sum](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffmobiuscoefficient-divisor-sum--15e6dde9d41cd370c78ae139.md) | 65 | `result-track:15e6dde9d41cd370c78ae139b4b2753196ed3ac861aff67f1860901542830331` |
| 6 | `theorem` | [gcdCutoffMobiusCoefficient_one](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffmobiuscoefficient-one--3b88a032a54024d247b98d53.md) | 94 | `result-track:3b88a032a54024d247b98d53d3e1ffe3c778fae0feac64f882294d9a4201027a` |
| 7 | `theorem` | [gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffmobiuscoefficient-eq-zero-of-one-lt-le--d93ac3f53d85fd17f268a8eb.md) | 102 | `result-track:d93ac3f53d85fd17f268a8eb1e803b8c4974fa3991aa7f49e45e08eb8914ef87` |
| 8 | `theorem` | [sum_gcdCutoffMobiusCoefficient_common_divisors](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/sum-gcdcutoffmobiuscoefficient-common-divisors--d84485f08f841492c726a11b.md) | 136 | `result-track:d84485f08f841492c726a11b1dfc12bb00f9ea3431da97a7d5c25dceb5d0b268` |
| 9 | `def` | [gcdCutoffMobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffmobiussquareexpansion--9c626792a228e8194834be9e.md) | 175 | `declaration-track:9c626792a228e8194834be9e7bee963cf19168f89dad3ef1cadda9fbd5d93c90` |
| 10 | `theorem` | [centeredLowGCDBilinear_eq_gcdCutoffMobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/centeredlowgcdbilinear-eq-gcdcutoffmobiussquareexpansion--92604908de2129f6af88c980.md) | 182 | `result-track:92604908de2129f6af88c9800d30a108cbeddcc6042605054a245f610f844157` |
| 11 | `def` | [highGCDCutoffIndexSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/highgcdcutoffindexset--a39f66880d6dea0c6fd04746.md) | 301 | `declaration-track:a39f66880d6dea0c6fd047465ae72a4c16d0b6ffaf713924730821a3fe2de269` |
| 12 | `theorem` | [mem_highGCDCutoffIndexSet_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/mem-highgcdcutoffindexset-iff--cbc7639b324f4ab3abb238e1.md) | 306 | `result-track:cbc7639b324f4ab3abb238e120cfa16d8f4ddcaf0446e50aa9d389b490320d42` |
| 13 | `def` | [highGCDCutoffMobiusSquareExpansion](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/highgcdcutoffmobiussquareexpansion--839b500945281cb84030e854.md) | 313 | `declaration-track:839b500945281cb84030e854afa9e5e6fa75abd8e28c17738a481043a8c45973` |
| 14 | `theorem` | [centeredLowGCDBilinear_eq_mass_sq_add_highCutoff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/centeredlowgcdbilinear-eq-mass-sq-add-highcutoff--dfcb0eaa89a1522c516b98cb.md) | 321 | `result-track:dfcb0eaa89a1522c516b98cb4c05568b5ca7faeb45476b618d88af7ca120bfa8` |
| 15 | `def` | [gcdCutoffCorrectionCoefficient](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffcorrectioncoefficient--8a637c1680be0609e5ff4877.md) | 374 | `declaration-track:8a637c1680be0609e5ff48770befc426fc9105779c7532576c5a7853cc428665` |
| 16 | `def` | [gcdCutoffCorrectionTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/gcdcutoffcorrectiontail--ad0b6a7e3ca248e0374c8981.md) | 380 | `declaration-track:ad0b6a7e3ca248e0374c898175f28ae62f0cff254eed820d46ae19076bc5c1d8` |
| 17 | `theorem` | [highGCDCutoffMobiusSquareExpansion_eq_highMobius_add_correction](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/highgcdcutoffmobiussquareexpansion-eq-highmobius-add-correction--2e93bb0ec59de977bdf5a290.md) | 388 | `result-track:2e93bb0ec59de977bdf5a29054c971da59ccecfe959106d1f878026647f7c906` |
| 18 | `theorem` | [lowCoprime_add_nonCoprime_eq_mass_sq_add_correction](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/declarations/lowcoprime-add-noncoprime-eq-mass-sq-add-correction--68a3c11484e1835efa49d6f9.md) | 407 | `result-track:68a3c11484e1835efa49d6f9bb991d73fc7e311d256ff5cd5c0fc3f7843988b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
