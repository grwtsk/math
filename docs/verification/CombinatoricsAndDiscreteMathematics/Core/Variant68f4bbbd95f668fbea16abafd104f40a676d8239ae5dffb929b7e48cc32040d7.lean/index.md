# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2db95ec39ec10a30d64c4d88af34f781b7d69f00",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2db95ec39ec10a30d64c4d88af34f781b7d69f00`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletionSemantics](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/declarations/completionsemantics--eff0e9706ffdb54029f4a9f2.md) | 21 | `declaration-track:eff0e9706ffdb54029f4a9f20331ab8b19fe7e5606159693cbc29aa8950da4c1` |
| 2 | `def` | [Feasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/declarations/feasible--e7d27b078716ff70f9004a2e.md) | 38 | `declaration-track:e7d27b078716ff70f9004a2e760bad0b8df4bab79a8a1629f83ffa867669907b` |
| 3 | `def` | [Infeasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/declarations/infeasible--41fca874c559ac1ece412199.md) | 49 | `declaration-track:41fca874c559ac1ece41219937e2900a6557bdbb1e5b4a500652ee3dea12908a` |
| 4 | `theorem` | [infeasible_iff_not_feasible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/declarations/infeasible-iff-not-feasible--81ced281a8155e90c30296b6.md) | 57 | `result-track:81ced281a8155e90c30296b65de601712736b08b6dd4f2614251ae2aab675012` |
| 5 | `theorem` | [feasible_of_constraint_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/declarations/feasible-of-constraint-subset--76e4a31a6914570eccdf8f8f.md) | 67 | `result-track:76e4a31a6914570eccdf8f8fec42959334904cd5093097bba408991ed5378b9c` |
| 6 | `theorem` | [infeasibility_downward_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7.lean/declarations/infeasibility-downward-closed--2023171ecac1971527c406dc.md) | 80 | `result-track:2023171ecac1971527c406dc27e8422c11f4955fc36ec2d39f2a995c842ee5bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
