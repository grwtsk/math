# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cone.Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4361c34f65b1dd133d5dc06fb3d983c156fb2cf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4361c34f65b1dd133d5dc06fb3d983c156fb2cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddGroupConeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/addgroupconeclass--255be52f54abc895bca81871.md) | 29 | `declaration-track:255be52f54abc895bca81871cbea503540b243e4fb92db930eb7f2a5d5a4c6b2` |
| 2 | `class` | [GroupConeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/groupconeclass--5c1c4a0561c9c19407f6a390.md) | 35 | `declaration-track:5c1c4a0561c9c19407f6a3905faf62ce5a427ecc001b4aeb141ad389afa1f714` |
| 3 | `structure` | [AddGroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/addgroupcone--293637773e3b3584e4e1ca17.md) | 46 | `declaration-track:293637773e3b3584e4e1ca17f4013969f8c0200086a54e0325001b02648e9270` |
| 4 | `structure` | [GroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/groupcone--caff0bd33e0c12c4f8b90f32.md) | 54 | `declaration-track:caff0bd33e0c12c4f8b90f32a777f278c4379506817c3697b35eb59494524448` |
| 5 | `instance` | [GroupCone.instSetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/groupcone-instsetlike--5ef8b4a24739519ba1a9cd5f.md) | 58 | `declaration-track:5ef8b4a24739519ba1a9cd5f2cbdfced5971f67def74ada29d10416dc498ab86` |
| 6 | `instance` | [GroupCone.instGroupConeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/groupcone-instgroupconeclass--b250b8847159da24993ea477.md) | 63 | `declaration-track:b250b8847159da24993ea477e29a3d3356824e8e566a05803a1fde26d2c84afc` |
| 7 | `class` | [IsMaxCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/ismaxcone--48abb20a6c7bb290d05b32ec.md) | 73 | `declaration-track:48abb20a6c7bb290d05b32ec29cb9cb89cb4ea132ca9a4f6bd6abef8ac2c04bb` |
| 8 | `class` | [IsMaxMulCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/ismaxmulcone--3367de006c078dfb8b37087b.md) | 78 | `declaration-track:3367de006c078dfb8b37087bbcf8d0d3159d241d98a057c46994a15f9b82771a` |
| 9 | `def` | [oneLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/onele--9df946c3af5448fba5e05d9d.md) | 90 | `declaration-track:9df946c3af5448fba5e05d9d4b86b6dc338a7107034f995fbff6872f5fdb9f8e` |
| 10 | `lemma` | [oneLE_toSubmonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/onele-tosubmonoid--bd6f85610f775ea97659270e.md) | 95 | `result-track:bd6f85610f775ea97659270e8a0600ee452ed5dc49c9cdb7c984cc353802f0ab` |
| 11 | `lemma` | [mem_oneLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/mem-onele--978b2e910682fab4503d6578.md) | 97 | `result-track:978b2e910682fab4503d6578d8b2cf6714e190155f369fbda5469a491cc26453` |
| 12 | `lemma` | [coe_oneLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/coe-onele--aad8fe556e6855e2bebc0eda.md) | 99 | `result-track:aad8fe556e6855e2bebc0edaf7a2febcfc427f38ebb9bc48ff3047a5c0420771` |
| 13 | `instance` | [oneLE.isMaxMulCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/onele-ismaxmulcone--2d52ffa9feaab6f0c6d47b15.md) | 102 | `declaration-track:2d52ffa9feaab6f0c6d47b1503a62c4f1e32ff33451036e8bf6a0e9781ad24f7` |
| 14 | `abbrev` | [PartialOrder.mkOfGroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/partialorder-mkofgroupcone--a57f4c5427538c1ec39f8385.md) | 112 | `declaration-track:a57f4c5427538c1ec39f838520a434ea46162c21ec4994b2abd2cc5aedd65d5c` |
| 15 | `abbrev` | [LinearOrder.mkOfGroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/linearorder-mkofgroupcone--b85e467502995f2f0f9d6027.md) | 121 | `declaration-track:b85e467502995f2f0f9d60279d7bf9a51748be2e625e0d1eef44637d1403c9f5` |
| 16 | `lemma` | [IsOrderedMonoid.mkOfCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variant2af04eb0f8f656985d43a2e7b126ced9f24fef91a0a0fd04706bfb5fe7fb41ed.lean/declarations/isorderedmonoid-mkofcone--35d46c65faf34c4a24ff6f2c.md) | 130 | `result-track:35d46c65faf34c4a24ff6f2ce8754218d90651275973b1972189516b2584a6c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
