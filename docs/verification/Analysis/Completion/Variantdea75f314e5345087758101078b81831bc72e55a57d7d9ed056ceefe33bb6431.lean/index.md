# Verification target: GRWTSK.Analysis.Completion.Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3824887c3dda8543e8e5c01266011ccd83be8e72",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3824887c3dda8543e8e5c01266011ccd83be8e72`.

Source path: `GRWTSK/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGrp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.HomCompletion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion--337a73050f476d3c8459c12e.md) | 44 | `declaration-track:337a73050f476d3c8459c12e08bc862cfb9219d218e5162d621e2d867ab50591` |
| 2 | `instance` | [completion_completeSpace](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-completespace--b3c26c199960b471bdf5074d.md) | 50 | `declaration-track:b3c26c199960b471bdf5074da2ffc9672100a4d6ed629b9c0efc98f478d884a9` |
| 3 | `def` | [completion.incl](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-incl--1deb1351d0f614168b5ca0ee.md) | 54 | `declaration-track:1deb1351d0f614168b5ca0eef21880b207e3711965751bd9b69c8ad15dca01d1` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-norm-incl-eq--de961ae16c054bc3f3890d83.md) | 60 | `result-track:de961ae16c054bc3f3890d836f1ae28320fe7c0799238962315fe2c4592edb67` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-map-normnoninc--d85dae23842af8f4ce1423b0.md) | 63 | `result-track:d85dae23842af8f4ce1423b00fcf43fc22587438d9860835cafd4d5d528398f3` |
| 6 | `def` | [completion.mapHom](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-maphom--06bf82e87401de3e69479a59.md) | 75 | `declaration-track:06bf82e87401de3e69479a595e0d66dd63e2c66d294fa7edff8cfa1f19e122ff` |
| 7 | `theorem` | [completion.map_zero](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-map-zero--4052ee50dcaea5c3c92180c3.md) | 80 | `result-track:4052ee50dcaea5c3c92180c3019b387109af08d53833d6345133c536aae3846e` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/instance--ccea23b3b8e6e864f3d5208e.md) | 83 | `declaration-track:ccea23b3b8e6e864f3d5208e10139efde715deecad043305c4164db5634fc83a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/instance--f7e746630c9ce9ad795a16b5.md) | 85 | `declaration-track:f7e746630c9ce9ad795a16b534ce3e7b0f1452bae13b07a03c8f73fbab5a4bab` |
| 10 | `def` | [completion.lift](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-lift--04f99beebeb83d4158ffe634.md) | 91 | `declaration-track:04f99beebeb83d4158ffe63464e6ea3316995781c663c0423c6854689907efb4` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-lift-comp-incl--0932bf47b9fb206f0aaa5757.md) | 98 | `result-track:0932bf47b9fb206f0aaa575729d209e6383140d1a93fb51e1bf1e557b60eac00` |
| 12 | `theorem` | [completion.lift_unique](../../../../mathematics/Analysis/Completion/Variantdea75f314e5345087758101078b81831bc72e55a57d7d9ed056ceefe33bb6431.lean/declarations/completion-lift-unique--2ce990d6d19a063286b90a64.md) | 102 | `result-track:2ce990d6d19a063286b90a6449c372c2c2ac3664d0be5336337c4aa0e093ebf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
