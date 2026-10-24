# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Order.Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf5ecc69337b7371a2bd6664036bfd3de66b02cf",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf5ecc69337b7371a2bd6664036bfd3de66b02cf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneConvergence` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tsum_le_of_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-le-of-sum-range-le--dd271b2339daa2b790be7edf.md) | 38 | `result-track:dd271b2339daa2b790be7edf67050373c158b632b26db44d56afc4f711babda3` |
| 2 | `theorem` | [hasSum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-le--85c6bf91b6cabf0f27d04fdf.md) | 51 | `result-track:85c6bf91b6cabf0f27d04fdf00455cd655369a00be24d5dbf2f7a6de9a7c971e` |
| 3 | `theorem` | [hasSum_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-mono--75d7ed909bd0459cb90f78c8.md) | 56 | `result-track:75d7ed909bd0459cb90f78c8dc0bc8cfc2abc8f4636583fa89bae73a919d63d1` |
| 4 | `theorem` | [hasSum_le_of_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-le-of-sum-le--8886068a9b569a0309976da3.md) | 60 | `result-track:8886068a9b569a0309976da33e127756ae0ac4453f0948239577a34c2d96ad1f` |
| 5 | `theorem` | [le_hasSum_of_le_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/le-hassum-of-le-sum--359d052e165d176f25992c07.md) | 64 | `result-track:359d052e165d176f25992c07f6bb1e5d234666bba85ecf2129a5c3ed8a1aba96` |
| 6 | `theorem` | [hasSum_le_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-le-inj--00024d005e89b37e1c30fb1c.md) | 68 | `result-track:00024d005e89b37e1c30fb1c168409a5cbe46550cc0221bf69bfbce278b3cd2a` |
| 7 | `theorem` | [tsum_le_tsum_of_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-le-tsum-of-inj--10b60776136d1b4f471b438b.md) | 80 | `result-track:10b60776136d1b4f471b438bcfdebe8daf06aa373c141015068866365bc233c2` |
| 8 | `theorem` | [sum_le_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/sum-le-hassum--de98c958f235decc05c2939c.md) | 86 | `result-track:de98c958f235decc05c2939c60c8f2928a76be936baa2c783f76749a13d9f4f7` |
| 9 | `theorem` | [isLUB_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/islub-hassum--a0d0dc70d3a7531c70b528b0.md) | 92 | `result-track:a0d0dc70d3a7531c70b528b0dc22f05bacdee779a55a862aba166a4ebd692384` |
| 10 | `theorem` | [le_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/le-hassum--6fbb6d976d0ff0f9a215e45b.md) | 97 | `result-track:6fbb6d976d0ff0f9a215e45b2b3b2e3ad14f12f74493be897175c180a4ae99dd` |
| 11 | `theorem` | [sum_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/sum-le-tsum--630972813d501ce994e3621e.md) | 103 | `result-track:630972813d501ce994e3621e7f3c45a58635b5700c44b81c060a83ddc9765dab` |
| 12 | `theorem` | [le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/le-tsum--f3ef9e4a59ab3da74a1b9f3c.md) | 108 | `result-track:f3ef9e4a59ab3da74a1b9f3cad59c58c7b504eeaf84b166423f51ba29d1c0d7b` |
| 13 | `theorem` | [tsum_le_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-le-tsum--27db0f71f05568819e3891aa.md) | 112 | `result-track:27db0f71f05568819e3891aaec3e1bd5b97f9739ee7dcacf6fb5038d9451d57b` |
| 14 | `theorem` | [tsum_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-mono--270a085882447630cabe5a42.md) | 118 | `result-track:270a085882447630cabe5a42d795fe4d0f920f750f894f6cf38dce14b6036954` |
| 15 | `theorem` | [tsum_le_of_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-le-of-sum-le--68a61672074afde55f90b522.md) | 122 | `result-track:68a61672074afde55f90b5227742b3b35405468e961ece86ee9304fdb87d75cc` |
| 16 | `theorem` | [tsum_le_of_sum_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-le-of-sum-le--cd89944bb55c78cad823d300.md) | 126 | `result-track:cd89944bb55c78cad823d300ef76fc18d6f6b371b5b7a43193d6d4e8daf874fa` |
| 17 | `theorem` | [HasSum.nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-nonneg--c0cb679ab0daddc483abf61d.md) | 133 | `result-track:c0cb679ab0daddc483abf61d43c9bd5a1b8a5dfeff5d13821341fe9381e1713e` |
| 18 | `theorem` | [HasSum.nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-nonpos--df28257cb5539456fdeee4ba.md) | 137 | `result-track:df28257cb5539456fdeee4ba4df2963a6a187fc8ea8f8c15787c84711c9b8fdc` |
| 19 | `theorem` | [tsum_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-nonneg--f4196bf8dd6a3f4549db983c.md) | 141 | `result-track:f4196bf8dd6a3f4549db983ccc929408536f76cec34e0eb2b722f492c80a8bc3` |
| 20 | `theorem` | [tsum_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-nonpos--69c81620a11659b8286374ad.md) | 147 | `result-track:69c81620a11659b8286374ad5fe0a5ca310cc49f5c32d3c00851e9897a99f9e5` |
| 21 | `theorem` | [hasSum_zero_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-zero-iff-of-nonneg--feae81e737ad2199978b3813.md) | 154 | `result-track:feae81e737ad2199978b38130429d7323de7a90f187e5a0fa7129d66fa9f8490` |
| 22 | `theorem` | [hasSum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-lt--4c1788dbded1a5fac5f8177a.md) | 169 | `result-track:4c1788dbded1a5fac5f8177a11f242bb5416927422692327354667889db7e0bc` |
| 23 | `theorem` | [hasSum_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-strict-mono--e9305f60b23733def6a2525d.md) | 176 | `result-track:e9305f60b23733def6a2525dd2220c2233560e1cc49d97d8bec70e4bd7535571` |
| 24 | `theorem` | [tsum_lt_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-lt-tsum--db212b831a846ad10f6e2dde.md) | 181 | `result-track:db212b831a846ad10f6e2ddec0dbacd6e107133c837a63cd1e92718571e73f7b` |
| 25 | `theorem` | [tsum_strict_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-strict-mono--07947b030483fe86b99ac273.md) | 187 | `result-track:07947b030483fe86b99ac27316d808150b0806805e6d1a209bdb8c6d6861a986` |
| 26 | `theorem` | [tsum_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-pos--b6f419c59f488de8002a53e4.md) | 193 | `result-track:b6f419c59f488de8002a53e470b0f32ac60b656f35728f9a8e8f67f0c02eb17e` |
| 27 | `theorem` | [le_hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/le-hassum--735c2658a84483760409bad6.md) | 206 | `result-track:735c2658a84483760409bad6f02647de516be43449109c064f2f27f429000ff3` |
| 28 | `theorem` | [le_tsum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/le-tsum--dfbf1dd041e12a07220f533f.md) | 210 | `result-track:dfbf1dd041e12a07220f533f6d7b0e1e25075b305c431fef42347a5242495612` |
| 29 | `theorem` | [hasSum_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-zero-iff--c1c6c09b683b18cdf03248d1.md) | 214 | `result-track:c1c6c09b683b18cdf03248d1add1bd5f049f9db617dde090c230303cfa9fe4c9` |
| 30 | `theorem` | [tsum_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-eq-zero-iff--ad3dc0f5528f4900cc3d12be.md) | 218 | `result-track:ad3dc0f5528f4900cc3d12beb303aaf44c81ff2ccb4a4f52a54385ef9b6bcc2d` |
| 31 | `theorem` | [tsum_ne_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/tsum-ne-zero-iff--19b3c887a753df922638b5d7.md) | 222 | `result-track:19b3c887a753df922638b5d738fdadecd066181d0547e2e1563be0976fd9ce56` |
| 32 | `theorem` | [isLUB_hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/islub-hassum--647ca0e6bf1ed2467108700e.md) | 226 | `result-track:647ca0e6bf1ed2467108700ee1ba9e6a1a3f084d1b99de2e5e72c5e6eaeb0e69` |
| 33 | `theorem` | [hasSum_of_isLUB_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-of-islub-of-nonneg--c9fa8cedcc74f6a307a51c83.md) | 243 | `result-track:c9fa8cedcc74f6a307a51c832cfe2ce0177af879155fb47c01e2e200750c949d` |
| 34 | `theorem` | [hasSum_of_isLUB](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/hassum-of-islub--ca380b8c1a85935a9ad2b50b.md) | 249 | `result-track:ca380b8c1a85935a9ad2b50bb02ce0d1734855fdaef68a034337d5e436ce1fc1` |
| 35 | `theorem` | [summable_abs_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/summable-abs-iff--fcb634f05bbeb388927a593e.md) | 254 | `result-track:fcb634f05bbeb388927a593eebc84bf34680347ca205830611071f258be21c33` |
| 36 | `theorem` | [Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/finite-of-summable-const--49c0e6178688fe2f4a9dc790.md) | 270 | `result-track:49c0e6178688fe2f4a9dc79052ce2027fc5758b1caada713d839793b9efab7b6` |
| 37 | `theorem` | [Set.Finite.of_summable_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/set-finite-of-summable-const--9713c269dd4dd6ff573059dd.md) | 281 | `result-track:9713c269dd4dd6ff573059ddc2980be758d378f64dbe032041424b311503c667` |
| 38 | `theorem` | [Summable.tendsto_atTop_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/declarations/summable-tendsto-attop-of-pos--b7fd0abb0ba1324088f2b9c6.md) | 289 | `result-track:b7fd0abb0ba1324088f2b9c6a16fb5a4bde2f3933b4ad374405e6a6062efad61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
