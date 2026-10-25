# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarSchur.Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1305a66e767750caa385609d0c11e4b1449f74c1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1305a66e767750caa385609d0c11e4b1449f74c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarBlockForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarblockform--3b61d53523cd9592973e1ab4.md) | 36 | `declaration-track:3b61d53523cd9592973e1ab40fb14331abcf177c959bc9fca727fd08769268a5` |
| 2 | `def` | [scalarBlockPositiveForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarblockpositiveform--6fa5bee956cfef150924898f.md) | 40 | `declaration-track:6fa5bee956cfef150924898f489e5016cb393f383164f2798626cf70640a89b1` |
| 3 | `def` | [scalarProvenanceProject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarprovenanceproject--8c4e1ca8a44c0f2e4f51bb90.md) | 62 | `declaration-track:8c4e1ca8a44c0f2e4f51bb90eca215bc41df9447279b2a705cd33e9d837452eb` |
| 4 | `theorem` | [scalarProvenanceProject_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarprovenanceproject-apply--d515d235e0d9cce4662320da.md) | 72 | `result-track:d515d235e0d9cce4662320da0509af7428883dac005b357b786682c1037804ab` |
| 5 | `theorem` | [scalarProvenanceProject_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarprovenanceproject-idempotent--f44d13f84efa6ae35813525a.md) | 77 | `result-track:f44d13f84efa6ae35813525ae75f1851ca7e22682223f9762c252fe6071e2c16` |
| 6 | `theorem` | [scalarProvenanceProject_orthogonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarprovenanceproject-orthogonal--1f49d884a27a682f08be6454.md) | 84 | `result-track:1f49d884a27a682f08be6454bd5932e4e338d853de8b76dc63dab5b8d44a5f1b` |
| 7 | `def` | [scalarProvenanceProjector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarprovenanceprojector--2344352130b7bcd736fc396d.md) | 94 | `declaration-track:2344352130b7bcd736fc396d4a6e2bd29ad035c5cba2914300e83a9753a3e951` |
| 8 | `theorem` | [scalarProvenanceResidual_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarprovenanceresidual-apply--a60427e0b5ce4f959798e3d4.md) | 105 | `result-track:a60427e0b5ce4f959798e3d44f29b32ce9626770110431dc1791ada9875e145e` |
| 9 | `theorem` | [scalarResidualForm_eq_schur](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalarresidualform-eq-schur--12fa3ec0982dce6e4a774238.md) | 118 | `result-track:12fa3ec0982dce6e4a7742389981ccf3d2be9fae8e8d5b143a65777bf72de4a9` |
| 10 | `theorem` | [scalar_schur_complement_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalar-schur-complement-nonnegative--d32839f28df2af02fe7de575.md) | 133 | `result-track:d32839f28df2af02fe7de575841eec8c05f83dbc285340b71d98fc4f2358aa5b` |
| 11 | `theorem` | [scalar_quadratic_schur_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648.lean/declarations/scalar-quadratic-schur-decomposition--93d9f54c84ea8d824994fa94.md) | 145 | `result-track:93d9f54c84ea8d824994fa948f50f2853a946398653825f957558be6a29510dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
