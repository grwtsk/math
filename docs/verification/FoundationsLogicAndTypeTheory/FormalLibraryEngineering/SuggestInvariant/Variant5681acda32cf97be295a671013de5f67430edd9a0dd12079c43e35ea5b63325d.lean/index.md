# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuggestInvariant.Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61262511d113b689159480e4d4e106eef227e231",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61262511d113b689159480e4d4e106eef227e231`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.MGoal` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.Do` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Mem` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSPredGoalHypsAndTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/getspredgoalhypsandtarget--8e5ee053df46fb4ebb9939a2.md) | 29 | `declaration-track:8e5ee053df46fb4ebb9939a2ac5c9c4d18c19b07db05a56e7946c3a2afb0c0cc` |
| 2 | `structure` | [InvariantUse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/invariantuse--3b1228e839e71246994b6279.md) | 47 | `declaration-track:3b1228e839e71246994b627914c2ab6fee6c390a241f71bbf1dd5ad3303cf08a` |
| 3 | `inductive` | [ClassifyInvariantUseResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/classifyinvariantuseresult--34ef448f2a1189e41caa92f7.md) | 59 | `declaration-track:34ef448f2a1189e41caa92f7aa4fef797c843fe2fd0b8dde4f226b64e1818168` |
| 4 | `def` | [classifyInvariantUse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/classifyinvariantuse--1e33fc49d79762a914f92a1a.md) | 64 | `declaration-track:1e33fc49d79762a914f92a1a26bf6efe30e2d8aa0a0534565d4cdd1b7dc4ad2a` |
| 5 | `def` | [hasEarlyReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/hasearlyreturn--69a34c307895f239573c73ca.md) | 107 | `declaration-track:69a34c307895f239573c73ca9f8539816d7873d94cf0585a68072fc536f8c65e` |
| 6 | `def` | [collectFVarsToRevert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/collectfvarstorevert--304449f2fde6a7aa925996dd.md) | 161 | `declaration-track:304449f2fde6a7aa925996dd0b0d6d8cc7e342af0c351c72b7aa8515a474c5eb` |
| 7 | `def` | [revertFVarsInTypeExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/revertfvarsintypeexcept--fe969a1b9b47ab437e82af1c.md) | 175 | `declaration-track:fe969a1b9b47ab437e82af1cc1f4f3eebe18eb11575222d5a7c6182ce4334c8e` |
| 8 | `structure` | [SuccessPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/successpoint--d2f5fe471994aa4b9692891a.md) | 202 | `declaration-track:d2f5fe471994aa4b9692891a502b10c038b9daab7f9ef2ee410a51b0d9dacf81` |
| 9 | `def` | [SPredNil.mkAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/sprednil-mkand--77d54c048b539e19171a0b65.md) | 210 | `declaration-track:77d54c048b539e19171a0b659078708fe4ab5174e691b63a0f68cfe4a8bf92a4` |
| 10 | `def` | [SPredNil.mkOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/sprednil-mkor--60f5bd83dfb8c7209cbd17ed.md) | 213 | `declaration-track:60f5bd83dfb8c7209cbd17ed1f948d72dbd88dfeb4cc7945665bae55c7bab049` |
| 11 | `def` | [SuccessPoint.clause](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/successpoint-clause--0f3d3e5221255b1f29c71a29.md) | 216 | `declaration-track:0f3d3e5221255b1f29c71a290e022e9de3fb535fed19fd7c387d4ec1d7458643` |
| 12 | `inductive` | [ExceptCondsDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/exceptcondsdefault--f322a251967707ef5118f97e.md) | 220 | `declaration-track:f322a251967707ef5118f97e0c4016a7ddbd77fe926d1513a5648f2969d12b56` |
| 13 | `structure` | [FailureCondHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/failurecondhints--046124c15348103c33205938.md) | 239 | `declaration-track:046124c15348103c3320593814a283b046ec1ca441dacb832dd8ac1bc66f5a95` |
| 14 | `def` | [collectInvariantHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/collectinvarianthints--0b0cdda9199f2514e96810a8.md) | 251 | `declaration-track:0b0cdda9199f2514e96810a82695e5786b191fed50dbd744523f0bf4fc3cff8d` |
| 15 | `def` | [duplicateMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/duplicatemvar--ec4b3ac0fed16c71d1426ca2.md) | 316 | `declaration-track:ec4b3ac0fed16c71d1426ca2854c0b085d6aca5a673348063a87b2a449245df6` |
| 16 | `def` | [eraseQuoteMacroScopesFromSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/erasequotemacroscopesfromsyntax--cd5a65eb38aff5c8834d9f95.md) | 322 | `declaration-track:cd5a65eb38aff5c8834d9f952fb8130ba21bb78de9207a26769be8bb4bf6e7c2` |
| 17 | `def` | [eraseQuoteMacroScopesFromTSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/erasequotemacroscopesfromtsyntax--ba97d20f5d727ad54edae418.md) | 340 | `declaration-track:ba97d20f5d727ad54edae4186c6dea74bb69c8e9035b0a184b2cf680bea90d54` |
| 18 | `def` | [tryHoistPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/tryhoistpure--7c54ffcd4a46228d4d30876e.md) | 348 | `declaration-track:7c54ffcd4a46228d4d30876e71747b1fbf9b6bcadece967efa979386dbe60633` |
| 19 | `def` | [suggestInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant5681acda32cf97be295a671013de5f67430edd9a0dd12079c43e35ea5b63325d.lean/declarations/suggestinvariant--582fe113564f100ddecb8b2a.md) | 376 | `declaration-track:582fe113564f100ddecb8b2a37d8d4876e634533762612cea89aa577baf9b7c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
