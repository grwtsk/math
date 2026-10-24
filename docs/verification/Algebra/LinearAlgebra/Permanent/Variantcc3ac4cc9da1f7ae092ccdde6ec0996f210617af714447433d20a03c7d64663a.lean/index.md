# Verification target: GRWTSK.Algebra.LinearAlgebra.Permanent.Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b6d0b855c68349faa02a0297f979d08dd6006c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b6d0b855c68349faa02a0297f979d08dd6006c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Perm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [permanent](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent--0985dd0cd246b20cb80be905.md) | 28 | `declaration-track:0985dd0cd246b20cb80be90579c3323512538c3bcab08f73bd9987bbc4506b37` |
| 2 | `theorem` | [permanent_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-diagonal--c5e42615ec2a640dc6e08091.md) | 31 | `result-track:c5e42615ec2a640dc6e08091e2ba8c2d85fb05674c04fd4504778311f0b1b79e` |
| 3 | `theorem` | [permanent_zero](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-zero--0e36fb87524ee7764551c7cf.md) | 38 | `result-track:0e36fb87524ee7764551c7cf3ad04c2ee3c827197110cabd1e929bef2be0632a` |
| 4 | `theorem` | [permanent_one](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-one--e64ea1482c4562a0f4254885.md) | 41 | `result-track:e64ea1482c4562a0f4254885e416a385e5455282d800dd769922009ff634c21b` |
| 5 | `theorem` | [permanent_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-isempty--3ceae283a900270bb781ce0a.md) | 44 | `result-track:3ceae283a900270bb781ce0a0d805a7b81504106e268ffd77987064697204bcb` |
| 6 | `theorem` | [permanent_eq_one_of_card_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-eq-one-of-card-eq-zero--e19006a1e8a03867f2d08f04.md) | 46 | `result-track:e19006a1e8a03867f2d08f04248c049b487d52dcdb1ed71e91ec44b11728943f` |
| 7 | `theorem` | [permanent_unique](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-unique--ec3369e9af961fb1978c4acd.md) | 54 | `result-track:ec3369e9af961fb1978c4acda0525631ef8b23a03d0ec152462ec6bb6589d565` |
| 8 | `theorem` | [permanent_eq_elem_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-eq-elem-of-subsingleton--f7fe6fa16177326a4fe9010b.md) | 57 | `result-track:f7fe6fa16177326a4fe9010b8e9c223e00eec68737c4f39ab64ac6ce30d7f6c2` |
| 9 | `theorem` | [permanent_eq_elem_of_card_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-eq-elem-of-card-eq-one--d6e196cf0f54dfca8ae66eed.md) | 62 | `result-track:d6e196cf0f54dfca8ae66eed261e0891dcee688b0270d428ec634d0b108e8b54` |
| 10 | `theorem` | [permanent_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-transpose--c166466111b85f4f7b92daa6.md) | 69 | `result-track:c166466111b85f4f7b92daa60fadb6d46cab1156f1971ac02c8fca9e554df7ab` |
| 11 | `theorem` | [permanent_permute_cols](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-permute-cols--1fec25f78b0e6f5f0ef5e93d.md) | 76 | `result-track:1fec25f78b0e6f5f0ef5e93d991ced5d228429a4e54d128f432d96e3aadd0384` |
| 12 | `theorem` | [permanent_permute_rows](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-permute-rows--1f01a0867ca311d1788cf393.md) | 81 | `result-track:1f01a0867ca311d1788cf393aaccd4b3844d987a23fa3e3c807b3fe5b9d350df` |
| 13 | `theorem` | [permanent_smul](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-smul--85d69952af7c77a19237443a.md) | 86 | `result-track:85d69952af7c77a19237443afa9a2836dda2e23543383df4dfea7e6b3f41765c` |
| 14 | `theorem` | [permanent_updateCol_smul](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-updatecol-smul--31a90b4e46f0b1b92a25fa52.md) | 96 | `result-track:31a90b4e46f0b1b92a25fa52f904324bb54e9bd7d2f27b06e122c31d45a21c5c` |
| 15 | `theorem` | [permanent_updateRow_smul](../../../../../mathematics/Algebra/LinearAlgebra/Permanent/Variantcc3ac4cc9da1f7ae092ccdde6ec0996f210617af714447433d20a03c7d64663a.lean/declarations/permanent-updaterow-smul--3ccebbc4ada1adf32e9339a3.md) | 108 | `result-track:3ccebbc4ada1adf32e9339a38f403f9c5199ce9f1cceb47e1a8fa71b77913ce6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
