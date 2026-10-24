# Verification target: GRWTSK.Topology.AlgebraicTopology.CategoryWithFibrations.Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f503c2dbe0a5957d16d9c0f06288293be786fa79",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f503c2dbe0a5957d16d9c0f06288293be786fa79`.

Source path: `GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Boundary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Horn` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/i--3c96ba79854fdb3675560cca.md) | 34 | `declaration-track:3c96ba79854fdb3675560cca5d076293165d64b2df0dbe637e9681b13536d4b6` |
| 2 | `lemma` | [boundary_ι_mem_I](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/boundary-mem-i--ecc227b814ae8dc4cbc643f7.md) | 37 | `result-track:ecc227b814ae8dc4cbc643f7ef2b0fb52f8d18a9c78aef19962ccd81260d661c` |
| 3 | `def` | [J](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/j--c66ba52881e09f4601c66fd0.md) | 42 | `declaration-track:c66ba52881e09f4601c66fd0dd26409c985d1e7bc8cd2a3d1f7b9311bf0ba983` |
| 4 | `lemma` | [horn_ι_mem_J](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/horn-mem-j--4c521cf42a0496cd0384868c.md) | 45 | `result-track:4c521cf42a0496cd0384868ca2c891f6323cd438b4c912dfc6bc047d49727a2b` |
| 5 | `lemma` | [I_le_monomorphisms](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/i-le-monomorphisms--432318f76b14632847c33eba.md) | 50 | `result-track:432318f76b14632847c33eba0b9dbf52a2482029d72cc1b2280e3eb1102c1fa2` |
| 6 | `lemma` | [J_le_monomorphisms](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/j-le-monomorphisms--6030c3b222070e28f0d8082d.md) | 54 | `result-track:6030c3b222070e28f0d8082dad4a15d94321256a36f608a76c65e5e7d5f95b23` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/instance--e9e17c87792070104725ae00.md) | 62 | `declaration-track:e9e17c87792070104725ae00821f0e8db39fcc5e6706f71d70acdcb5e2a20213` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/instance--a12c159463426cada3338c3a.md) | 68 | `declaration-track:a12c159463426cada3338c3aecd1b7e6f67b83596ce25353c77fb9844a6ba03e` |
| 9 | `lemma` | [cofibrations_eq](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/cofibrations-eq--875cb0999e5f25a845327e26.md) | 71 | `result-track:875cb0999e5f25a845327e26d1be7caf57c54516c81fa47790ffc85136bd2593` |
| 10 | `lemma` | [fibrations_eq](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/fibrations-eq--06a70660976e2f0ffc6accbc.md) | 73 | `result-track:06a70660976e2f0ffc6accbc8e091af2b4271ef22187430964b4ffe9a6e400a6` |
| 11 | `lemma` | [cofibration_iff](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/cofibration-iff--1c5f85335336cf7cc03bb511.md) | 79 | `result-track:1c5f85335336cf7cc03bb51111977d3bcf5671acec8df1a8d0dcf36b107ae241` |
| 12 | `lemma` | [fibration_iff](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/fibration-iff--89056c1e56bd06293f822ffa.md) | 83 | `result-track:89056c1e56bd06293f822ffa02a036735d328dcec82b8095c65aafe5060072c5` |
| 13 | `instance` | [mono_of_cofibration](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/mono-of-cofibration--fcf0b1b421c1d41f8c2e9f8f.md) | 87 | `declaration-track:fcf0b1b421c1d41f8c2e9f8fdd1ee2614ba55d6a7a45315e3429520f36f803e8` |
| 14 | `lemma` | [cofibration_of_mono](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/cofibration-of-mono--df11a9668a105e7d13ddbf0d.md) | 89 | `result-track:df11a9668a105e7d13ddbf0d71ef49aaf92d41afe22ab48206c5145b886ac570` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant501625230ef7425598d8b8168f56f1510f3cdfa49bbe0dc5502d4b63d4a46410.lean/declarations/instance--a98ecbd56aaf0f61f6a28112.md) | 91 | `declaration-track:a98ecbd56aaf0f61f6a281127e4abe7cf606cb9306b3e38aa9e49202b4a7a2d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
