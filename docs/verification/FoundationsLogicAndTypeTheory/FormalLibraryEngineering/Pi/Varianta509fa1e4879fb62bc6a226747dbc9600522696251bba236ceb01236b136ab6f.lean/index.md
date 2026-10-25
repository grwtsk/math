# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pi.Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8082b918285c7fa34fab6c0f0b49ac7c6d1759ee",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8082b918285c7fa34fab6c0f0b49ac7c6d1759ee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [etaExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/declarations/etaexpand--d66897daaadb719ff92744e0.md) | 31 | `declaration-track:d66897daaadb719ff92744e00a96017d4abee08780ee082336a4348d80ca419e` |
| 2 | `def` | [reduceHBinOpAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/declarations/reducehbinopaux--85e92a1fa662526972be2200.md) | 43 | `declaration-track:85e92a1fa662526972be22006a0f28f68a0c85fb3363a6de1f1464841ac04c21` |
| 3 | `def` | [reduceHBinOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/declarations/reducehbinop--e237ae8acf77a6c9edc048cd.md) | 78 | `declaration-track:e237ae8acf77a6c9edc048cd657dbce0a3477879c77a9859243614ef4f283de1` |
| 4 | `def` | [reduceUnOpAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/declarations/reduceunopaux--0d3b4411462965da5f0286f0.md) | 90 | `declaration-track:0d3b4411462965da5f0286f0ff7a10361ffbfe8583e2a3b8f239e2bf226c4b89` |
| 5 | `def` | [reduceUnOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Varianta509fa1e4879fb62bc6a226747dbc9600522696251bba236ceb01236b136ab6f.lean/declarations/reduceunop--84dd2f48552de333a8b94346.md) | 120 | `declaration-track:84dd2f48552de333a8b94346ef2476e839e1cc0723deb0400ac94388d68a0a33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
