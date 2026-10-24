# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Harmonic.Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d747973ac95c4980b604c0f738f46926c6a43a4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d747973ac95c4980b604c0f738f46926c6a43a4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Bicomplex` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHarmonic](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/declarations/isharmonic--2f756b29f8acb020f14b79fd.md) | 24 | `declaration-track:2f756b29f8acb020f14b79fd3aa6392ff9827e3a1b32969ca94840c4db0f40a0` |
| 2 | `theorem` | [harmonic_iff_mem_ker_laplacian](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/declarations/harmonic-iff-mem-ker-laplacian--69c391e49743500befde18ce.md) | 28 | `result-track:69c391e49743500befde18ce50398acb6b054b2e23da91daf224d949518c04ab` |
| 3 | `theorem` | [laplacian_positive](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/declarations/laplacian-positive--470ad201bb7f2b754f5edf9d.md) | 36 | `result-track:470ad201bb7f2b754f5edf9dd7d925cd88c6d92642511c84444e0b87acd6f346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
