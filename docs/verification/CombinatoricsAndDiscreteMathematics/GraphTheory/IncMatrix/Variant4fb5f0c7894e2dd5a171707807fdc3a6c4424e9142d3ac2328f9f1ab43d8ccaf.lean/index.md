# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IncMatrix.Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d92a15ea0e729bf4beaffaa54dec6211fc8a6900",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d92a15ea0e729bf4beaffaa54dec6211fc8a6900`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix--bf11e20750bd94563a16b820.md) | 58 | `declaration-track:bf11e20750bd94563a16b82025d994f2989fc8b8705865fbcc28d4bd44caf434` |
| 2 | `theorem` | [incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-apply--a26e740b71ca728e0d5b0a89.md) | 64 | `result-track:a26e740b71ca728e0d5b0a89800186890286df5ee2322adbece8a5e250d85bd8` |
| 3 | `theorem` | [incMatrix_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-apply--4b2a743f4b366b6d908ab2ef.md) | 69 | `result-track:4b2a743f4b366b6d908ab2efd128d1b7aa05d69994493220dd838bee72b1054d` |
| 4 | `theorem` | [incMatrix_apply_mul_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-apply-mul-incmatrix-apply--38b5e4a343672fd900c51448.md) | 76 | `result-track:38b5e4a343672fd900c514481ffc32e7c9a321f9f79e9afa63d4bfb22f56ff05` |
| 5 | `theorem` | [incMatrix_apply_mul_incMatrix_apply_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-apply-mul-incmatrix-apply-of-not-adj--664d264ff7c387bedd112578.md) | 80 | `result-track:664d264ff7c387bedd1125781e3719c3e36c77f90e6f6a1b0c432c75012c56bf` |
| 6 | `theorem` | [incMatrix_of_notMem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-of-notmem-incidenceset--8088b8366baa1c07c7b107d5.md) | 86 | `result-track:8088b8366baa1c07c7b107d5cb2ecce60c1baf4c7b97a04e86cdf550e5b7e2bd` |
| 7 | `theorem` | [incMatrix_of_mem_incidenceSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-of-mem-incidenceset--2f674c485d10a0f1f758fc3d.md) | 89 | `result-track:2f674c485d10a0f1f758fc3dba358e2276cb980d22854976b154d3db09cdd1b1` |
| 8 | `theorem` | [incMatrix_apply_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-apply-eq-zero-iff--24745e36ec393dbda1b1a29d.md) | 94 | `result-track:24745e36ec393dbda1b1a29d2dc36db298e0429b0852a2e2f4b65789d9b574ee` |
| 9 | `theorem` | [incMatrix_apply_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-apply-eq-one-iff--baf5873a3ca3dc12e10c61e8.md) | 97 | `result-track:baf5873a3ca3dc12e10c61e8fbcb4db6148a36156286f9498e2e1420823c089b` |
| 10 | `theorem` | [sum_incMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/sum-incmatrix-apply--b6b1e5986aff2aa056e319b8.md) | 107 | `result-track:b6b1e5986aff2aa056e319b82098162250a51b60108e37640613c0ac8ae2dc5c` |
| 11 | `theorem` | [incMatrix_mul_transpose_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-mul-transpose-diag--b008b1464d5ed53ad6e4c2e8.md) | 112 | `result-track:b008b1464d5ed53ad6e4c2e8185082f77c45b2cdef0386603109444dfe7d31aa` |
| 12 | `theorem` | [sum_incMatrix_apply_of_mem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/sum-incmatrix-apply-of-mem-edgeset--3b2230d8d9be4c3ea35e666c.md) | 118 | `result-track:3b2230d8d9be4c3ea35e666c42ea4f698165678e35489f673bd28ce5eb410855` |
| 13 | `theorem` | [sum_incMatrix_apply_of_notMem_edgeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/sum-incmatrix-apply-of-notmem-edgeset--bf1a51e2fdc69f68f652ab8b.md) | 129 | `result-track:bf1a51e2fdc69f68f652ab8bfe079b294eee8912930400814f968b65756a6b0f` |
| 14 | `theorem` | [incMatrix_transpose_mul_diag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-transpose-mul-diag--256a45514d28d3c412950751.md) | 133 | `result-track:256a45514d28d3c4129507519928dfa667e206cc4a6840ae236bc8acb224253a` |
| 15 | `theorem` | [incMatrix_mul_transpose_apply_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-mul-transpose-apply-of-adj--79a9aa9e5d4a39d44e065736.md) | 157 | `result-track:79a9aa9e5d4a39d44e0657366a4895bc23664822021f3ce6ecf35282b1b4b6a1` |
| 16 | `theorem` | [incMatrix_mul_transpose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant4fb5f0c7894e2dd5a171707807fdc3a6c4424e9142d3ac2328f9f1ab43d8ccaf.lean/declarations/incmatrix-mul-transpose--02712cd833206aedeb45241b.md) | 166 | `result-track:02712cd833206aedeb45241b39ece8822df18b527b0139083f87101e0cd0b4c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
