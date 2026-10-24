# Verification target: GRWTSK.Algebra.Field.Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbc7d72f07939c1886213baa103c24a3f51ab333",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbc7d72f07939c1886213baa103c24a3f51ab333`.

Source path: `GRWTSK/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 13; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Field](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/field--b18abe65e8ac5508113dcaa8.md) | 23 | `declaration-track:b18abe65e8ac5508113dcaa878f66dfd52b3897839fdc81169e83f00f8d8cfad` |
| 2 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-mul-cancel--ff2da988b603e9e38ac7ec29.md) | 48 | `result-track:ff2da988b603e9e38ac7ec29121afa741b5bcda1856786e8b740181e905cbedb` |
| 3 | `theorem` | [eq_inv_of_mul_eq_one](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/eq-inv-of-mul-eq-one--f67172def96712ea4e1e1b33.md) | 51 | `result-track:f67172def96712ea4e1e1b33db99df1e76c2372f20dfe7ee53fe856296c69a9b` |
| 4 | `theorem` | [inv_one](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-one--741d8be5121b71ccca0df1f0.md) | 60 | `result-track:741d8be5121b71ccca0df1f0901c8c6d70cdb91fb96bc27f2695837e106ba6c3` |
| 5 | `theorem` | [inv_inv](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-inv--867d914fa211551b136b37d4.md) | 63 | `result-track:867d914fa211551b136b37d4a399fdc4ce53942666da3955745568d43ec4d565` |
| 6 | `theorem` | [inv_eq_iff_eq_iff](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-eq-iff-eq-iff--1ecdea0e2af8ae9f5446240e.md) | 71 | `result-track:1ecdea0e2af8ae9f5446240eec424f7069dfbd5598be70824b416027b5ea9114` |
| 7 | `theorem` | [inv_neg](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-neg--b113fcc32020c57cf94b4c22.md) | 78 | `result-track:b113fcc32020c57cf94b4c22b58f7c8e33647f1d916bd202a1685189bbaa5d37` |
| 8 | `theorem` | [inv_eq_zero_iff](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-eq-zero-iff--0099a95e4ff6b9d4807217ea.md) | 86 | `result-track:0099a95e4ff6b9d4807217eacb33fa5b5757184fe88f0c773114008fa28b39ba` |
| 9 | `theorem` | [zero_eq_inv_iff](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zero-eq-inv-iff--7dc80bc28411b4a96eabe75d.md) | 102 | `result-track:7dc80bc28411b4a96eabe75d57d492d3da11b47b7d839db30f146e054c76edce` |
| 10 | `theorem` | [of_mul_eq_zero](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/of-mul-eq-zero--ed0fb5bc33fe6d26acd82fd8.md) | 105 | `result-track:ed0fb5bc33fe6d26acd82fd8b82feea1aa5f64c71279aa4b02cbca9318a51cd8` |
| 11 | `theorem` | [inv_mul](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/inv-mul--f98d37be4d23c15b13b0e8b3.md) | 117 | `result-track:f98d37be4d23c15b13b0e8b33aed7c2ea7900d6b0f47d7fe9adde1a62fc1b72f` |
| 12 | `theorem` | [of_pow_eq_zero](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/of-pow-eq-zero--4dd0496a42b71dcbbd71c53a.md) | 131 | `result-track:4dd0496a42b71dcbbd71c53a230a1cf9adbadbfde47c7b6b3d5154369a142bc9` |
| 13 | `theorem` | [zpow_natCast](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zpow-natcast--dc3451c61c0cbe098f36c30f.md) | 144 | `result-track:dc3451c61c0cbe098f36c30ff5f104e220c5972e14da6e2a78278118a2f18bc0` |
| 14 | `theorem` | [zpow_one](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zpow-one--07416e5b9005dfb641bcc5d3.md) | 149 | `result-track:07416e5b9005dfb641bcc5d33baf859164a946a7f0955c602793182bc2084128` |
| 15 | `theorem` | [zpow_neg_one](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zpow-neg-one--e9f8c9b4cf49cd8e98dd29f3.md) | 153 | `result-track:e9f8c9b4cf49cd8e98dd29f3bb3df0ede49597fb0bed4efb9369152731931654` |
| 16 | `theorem` | [zpow_add_one](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zpow-add-one--1a410142e6d335d13efa097c.md) | 156 | `result-track:1a410142e6d335d13efa097caf321df88f3fb80844455904afa0fd31b58cfdfc` |
| 17 | `theorem` | [zpow_sub_one](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zpow-sub-one--06dc89b889d5aa713bb93180.md) | 163 | `result-track:06dc89b889d5aa713bb93180af0b444a998b36adae00b6ce113d9b3f9af7a372` |
| 18 | `theorem` | [zpow_add](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/zpow-add--005442f111d73dee6ee8aede.md) | 169 | `result-track:005442f111d73dee6ee8aedefafc00b0e7e17c1b6a873c2c5460b6b601c52903` |
| 19 | `theorem` | [div_zero](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/div-zero--62a63c81fed895f245ba07eb.md) | 180 | `result-track:62a63c81fed895f245ba07ebe3586a777e5bee59b087d357d199e05395de9590` |
| 20 | `theorem` | [mul_div](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/mul-div--1a729b3f4ff90150b85c5aa0.md) | 182 | `result-track:1a729b3f4ff90150b85c5aa0cf7feabc8c762726c460d13f7c398b2dd7ad11a2` |
| 21 | `theorem` | [div_mul](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/div-mul--03db78c2adec2f4efbb3297e.md) | 184 | `result-track:03db78c2adec2f4efbb3297eac9fba3af80f262188dae2482de908df5e10edef` |
| 22 | `theorem` | [div_add](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/div-add--863bf9009b51964749e734c4.md) | 187 | `result-track:863bf9009b51964749e734c43cfe70a5c421c498ef6a7a07dcc9bf73f030f461` |
| 23 | `theorem` | [add_div](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/add-div--9bfa409a42d9309b3168ef9b.md) | 190 | `result-track:9bfa409a42d9309b3168ef9bc91add333f37ef289288c353fa0ff6ab09435679` |
| 24 | `theorem` | [div_div_right](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/div-div-right--91597002f4f223a00ce70e7e.md) | 194 | `result-track:91597002f4f223a00ce70e7eabca472ae6f7eaaff6739fe68c8def8a4405cc02` |
| 25 | `theorem` | [div_div_left](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/div-div-left--b84afa3352c48ca6a3bf63a0.md) | 197 | `result-track:b84afa3352c48ca6a3bf63a097d2ff559139a599fcc4c3b02e2aaeb67b18949b` |
| 26 | `theorem` | [div_mul_cancel](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/div-mul-cancel--1b2c3f5b5a0db29328f530f7.md) | 199 | `result-track:1b2c3f5b5a0db29328f530f7fdbbdea42242c6def49e29526bfabf45823d3978` |
| 27 | `theorem` | [natCast_ne_zero](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/natcast-ne-zero--05ac206adf1a44a5af921263.md) | 203 | `result-track:05ac206adf1a44a5af9212633aac270ae0cbf1fec6e9c6bf59be17e7284429f0` |
| 28 | `theorem` | [intCast_div_of_dvd](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/intcast-div-of-dvd--dc6dc89a332084c48515723d.md) | 207 | `result-track:dc6dc89a332084c48515723d37ecce330a005e708e2bbabafbc6a768ae892461` |
| 29 | `theorem` | [natCast_div_of_dvd](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/natcast-div-of-dvd--17b29f04615c01dde11195d2.md) | 217 | `result-track:17b29f04615c01dde11195d2f04edc3aa4cb2044cf4be3c083841b306653f806` |
| 30 | `def` | [noNatZeroDivisors.ofIsCharPZero](../../../../mathematics/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/declarations/nonatzerodivisors-ofischarpzero--e2a7bd489e861f604bfb37e9.md) | 229 | `declaration-track:e2a7bd489e861f604bfb37e91d34cc446fe85aa3ec5ab2462fe93eec6f1613e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
