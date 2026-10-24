# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03fa32c596e099b5c01d6394b6c6f31647b32b5d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03fa32c596e099b5c01d6394b6c6f31647b32b5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/const--d01eeae90431d01bf2eccf81.md) | 41 | `declaration-track:d01eeae90431d01bf2eccf81f1d475d193912ca3e5bbac00aa8423e1db871ca2` |
| 2 | `def` | [opObjOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/opobjop--237227665e2fc70efc10372b.md) | 57 | `declaration-track:237227665e2fc70efc10372b2b7d7798f55ad533f2e61adbbe89734ea4a64c20` |
| 3 | `def` | [opObjUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/opobjunop--ac52c571dee049970992083b.md) | 65 | `declaration-track:ac52c571dee049970992083bb41fba6beb6d2a21421f7375075f0e2794369f1e` |
| 4 | `theorem` | [opObjUnop_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/opobjunop-hom-app--d8d9cfb6212f046161e16642.md) | 71 | `result-track:d8d9cfb6212f046161e16642d069a23032aeb0c0fee091076dbee1022ad73bb3` |
| 5 | `theorem` | [opObjUnop_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/opobjunop-inv-app--43462c4497c19f5c27938e6c.md) | 75 | `result-track:43462c4497c19f5c27938e6c2c158d281e1111a0b26b01e195dc4023b59cccdc` |
| 6 | `theorem` | [unop_functor_op_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/unop-functor-op-obj-map--05cad93684d6ec8edb2bf2b6.md) | 79 | `result-track:05cad93684d6ec8edb2bf2b648c35d60a535aa2c8f7da4a5dee44be1dff06bd5` |
| 7 | `def` | [constComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/constcomp--6b4e75a6c85731ca1a4b3a21.md) | 93 | `declaration-track:6b4e75a6c85731ca1a4b3a2188770d59881cf9a1f8de22925e541d79fbab89a5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/instance--ea7e9f60ff293d19ca5e433b.md) | 98 | `declaration-track:ea7e9f60ff293d19ca5e433ba861eda391dda488531570eca5d104b0cee2752a` |
| 9 | `def` | [compConstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/compconstiso--6a25448923846cc16bf6cdae.md) | 104 | `declaration-track:6a25448923846cc16bf6cdae0aef0ef6d1c120d79954251d691f3aff5bf24e54` |
| 10 | `def` | [constCompWhiskeringLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant68fd21b701504e56de6b75902df24112ad2ce527e2ca4f8f6177d3d17da3cfd5.lean/declarations/constcompwhiskeringleftiso--5ccbc9d0632f2fff0182ccc9.md) | 113 | `declaration-track:5ccbc9d0632f2fff0182ccc9ea509388bc0332f2c529907ceb84dc5065b26b6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
