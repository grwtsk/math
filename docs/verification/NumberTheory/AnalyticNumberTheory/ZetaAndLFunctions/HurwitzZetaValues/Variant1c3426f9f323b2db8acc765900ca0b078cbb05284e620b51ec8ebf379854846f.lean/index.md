# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.HurwitzZetaValues.Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3202a1b71118103de05b67901cdac2dd1dc460bf",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3202a1b71118103de05b67901cdac2dd1dc460bf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ZetaValues` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cosZeta_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/coszeta-two-mul-nat--bf1cc5096b45759decbdb1ef.md) | 57 | `result-track:bf1cc5096b45759decbdb1efd20f16507449389aafd12e8934a711d08a7b21ed` |
| 2 | `theorem` | [sinZeta_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/sinzeta-two-mul-nat-add-one--86291c03ae6254abdf0e7556.md) | 83 | `result-track:86291c03ae6254abdf0e755603dba7660e8b78140bf3e23110593329b29a4431` |
| 3 | `theorem` | [cosZeta_two_mul_nat'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/coszeta-two-mul-nat--6192b2814611529980c31ad1.md) | 103 | `result-track:6192b2814611529980c31ad1ce046221cd997b80ec7052d5f421b6336154875d` |
| 4 | `theorem` | [sinZeta_two_mul_nat_add_one'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/sinzeta-two-mul-nat-add-one--d17ca7556c43d745f10803aa.md) | 116 | `result-track:d17ca7556c43d745f10803aa47cd6c55c2b52d091edf5ffce686ce437d92389b` |
| 5 | `theorem` | [hurwitzZetaEven_one_sub_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/hurwitzzetaeven-one-sub-two-mul-nat--3136dfb8d709dff88c81c84a.md) | 129 | `result-track:3136dfb8d709dff88c81c84ae47894a473e6cfe674e18451915b2e5f079a2d1c` |
| 6 | `theorem` | [hurwitzZetaOdd_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/hurwitzzetaodd-neg-two-mul-nat--83e1862ed41873ec5a4a3eec.md) | 149 | `result-track:83e1862ed41873ec5a4a3eec7c031e673bb593b6bc1c4e20eaaafe6b3a004fc7` |
| 7 | `lemma` | [hurwitzZeta_one_sub_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/hurwitzzeta-one-sub-two-mul-nat--a9ed507d21141686019725cb.md) | 172 | `result-track:a9ed507d21141686019725cba99d10d5e6c55917a0921a9dc175cd363c1ed7b2` |
| 8 | `lemma` | [hurwitzZeta_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/hurwitzzeta-neg-two-mul-nat--f697ea74e8a4055efeda1c0d.md) | 182 | `result-track:f697ea74e8a4055efeda1c0d9856bebbe60355ac3a004b01aa094f85a59c01a3` |
| 9 | `theorem` | [hurwitzZeta_neg_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/hurwitzzeta-neg-nat--dac65d903545bf5ddcfae1d1.md) | 194 | `result-track:dac65d903545bf5ddcfae1d14f179823db970a0a2362e32c8acf6130776af823` |
| 10 | `theorem` | [riemannZeta_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/riemannzeta-two-mul-nat--9d04adf5e4ffe5cb9f989837.md) | 211 | `result-track:9d04adf5e4ffe5cb9f9898373f331b71c9e498e15b69f44b96dedd29f8c9dbbd` |
| 11 | `theorem` | [riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/riemannzeta-two--18bfb1e98cfe0bb28fa2da10.md) | 219 | `result-track:18bfb1e98cfe0bb28fa2da1029d106272cb871853ac9f40f50e3008f992e2cd2` |
| 12 | `theorem` | [riemannZeta_four](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/riemannzeta-four--138621727d461757af10a635.md) | 225 | `result-track:138621727d461757af10a63520367cdfa9ef8cf600e178947b1354a1540a3b79` |
| 13 | `theorem` | [riemannZeta_neg_nat_eq_bernoulli'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/riemannzeta-neg-nat-eq-bernoulli--24f48d6655080bdabb3fa76b.md) | 233 | `result-track:24f48d6655080bdabb3fa76b786bd6a15f3e3198938d36b7e08d74e1dc7a29ad` |
| 14 | `theorem` | [riemannZeta_neg_nat_eq_bernoulli](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/declarations/riemannzeta-neg-nat-eq-bernoulli--cf088f5557889e20a022f626.md) | 244 | `result-track:cf088f5557889e20a022f626af304673518ea6faa2f9e0eacc830318d38e2986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
