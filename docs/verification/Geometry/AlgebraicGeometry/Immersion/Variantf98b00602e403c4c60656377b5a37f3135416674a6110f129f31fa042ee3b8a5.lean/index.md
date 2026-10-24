# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Immersion.Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349908fabe76005379a2c6905d64302195c0bbde",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349908fabe76005379a2c6905d64302195c0bbde`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Preimmersion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Separated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/isimmersion--9d8f6d622964090f6c157395.md) | 37 | `declaration-track:9d8f6d622964090f6c157395fd41523a327b8de3fdb4546cbfa6fd14fff14090` |
| 2 | `lemma` | [Scheme.Hom.isLocallyClosed_range](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/scheme-hom-islocallyclosed-range--42f195157ec7085bb1b6a7d3.md) | 40 | `result-track:42f195157ec7085bb1b6a7d35642eeb66b1f21ef9e91a118ac3ca05bcdda6024` |
| 3 | `def` | [Scheme.Hom.coborderRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/scheme-hom-coborderrange--561b101e23158d2c6576fe08.md) | 48 | `declaration-track:561b101e23158d2c6576fe088f621f90547a3e7fdee8cac7cd32b853b29936c5` |
| 4 | `def` | [Scheme.Hom.liftCoborder](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/scheme-hom-liftcoborder--0f7870acc2c15ead26463f2f.md) | 56 | `declaration-track:0f7870acc2c15ead26463f2fa178588b4f5a792c51bf1a4ed8000e1cdc287019` |
| 5 | `lemma` | [Scheme.Hom.liftCoborder_ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/scheme-hom-liftcoborder--d0822844a8ce6494e03f3cb3.md) | 64 | `result-track:d0822844a8ce6494e03f3cb36eacbdcf3966ad17f57ed45c632f1625e63b4400` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--c46475a8baeb064ea3690182.md) | 68 | `declaration-track:c46475a8baeb064ea3690182cc6f5732231063ebb5eecc73bfa3a323a3dcfdea` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--781d0951589d9311b7c81f0f.md) | 78 | `declaration-track:781d0951589d9311b7c81f0f7e574d51854dc528540fa93bdc12dac1d680430f` |
| 8 | `lemma` | [isImmersion_eq_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/isimmersion-eq-inf--ce00510e969c5ef35799bfd4.md) | 82 | `result-track:ce00510e969c5ef35799bfd41e82892927a3398ffa766f33e34afcfd19fd7545` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--3e2cfdc6487f9e471432486f.md) | 88 | `declaration-track:3e2cfdc6487f9e471432486fd18230b5efabbd7c35c3b9a88fbc3359d9eea159` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--ab6999ad170e718619a392fd.md) | 108 | `declaration-track:ab6999ad170e718619a392fdd243f757e71bc0605049c70aa43c60b032a54389` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--52417e099ee09dcf7b609133.md) | 111 | `declaration-track:52417e099ee09dcf7b609133bbba77623304d4c70a5e64c623ad92c352f3b11e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--7c8e0791a38771910c6380e4.md) | 114 | `declaration-track:7c8e0791a38771910c6380e447c4d34a4507855a2cde1b1554db7cd65357f888` |
| 13 | `instance` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/comp--16b065df549f08df18987484.md) | 121 | `declaration-track:16b065df549f08df1898748444ea8aa3b2e1e9c819de8da25772ca6c1bf6c91c` |
| 14 | `lemma` | [isImmersion_iff_exists](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/isimmersion-iff-exists--1185b5a1bcc5922a34d040bd.md) | 130 | `result-track:1185b5a1bcc5922a34d040bdabd1c9fbadbacc7422442cfa96f844d61896ac1f` |
| 15 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/of-comp--88797ce26c5dd49a9968b529.md) | 135 | `result-track:88797ce26c5dd49a9968b529caaca35db6ef3a4372e4d581ec8c82479057487e` |
| 16 | `theorem` | [comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/comp-iff--e596bbdadef365a39c730d8b.md) | 143 | `result-track:e596bbdadef365a39c730d8b02a77af0ccd429408befcfd3a6db15182032a54f` |
| 17 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/isstableunderbasechange--ce1401e53ac19b76c971ee96.md) | 147 | `declaration-track:ce1401e53ac19b76c971ee96fd3504508d043d1a56db088a95939d64e14da8be` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--a2f64b422b5152b339856f05.md) | 164 | `declaration-track:a2f64b422b5152b339856f0571be51e365de02e79f7dc4ca5676188750357f45` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--d8ea4a66324abd5f91e908ed.md) | 175 | `declaration-track:d8ea4a66324abd5f91e908ed627b21e633de9c70432e52241845750a71db8a19` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Immersion/Variantf98b00602e403c4c60656377b5a37f3135416674a6110f129f31fa042ee3b8a5.lean/declarations/instance--1cf809109d8983e31a5968cf.md) | 180 | `declaration-track:1cf809109d8983e31a5968cfdcbcc4d6a1cb21f9802bae70e49582a6d07f8a67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
