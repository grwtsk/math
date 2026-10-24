# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IncMatrix.Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8ca9aeca8bee3daadeafd0bc9861323a51fb792",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8ca9aeca8bee3daadeafd0bc9861323a51fb792`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix--17bda9c6cc270a662f010990.md) | 64 | `declaration-track:17bda9c6cc270a662f010990b03fc88f72e81bbe8e7ea4ce70902e65bc5a97c7` |
| 2 | `theorem` | [incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-apply--afc99610482b96f50916a738.md) | 70 | `result-track:afc99610482b96f50916a738b0099697e58725e967a8441ab22b7d389a91c1eb` |
| 3 | `theorem` | [incMatrix_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-apply--2955f8f5e9c9159ef1442977.md) | 76 | `result-track:2955f8f5e9c9159ef1442977c135f04836c23c97908e59458a8668eacceed5ac` |
| 4 | `theorem` | [incMatrix_apply_mul_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-apply-mul-incmatrix-apply--27fbe4b8bebb8a4a2221a685.md) | 86 | `result-track:27fbe4b8bebb8a4a2221a685d3ada3ceddb8dd5e6db53175d439d0b30cbc956d` |
| 5 | `theorem` | [incMatrix_apply_mul_incMatrix_apply_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-apply-mul-incmatrix-apply-of-not-adj--f70b6e8e9b86e204311ded84.md) | 92 | `result-track:f70b6e8e9b86e204311ded84fe2a675dc60aa705508bda04ff9388e9337e7436` |
| 6 | `theorem` | [incMatrix_of_not_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-of-not-mem-incidenceset--3284cf84104dd3867c67fe2c.md) | 99 | `result-track:3284cf84104dd3867c67fe2c59b7613ba70b624656a62cd9b2715bf6b72a3163` |
| 7 | `theorem` | [incMatrix_of_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-of-mem-incidenceset--5336197ecb2f487df9330fb6.md) | 103 | `result-track:5336197ecb2f487df9330fb6d56b9a34d39343316984e37f14542a76835441cf` |
| 8 | `theorem` | [incMatrix_apply_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-apply-eq-zero-iff--d7fe69c3b1a30a7be50d07d3.md) | 109 | `result-track:d7fe69c3b1a30a7be50d07d305f1026b9da951098e43383c3cf89518e9a90137` |
| 9 | `theorem` | [incMatrix_apply_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-apply-eq-one-iff--6ef3e293ec724a92ced8b978.md) | 113 | `result-track:6ef3e293ec724a92ced8b97805c1d449c0c6875b9cab37ddf5d999aae8a75bca` |
| 10 | `theorem` | [sum_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/sum-incmatrix-apply--35cf62586892081bb81c3350.md) | 128 | `result-track:35cf62586892081bb81c3350357e1c839a68509e0b0d88477c57b175b56e43aa` |
| 11 | `theorem` | [incMatrix_mul_transpose_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-mul-transpose-diag--a9f2b5911894040424cf48b2.md) | 133 | `result-track:a9f2b5911894040424cf48b2a5a3a0b459a3542969f590d24570f0e7e9cd48a1` |
| 12 | `theorem` | [sum_incMatrix_apply_of_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/sum-incmatrix-apply-of-mem-edgeset--59cca76d7337dfb8046dc067.md) | 140 | `result-track:59cca76d7337dfb8046dc067bd65ef38c1d1ec0e5fb42a42566d5280de43b712` |
| 13 | `theorem` | [sum_incMatrix_apply_of_not_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/sum-incmatrix-apply-of-not-mem-edgeset--b908d0ca62adb70af636120d.md) | 153 | `result-track:b908d0ca62adb70af636120df0fe97256b32ffaa5ea8b7b83f5ab06ddbd56fd6` |
| 14 | `theorem` | [incMatrix_transpose_mul_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-transpose-mul-diag--eff43a6e95137ec29a01d8af.md) | 158 | `result-track:eff43a6e95137ec29a01d8af77bd254b53f082f304bf07f1dfb9d98f9840390e` |
| 15 | `theorem` | [incMatrix_mul_transpose_apply_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-mul-transpose-apply-of-adj--edc28c114803e22422cff032.md) | 184 | `result-track:edc28c114803e22422cff032c6847d8d9a047c039d47023ad3230efea0df3cbd` |
| 16 | `theorem` | [incMatrix_mul_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/declarations/incmatrix-mul-transpose--945f4b9b1cc3871ab08ab671.md) | 195 | `result-track:945f4b9b1cc3871ab08ab671ff48b6bfd5d8e86f0d29c6836eab28ef72ba052c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
