# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e03028734814d5909f0c4a02d78d72461a21f25e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e03028734814d5909f0c4a02d78d72461a21f25e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Coherence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoryCoherence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.MonoidalComp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LiftObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/liftobj--a2ca9ffbb34497e92e799c07.md) | 51 | `declaration-track:a2ca9ffbb34497e92e799c07ecc0935c954c1b62b6604e3abaffbbe95a0c4f25` |
| 2 | `instance` | [LiftObj_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/liftobj-unit--7133a8ce4fc957609a23bbe4.md) | 54 | `declaration-track:7133a8ce4fc957609a23bbe432f202bca87bcbd135a692f9b2551b9a6dab0501` |
| 3 | `instance` | [LiftObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/liftobj-tensor--93d24cdf5ade580daa389bc7.md) | 56 | `declaration-track:93d24cdf5ade580daa389bc7fc2fe9c718b229f7b97452fd91dd416b53faa6eb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/instance--ba881469cbdd59d2f9566faa.md) | 59 | `declaration-track:ba881469cbdd59d2f9566faa1137fb736bac3ab1e3b7d54b0d618c3dcd45db12` |
| 5 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom--df1751e6b031e628e8700560.md) | 63 | `declaration-track:df1751e6b031e628e87005602ab2727d937cdbf59f8dbe633d174438981362c1` |
| 6 | `instance` | [LiftHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-id--eb6ef860d4bdfff0e84dd03b.md) | 66 | `declaration-track:eb6ef860d4bdfff0e84dd03b317bb285ae9f12b29683617cbf47905ee91d6bfd` |
| 7 | `instance` | [LiftHom_left_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-left-unitor-hom--47e29253647a62472045dea8.md) | 68 | `declaration-track:47e29253647a62472045dea8906c975346e79add7eb9fc07b898ec5b78ff9281` |
| 8 | `instance` | [LiftHom_left_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-left-unitor-inv--568423cad626967ded822205.md) | 71 | `declaration-track:568423cad626967ded8222055261ec37a6df9debec3f84fe5168a494cac68563` |
| 9 | `instance` | [LiftHom_right_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-right-unitor-hom--626e19a48ee2b1feb0b2d105.md) | 74 | `declaration-track:626e19a48ee2b1feb0b2d105782fccc9b080b2a44dbb05a891cd633f9c8ca783` |
| 10 | `instance` | [LiftHom_right_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-right-unitor-inv--c02fc04e22494fa213e7359a.md) | 77 | `declaration-track:c02fc04e22494fa213e7359ad00179925f6877453f8ea92ed7218f93e3e7a592` |
| 11 | `instance` | [LiftHom_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-associator-hom--ae4ba9345a55075372344096.md) | 80 | `declaration-track:ae4ba9345a55075372344096df3ffec332032e84d07f43e2fa3ace48161d64aa` |
| 12 | `instance` | [LiftHom_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-associator-inv--3cc88410858a801b971b80fd.md) | 84 | `declaration-track:3cc88410858a801b971b80fd49165320d953b0d814191c244afc0b99a282f419` |
| 13 | `instance` | [LiftHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-comp--37800c36b8d6222844c2ccb2.md) | 88 | `declaration-track:37800c36b8d6222844c2ccb2927acb0094c93c0125589f86bdc372970ddd46ed` |
| 14 | `instance` | [liftHom_WhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-whiskerleft--08e01ec07cf0f01152fc7fea.md) | 92 | `declaration-track:08e01ec07cf0f01152fc7feaa5adb72272cd2d00b23f93778c8ad10ad59594f0` |
| 15 | `instance` | [liftHom_WhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-whiskerright--9803dc3d45a5df1b06634419.md) | 96 | `declaration-track:9803dc3d45a5df1b06634419447b68f278fe7a670c97a321c6756309dae2c675` |
| 16 | `instance` | [LiftHom_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/lifthom-tensor--4fc38ff35fa18a8e2160f063.md) | 100 | `declaration-track:4fc38ff35fa18a8e2160f0630b87ca10b752cedfcc383225358a34d41b6bf893` |
| 17 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/exception--3870ecca36bd4fe65cfdea51.md) | 109 | `declaration-track:3870ecca36bd4fe65cfdea51632870fcffc243ad79fb3fbeeb0c20e8fc82c0ab` |
| 18 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/exception--ecb3ac231bcf8e55ea2a602a.md) | 113 | `declaration-track:ecb3ac231bcf8e55ea2a602a09fc533acf27a1356659114e0800ea256ac150b2` |
| 19 | `def` | [mkProjectMapExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/mkprojectmapexpr--f8daa453bfd6d10b424e13b8.md) | 123 | `declaration-track:f8daa453bfd6d10b424e13b8102e280f513ede26fe3caf0f60b69466070554f9` |
| 20 | `def` | [monoidal_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/monoidal-coherence--ed39ca99b01336d715853729.md) | 129 | `declaration-track:ed39ca99b01336d715853729e5802df44ff90cfe01807f41089978cf41462b03` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/elab--b1763a8c0c986f5ecc2ba28a.md) | 149 | `declaration-track:b1763a8c0c986f5ecc2ba28a58940c23d879b6c138ace9f22bb24ea00b04c3f9` |
| 22 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/elab--9d59689f19090f3948c57510.md) | 167 | `declaration-track:9d59689f19090f3948c57510f6dc3deb2bc075e420d145fd79ded00c0bdb1dfe` |
| 23 | `lemma` | [assoc_liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/assoc-lifthom--e02fd6f1b2e5d59f1bcc946f.md) | 180 | `result-track:e02fd6f1b2e5d59f1bcc946fc5426f0e55a8c8cebf0fadd800c589b48c810369` |
| 24 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/elab--341e08700fce057976c7d26e.md) | 192 | `declaration-track:341e08700fce057976c7d26e33b76ef3c2f2fd21ae39097babd0dc28419f06f1` |
| 25 | `lemma` | [insert_id_lhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/insert-id-lhs--b6b570b2000bfd1efba6e173.md) | 205 | `result-track:b6b570b2000bfd1efba6e1733192cd06ec432f2a36d3d6f30f05893311df6509` |
| 26 | `lemma` | [insert_id_rhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/insert-id-rhs--27c0d4920f5bfeccab55efd2.md) | 209 | `result-track:27c0d4920f5bfeccab55efd2a2140807005a5f07ba82c198d35f475fe37e09b3` |
| 27 | `def` | [insertTrailingIds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/inserttrailingids--dfc2569ac0f3ffcf64c9a090.md) | 214 | `declaration-track:dfc2569ac0f3ffcf64c9a09060a68cb1dcbf2ea10250d66cfb0da48a0d940cfe` |
| 28 | `def` | [coherence_loop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/coherence-loop--9cc23f5a4ff543769acab0a3.md) | 229 | `declaration-track:9cc23f5a4ff543769acab0a33651969b0d7c7c5f183551d1fb88fd13fe1dc782` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/syntax--fe7e496af6ecce556281b5c4.md) | 263 | `declaration-track:fe7e496af6ecce556281b5c48ca79f80438ff912b985cbed927827bd47b13b9e` |
| 30 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/elab-rules--5d39e7156c525ac7c2af4c32.md) | 266 | `declaration-track:5d39e7156c525ac7c2af4c32883b2005f132f8219d1ad7d88e866703e5d83a1e` |
| 31 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/syntax--8885b807ff4c91914fed176d.md) | 294 | `declaration-track:8885b807ff4c91914fed176d5ca86a2163ef770340a34e375531a0d1586189aa` |
| 32 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantd07e680fdb43b980a21573e2caa4915390e8d3756781fcc96d5279b025e35aac.lean/declarations/elab-rules--10393ca62f3f6138f99057f4.md) | 297 | `declaration-track:10393ca62f3f6138f99057f4e574169e5adb63669cbc46bdd3fdd70c1652fa68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
