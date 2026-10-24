# Verification target: GRWTSK.Algebra.LinearAlgebra.ProvenanceRange.Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9892c39604d5573f041efa8ba22cd996d84e3c71",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9892c39604d5573f041efa8ba22cd996d84e3c71`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.NullCrossAnnihilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_mulVec_mem_range_of_kernel_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/declarations/symmetric-mulvec-mem-range-of-kernel-orthogonal--d28107b2e4e44d010d8a9dda.md) | 39 | `result-track:d28107b2e4e44d010d8a9dda42feaf474fad31ab8f404110e0e56a346cff872b` |
| 2 | `theorem` | [compatible_provenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/declarations/compatible-provenancematrix-issymm--c2a880b4a230656241e9349d.md) | 71 | `result-track:c2a880b4a230656241e9349d69fa3db74121d67d2f7f2a9e47709ff7c4c85ce9` |
| 3 | `theorem` | [cross_mem_provenance_range](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/declarations/cross-mem-provenance-range--6aa4ff86e64b5a9bd6ef7413.md) | 90 | `result-track:6aa4ff86e64b5a9bd6ef7413c247f138ba239c9468433e6ff20692a4e0e2160d` |
| 4 | `theorem` | [exists_provenance_solution](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variant4bb29aa6ff17de0e3bb5f2547d61b34cc7551c55fff5f078c22a1d8f12b7f4ba.lean/declarations/exists-provenance-solution--eda3f0d872fa89f2f2a5ada8.md) | 108 | `result-track:eda3f0d872fa89f2f2a5ada893f99036e7efb1a223458c3310314cebbb3227c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
