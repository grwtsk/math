# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22ad21713cc4892121753f3005247b28379ba170",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22ad21713cc4892121753f3005247b28379ba170`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/projective--a058e0243be8e72664f74e48.md) | 52 | `declaration-track:a058e0243be8e72664f74e4874320c9ba9341b895a201722a1eefec51984c35f` |
| 2 | `lemma` | [Limits.IsZero.projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/limits-iszero-projective--fc570fcecdc680315efc99aa.md) | 55 | `result-track:fc570fcecdc680315efc99aa40ef1a8c2f24ad9c45f012dcf915acc4a37c418c` |
| 3 | `structure` | [ProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/projectivepresentation--c0f20f745bba262bf3cde400.md) | 63 | `declaration-track:c0f20f745bba262bf3cde40029ab155f6672855dd345b8d2bd32721525e65bcd` |
| 4 | `class` | [EnoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/enoughprojectives--d8ffd2cff0dd5f0bc5592f65.md) | 77 | `declaration-track:d8ffd2cff0dd5f0bc5592f65c2770ec65059aba2b70a95ccf6751ded0680bde8` |
| 5 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/factorthru--c5f2aadd6368df98f222d01e.md) | 87 | `declaration-track:c5f2aadd6368df98f222d01e63ec5477c9067b964d002f483b71d31916789db2` |
| 6 | `theorem` | [factorThru_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/factorthru-comp--3b0cb7eea5b6782113c65570.md) | 91 | `result-track:3b0cb7eea5b6782113c65570deb31e71f1af4e2caffc92749d66daaab92a63a8` |
| 7 | `instance` | [zero_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/zero-projective--ca1b9fe2094db6e12586ce2e.md) | 99 | `declaration-track:ca1b9fe2094db6e12586ce2eeb6bc91125b7640c478e472551d08cae295c2338` |
| 8 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/of-iso--0d0cd14f7367e3ad64908934.md) | 104 | `result-track:0d0cd14f7367e3ad64908934d2884fabcbd3025ce73c509b4097b7ceb90fe35d` |
| 9 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/iso-iff--3683e092115fba026fa2a28c.md) | 109 | `result-track:3683e092115fba026fa2a28c61a234428ed49a605b44054ac28325939bbe13af` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/instance--c4ec6f22b49f0d9bff2a88e8.md) | 113 | `declaration-track:c4ec6f22b49f0d9bff2a88e8c8ed7d1f4823082c63dedfbad13cfbb2eb806704` |
| 11 | `instance` | [Type.enoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/type-enoughprojectives--07dc8d847e3113cb30662a70.md) | 118 | `declaration-track:07dc8d847e3113cb30662a704b3a584d87cb9de0f09004790d5209bc51ce1b66` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/instance--e3bb671930001aaa8639b46f.md) | 121 | `declaration-track:e3bb671930001aaa8639b46fa0dd2a851b4d910ffb16f288680bb8914f7409af` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/instance--8001fe90f0f363128bd9477d.md) | 125 | `declaration-track:8001fe90f0f363128bd9477d8248feb597556171da24e766edaf8cf6886b62db` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/instance--2580d7761f724765169e0eef.md) | 128 | `declaration-track:2580d7761f724765169e0eef52ac3f6bf18e56a2bc3e264e893039b7b6e901d9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/instance--ecd3d930cd794776d3191de5.md) | 133 | `declaration-track:ecd3d930cd794776d3191de5bf72698b805b67df3a50ab2f2c72dd6b092afbef` |
| 16 | `theorem` | [projective_iff_preservesEpimorphisms_coyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/projective-iff-preservesepimorphisms-coyoneda-obj--736608ca46c1e1f34c7ac799.md) | 137 | `result-track:736608ca46c1e1f34c7ac79946104bacc19cfdc140e1294df3e7f82378b0af10` |
| 17 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/over--0981e5024b748750024e6900.md) | 155 | `declaration-track:0981e5024b748750024e69007e906da9a81a88ac11d4c47442cda3e7b1332619` |
| 18 | `instance` | [projective_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/projective-over--d133c3679b3e2dffc73accae.md) | 158 | `declaration-track:d133c3679b3e2dffc73accae73d547565aa9ebd96cdc267ba06fd8c9314b2f1f` |
| 19 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/anonymous--927606b0eeb4636ea00f9625.md) | 164 | `declaration-track:927606b0eeb4636ea00f96259594930cb84fe9c6efda50ccfa01686adb77afee` |
| 20 | `instance` | [π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/epi--a0d1af40886907adaad1697e.md) | 167 | `declaration-track:a0d1af40886907adaad1697ea23a6b99ad5664945094d2f43ac9bc4558861f3d` |
| 21 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/syzygies--79ffe3214fe397887d0c7b43.md) | 177 | `declaration-track:79ffe3214fe397887d0c7b434ea6a0d3eb4dd843224e64c8b38ba61b6028b238` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/instance--70b28f22a326c5ed7d0dac06.md) | 179 | `declaration-track:70b28f22a326c5ed7d0dac069d86bc66bdb85684c370c97666db7cf29a9972e1` |
| 23 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/d--d17c00f511c1b59fb37e2c30.md) | 187 | `declaration-track:d17c00f511c1b59fb37e2c3053680074ccff027c079ac6ee843c9a26c59f0cf6` |
| 24 | `theorem` | [map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/map-projective--62ce09f3fe089719ea923bea.md) | 200 | `result-track:62ce09f3fe089719ea923bea2293555f404a4d3c1b5ac7f00a81cc30ab98552e` |
| 25 | `theorem` | [projective_of_map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/projective-of-map-projective--1ec004e4e62b299971636cda.md) | 208 | `result-track:1ec004e4e62b299971636cdaf964351b50e46a1c17ea388845616affde51b2b2` |
| 26 | `def` | [mapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/mapprojectivepresentation--af32ada1285f65619e182773.md) | 218 | `declaration-track:af32ada1285f65619e18277303e408ee3878ee826c6bb31ad7d2dd3cd84a5102` |
| 27 | `theorem` | [map_projective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/map-projective-iff--62b35eedac540d9b6f1de637.md) | 231 | `result-track:62b35eedac540d9b6f1de637f8cb7a80809f78c3408212211f35ed5043c0c4ab` |
| 28 | `def` | [projectivePresentationOfMapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/projectivepresentationofmapprojectivepresentation--136681aa76ec2a9490b5632f.md) | 236 | `declaration-track:136681aa76ec2a9490b5632f8f5e059da01f7dc9d29574c8267bb15c24465586` |
| 29 | `theorem` | [enoughProjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1d8f2b14e756d2677063e2a18a1ecc86b24c3a4649e394dba3598781d82670a2.lean/declarations/enoughprojectives-iff--37bcd38220d931ccc6bf3ae5.md) | 243 | `result-track:37bcd38220d931ccc6bf3ae56f28983e53e8569e1b5ab02f5580f4d1129abdcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
