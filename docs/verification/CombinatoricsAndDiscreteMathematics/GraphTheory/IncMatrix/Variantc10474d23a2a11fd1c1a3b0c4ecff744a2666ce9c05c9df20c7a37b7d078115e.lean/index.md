# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IncMatrix.Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1dbfbbc2cac5939adb140e865e936aee25a7fb0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1dbfbbc2cac5939adb140e865e936aee25a7fb0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix--8a0e405c5aee65d8067fe497.md) | 56 | `declaration-track:8a0e405c5aee65d8067fe4970fd4044f2797ea75cb879be9399cc9cfb5f1f637` |
| 2 | `theorem` | [incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-apply--0d3a4c17f7eaa41d3ffc1737.md) | 62 | `result-track:0d3a4c17f7eaa41d3ffc1737e7e47b27756292c0641c9905ff422716602b1865` |
| 3 | `theorem` | [incMatrix_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-apply--390c08660317928b43165976.md) | 68 | `result-track:390c08660317928b431659763a825d959832a59404d4f8ad60233dc332b41838` |
| 4 | `theorem` | [incMatrix_apply_mul_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-apply-mul-incmatrix-apply--dfb6bc32fe81456ccf5848eb.md) | 78 | `result-track:dfb6bc32fe81456ccf5848eba2c927de6bae28ed995fce35c43e06b831821ac2` |
| 5 | `theorem` | [incMatrix_apply_mul_incMatrix_apply_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-apply-mul-incmatrix-apply-of-not-adj--e9d8327742ffe0c0ea4c3b4a.md) | 84 | `result-track:e9d8327742ffe0c0ea4c3b4a6730fa87847bc745a9c2d603b1ca6e809f06a401` |
| 6 | `theorem` | [incMatrix_of_not_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-of-not-mem-incidenceset--fe0178e373a82dca570e1df3.md) | 91 | `result-track:fe0178e373a82dca570e1df39ce83688919a7f9a5db8ef5b68382c67aa5a5ee4` |
| 7 | `theorem` | [incMatrix_of_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-of-mem-incidenceset--4f8392b08dba1de39c60294b.md) | 95 | `result-track:4f8392b08dba1de39c60294b1d2ca63aaddaccb90189866b52e532be7c0bab00` |
| 8 | `theorem` | [incMatrix_apply_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-apply-eq-zero-iff--46c2308d5d758f1254c97c56.md) | 101 | `result-track:46c2308d5d758f1254c97c5662ef90088ca3045bceab995880507e9bced2c7ee` |
| 9 | `theorem` | [incMatrix_apply_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-apply-eq-one-iff--fafa9b5c701f2017bc15fbec.md) | 105 | `result-track:fafa9b5c701f2017bc15fbece71a769464cf72b36e6d9e33d7fbe6a575f6b8e2` |
| 10 | `theorem` | [sum_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/sum-incmatrix-apply--e8b9a5b106b0ebfd313307ae.md) | 120 | `result-track:e8b9a5b106b0ebfd313307aea72c4b5afe7437d63b18409e0b94eff636f4f0ed` |
| 11 | `theorem` | [incMatrix_mul_transpose_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-mul-transpose-diag--07b9c030c099aa8195bf41bc.md) | 125 | `result-track:07b9c030c099aa8195bf41bca8786d497aded4e6e11995fd26a8e78cc9f9f2ae` |
| 12 | `theorem` | [sum_incMatrix_apply_of_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/sum-incmatrix-apply-of-mem-edgeset--eba6916ff2eeadcf1c72fdb1.md) | 132 | `result-track:eba6916ff2eeadcf1c72fdb1f67e61b744dfca191c0027125e4389c9fbd31363` |
| 13 | `theorem` | [sum_incMatrix_apply_of_not_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/sum-incmatrix-apply-of-not-mem-edgeset--2362baa14449c443f0de19b1.md) | 145 | `result-track:2362baa14449c443f0de19b1b4f802f650ce26d1e87d8f8598aa3cca04f14b58` |
| 14 | `theorem` | [incMatrix_transpose_mul_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-transpose-mul-diag--796aac3a4b9a53e70204f28c.md) | 150 | `result-track:796aac3a4b9a53e70204f28c7cd1cb393142733aa9c396b28ca68d99c3c3bddc` |
| 15 | `theorem` | [incMatrix_mul_transpose_apply_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-mul-transpose-apply-of-adj--e83edc3dfc66f1d665883903.md) | 176 | `result-track:e83edc3dfc66f1d665883903429fd4f44511a9b583c922eb69426289c34c28bd` |
| 16 | `theorem` | [incMatrix_mul_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/declarations/incmatrix-mul-transpose--76f987d2fe2a1c6bd43dc668.md) | 187 | `result-track:76f987d2fe2a1c6bd43dc66838c5912d3156d558cd9d5ab1e01137a2bf15495a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
