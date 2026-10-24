# Verification target: GRWTSK.Algebra.LinearAlgebra.Dual.Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84b796de47caf0fc659e8a03f551cbf7cd585826",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84b796de47caf0fc659e8a03f551cbf7cd585826`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Star.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/todualmap--5f8fa999f3c78456e5812d99.md) | 72 | `declaration-track:5f8fa999f3c78456e5812d99d3aa8c4dddcdf1af60ae083ac70280b02c3abb36` |
| 2 | `theorem` | [toDualMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/todualmap-apply--6b95d027c63c725de1d2e103.md) | 79 | `result-track:6b95d027c63c725de1d2e1038b56a4c2a03ffb8a7c025c908c0a33f92f06222e` |
| 3 | `theorem` | [innerSL_norm](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/innersl-norm--7f103d73f8a5068aad2a8f15.md) | 83 | `result-track:7f103d73f8a5068aad2a8f158d14174ca1a3c42706ad28e4fbf0d244ad3551ee` |
| 4 | `theorem` | [ext_inner_left_basis](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/ext-inner-left-basis--da727b882d6fd7b2af5136f7.md) | 90 | `result-track:da727b882d6fd7b2af5136f7506999d04a2d7276051e680449f33eb91051402b` |
| 5 | `theorem` | [ext_inner_right_basis](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/ext-inner-right-basis--5342c4dc42b0456ede893a2f.md) | 102 | `result-track:5342c4dc42b0456ede893a2ff27206751ebf845f281f5e5154e211492be7cb60` |
| 6 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/todual--845f158eb0f0844421a25cdc.md) | 117 | `declaration-track:845f158eb0f0844421a25cdcf6d7b50fc80172f7c0b22e6230fc34630a2f6d4a` |
| 7 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/todual-apply--0f8682ddcfd1e747c90078f1.md) | 161 | `result-track:0f8682ddcfd1e747c90078f13720e00a6c8b1ad42247b6f54297b9b827cc966c` |
| 8 | `theorem` | [toDual_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/todual-symm-apply--1ed4e01cd8512effd25681b2.md) | 166 | `result-track:1ed4e01cd8512effd25681b2493dd37dfdc6e6ca65b20a62adde77266cc70963` |
| 9 | `def` | [continuousLinearMapOfBilin](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/continuouslinearmapofbilin--c613ac6ef8318b3d4b0f54b6.md) | 175 | `declaration-track:c613ac6ef8318b3d4b0f54b64cf94c4a066245382b20c137db71c4b98f8eae86` |
| 10 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/continuouslinearmapofbilin-apply--9aa0610e90035f68f7c9eb56.md) | 184 | `result-track:9aa0610e90035f68f7c9eb566f5b3f5d52d51298118adabb57f48febe1010d85` |
| 11 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/declarations/unique-continuouslinearmapofbilin--c40e34548affd4c0f00cd421.md) | 188 | `result-track:c40e34548affd4c0f00cd421857cb1176218c6007925b409c35011f564ee6cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
