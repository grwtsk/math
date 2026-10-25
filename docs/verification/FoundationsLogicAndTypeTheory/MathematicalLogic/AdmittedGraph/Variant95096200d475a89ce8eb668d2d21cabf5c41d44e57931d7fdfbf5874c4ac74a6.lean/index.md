# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AdmittedGraph.Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd1aaab18f2e98d963fdd936b4cc1ba80f5a9d93",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd1aaab18f2e98d963fdd936b4cc1ba80f5a9d93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Sieve` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdmittedEdgeType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/declarations/admittededgetype--8e68c52cf45c16e065fecec4.md) | 25 | `declaration-track:8e68c52cf45c16e065fecec43c88ec2ed4e226486eaf80d94fd515371eea7921` |
| 2 | `theorem` | [admittedEdgeType_isAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/declarations/admittededgetype-isadmissible--da1d8cb894117c2bb0875f98.md) | 34 | `result-track:da1d8cb894117c2bb0875f98a06377d094ff49978d2d02ba393a07e0ddd3d33b` |
| 3 | `theorem` | [admittedEdgeType_val_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/declarations/admittededgetype-val-injective--ff1aefd25af7586c3355f0ec.md) | 47 | `result-track:ff1aefd25af7586c3355f0ec4ae92b928a7007d6adec9c5f0f768cd74aca9156` |
| 4 | `def` | [AdmittedGraph](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/declarations/admittedgraph--de6dd82b4244b1cb02b6cffa.md) | 62 | `declaration-track:de6dd82b4244b1cb02b6cffae4f7608e024c0a21d654f21edc523ad8906e59ba` |
| 5 | `theorem` | [admittedGraph_source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/declarations/admittedgraph-source--4484075125f4eb7f06f3ec4b.md) | 72 | `result-track:4484075125f4eb7f06f3ec4b9bdb6046b8f35efa10ad2c0a37deccb9768b432f` |
| 6 | `theorem` | [admittedGraph_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/AdmittedGraph/Variant95096200d475a89ce8eb668d2d21cabf5c41d44e57931d7fdfbf5874c4ac74a6.lean/declarations/admittedgraph-target--9390730a9b99e350b66dc8d6.md) | 82 | `result-track:9390730a9b99e350b66dc8d6903faed7a2f07cf63050c21de3aa3537b9b0c1e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
