# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Warning.Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123f78d5932774d0a83cf59a7e1624f3a10295ef",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123f78d5932774d0a83cf59a7e1624f3a10295ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.Query` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scopeIsHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/declarations/scopeishead--823ac12b6a26f00c26026144.md) | 34 | `declaration-track:823ac12b6a26f00c2602614479ccb964743eb84fd1df9a2bedb18a8be4a87fd8` |
| 2 | `def` | [shouldWarnNonDefaultScope](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/declarations/shouldwarnnondefaultscope--980073cfef15fc2d99059a9e.md) | 55 | `declaration-track:980073cfef15fc2d99059a9e862e2f3b6bb7c10040944ba91edcb43cc9a2aac4` |
| 3 | `def` | [printNonDefaultScopeWarning](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/declarations/printnondefaultscopewarning--fb12964a9d9951be711fba05.md) | 95 | `declaration-track:fb12964a9d9951be711fba059bf8ec09eb10473381c9fcfa30d066bb152bef65` |
| 4 | `def` | [getNonDefaultScopeReason](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/declarations/getnondefaultscopereason--c2bab6f7e2a0f741f8a35482.md) | 116 | `declaration-track:c2bab6f7e2a0f741f8a35482566ebe0ab3064b557e8b5315e835abe224607d5d` |
| 5 | `def` | [warnIfNonDefaultScope](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/declarations/warnifnondefaultscope--7f10419a81e4154179407b87.md) | 158 | `declaration-track:7f10419a81e4154179407b87ce28246b7a853d12f9440bba50fd768f3b9a34e3` |
| 6 | `def` | [informIfHeadNotBuilt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Warning/Variant9fea2f69bddb4c8cf84dc48b795c2dc8b54c78b2e6f5402b7ad3aeb405186bcc.lean/declarations/informifheadnotbuilt--55c818c793e8156f53dd4fb9.md) | 192 | `declaration-track:55c818c793e8156f53dd4fb955c0061b367edbe7c01ef1467269cb1479666e96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
