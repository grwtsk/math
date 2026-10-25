# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleConstruction.Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "386fc1cd07d277bd6d4447ec159ec1f8f074b80f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `386fc1cd07d277bd6d4447ec159ec1f8f074b80f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPostPointwisePremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/mkpostpointwisepremise--80eb15890d1ba04a55f468ba.md) | 36 | `declaration-track:80eb15890d1ba04a55f468ba9b64afa2048f997170a296308630d2a9190f9ead` |
| 2 | `def` | [decomposeEPostRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/decomposeepostrel--51a373e04492fec28eea89d1.md) | 52 | `declaration-track:51a373e04492fec28eea89d1d0f6eaffa67d848ebcfb73c608c94dcda2d2c4ea` |
| 3 | `def` | [mkSpecBackwardProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/mkspecbackwardproof--dacf903acc21e0ec0ded5ba0.md) | 183 | `declaration-track:dacf903acc21e0ec0ded5ba034830cd3d05c73f7098ce753dc34cc83a81d5eb6` |
| 4 | `def` | [eqSpecToWp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/eqspectowp--28f10212f514525df2b84906.md) | 278 | `declaration-track:28f10212f514525df2b849065dd2316929586ade7fe315cc6bbc3e70b40c7133` |
| 5 | `def` | [tryMkBackwardRuleFromSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/trymkbackwardrulefromspec--d66a1d44b439b8ebf55c5ede.md) | 326 | `declaration-track:d66a1d44b439b8ebf55c5ede08c0da22e52360c2488fb59cb82c155f4c8325c1` |
| 6 | `def` | [mkBackwardRuleForSplit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/mkbackwardruleforsplit--712844c9888beba1c8c19b8b.md) | 360 | `declaration-track:712844c9888beba1c8c19b8b8b7a75c6399717bd691fc66eb9e8d533735b74fc` |
| 7 | `def` | [hoistFrameVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/hoistframevar--1716a58165cf1695cf72498b.md) | 425 | `declaration-track:1716a58165cf1695cf72498bf8203c7df1dace285002436425cbf1f5670b9dda` |
| 8 | `def` | [mkFrameBackwardRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variant673128f731042c81b7f5b566cc5ff523917ea6a49a3146384150bb35249e83b0.lean/declarations/mkframebackwardrule--3eedb83885d14e397843ecc9.md) | 442 | `declaration-track:3eedb83885d14e397843ecc961adcf0a730398d47a9567d7029a1698217bb910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
