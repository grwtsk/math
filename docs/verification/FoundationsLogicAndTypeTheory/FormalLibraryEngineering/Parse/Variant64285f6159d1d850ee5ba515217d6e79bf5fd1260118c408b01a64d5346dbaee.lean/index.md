# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parse.Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c77d081b41121bbdfbdc8e2ced4bf5e22fea306",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c77d081b41121bbdfbdc8e2ced4bf5e22fea306`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Extract` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parseBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/parseboundgoal--032012c8f1bbbf56943749ca.md) | 39 | `declaration-track:032012c8f1bbbf56943749cae70a79242221c78563d0ce57b02f1b4ddf280532` |
| 2 | `def` | [extractIntervalFromSetIcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/extractintervalfromseticc--473e8251e72b4db4b2276a34.md) | 333 | `declaration-track:473e8251e72b4db4b2276a3415765a3feeb1636decdb938fdc25b3a57fd7af84` |
| 3 | `def` | [extractIntervalFromIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/extractintervalfromintervalrat--f0fce1ff92ce0a2398ff50d8.md) | 371 | `declaration-track:f0fce1ff92ce0a2398ff50d8ed609faf3cdaa0b768a5c9b64077c276e7008a47` |
| 4 | `def` | [parseMultivariateBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/parsemultivariateboundgoal--5c5652883536877f6571c848.md) | 402 | `declaration-track:5c5652883536877f6571c848eed72f0f1c0e96e5e5ff2933b8279b3bcb0a7e95` |
| 5 | `def` | [nameEndsWithStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/nameendswithstr--aefbf9fa4e0dbc0492f821ea.md) | 647 | `declaration-track:aefbf9fa4e0dbc0492f821ea824aec19e2df5a66761208b977d5d99d6f32dd39` |
| 6 | `def` | [parsePointIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/parsepointineq--3d0acf27f8dc17fe4d710d26.md) | 656 | `declaration-track:3d0acf27f8dc17fe4d710d26bd6df98db6f444649fe4de445d2fd7fbf63608fb` |
| 7 | `def` | [collectConstants](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/collectconstants--c585df8996f6644283760781.md) | 689 | `declaration-track:c585df8996f664428376078111bbc324d2eaa4c6b2d8e96154b382a31ed8bc08` |
| 8 | `def` | [parseRootGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/parserootgoal--3195fcec4fc433e92efc7c15.md) | 725 | `declaration-track:3195fcec4fc433e92efc7c15cf3981df557d88bea3c02e596546006dccd09ac4` |
| 9 | `def` | [isExprEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/isexpreval--77da2ad35d824eb895203a4f.md) | 835 | `declaration-track:77da2ad35d824eb895203a4f090f052f2955723c721b47be323a1e35bdb74d0a` |
| 10 | `def` | [isExprEvalName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/isexprevalname--b8b32c529a94d6fc46000034.md) | 840 | `declaration-track:b8b32c529a94d6fc46000034a112b717205a497fc995c094ab0ad4a83cd93f57` |
| 11 | `def` | [parseSimpleBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/declarations/parsesimpleboundgoal--624e9cab010577d32c21be60.md) | 845 | `declaration-track:624e9cab010577d32c21be6019b6899206e043d364b73305f7b265519f2fe33c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
