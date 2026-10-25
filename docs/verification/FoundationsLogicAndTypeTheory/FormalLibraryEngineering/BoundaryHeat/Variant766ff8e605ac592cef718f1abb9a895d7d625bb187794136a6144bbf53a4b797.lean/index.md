# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryHeat.Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dfeafa2840b6bb06abcf32d46a1c725fda20efa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dfeafa2840b6bb06abcf32d46a1c725fda20efa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Memory` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundaryHeatWeights](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/declarations/boundaryheatweights--ac35a5bdeaa45f414c17f78c.md) | 15 | `declaration-track:ac35a5bdeaa45f414c17f78cb01d5187f322d31ee7f600791a9f8348e81e0e4a` |
| 2 | `def` | [defaultBoundaryHeatWeights](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/declarations/defaultboundaryheatweights--e3cab8f2a7a4818f3d465748.md) | 27 | `declaration-track:e3cab8f2a7a4818f3d465748f1cc4e0587330e6ec3c85d8cb29cd91b72675d59` |
| 3 | `structure` | [BoundaryHeatState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/declarations/boundaryheatstate--6be69b8f00648a49d5735a3f.md) | 38 | `declaration-track:6be69b8f00648a49d5735a3feb94325010741a980c7e4769f6d3fdb5e74d18fe` |
| 4 | `def` | [highBoundaryHeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/declarations/highboundaryheat--9e579954880ef4944984cde3.md) | 45 | `declaration-track:9e579954880ef4944984cde3f53410be1ad0befc32ce8cbf9e95c9dcbc85405a` |
| 5 | `theorem` | [default_boundary_weight_positive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant766ff8e605ac592cef718f1abb9a895d7d625bb187794136a6144bbf53a4b797.lean/declarations/default-boundary-weight-positive--7679a2065b74b780928ff48b.md) | 48 | `result-track:7679a2065b74b780928ff48b63093a08f107d8966fefb40de8b4e474e4d2ad45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
