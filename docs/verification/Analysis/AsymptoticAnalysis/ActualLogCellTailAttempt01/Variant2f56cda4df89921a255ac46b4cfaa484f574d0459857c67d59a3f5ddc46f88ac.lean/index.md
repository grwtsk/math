# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellTailAttempt01.Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b27e739ae1aab81e131683621202126a896e4b1e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b27e739ae1aab81e131683621202126a896e4b1e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail--f4889f857eb2f5912d73f509.md) | 22 | `declaration-track:f4889f857eb2f5912d73f509150dc1a38f754826f4e91b213ba1914bf744760d` |
| 2 | `theorem` | [cellTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail-summable--9848260805513dba9c3da337.md) | 24 | `result-track:9848260805513dba9c3da337f819342a6320c2391ffd50809ebc3469f116587c` |
| 3 | `theorem` | [cellTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail-nonneg--af3194f5f97511a4d4f7e617.md) | 27 | `result-track:af3194f5f97511a4d4f7e6170d37cae558436a9e96305f15243ba0226ea4db4d` |
| 4 | `theorem` | [cellTail_prefix](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail-prefix--9f76734bd380ca991cf06285.md) | 30 | `result-track:9f76734bd380ca991cf0628523d3520e947af0b0097c4869bc904392053aaa79` |
| 5 | `theorem` | [cellTail_exact](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail-exact--c5db2c6f6c41693eb83c565c.md) | 35 | `result-track:c5db2c6f6c41693eb83c565c49584ed353c5b1a93a9fe87c302c67357d15d187` |
| 6 | `theorem` | [harmonic_error_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/harmonic-error-upper--aa3bb7214f74a7c40d0fcb65.md) | 43 | `result-track:aa3bb7214f74a7c40d0fcb65c288ec859194229cd876fa92a781bb469b9bfb5a` |
| 7 | `theorem` | [cellTail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail-le--e21af4837f52a92003a037f3.md) | 55 | `result-track:e21af4837f52a92003a037f345fdd0133179678a51e410944c55282546a3b864` |
| 8 | `theorem` | [cellTail_enclosure](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt01/Variant2f56cda4df89921a255ac46b4cfaa484f574d0459857c67d59a3f5ddc46f88ac.lean/declarations/celltail-enclosure--88e9c08395f53a774a155db9.md) | 65 | `result-track:88e9c08395f53a774a155db9825b48620dcc1b355549b5260ed1348cd483ce33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
