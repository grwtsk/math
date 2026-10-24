# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UnderlyingMap.Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3abc737c4a7edc74cc7ea39853431ba5dc9aa44d",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3abc737c4a7edc74cc7ea39853431ba5dc9aa44d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocalAtTarget` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Constructors` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--fcbb152e87e7138c48c6060f.md) | 46 | `declaration-track:fcbb152e87e7138c48c6060fed8445df6030819e056b1c161353ba7964265a53` |
| 2 | `instance` | [injective_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/injective-islocalattarget--c5338effb51a07619576aaa3.md) | 49 | `declaration-track:c5338effb51a07619576aaa39ddcc2d97f1532369e4fb8900009aceaae06fab3` |
| 3 | `class` | [Surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective--d0818aaeac741dbceb757c67.md) | 63 | `declaration-track:d0818aaeac741dbceb757c67e3e858f953522785498bc196c786e46004f923ac` |
| 4 | `lemma` | [surjective_eq_topologically](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective-eq-topologically--fa063e935e5a074300cfdbba.md) | 66 | `result-track:fa063e935e5a074300cfdbbaf0e580f9ac9c3c1556689c1c8dfa8c03d495a8d6` |
| 5 | `lemma` | [Scheme.Hom.surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/scheme-hom-surjective--63de33ca92bb55250c8f4fb8.md) | 69 | `result-track:63de33ca92bb55250c8f4fb8afa10530540f7c5384af2699c163846e7f096e89` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--3028b75774fe351e5ec0e2d1.md) | 72 | `declaration-track:3028b75774fe351e5ec0e2d10577009de520f509c8355839ae4ac9dd93d96c87` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--d06c3f0a668922432e955732.md) | 74 | `declaration-track:d06c3f0a668922432e95573216175749c2c196959c71519c2b39831f91f0a594` |
| 8 | `lemma` | [Surjective.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective-of-comp--9b926304c8cec730911cc2c9.md) | 76 | `result-track:9b926304c8cec730911cc2c99bb9becd03c6d0943dcc04f70f7cb6920a4721e4` |
| 9 | `lemma` | [Surjective.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective-comp-iff--8b9ff296462d20858cd73702.md) | 79 | `result-track:8b9ff296462d20858cd73702c33d3076fb9f6bae9eab6cbb5f16bbc4800aaff2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--a14c65138e552553a3b3d1fa.md) | 82 | `declaration-track:a14c65138e552553a3b3d1fac6d139251a120ad0b7f8e161293e80ec76d95c30` |
| 11 | `instance` | [surjective_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective-islocalattarget--12a8f5765279cb054714f43e.md) | 86 | `declaration-track:12a8f5765279cb054714f43ea9473cd2267d617480451d842e5653382c1f06ad` |
| 12 | `lemma` | [range_eq_univ](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/range-eq-univ--9c2de01d53fe7017c165bdf1.md) | 96 | `result-track:9c2de01d53fe7017c165bdf1b8a78a4bf042a106483bd31831ce38d52ff9c0b6` |
| 13 | `lemma` | [range_eq_range_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/range-eq-range-of-surjective--9a9216c6b0354c0f81122ae9.md) | 99 | `result-track:9a9216c6b0354c0f81122ae94b13b1138a356074f4792d51be97882f600ac0ff` |
| 14 | `lemma` | [mem_range_iff_of_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/mem-range-iff-of-surjective--c7f4ef73bd38906f7ef3b73e.md) | 104 | `result-track:c7f4ef73bd38906f7ef3b73e065a71cc87a6d6eff1e5edaba95e426d5bbdf109` |
| 15 | `lemma` | [Surjective.sigmaDesc_of_union_range_eq_univ](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective-sigmadesc-of-union-range-eq-univ--37c8fa05f286c546ce2f1eda.md) | 108 | `result-track:37c8fa05f286c546ce2f1eda52f9cb8a8726da38d54a0bb1192292db10212697` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--f0c750a123718f60800dbfd8.md) | 117 | `declaration-track:f0c750a123718f60800dbfd8f4eb04d8134cb595c3676bea09f10dd0b0ab3f71` |
| 17 | `instance` | [injective_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/injective-isstableundercomposition--225ca4228e86867001a3bfdb.md) | 125 | `declaration-track:225ca4228e86867001a3bfdb87170fd1230d7184aa879b306751f9976c8c90ad` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--0cd75784308cbffb1aa04bcc.md) | 133 | `declaration-track:0cd75784308cbffb1aa04bcc0c65245005874028e72971236078dd5e7ccd0cb3` |
| 19 | `instance` | [isOpenMap_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isopenmap-islocalattarget--af0072b6df25accc7d1e5498.md) | 136 | `declaration-track:af0072b6df25accc7d1e549846d7e905fb16d0e0faa2d958a7aa326357928d3c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--1e5ade287e8f4124ffe23983.md) | 139 | `declaration-track:1e5ade287e8f4124ffe23983208f643ffc2ad4b88324cc25d2d39bfe5ba3f3ed` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--9c2929605fb1d4f808b73162.md) | 146 | `declaration-track:9c2929605fb1d4f808b73162a3ce030a2c99ad7caaf16da7f8fe71cbac806d7b` |
| 22 | `instance` | [isClosedMap_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isclosedmap-islocalattarget--b2a051ed8e382b9f20913e71.md) | 149 | `declaration-track:b2a051ed8e382b9f20913e718a064cf1c9ca0a3e8118c818accc9b89530efc50` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--7aaf1fae8754074f39478f35.md) | 156 | `declaration-track:7aaf1fae8754074f39478f3518de8bee28dd7412f20a83280cc8ac95f856d681` |
| 24 | `instance` | [isEmbedding_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isembedding-islocalattarget--d8b8c248d5a4f26e52f161fd.md) | 159 | `declaration-track:d8b8c248d5a4f26e52f161fd6ee9a920e48d0d9b908eca73a9dd9a16d6716ca3` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--0874db2533ca2af9c604ff33.md) | 166 | `declaration-track:0874db2533ca2af9c604ff330e591c2c62f0364e178ebee15bf127f25caa5b90` |
| 26 | `instance` | [isOpenEmbedding_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isopenembedding-islocalattarget--dfbc62f060d5eee8c7998297.md) | 169 | `declaration-track:dfbc62f060d5eee8c79982976af36f441b24bd9a6509b58536cabfa26eb3c469` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--3011357674bd14209f9ef67e.md) | 176 | `declaration-track:3011357674bd14209f9ef67ee19be35b348babc536e7db539dbb9d5bc201a06c` |
| 28 | `instance` | [isClosedEmbedding_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isclosedembedding-islocalattarget--461395a26fbf72680c4ff19b.md) | 179 | `declaration-track:461395a26fbf72680c4ff19b377c16ef02918e9643835b667480683863e6f9be` |
| 29 | `class` | [IsDominant](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isdominant--aa282feecb2ffbdff6f44793.md) | 190 | `declaration-track:aa282feecb2ffbdff6f447931fe278e1c236c08fa0e82e307ec99252ca4e9857` |
| 30 | `lemma` | [dominant_eq_topologically](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/dominant-eq-topologically--b353e12541936886549a7ad6.md) | 193 | `result-track:b353e12541936886549a7ad6a687a1f5d3296f8af4603663a5f50b7765e4da0f` |
| 31 | `lemma` | [Scheme.Hom.denseRange](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/scheme-hom-denserange--e8668b5d4c2c930d19a1ba94.md) | 196 | `result-track:e8668b5d4c2c930d19a1ba949b18e118ead1093f25e7a8bd471fa233dc910e59` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--756eb90694671a41cc9bda6c.md) | 199 | `declaration-track:756eb90694671a41cc9bda6cd5c76d5a35d9fb462292d4ce9d0a55dd588ba97a` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--aa0829dc9586299dde0034a5.md) | 201 | `declaration-track:aa0829dc9586299dde0034a5ab889f555e2fc2ed20f42a611e124fd7670f1eb8` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--dcfe26d436bdf092d0494021.md) | 204 | `declaration-track:dcfe26d436bdf092d0494021792c69972552d3a056987dcc591bb1468fdc6fdd` |
| 35 | `lemma` | [IsDominant.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isdominant-of-comp--8e3ad94f7d15051155954b49.md) | 208 | `result-track:8e3ad94f7d15051155954b49636aaa34dadd806f260a4f555e295de8181b2173` |
| 36 | `lemma` | [IsDominant.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isdominant-comp-iff--995bfbebf3a4bb6e441e1b4d.md) | 212 | `result-track:995bfbebf3a4bb6e441e1b4db11660b46d41f52a8f42448a65bea0a1531085e9` |
| 37 | `instance` | [IsDominant.respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isdominant-respectsiso--74d232d64942bb67177f6c6e.md) | 215 | `declaration-track:74d232d64942bb67177f6c6e05142181ff2dec82e577fe072010ecdb9508a916` |
| 38 | `instance` | [IsDominant.isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isdominant-islocalattarget--7587764b4c75c480cf433410.md) | 218 | `declaration-track:7587764b4c75c480cf4334103d86b63f60fefa53eae22e01ebdd27520a718fb7` |
| 39 | `lemma` | [surjective_of_isDominant_of_isClosed_range](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/surjective-of-isdominant-of-isclosed-range--4969746f4f9a6086efdea1b3.md) | 224 | `result-track:4969746f4f9a6086efdea1b301984286ac425bd38847d3f65fbc298b7c12db9d` |
| 40 | `lemma` | [IsDominant.of_comp_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/isdominant-of-comp-of-isopenimmersion--6db8ba2d8f360ce20da44900.md) | 229 | `result-track:6db8ba2d8f360ce20da449009c1c875ebadfa0466260fcc3dafbe685d342e5c1` |
| 41 | `instance` | [specializingMap_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/specializingmap-respectsiso--3d7485da3da3b3caf9391e74.md) | 243 | `declaration-track:3d7485da3da3b3caf9391e74d6d55624858d33ab141f0f65f10c28b5f84d98b9` |
| 42 | `instance` | [specializingMap_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/specializingmap-islocalattarget--c41e48ff32b2c439d77d4b5b.md) | 250 | `declaration-track:c41e48ff32b2c439d77d4b5bb0895455e6da27dc8378aba42622be38f066f960` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--1a3f96fee5bcec8d125e4026.md) | 280 | `declaration-track:1a3f96fee5bcec8d125e40266f7c355051b0250874cd762c3431756118909dfc` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--8990f2feabc8015ead324149.md) | 284 | `declaration-track:8990f2feabc8015ead3241491b092fa8d3d509a0a28eb2925d483bf23f6e3ced` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UnderlyingMap/Variant767f3bb951795edb0d1cd32999591a417358b0bb01105ff0f4f86dabad31b906.lean/declarations/instance--cf9a56f7cfc480fc95486a00.md) | 287 | `declaration-track:cf9a56f7cfc480fc95486a0021762e3a3eb4a9da96bae54266800c0085aa02d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
