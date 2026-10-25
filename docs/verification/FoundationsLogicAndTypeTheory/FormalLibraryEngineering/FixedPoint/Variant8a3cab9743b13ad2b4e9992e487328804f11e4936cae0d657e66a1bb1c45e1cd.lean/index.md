# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e8eaf725219457435637384541c025f342738c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e8eaf725219457435637384541c025f342738c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.DefectTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/declarations/isfixedpoint--9ddfb674c9cc06956d264318.md) | 15 | `declaration-track:9ddfb674c9cc06956d264318dc0282527c95dcf384ca813352aeea9de1b7efa5` |
| 2 | `structure` | [FixedPointCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/declarations/fixedpointcertificate--dfa17056908ec1757f32e27b.md) | 18 | `declaration-track:dfa17056908ec1757f32e27b87eec66b93a0da1537e61793d9be27c079df209b` |
| 3 | `theorem` | [certified_point_satisfies_exact_equation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/declarations/certified-point-satisfies-exact-equation--7b6a0e3d7070de757b1cc479.md) | 25 | `result-track:7b6a0e3d7070de757b1cc4795b90b4bbaa3ce0b8f06a701f1b48a9cc47ad0409` |
| 4 | `structure` | [FixedPointAnalyticObligations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/declarations/fixedpointanalyticobligations--8e1446a3e36199e40403d1b0.md) | 32 | `declaration-track:8e1446a3e36199e40403d1b0be3c92b5ca8193df2dd1afbc188ccf6cb0fed5d2` |
| 5 | `theorem` | [fixed_point_unique_from_separation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variant8a3cab9743b13ad2b4e9992e487328804f11e4936cae0d657e66a1bb1c45e1cd.lean/declarations/fixed-point-unique-from-separation--34389e279fa9976dd15668c3.md) | 54 | `result-track:34389e279fa9976dd15668c334080a3860d70f739756acc16a9e820e48c9bd01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
