# Verification target: GRWTSK.LinearAlgebra.RetractionSplitEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e39fbf33bc1146254562bd88f6c5ca8f839037c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e39fbf33bc1146254562bd88f6c5ca8f839037c`.

Source path: `GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/RetractionSplitEquiv.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.RetractionComplement`](../../../../mathematics/Algebra/LinearAlgebra/RetractionComplement.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [retractionSplitEquiv](../../../../mathematics/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/declarations/retractionsplitequiv--fad1ded2c73abceb8100341a.md) | 10 | `declaration-track:fad1ded2c73abceb8100341a9ae2af7a3a2502714ce67567f36c8f51933b14db` |
| 2 | `theorem` | [retractionSplitEquiv_coordinates](../../../../mathematics/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/declarations/retractionsplitequiv-coordinates--c0bb858a03ab83f41587a893.md) | 34 | `result-track:c0bb858a03ab83f41587a893d2931f6ccd93571aff819ed7b3b9baaa0b0822a6` |
| 3 | `theorem` | [retractionSplitEquiv_inverse](../../../../mathematics/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/declarations/retractionsplitequiv-inverse--025347a14dfdf4f131969190.md) | 41 | `result-track:025347a14dfdf4f131969190073318c845e610a920e195c181a58a76fa976537` |
| 4 | `theorem` | [retractionComplement_zero_iff_range](../../../../mathematics/Algebra/LinearAlgebra/RetractionSplitEquiv.lean/declarations/retractioncomplement-zero-iff-range--e49c4705310a761ce4fd2d7a.md) | 46 | `result-track:e49c4705310a761ce4fd2d7a3e3610ee002306e51cff93ee8e5ae32ed8aa2158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
