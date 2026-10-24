# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IncMatrix.Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37cb0d68453c891de87c01a60cd27ceaf784ab63",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37cb0d68453c891de87c01a60cd27ceaf784ab63`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix--36c33f5d9c216b4a0f3673f3.md) | 62 | `declaration-track:36c33f5d9c216b4a0f3673f3a8fa189e720376b5c6864dd176578bada98f6fd8` |
| 2 | `theorem` | [incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-apply--19b164dce194e412a76ae504.md) | 67 | `result-track:19b164dce194e412a76ae50435a1159119dc056d1a4757200612cc45177507b3` |
| 3 | `theorem` | [incMatrix_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-apply--3c80b1100bb2cf77369cb267.md) | 72 | `result-track:3c80b1100bb2cf77369cb2670e35bd9e89096a61ac10c9deefb52cf900e92fc8` |
| 4 | `theorem` | [incMatrix_apply_mul_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-apply-mul-incmatrix-apply--0a36c41a2f5a448516ad2e0b.md) | 80 | `result-track:0a36c41a2f5a448516ad2e0b1620f557b8fa0774e6e573ffe19caef4cf290f87` |
| 5 | `theorem` | [incMatrix_apply_mul_incMatrix_apply_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-apply-mul-incmatrix-apply-of-not-adj--fc35e648a8f35c89c0352163.md) | 85 | `result-track:fc35e648a8f35c89c035216304b857a34f90f294efd786b1e0b42acef2709768` |
| 6 | `theorem` | [incMatrix_of_notMem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-of-notmem-incidenceset--c596bc321d231c5f7a177c1e.md) | 91 | `result-track:c596bc321d231c5f7a177c1efb09a23546bde6ed4fa144ca5a237ab4b66ee383` |
| 7 | `theorem` | [incMatrix_of_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-of-mem-incidenceset--fc3bc41fe04f13df5fef199d.md) | 97 | `result-track:fc3bc41fe04f13df5fef199db314df23fae467eab3566b769c5ff091775db8c9` |
| 8 | `theorem` | [incMatrix_apply_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-apply-eq-zero-iff--b9f39a2e0c8cad824ab0e632.md) | 102 | `result-track:b9f39a2e0c8cad824ab0e632d2cb6ede358bb40c4126ce237e5ef29f48af95b6` |
| 9 | `theorem` | [incMatrix_apply_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-apply-eq-one-iff--daf1853ea4030694b3314b9c.md) | 105 | `result-track:daf1853ea4030694b3314b9c62c87ca5bbbe6af4799194a78b876497bbbb5616` |
| 10 | `theorem` | [sum_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/sum-incmatrix-apply--a4af5c5014174a9fac77e797.md) | 115 | `result-track:a4af5c5014174a9fac77e79773d1f2cd494afbb84dadaa539ed5e43829493347` |
| 11 | `theorem` | [incMatrix_mul_transpose_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-mul-transpose-diag--a2b88344fd26dc7d0fc4766b.md) | 119 | `result-track:a2b88344fd26dc7d0fc4766b47e78c101427dbebd969031fa7931caab4b26587` |
| 12 | `theorem` | [sum_incMatrix_apply_of_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/sum-incmatrix-apply-of-mem-edgeset--c0e91b6601f4fb5cf928e9d8.md) | 126 | `result-track:c0e91b6601f4fb5cf928e9d8587a70656eaf49a670e1a74b38e6cb76e3fd390a` |
| 13 | `theorem` | [sum_incMatrix_apply_of_notMem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/sum-incmatrix-apply-of-notmem-edgeset--99ce302250191fccf59dc355.md) | 138 | `result-track:99ce302250191fccf59dc3551f99baa6079e6ad35f363fe1a895cff4c15e664a` |
| 14 | `theorem` | [incMatrix_transpose_mul_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-transpose-mul-diag--e15525cc22909810564b5bc4.md) | 145 | `result-track:e15525cc22909810564b5bc4f8bee09964b6df0a2c93978b0c85fba6f10c1f45` |
| 15 | `theorem` | [incMatrix_mul_transpose_apply_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-mul-transpose-apply-of-adj--5ac1ef7526af3c1d711e86cc.md) | 171 | `result-track:5ac1ef7526af3c1d711e86cc8624969becd108ed3d447b5b69fd6a032939a868` |
| 16 | `theorem` | [incMatrix_mul_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantae5b562687a9c57a5d74e173881ffc117d64df8ab20dd75a9ecd9b10ce915e56.lean/declarations/incmatrix-mul-transpose--8ffef850e7682b2f12a48989.md) | 181 | `result-track:8ffef850e7682b2f12a48989c711d1243da5a2be4e10033c515637147d741f12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
