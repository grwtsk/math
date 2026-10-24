# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ad0a3edf2d4dbcc51b9aa5abdd42a4ff327243",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ad0a3edf2d4dbcc51b9aa5abdd42a4ff327243`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean.json)

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
| 1 | `def` | [solutionFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/declarations/solutionfinsupp--f3a2b6688cffbf434113c25f.md) | 39 | `declaration-track:f3a2b6688cffbf434113c25fcd15df12234de733fc5ba09a102e9e1948da5ad9` |
| 2 | `def` | [solutionFinsupp.isPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/declarations/solutionfinsupp-ispresentationcore--258cda69fa1a14ee8f224fc5.md) | 46 | `declaration-track:258cda69fa1a14ee8f224fc58930eb3ee4e452f12cd32a016b0ec4e636fa29af` |
| 3 | `lemma` | [solutionFinsupp_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/declarations/solutionfinsupp-ispresentation--1b66019d77d05d0fa264ced6.md) | 52 | `result-track:1b66019d77d05d0fa264ced6556b243f181efe765e3607af94dd57f4c3cd0026` |
| 4 | `lemma` | [Solution.IsPresentation.free](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/declarations/solution-ispresentation-free--d64a1330f06f453fa89a34fe.md) | 58 | `result-track:d64a1330f06f453fa89a34fef412b23714831e4cb4ebb82f8bf0993cdbd81297` |
| 5 | `def` | [presentationFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/declarations/presentationfinsupp--5f7f99a679d69dbfc6d200e0.md) | 71 | `declaration-track:5f7f99a679d69dbfc6d200e07500844d6ac77d0c869b8134de34b07cd82728d8` |
| 6 | `lemma` | [free_iff_exists_presentation](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant84ab26c187633529cb640855bd5f3e4f9eab488a211d29541edba268510e2acb.lean/declarations/free-iff-exists-presentation--5e0e51552f78578f2ef7886f.md) | 80 | `result-track:5e0e51552f78578f2ef7886f7f59378d7b7e88695be0b9a8fab3982d5abce624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
