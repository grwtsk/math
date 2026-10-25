# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AdmittedGraph.Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2051f367e2511f5b261a79684ddaa9cbfd4b8ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2051f367e2511f5b261a79684ddaa9cbfd4b8ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Sieve` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdmittedEdgeType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/declarations/admittededgetype--912b9b7fe5ecd3edb5e7e1b1.md) | 17 | `declaration-track:912b9b7fe5ecd3edb5e7e1b1b78dbeaa726e9413c9c53dc1b219f671d0f7622a` |
| 2 | `theorem` | [admittedEdgeType_isAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/declarations/admittededgetype-isadmissible--9efd32b5250bd47b521cfe1e.md) | 26 | `result-track:9efd32b5250bd47b521cfe1ecf404d77cf6a82922b1f9f9f1af08033c2e54d47` |
| 3 | `theorem` | [admittedEdgeType_val_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/declarations/admittededgetype-val-injective--45f8c498309ef50d3540588b.md) | 39 | `result-track:45f8c498309ef50d3540588bd743bba8e7a715c8257149df91507fe20bcbd705` |
| 4 | `def` | [AdmittedGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/declarations/admittedgraph--3c300d9458e2320666faf31d.md) | 54 | `declaration-track:3c300d9458e2320666faf31d324e9bf0b3e059ab44c24a10e1430c0df9e600dc` |
| 5 | `theorem` | [admittedGraph_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/declarations/admittedgraph-source--b68936bf18c10109b37da2df.md) | 64 | `result-track:b68936bf18c10109b37da2df8f8106955205b971e03b752c49db3a096f69999c` |
| 6 | `theorem` | [admittedGraph_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3.lean/declarations/admittedgraph-target--de2f320ff8c0fe559dfea7df.md) | 74 | `result-track:de2f320ff8c0fe559dfea7df31ada4702521daec6df2c644596873185fe2b60f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
