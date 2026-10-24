# Verification target: GRWTSK.Analysis.Completion.Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74a8f027416e5421bd7627a7deb89113ba1cea52",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/index.md) · [Full source](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74a8f027416e5421bd7627a7deb89113ba1cea52`.

Source path: `GRWTSK/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGroupCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.HomCompletion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion--8b6a5b4b498b0d7dc2352a1c.md) | 55 | `declaration-track:8b6a5b4b498b0d7dc2352a1c0e7ca65a1f9ec424da4aabf477fce16a37c47247` |
| 2 | `instance` | [completion_completeSpace](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-completespace--7105e38ae8d140c42ca7b782.md) | 62 | `declaration-track:7105e38ae8d140c42ca7b78250a0f971327c05af57dba9b998bc35e8790ddd4a` |
| 3 | `def` | [completion.incl](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-incl--4f1627daf15befee8054f583.md) | 68 | `declaration-track:4f1627daf15befee8054f583cfa24b68abc40c0305f6b3b8a3c2aa99119f18f6` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-norm-incl-eq--d7370dc1c6ad6fc87ca3d55c.md) | 74 | `result-track:d7370dc1c6ad6fc87ca3d55ca34bd475db33f10a6a8d6933381441e9e24db98d` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-map-normnoninc--d7e130896f01edf32579e3cf.md) | 78 | `result-track:d7e130896f01edf32579e3cffece13032e531b250ea595de7537fc7ab0a5cdf6` |
| 6 | `def` | [completion.mapHom](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-maphom--71f1472e54796d6f838f8ecf.md) | 91 | `declaration-track:71f1472e54796d6f838f8ecfdf6b70ee5962368afe0b13aad517a10d802b74a0` |
| 7 | `theorem` | [completion.map_zero](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-map-zero--b7f68eeb6ce9de7fefe032bc.md) | 100 | `result-track:b7f68eeb6ce9de7fefe032bc3763a99ea8b2991f5df50b985045121bb631e81e` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/instance--bc40b1a60161220a24ca67af.md) | 105 | `declaration-track:bc40b1a60161220a24ca67af4a37b5311b48c7d69dc511c74e06110266ade106` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/instance--0e98ede9d4ece024a8aa7fb2.md) | 123 | `declaration-track:0e98ede9d4ece024a8aa7fb2a9f103789404cc297c634af3d65f78b62182692e` |
| 10 | `def` | [completion.lift](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-lift--48d6ea0c9e5a9f803f0d616b.md) | 129 | `declaration-track:48d6ea0c9e5a9f803f0d616b3135bd83f9dec63e65738c2f446d4b0468b72c99` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-lift-comp-incl--6d368fee5d0444b84bb7b9b8.md) | 136 | `result-track:6d368fee5d0444b84bb7b9b867fbc4604f7df7d6dc7a6bdded155cc71ed4f919` |
| 12 | `theorem` | [completion.lift_unique](../../../../mathematics/Analysis/Completion/Variant9882cbee59cebb9c9ab33525017e67103fcb203a49d3bdd428c987682c9e0b46.lean/declarations/completion-lift-unique--e04bf8d0995566b24a038982.md) | 141 | `result-track:e04bf8d0995566b24a038982be99adb20e7b0b74d7f94346584b4b26771df061` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
