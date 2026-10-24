# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Harmonic.Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba048cbe0bb65101ca49cf17a26e3196f0693ddc",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba048cbe0bb65101ca49cf17a26e3196f0693ddc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Bicomplex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHarmonic](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/declarations/isharmonic--197d3bd2152a2506e8751058.md) | 32 | `declaration-track:197d3bd2152a2506e8751058001d53b1195979afb90b4d6da883e53213f07a75` |
| 2 | `theorem` | [harmonic_iff_mem_ker_laplacian](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/declarations/harmonic-iff-mem-ker-laplacian--be333dde7f710aa134d4d3d0.md) | 36 | `result-track:be333dde7f710aa134d4d3d04c78a8d5192f132282a010aba3daba9f72c667c0` |
| 3 | `theorem` | [laplacian_positive](../../../../../mathematics/Analysis/FunctionalAnalysis/Harmonic/Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918.lean/declarations/laplacian-positive--3ecde1696788ed526dce6769.md) | 44 | `result-track:3ecde1696788ed526dce6769f644cc241ec0badeeac8ddd23aefd7ac254a8550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
