# Verification target: GRWTSK.Algebra.Selmer.Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "052c9569ce763491180df62998d5d01018a015cb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `052c9569ce763491180df62998d5d01018a015cb`.

Source path: `GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Finite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAdditiveStructure](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/finiteadditivestructure--43dcdec07118e610514de0c9.md) | 35 | `declaration-track:43dcdec07118e610514de0c932145c7fa3705d8d4eb75cde357995d4243606b2` |
| 2 | `structure` | [FiniteSubgroup](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/finitesubgroup--1aaf40f8c509454836cd11bd.md) | 41 | `declaration-track:1aaf40f8c509454836cd11bd411153d1bdf55253ac1380ab3c616ac15e019fa9` |
| 3 | `theorem` | [ext](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/ext--01848a96cb2082b0ba0a468e.md) | 53 | `result-track:01848a96cb2082b0ba0a468ec20092b6182c05893e0cd80ab7446101c8d3caf1` |
| 4 | `def` | [top](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/top--0f93a6950542b5c06687d5d3.md) | 69 | `declaration-track:0f93a6950542b5c06687d5d35766e5a422e542ed448a1d124dd6d7ce5ac0b870` |
| 5 | `def` | [le](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/le--1a60950544c6eb43c8a9055a.md) | 82 | `declaration-track:1a60950544c6eb43c8a9055ae0e0c722ef89ffe5869875f90b8e508991069b05` |
| 6 | `def` | [FiniteH1.additiveStructure](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/finiteh1-additivestructure--07b49ae61c3c3cc57c4baf48.md) | 91 | `declaration-track:07b49ae61c3c3cc57c4baf48319cd0ed8227cc0e4e01d3e46e39f35f13b3652e` |
| 7 | `def` | [FiniteSelmerGroup](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/finiteselmergroup--fefecb8af013e522cc7b0083.md) | 105 | `declaration-track:fefecb8af013e522cc7b0083978c651043eed80a187a10cec729909c8210e455` |
| 8 | `theorem` | [selmer_top_eq_h1](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/selmer-top-eq-h1--950ea27ac01dd5bc546217c1.md) | 137 | `result-track:950ea27ac01dd5bc546217c1b135728bfec3e1f56873157a46997f5b7c7be0b2` |
| 9 | `theorem` | [selmer_mono](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/selmer-mono--30a5c612a6e625cdc5b7bb09.md) | 162 | `result-track:30a5c612a6e625cdc5b7bb092f1c849d41a6c5c2d69f66395b8990a6fc4683d6` |
| 10 | `structure` | [FiniteSelmerProblem](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/finiteselmerproblem--6eecfda614d879f372d66040.md) | 196 | `declaration-track:6eecfda614d879f372d66040fe690eba919d7c4a85d100dcbe63d71a7363d535` |
| 11 | `def` | [selmerSubgroup](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/selmersubgroup--e47a2e346e989cb174174d06.md) | 211 | `declaration-track:e47a2e346e989cb174174d067327c97be8f2fa284e3e2497d49855898a8f7437` |
| 12 | `theorem` | [mem_selmerSubgroup_iff](../../../../mathematics/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/declarations/mem-selmersubgroup-iff--bae2e93a7606c29349127c66.md) | 220 | `result-track:bae2e93a7606c29349127c66166828ab49d6592bbf0209191dd0ccf6aa9e9e2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
