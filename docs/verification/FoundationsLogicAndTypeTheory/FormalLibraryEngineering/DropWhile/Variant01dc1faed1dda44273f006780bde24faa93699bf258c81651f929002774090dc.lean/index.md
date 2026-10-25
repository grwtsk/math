# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DropWhile.Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52af44480b3888645ae0c0accf80a561838948db",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52af44480b3888645ae0c0accf80a561838948db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.Intermediate.dropWhileM_eq_dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-intermediate-dropwhilem-eq-dropwhilewithpostcondition--10980cf2c82dcb8824cd816e.md) | 18 | `result-track:10980cf2c82dcb8824cd816e9f02ed34227806e67a3c4c52bfad8d9d63a5f760` |
| 2 | `theorem` | [IterM.Intermediate.dropWhile_eq_dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-intermediate-dropwhile-eq-dropwhilewithpostcondition--de6120bd92a7c08011b601c2.md) | 24 | `result-track:de6120bd92a7c08011b601c2d834362a010b46260b4e8917182649e2cf9cd14b` |
| 3 | `theorem` | [IterM.dropWhileWithPostcondition_eq_intermediateDropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-dropwhilewithpostcondition-eq-intermediatedropwhilewithpostconditi--655521f457527775733e35a3.md) | 30 | `result-track:655521f457527775733e35a39a8115607517b0970ee9bd3882ed6f02fa09b929` |
| 4 | `theorem` | [IterM.dropWhileM_eq_intermediateDropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-dropwhilem-eq-intermediatedropwhilem--801800a9d66e8200818a6e06.md) | 35 | `result-track:801800a9d66e8200818a6e06e0183ed143aa83a2d4bb6a17b9d041dd7e1b57a8` |
| 5 | `theorem` | [IterM.dropWhile_eq_intermediateDropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-dropwhile-eq-intermediatedropwhile--15285502429a1f694e7886e6.md) | 40 | `result-track:15285502429a1f694e7886e6b3dd0f965c17844d87ef43366d59674b719c06d7` |
| 6 | `theorem` | [IterM.step_intermediateDropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-step-intermediatedropwhilewithpostcondition--96e5553fd846501733146c69.md) | 45 | `result-track:96e5553fd846501733146c694fd4d7167fdea8d7df4f3456d93edce2f7ef798e` |
| 7 | `theorem` | [IterM.step_dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-step-dropwhilewithpostcondition--89b7066a93554d66833574cc.md) | 69 | `result-track:89b7066a93554d66833574ccef7730684a4b31eba80599039e83a64ddc91b9d5` |
| 8 | `theorem` | [IterM.step_intermediateDropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-step-intermediatedropwhilem--889ec6f70f9eab4125b6c630.md) | 85 | `result-track:889ec6f70f9eab4125b6c63037d39e4f42e6b91031faa113dea4ca4a651cdbef` |
| 9 | `theorem` | [IterM.step_dropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-step-dropwhilem--df43a429d4ad02275a6e16e4.md) | 117 | `result-track:df43a429d4ad02275a6e16e43682189e3616b184efac19f0fab2001c0e89210c` |
| 10 | `theorem` | [IterM.step_intermediateDropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-step-intermediatedropwhile--b6609d5baaba7eb096063107.md) | 133 | `result-track:b6609d5baaba7eb096063107db394a0423330a209a97b90b7e26860487702a5f` |
| 11 | `theorem` | [IterM.step_dropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant01dc1faed1dda44273f006780bde24faa93699bf258c81651f929002774090dc.lean/declarations/iterm-step-dropwhile--4119ec1ae130928ae73db9f3.md) | 164 | `result-track:4119ec1ae130928ae73db9f3c4c6d5c1db8e65d58f970cb851368b59870fd856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
