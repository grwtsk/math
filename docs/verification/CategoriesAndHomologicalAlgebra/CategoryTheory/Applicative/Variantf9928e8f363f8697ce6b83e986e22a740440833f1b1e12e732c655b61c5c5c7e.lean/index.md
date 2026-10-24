# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Applicative.Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c9358fbc81ab178def2dc605d69d5b250089c41",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c9358fbc81ab178def2dc605d69d5b250089c41`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Applicative.map_seq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/applicative-map-seq-map--58ec9ceff90e092c3987bc5d.md) | 30 | `result-track:58ec9ceff90e092c3987bc5df53ebc16d6a779aaa11fe62b1daa89f3fb0468dd` |
| 2 | `theorem` | [Applicative.pure_seq_eq_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/applicative-pure-seq-eq-map--96e6c1de61061249c5fbcfe2.md) | 34 | `result-track:96e6c1de61061249c5fbcfe2d9b73063a15473d0185c720962a8310ede6e861f` |
| 3 | `theorem` | [Applicative.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/applicative-ext--c319ee36b1b7fcb4174127be.md) | 37 | `result-track:c319ee36b1b7fcb4174127be3e1da1497003a947bf6ff086d24496cb98a30969` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instance--94e5e35ca4e59d07efbd9a04.md) | 67 | `declaration-track:94e5e35ca4e59d07efbd9a04088385b61c700f9d37613fd2e0b1c7deefeb8a35` |
| 5 | `theorem` | [map_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/map-pure--44ac8376330041a0fb92ebf8.md) | 82 | `result-track:44ac8376330041a0fb92ebf84dfb4e54065201cb89be71565158ee3edf5eaf37` |
| 6 | `theorem` | [seq_pure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/seq-pure--0632eb23471b727f0b9550a7.md) | 85 | `result-track:0632eb23471b727f0b9550a7b95d3777142debfedafde0ac7e9ca749bbfe5084` |
| 7 | `theorem` | [seq_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/seq-assoc--27298cdceee0e22bfbba32a3.md) | 88 | `result-track:27298cdceee0e22bfbba32a3a0ccd2aa3c66141fe955f099dc7fa7af50fa6626` |
| 8 | `theorem` | [pure_seq_eq_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/pure-seq-eq-map--6f3e1d4dc0b91eade026c67f.md) | 92 | `result-track:6f3e1d4dc0b91eade026c67fb5c8e28b908b5acc0b126c92d17bed52d16252a7` |
| 9 | `instance` | [instLawfulApplicativeComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instlawfulapplicativecomp--78ad29ed2bfc8de7b455fc7e.md) | 96 | `declaration-track:78ad29ed2bfc8de7b455fc7e759fd0d24789c4aeb48ad2b8b075bbec9a6a640e` |
| 10 | `theorem` | [applicative_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/applicative-id-comp--34a762275c0d20ab05c6275b.md) | 104 | `result-track:34a762275c0d20ab05c6275bfcd9d4a0c58e6c480f5d9947017caebc65bc87ea` |
| 11 | `theorem` | [applicative_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/applicative-comp-id--3d0ca416cf6211c4d66bf741.md) | 109 | `result-track:3d0ca416cf6211c4d66bf741951c0d2408b25ef2063caebc8ae9267189e3b68c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instance--b7ea1815ab59cea5ec7c4ddb.md) | 116 | `declaration-track:b7ea1815ab59cea5ec7c4ddbccd2cd1ef1a31113a3cb83e0912706b5865990a9` |
| 13 | `theorem` | [Comp.seq_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/comp-seq-mk--5126c1d0f0e4fe52bc23b47b.md) | 134 | `result-track:5126c1d0f0e4fe52bc23b47b5b81e2c11b3d8634946043be4357ceee0d4bc6c1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instance--7e778c0fed4ce905f42c8e90.md) | 141 | `declaration-track:7e778c0fed4ce905f42c8e9002df05ceff392a07903e9a2eb275fc23f1a3f4fc` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instance--3051c9f301e630de0b905587.md) | 148 | `declaration-track:3051c9f301e630de0b905587e641447c580afd9d23d40d4ea2e762ce611699a2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instance--0d37b4abd8351c0256634d51.md) | 156 | `declaration-track:0d37b4abd8351c0256634d5125614027d2d7b1338e981b198c5bd33a9e2991d5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantf9928e8f363f8697ce6b83e986e22a740440833f1b1e12e732c655b61c5c5c7e.lean/declarations/instance--1127070e24293f129dfa56df.md) | 160 | `declaration-track:1127070e24293f129dfa56dfe65e58e0b59d216511a096cdfea7956034938442` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
