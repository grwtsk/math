# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DFinsupp.Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd93515178cb68f8851ef3e95c8df9dbccb426ad",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd93515178cb68f8851ef3e95c8df9dbccb426ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dfinsupp_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsupp-ext--8161a19b391b676100904d69.md) | 56 | `result-track:8161a19b391b676100904d69c2d5e27806f5b7ddc0973ed676a23ed352af3f75` |
| 2 | `def` | [dfinsuppFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily--36e27ad899e674df1c3d503a.md) | 93 | `declaration-track:36e27ad899e674df1c3d503a52b87f001a86325d5f97e3703556e643c1daf75a` |
| 3 | `theorem` | [support_dfinsuppFamily_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/support-dfinsuppfamily-subset--315539370defa5fa010a9d84.md) | 116 | `result-track:315539370defa5fa010a9d84c85c99b2a8ee528f619c510ddf1cb86f8e01af00` |
| 4 | `theorem` | [dfinsuppFamily_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-single--10fca8bf948cb18b029ab01d.md) | 132 | `result-track:10fca8bf948cb18b029ab01d59833c06608ddfc011f7ab6f3905ec5db673de0a` |
| 5 | `theorem` | [dfinsuppFamily_single_left_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-single-left-apply--86d7ca99b01a5cf12d06a548.md) | 148 | `result-track:86d7ca99b01a5cf12d06a548561459412a0fcaac136ce27ae3ccdc4d5d8ec2f0` |
| 6 | `theorem` | [dfinsuppFamily_single_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-single-left--b36d11d9826ca9cdeba0d315.md) | 156 | `result-track:b36d11d9826ca9cdeba0d315fd1f1a2fbcea50a7686edd1a766177b2a487c1c4` |
| 7 | `theorem` | [dfinsuppFamily_compLinearMap_lsingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-complinearmap-lsingle--1bedf3b97c0687dea62810b1.md) | 163 | `result-track:1bedf3b97c0687dea62810b12e7e2ad442262208b50c46fd5c8b05ea57dfc293` |
| 8 | `theorem` | [dfinsuppFamily_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-zero--54123a8b2aa202912c25c351.md) | 170 | `result-track:54123a8b2aa202912c25c351d506389ee6b105133d60a9614c9517b02a362540` |
| 9 | `theorem` | [dfinsuppFamily_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-add--0091b6597315bcb46bd46c51.md) | 175 | `result-track:0091b6597315bcb46bd46c5193241973816827baa9ab003aa6fd46bdef60d98c` |
| 10 | `theorem` | [dfinsuppFamily_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily-smul--0e47a0c9b8f2bde9a87b6717.md) | 180 | `result-track:0e47a0c9b8f2bde9a87b6717eb4ee135630e7ff0982bf0d24d15c5c185ca36a9` |
| 11 | `def` | [dfinsuppFamilyₗ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DFinsupp/Variant09155e4f7c2571a93cc15586927fe0d5562e2e0a5d5ee71b23619c00f217f04c.lean/declarations/dfinsuppfamily--eb4e4079584f0cc6d843f577.md) | 196 | `declaration-track:eb4e4079584f0cc6d843f577fdf43afd5ecba4e3928b707927c9a0b676ff658b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
