# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Chebyshev.Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb4cfa28e40dda627ca610aee01bb36945c7b1d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb4cfa28e40dda627ca610aee01bb36945c7b1d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Module` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fintype` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonovaryOn.sum_smul_sum_le_card_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/monovaryon-sum-smul-sum-le-card-smul-sum--a905da6fa08a13e3b92bdb8d.md) | 67 | `result-track:a905da6fa08a13e3b92bdb8d6af98e813effae2b174762dace4829e624f72893` |
| 2 | `theorem` | [AntivaryOn.card_smul_sum_le_sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/antivaryon-card-smul-sum-le-sum-smul-sum--2e5c0e1bebf75bedbd0d1de0.md) | 77 | `result-track:2e5c0e1bebf75bedbd0d1de0f985afb9d1d8352be18aa6709a813ca4ae84ba03` |
| 3 | `theorem` | [Monovary.sum_smul_sum_le_card_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/monovary-sum-smul-sum-le-card-smul-sum--46eec2b6e920b5efb84a910a.md) | 86 | `result-track:46eec2b6e920b5efb84a910aaab40bbf43c80cba27b5da2f19dc4d93f6d6643f` |
| 4 | `theorem` | [Antivary.card_smul_sum_le_sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/antivary-card-smul-sum-le-sum-smul-sum--90020718aa74652574d534c3.md) | 93 | `result-track:90020718aa74652574d534c3bcca2a4708d33141dda11f80684038bde81bd248` |
| 5 | `theorem` | [MonovaryOn.sum_mul_sum_le_card_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/monovaryon-sum-mul-sum-le-card-mul-sum--54f374b52986113d7bd4703b.md) | 113 | `result-track:54f374b52986113d7bd4703b32c63ee493cc104beaf26fbfbc5d6d2ed6a0372d` |
| 6 | `theorem` | [AntivaryOn.card_mul_sum_le_sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/antivaryon-card-mul-sum-le-sum-mul-sum--7d57f11cb05b6c1d46a3d791.md) | 121 | `result-track:7d57f11cb05b6c1d46a3d79121fc2e30b2403a1825598e10cd0c633d16568711` |
| 7 | `lemma` | [pow_sum_le_card_mul_sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/pow-sum-le-card-mul-sum-pow--eaa04febd23abfd6b5f368e5.md) | 127 | `result-track:eaa04febd23abfd6b5f368e5dea913fd822395af8861936e79b0bb5c478d77fc` |
| 8 | `theorem` | [sq_sum_le_card_mul_sum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/sq-sum-le-card-mul-sum-sq--2d30cafc79b92683d2d8075b.md) | 144 | `result-track:2d30cafc79b92683d2d8075bd0feaafcb0379e3a525622cbf6e798f5766852a8` |
| 9 | `theorem` | [Multiset.sq_sum_le_card_mul_sum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/multiset-sq-sum-le-card-mul-sum-sq--95f7502998e0141679cd2593.md) | 150 | `result-track:95f7502998e0141679cd259312b08bb1523b7b74cf968057c5615f27da92f771` |
| 10 | `theorem` | [Monovary.sum_mul_sum_le_card_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/monovary-sum-mul-sum-le-card-mul-sum--cf1c95626de88a26caa0fb14.md) | 161 | `result-track:cf1c95626de88a26caa0fb1429259fa4d6e241ee352cb6caed2d24ca7cffc915` |
| 11 | `theorem` | [Antivary.card_mul_sum_le_sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/antivary-card-mul-sum-le-sum-mul-sum--250c0ab5235211373a7f4a24.md) | 168 | `result-track:250c0ab5235211373a7f4a2499b8de791db5bf01ea73239cba5320d151f673ba` |
| 12 | `lemma` | [pow_sum_div_card_le_sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/pow-sum-div-card-le-sum-pow--1cce27189d67329439a8b0e9.md) | 178 | `result-track:1cce27189d67329439a8b0e90d6f44c84bc02fdef9e69506cb2e475e20db728d` |
| 13 | `theorem` | [sum_div_card_sq_le_sum_sq_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/sum-div-card-sq-le-sum-sq-div-card--79fd44db7bfc3522d304d99f.md) | 185 | `result-track:79fd44db7bfc3522d304d99ff640cc8e73c3a4f9d5f9914d250af5359af1a52d` |
| 14 | `theorem` | [sum_mul_le_sum_mul_of_sum_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/sum-mul-le-sum-mul-of-sum-range-le--1959365fa8a4f2500c471f5b.md) | 204 | `result-track:1959365fa8a4f2500c471f5bacbc2f13eacfc8f6701fd2566ba211d6c04415fe` |
| 15 | `theorem` | [sum_mul_le_mul_of_sum_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/sum-mul-le-mul-of-sum-range-le--b58f1ba5e43bed6383df0760.md) | 219 | `result-track:b58f1ba5e43bed6383df0760c80b51f81068e485199e2f7e4a66f6e1f908aa60` |
| 16 | `theorem` | [mul_le_sum_mul_of_le_sum_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/mul-le-sum-mul-of-le-sum-range--21fed3d4d465ba94df5c3168.md) | 232 | `result-track:21fed3d4d465ba94df5c3168ebd4d3d34371f4d3e851b07c1f81699fc89fbbc5` |
| 17 | `theorem` | [abs_sum_mul_le_mul_of_abs_sum_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variantad0178d8901043bbf10bb55b9a3b689924d470f626b76527bef1e46b42654063.lean/declarations/abs-sum-mul-le-mul-of-abs-sum-range-le--6d02cb21ba1f794fc6ca09d8.md) | 247 | `result-track:6d02cb21ba1f794fc6ca09d8d69c640a9b617c11f138cc2abd5110c600813832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
