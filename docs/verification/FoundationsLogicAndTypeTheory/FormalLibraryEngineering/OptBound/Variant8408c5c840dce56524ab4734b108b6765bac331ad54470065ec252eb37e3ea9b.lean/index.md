# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptBound.Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "498fac38b3d6b61b7ab352bcf4a7335ac4808f7f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `498fac38b3d6b61b7ab352bcf4a7335ac4808f7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkGlobalOptConfigExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean/declarations/mkglobaloptconfigexpr--4f4ded24b959ddb954fae140.md) | 27 | `declaration-track:4f4ded24b959ddb954fae140a08b1c07bc7cd5e1fdffbbf03e10c3c45c68cd1b` |
| 2 | `def` | [optBoundCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean/declarations/optboundcore--addfe2541bc924b9ef2ac1d3.md) | 31 | `declaration-track:addfe2541bc924b9ef2ac1d3e3bbe8adfc6ca5dc4d38c77dbb600ff7a19ca2bb` |
| 3 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variant8408c5c840dce56524ab4734b108b6765bac331ad54470065ec252eb37e3ea9b.lean/declarations/elab--4caa570f3355610c81d2e2dc.md) | 99 | `declaration-track:4caa570f3355610c81d2e2dc20c4d11d17468f604ddd2cad39c7ad37c5f671d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
