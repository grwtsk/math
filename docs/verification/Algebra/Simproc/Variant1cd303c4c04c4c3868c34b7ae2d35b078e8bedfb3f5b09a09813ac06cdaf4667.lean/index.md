# Verification target: GRWTSK.Algebra.Simproc.Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a640dafd35ec5a29a7ce1c30ff92c78e7dd68da9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/index.md) · [Full source](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a640dafd35ec5a29a7ce1c30ff92c78e7dd68da9`.

Source path: `GRWTSK/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Grind.Ring.Field` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.DecLevel` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.FieldNormNum` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Util.SafeExponentiation` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkSemiringThm](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/mksemiringthm--3d2b1ed0aa9692646bf65e34.md) | 29 | `declaration-track:3d2b1ed0aa9692646bf65e3405f71ec1500733080a8b7c4986e809fad0705283` |
| 2 | `def` | [notField](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/notfield--7afaf8dbffd725c9e0ec24ec.md) | 69 | `declaration-track:7afaf8dbffd725c9e0ec24eccf342fcedbe3acdec6ebbddb49f33aef4f8edf62` |
| 3 | `def` | [isNotFieldQuick](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/isnotfieldquick--6c3589b9d4cbc12e81daf4cb.md) | 72 | `declaration-track:6c3589b9d4cbc12e81daf4cb9da3695eb450b5219c6e4c3bb2eaf5602773c8f8` |
| 4 | `def` | [normInst](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/norminst--5150dd03f065338468760695.md) | 113 | `declaration-track:5150dd03f0653384687606958a07f4a7d982850497d023ddce995bb5804bfdd9` |
| 5 | `def` | [isNormNatNum](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/isnormnatnum--04626b55c817f95ebe362f59.md) | 132 | `declaration-track:04626b55c817f95ebe362f59ae92eeae5e9257beb6513cd5d04caaf23b7bee6f` |
| 6 | `def` | [isNormIntNum](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/isnormintnum--2379659a1c9e2102d0d730c5.md) | 157 | `declaration-track:2379659a1c9e2102d0d730c59bc844c3491ea4035a27745a6ee54b9fc22bf269` |
| 7 | `def` | [addSimproc](../../../../mathematics/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/declarations/addsimproc--5acfd6445645cd725d1dc9cf.md) | 214 | `declaration-track:5acfd6445645cd725d1dc9cfbf85e0999abd862b807b0be4c82d2ffe66f62257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
