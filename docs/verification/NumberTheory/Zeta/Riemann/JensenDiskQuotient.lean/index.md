# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11af5969a612ca82162a864d942bfa8b4612722",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11af5969a612ca82162a864d942bfa8b4612722`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.FiniteBlaschkeRemoval`](../../../../../mathematics/Analysis/ComplexAnalysis/FiniteBlaschkeRemoval.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotientLog`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [translated_mem_outer](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/declarations/translated-mem-outer--7edcf361e190d197192f618b.md) | 31 | `result-track:7edcf361e190d197192f618b15f934468209471f0400cfcf394f5d458d82bd81` |
| 2 | `theorem` | [analytic_translated_zeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/declarations/analytic-translated-zeta--fd6faa0c8e0d79fd9138934c.md) | 36 | `result-track:fd6faa0c8e0d79fd9138934cdd0b8cffec90cae2b1b49ba91691143be74e39ce` |
| 3 | `theorem` | [translated_multiplicity_factorization](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/declarations/translated-multiplicity-factorization--d2a9bb314e7856c53f538f75.md) | 50 | `result-track:d2a9bb314e7856c53f538f750ac4cb2d26a9320f0668d94ae280471b5cdcbe28` |
| 4 | `theorem` | [inner_zero_covered](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/declarations/inner-zero-covered--f78c719a2556cf15bf8040d5.md) | 69 | `result-track:f78c719a2556cf15bf8040d56dbb08ed498747cdbf82159de1c39cb4c768316e` |
| 5 | `theorem` | [exists_zeta_disk_quotient](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/declarations/exists-zeta-disk-quotient--33bdfd9cbbb8aef70d026812.md) | 95 | `result-track:33bdfd9cbbb8aef70d02681219514db6c056dd63346b96de0d43c3df14ffec98` |
| 6 | `theorem` | [quotient_diffContOnCl](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotient.lean/declarations/quotient-diffcontoncl--72af8c35956bad62e66b4ae9.md) | 117 | `result-track:72af8c35956bad62e66b4ae92b8e307df19eb827000e10f33fd202456631203e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
