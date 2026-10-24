# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HeatResidual.Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a53b4e6ce22f3f467cf6a95f77f9ca591e98ceb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a53b4e6ce22f3f467cf6a95f77f9ca591e98ceb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Residual` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LiftedState](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean/declarations/liftedstate--bd00097eb43befbe44c4bc35.md) | 29 | `declaration-track:bd00097eb43befbe44c4bc358883ebdbd1faba16a62e6dabf68a657800c3f319` |
| 2 | `def` | [liftedHeat](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean/declarations/liftedheat--15c71cbcdc7b0f214887f11c.md) | 33 | `declaration-track:15c71cbcdc7b0f214887f11c75d9d54f4a2f7206948da58b618265743cecc520` |
| 3 | `def` | [reconstructHeat](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean/declarations/reconstructheat--6580dca70eb3986407414dc9.md) | 40 | `declaration-track:6580dca70eb3986407414dc9dc6fecf27f38ced96cff1491556dc8be03075c92` |
| 4 | `theorem` | [reconstruct_liftedHeat](../../../../../mathematics/Analysis/FunctionalAnalysis/HeatResidual/Variant108802a593421f68f326f8f9b7a430d9f4574a37b4caea3bf704603667509987.lean/declarations/reconstruct-liftedheat--115a766761fc6f6ca606b27b.md) | 45 | `result-track:115a766761fc6f6ca606b27b8ed1744b9ce9aa95543266ca49c261414be81268` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
