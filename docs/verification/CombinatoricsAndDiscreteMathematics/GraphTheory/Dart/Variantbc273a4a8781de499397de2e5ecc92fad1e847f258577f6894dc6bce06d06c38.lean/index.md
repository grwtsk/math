# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Dart.Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "311e1fe17c9cc8d520a73704df91d7ac8279b32f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `311e1fe17c9cc8d520a73704df91d7ac8279b32f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dart](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart--0835238514776c48419e67f5.md) | 31 | `declaration-track:0835238514776c48419e67f5136644bd07e822c8316e93d5bf5871ed8c766dc6` |
| 2 | `theorem` | [Dart.ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-ext-iff--9fce06f1c344dd5ff0c5c7a8.md) | 41 | `result-track:9fce06f1c344dd5ff0c5c7a863815773f0800359f10899c24b560a1e4a15110f` |
| 3 | `theorem` | [Dart.ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-ext--a86d31325af2cf3a66200591.md) | 45 | `result-track:a86d31325af2cf3a66200591f8b7e9a030bb59cae8cb06b2c67d59034ee2cfbd` |
| 4 | `theorem` | [Dart.fst_ne_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-fst-ne-snd--308b27f58a95f280b9d71777.md) | 49 | `result-track:308b27f58a95f280b9d71777fc4b695e53d76f534352b7c5e36c06a297ea08c3` |
| 5 | `theorem` | [Dart.snd_ne_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-snd-ne-fst--0e5cd237b52d8d7a5feaa4a7.md) | 53 | `result-track:0e5cd237b52d8d7a5feaa4a7715c0f93c36b619dbd2b55ef64dab80250716178` |
| 6 | `theorem` | [Dart.toProd_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-toprod-injective--059999ecfc98ad1a99ae6b1a.md) | 56 | `result-track:059999ecfc98ad1a99ae6b1a8155ce127268d6e22ab1e18a548621d5e839dbb8` |
| 7 | `instance` | [Dart.fintype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-fintype--2e3744d4672b575c7065e22e.md) | 59 | `declaration-track:2e3744d4672b575c7065e22e409c5fc1eab1184d8a5c95dbc3fcf1bc267b3b9d` |
| 8 | `def` | [Dart.edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge--bff1e643664924774d9e4ace.md) | 67 | `declaration-track:bff1e643664924774d9e4ace61f92a3c920e017e3c49efecc778ddbf9d1d4b37` |
| 9 | `theorem` | [Dart.edge_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-mk--259addf21f703ae4969af112.md) | 71 | `result-track:259addf21f703ae4969af11283ee73f5638aebafa5700f8c22ebcc973d64a83a` |
| 10 | `theorem` | [Dart.edge_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-mem--7991679c76203c77957c8e26.md) | 75 | `result-track:7991679c76203c77957c8e2623aeade830319fb1b9f22e1ac2f6098cf54e463c` |
| 11 | `def` | [Dart.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-symm--a72fea57e148bf464e499b62.md) | 80 | `declaration-track:a72fea57e148bf464e499b623dbdf44167995cb3eeeff85b59fd0d2cf3d52c52` |
| 12 | `theorem` | [Dart.symm_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-symm-mk--82099d5a1b9b01850558e0a2.md) | 84 | `result-track:82099d5a1b9b01850558e0a294a3bd4e8b209f14641db6686e77ca2a55a926b8` |
| 13 | `theorem` | [Dart.edge_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-symm--480afc81250dd87469787ee8.md) | 88 | `result-track:480afc81250dd87469787ee82a03c0f942c15a8cadd837b7955af9b289e1b165` |
| 14 | `theorem` | [Dart.edge_comp_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-comp-symm--1c6ba329b44faadaeea78571.md) | 92 | `result-track:1c6ba329b44faadaeea78571f008a41e9dcdcc00285f40641330aba6735f9482` |
| 15 | `theorem` | [Dart.symm_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-symm-symm--36ec5b5a08bc1d80b365ac4f.md) | 96 | `result-track:36ec5b5a08bc1d80b365ac4f141b6c07253277f635f9128dc449f8d659edcbd2` |
| 16 | `theorem` | [Dart.symm_involutive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-symm-involutive--bf7d0cadf9faddd1a32105d8.md) | 100 | `result-track:bf7d0cadf9faddd1a32105d8aa6c318302e842bc044356ae760ec84de87d5351` |
| 17 | `theorem` | [Dart.symm_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-symm-ne--e4b5b1be5a5361d063e86881.md) | 103 | `result-track:e4b5b1be5a5361d063e868819267fc87eb14b16c5d324e330a938e5efbdee650` |
| 18 | `theorem` | [dart_edge_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-eq-iff--4c104b1d91ad535e1dc35b3f.md) | 106 | `result-track:4c104b1d91ad535e1dc35b3ffc3328c087dcce24296685b3d025e68ae17c831c` |
| 19 | `theorem` | [dart_edge_eq_mk'_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-eq-mk-iff--001852821c744e3c3e19e6e3.md) | 110 | `result-track:001852821c744e3c3e19e6e39f14c1c1cb98c5a5eb1ae70f75d3f6e32f0f4757` |
| 20 | `theorem` | [dart_edge_eq_mk'_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dart-edge-eq-mk-iff--066b7c137c35090ce2306442.md) | 115 | `result-track:066b7c137c35090ce23064426351598e716c609a0b332e67c65d49d13b386905` |
| 21 | `def` | [DartAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dartadj--c485175f01359ba24d6357cf.md) | 127 | `declaration-track:c485175f01359ba24d6357cfa109f6d94bf1b48ddc37cb89e24f6f025116f574` |
| 22 | `def` | [dartOfNeighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dartofneighborset--5a39ea6b3d125d34be84e674.md) | 133 | `declaration-track:5a39ea6b3d125d34be84e674b33bbb54b2d550fe3b5a348e3dd0f0035825ef0c` |
| 23 | `theorem` | [dartOfNeighborSet_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/dartofneighborset-injective--8a629640aaea4b89ce7a2d71.md) | 136 | `result-track:8a629640aaea4b89ce7a2d713c70edf4dab0a0a7cef1c77ac25099745b1786cf` |
| 24 | `instance` | [nonempty_dart_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variantbc273a4a8781de499397de2e5ecc92fad1e847f258577f6894dc6bce06d06c38.lean/declarations/nonempty-dart-top--a7be068ca313f38638f9c663.md) | 142 | `declaration-track:a7be068ca313f38638f9c663b25bd43d09ce29becdb23eddc0ef95540f1e8757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
