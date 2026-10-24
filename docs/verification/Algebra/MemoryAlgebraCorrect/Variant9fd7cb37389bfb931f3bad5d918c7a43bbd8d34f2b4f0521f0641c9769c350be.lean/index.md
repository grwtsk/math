# Verification target: GRWTSK.Algebra.MemoryAlgebraCorrect.Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cbdb7d13bc3307bfdfd2e06c8be8b19d71ad3b0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/index.md) · [Full source](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cbdb7d13bc3307bfdfd2e06c8be8b19d71ad3b0`.

Source path: `GRWTSK/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Semiring` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WeightedMemory](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/weightedmemory--299bbfacbadb843727368df9.md) | 7 | `declaration-track:299bbfacbadb843727368df92b9b375b8435b936c41998c007ca3da3d721e674` |
| 2 | `abbrev` | [MemorySemiringLaws](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/memorysemiringlaws--396ade206eb5ee4ed3939519.md) | 8 | `declaration-track:396ade206eb5ee4ed3939519af352a3d8c23849ed163b8f96275772264b6b468` |
| 3 | `def` | [semiringLawsForNonnegativeMemory](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/semiringlawsfornonnegativememory--4663eda2fa2e82e4710b8aa8.md) | 10 | `declaration-track:4663eda2fa2e82e4710b8aa815fe2d52dc0a73b8170ad16360812eed6cf77130` |
| 4 | `theorem` | [memory_add_zero](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/memory-add-zero--7f512418353768b3b199c305.md) | 13 | `result-track:7f512418353768b3b199c305f0c23fa7c6ce2cf8bae27e509dda6f25ae96012e` |
| 5 | `theorem` | [memory_zero_add](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/memory-zero-add--dca3c68960a4837e27b148e8.md) | 18 | `result-track:dca3c68960a4837e27b148e81120a5f823e75a1e379ea238e3631b906f085a5a` |
| 6 | `theorem` | [memory_add_assoc](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/memory-add-assoc--cd23aff180a3c598c60bc134.md) | 23 | `result-track:cd23aff180a3c598c60bc134b3339a220516fd5973fe6bad219f3868f34fb2a9` |
| 7 | `theorem` | [memory_semiring_default_residue](../../../../mathematics/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean/declarations/memory-semiring-default-residue--1669c3c6abc2aafef06ae3f3.md) | 30 | `result-track:1669c3c6abc2aafef06ae3f30cf5dd396ef04c993dd9c03cfec389ad2e07699b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
