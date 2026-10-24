# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpimorphic.Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82d299e2123de55049075ce472bd145a0a8e7334",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82d299e2123de55049075ce472bd145a0a8e7334`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-effectiveepimorphic--39b2dc2fb9abba3bd45155fe.md) | 44 | `declaration-track:39b2dc2fb9abba3bd45155fe41e0a5b307efca121e6fa6631e9a241f71c5b14d` |
| 2 | `abbrev` | [Presieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/presieve-effectiveepimorphic--99f4313717d8bac09ea73262.md) | 49 | `declaration-track:99f4313717d8bac09ea7326287e9a7ce9d309957b969abad1f7e9db0910fe17d` |
| 3 | `def` | [Sieve.generateSingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-generatesingleton--c8df98f624898d694724ca80.md) | 57 | `declaration-track:c8df98f624898d694724ca801cd8b6978ef05d48c0d5b22affae7a0f1f82e19d` |
| 4 | `lemma` | [Sieve.generateSingleton_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-generatesingleton-eq--380b4220daf41eccb163dfe2.md) | 63 | `result-track:380b4220daf41eccb163dfe21074c2442a39ec6fff0d6ccb4e51c5280177a0d2` |
| 5 | `structure` | [EffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepistruct--325b55cbd4871622ad286b12.md) | 75 | `declaration-track:325b55cbd4871622ad286b126a287b56737da6d5378a4c5bb61efad6d9e5ec44` |
| 6 | `class` | [EffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepi--dc1ea7ec7bcc3dde147b4fa1.md) | 96 | `declaration-track:dc1ea7ec7bcc3dde147b4fa1f5384a1b83e6fe308557b03ac07c1ec782820deb` |
| 7 | `def` | [EffectiveEpi.getStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepi-getstruct--462d2f84e173fa243b949072.md) | 103 | `declaration-track:462d2f84e173fa243b949072f665b878a5f42fd5d75f4525c14654fd38c32463` |
| 8 | `def` | [EffectiveEpi.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepi-desc--d25991894790914cb1f002fd.md) | 108 | `declaration-track:d25991894790914cb1f002fd7d96847b3281f2af4267d5feafe9cfaf2c7a9928` |
| 9 | `lemma` | [EffectiveEpi.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepi-fac--d18c9daf99066443ef6f9510.md) | 113 | `result-track:d18c9daf99066443ef6f9510bf63d69195ffbfde3515d985bc900fba6fbfc35a` |
| 10 | `lemma` | [EffectiveEpi.uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepi-uniq--98664958c4d7f4b6e1fba00d.md) | 118 | `result-track:98664958c4d7f4b6e1fba00df2ab4e49bd1513c54c1cb62b9739c3f9c8690a8d` |
| 11 | `instance` | [epiOfEffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/epiofeffectiveepi--727fdab23cf9c53279ddaf70.md) | 124 | `declaration-track:727fdab23cf9c53279ddaf70415d2662bcfa5905da7fab423f6303da3249787c` |
| 12 | `def` | [isColimitOfEffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/iscolimitofeffectiveepistruct--90e33fe04c75dfc005c9d5ec.md) | 137 | `declaration-track:90e33fe04c75dfc005c9d5eccf6b2a0b6fb35ba16e612498ace9583283fcbd06` |
| 13 | `def` | [effectiveEpiStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepistructofiscolimit--c294ad6bbef0b5d0d753ccd4.md) | 172 | `declaration-track:c294ad6bbef0b5d0d753ccd4044aa0ac2b777434efceb66e6e41f25cf36e71a7` |
| 14 | `theorem` | [Sieve.effectiveEpimorphic_singleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-effectiveepimorphic-singleton--4d3fe3d36ccc426c974ad71b.md) | 207 | `result-track:4d3fe3d36ccc426c974ad71ba53ed4b17d8fbf7d2e3cf527f807eba6b09eb2e8` |
| 15 | `def` | [Sieve.generateFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-generatefamily--a1f46514e2e9f1cfc92c535e.md) | 224 | `declaration-track:a1f46514e2e9f1cfc92c535ee020a6d153ea9040f996c945af10f38e064ea251` |
| 16 | `lemma` | [Sieve.generateFamily_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-generatefamily-eq--c31345120f8934608b895d28.md) | 231 | `result-track:c31345120f8934608b895d289285d46bce4a925a97d5d3ded46ca7ac413bda29` |
| 17 | `structure` | [EffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamilystruct--914de63a395e41ae634a7d94.md) | 243 | `declaration-track:914de63a395e41ae634a7d94d9882ae18f3d8d99c887c34220e8af670025203a` |
| 18 | `class` | [EffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily--64bee090451f6d0478e70d89.md) | 267 | `declaration-track:64bee090451f6d0478e70d89ecc8fa1fe03d6c01392b34a92aa24ced348f3891` |
| 19 | `def` | [EffectiveEpiFamily.getStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily-getstruct--79e17cb81b43f5a4c57aec5b.md) | 274 | `declaration-track:79e17cb81b43f5a4c57aec5b89eae1d577476e068bb0a527162e2bfc995f227f` |
| 20 | `def` | [EffectiveEpiFamily.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily-desc--3c0feccd7417dd63f6b3e497.md) | 280 | `declaration-track:3c0feccd7417dd63f6b3e4973c8d3b17c86b3f80c84bc355a22e877e3ed83422` |
| 21 | `lemma` | [EffectiveEpiFamily.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily-fac--b660dda3ed970d9ef7c5546a.md) | 287 | `result-track:b660dda3ed970d9ef7c5546a0e58b174918f6b33a56a68156e10ee364051acc9` |
| 22 | `def` | [effectiveEpiFamilyStructId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamilystructid--c311151324fa76271d9bcaeb.md) | 304 | `declaration-track:c311151324fa76271d9bcaebca795cec849be35f9b1d182504ea3140b41cf92d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/instance--f3c92cfa5f5579127920700a.md) | 309 | `declaration-track:f3c92cfa5f5579127920700a3e688c4d84b6b268d6a1e4aa882de644039ff304` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/example--8559e806f94f7fbe781e564b.md) | 312 | `declaration-track:8559e806f94f7fbe781e564b7dacb5a5f3151512cb6246d30999f97dde27caa5` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/example--e6f102c901e17101793110df.md) | 319 | `declaration-track:e6f102c901e17101793110dfa7c0afc97b2c4e8238025d1cb4f6b1d3f2539e53` |
| 26 | `lemma` | [EffectiveEpiFamily.uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily-uniq--5f96bc75008aa7211ea435d7.md) | 327 | `result-track:5f96bc75008aa7211ea435d7afb7f3598b056590ec602c8553c1782a3e190f27` |
| 27 | `lemma` | [EffectiveEpiFamily.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily-hom-ext--b1082fa55eb0f644c0bea3fb.md) | 336 | `result-track:b1082fa55eb0f644c0bea3fb612557d0709a6a0862b2181b8cb5a64afb8a6879` |
| 28 | `instance` | [epiCoproductDescOfEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/epicoproductdescofeffectiveepifamily--ba5d5dfb0729bd3ac8f98234.md) | 345 | `declaration-track:ba5d5dfb0729bd3ac8f982342619aeb92bb0af8bbf7e8cc71fbaaa2baeec1793` |
| 29 | `def` | [isColimitOfEffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/iscolimitofeffectiveepifamilystruct--ddbd80f1f8d6fb9536650b60.md) | 361 | `declaration-track:ddbd80f1f8d6fb9536650b60a7ca3c4652463115c47fed3f21b8ad61bd077f3c` |
| 30 | `def` | [effectiveEpiFamilyStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamilystructofiscolimit--f4029e0f62b0df4bd2979302.md) | 398 | `declaration-track:f4029e0f62b0df4bd297930228e83f2119b61b9dd2e550861134ff3651532538` |
| 31 | `theorem` | [Sieve.effectiveEpimorphic_family](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/sieve-effectiveepimorphic-family--f560780e461774d0901b4794.md) | 435 | `result-track:f560780e461774d0901b4794c8bdcdaf544426a227cb27f5c9383459c2b9d2e3` |
| 32 | `def` | [EffectiveEpiFamily_descStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamily-descstruct--cd9b7a43f019340f6b580787.md) | 456 | `declaration-track:cd9b7a43f019340f6b58078735cb9c015ef5db7fb8145e4b2c85aa1ec48dc3a2` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/instance--bf2dbad4265b0dab107ab048.md) | 477 | `declaration-track:bf2dbad4265b0dab107ab04869be317f9d8a1201eada72a087bf674f84cb85c6` |
| 34 | `def` | [EffectiveEpi_familyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepi-familystruct--564e57718aab48035fc28b51.md) | 485 | `declaration-track:564e57718aab48035fc28b5112c66f1e7cdf7bfbc2396dfdb92e9088877d8837` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/instance--b4a58c06ef83ca89e13077e7.md) | 491 | `declaration-track:b4a58c06ef83ca89e13077e70cedbfa42f2e7db67157ae7f28ff9da5e738750b` |
| 36 | `def` | [EffectiveEpiFamilyStruct_of_isIso_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/effectiveepifamilystruct-of-isiso-desc--9b0bcd52babe0b60fb6f35ef.md) | 499 | `declaration-track:9b0bcd52babe0b60fb6f35ef239ff42b7a77e0582f83871148f921647d93733e` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2.lean/declarations/instance--57c7fe6283c200b4ac8519a3.md) | 517 | `declaration-track:57c7fe6283c200b4ac8519a3132df6842b71d5a79aa68a13419dffb6a14965b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
