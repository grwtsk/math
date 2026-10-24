# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalProjection.Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5336148058930edc5f204edd54ef9d9dde5a9dd8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5336148058930edc5f204edd54ef9d9dde5a9dd8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/matrixlocus--e625e6480149bc04cd1d2c2b.md) | 24 | `declaration-track:e625e6480149bc04cd1d2c2b7e7e5e48e2b5325c82482b42ad456bf27b358dc7` |
| 2 | `def` | [rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/rowembed--6668ff285c8611256a8120e2.md) | 34 | `declaration-track:6668ff285c8611256a8120e245263a07d4f77e0ee0f139cddee4a0c64b62ef14` |
| 3 | `def` | [columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/columnembed--7de86425327c14699a1b7147.md) | 38 | `declaration-track:7de86425327c14699a1b714723907f16bd0c667057e048ccda2b780562316b6e` |
| 4 | `theorem` | [rowEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/rowembed-mem--4f36785494960ab6a4ce6266.md) | 42 | `result-track:4f36785494960ab6a4ce626621c053265947ee5acdd653e8238ae2dff4d0f054` |
| 5 | `theorem` | [columnEmbed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/columnembed-mem--0f2f94bf8cee6b2c60baf1aa.md) | 47 | `result-track:0f2f94bf8cee6b2c60baf1aaa3fda17434406da7390ecb661f8b347cab67bf42` |
| 6 | `theorem` | [rowEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/rowembed-injective--1122804c6aa4f115afc1ceba.md) | 51 | `result-track:1122804c6aa4f115afc1ceba0d6fc2750a0257fa295b1aceed3fd527f8241982` |
| 7 | `theorem` | [columnEmbed_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/columnembed-injective--a09e689dc26b1f74a22198f1.md) | 55 | `result-track:a09e689dc26b1f74a22198f1fb72bd433f20d16df5dac0c76b3a3c4fe0a7ddc3` |
| 8 | `def` | [localRow?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localrow--7a4b53c48e2bbd6b61bf18dc.md) | 60 | `declaration-track:7a4b53c48e2bbd6b61bf18dcac3e9d60089f206e3f259b90a1a526a994bd5b93` |
| 9 | `def` | [localColumn?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localcolumn--42290f77fbb6bea84de746e5.md) | 67 | `declaration-track:42290f77fbb6bea84de746e5045f6409a1adc76eb97a80038b9ad2752df7af2e` |
| 10 | `theorem` | [localRow?_rowEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localrow-rowembed--faa87b12239f4de7bf1e1bd4.md) | 75 | `result-track:faa87b12239f4de7bf1e1bd411af15c91b91c1fe72dc5c52b2c28db8abc0c61d` |
| 11 | `theorem` | [localColumn?_columnEmbed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localcolumn-columnembed--4986a99939b107dfa323768f.md) | 87 | `result-track:4986a99939b107dfa323768f2747d113ae56a23d59d1e596f41efa1d4abe573f` |
| 12 | `theorem` | [localRow?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localrow-eq-none-iff--869aeb4d75eea9c08e3328c6.md) | 99 | `result-track:869aeb4d75eea9c08e3328c6e6cb9fd449727ec8b6463e023532bef93f0bb39b` |
| 13 | `theorem` | [localColumn?_eq_none_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localcolumn-eq-none-iff--d2fe41394ed048c321cca81c.md) | 103 | `result-track:d2fe41394ed048c321cca81c6a27ebf03bb72a16f4f41dc6140c896732632f52` |
| 14 | `theorem` | [localRow?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localrow-eq-some-iff--c63f65f7811e0efeb8386c5e.md) | 107 | `result-track:c63f65f7811e0efeb8386c5eaf0ea0d5249303b178c3db698d33eba30eb41dfc` |
| 15 | `theorem` | [localColumn?_eq_some_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/localcolumn-eq-some-iff--334efe239af8921ec83aceb2.md) | 122 | `result-track:334efe239af8921ec83aceb2b7fa54357d3ebb6be58b8b024462b3eef8603e71` |
| 16 | `theorem` | [rowEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/rowembed-range--47c671901372c82426085ba0.md) | 137 | `result-track:47c671901372c82426085ba0b2874ec1a1bfcdd4daf812c258fb12b56930722b` |
| 17 | `theorem` | [columnEmbed_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/columnembed-range--d83c6154c3f0147fd1a6ccb2.md) | 141 | `result-track:d83c6154c3f0147fd1a6ccb2a78f8d2bd9fba387183d98bcf8b49832f6b21f18` |
| 18 | `def` | [coordinateOfOffset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/coordinateofoffset--82a8a65ccae63999b0fa34c0.md) | 148 | `declaration-track:82a8a65ccae63999b0fa34c0fcb979e996186f0fcd42a2ee1a3e8af4e17e10d0` |
| 19 | `theorem` | [coordinateOfOffset_flatIdx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/coordinateofoffset-flatidx--d09bd72730ead11ca4f41573.md) | 153 | `result-track:d09bd72730ead11ca4f41573fc6c4eea38b7460348a7643187c2502cc97cb4c8` |
| 20 | `def` | [rowMajorOffsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/rowmajoroffsets--2517ee4fe49ba156e86b8822.md) | 164 | `declaration-track:2517ee4fe49ba156e86b8822a0cca3f5e2eebd85c4ffc78e0a1db7101a697fc9` |
| 21 | `theorem` | [mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/mem-rowmajoroffsets-iff--c0a549ad34f8fa719c60170d.md) | 169 | `result-track:c0a549ad34f8fa719c60170de5127f95ed790ab6f9bf77c599941bf783971143` |
| 22 | `theorem` | [flatIdx_mem_rowMajorOffsets_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variant272ef5a500fcf26cdd5599ae037d2a5932ffc37f89f6a84f20c8edb2f85d94f0.lean/declarations/flatidx-mem-rowmajoroffsets-iff--61dc6cbb8ed6100b7ae6c788.md) | 177 | `result-track:61dc6cbb8ed6100b7ae6c788a1cb3ff0b96e3f29882979960a0e09d136f7a6df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
