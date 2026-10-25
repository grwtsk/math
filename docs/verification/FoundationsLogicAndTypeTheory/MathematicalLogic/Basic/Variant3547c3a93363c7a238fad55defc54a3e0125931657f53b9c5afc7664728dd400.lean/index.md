# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef4dbb2c5dbfb753ac198e1e15fc71ccca791510",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef4dbb2c5dbfb753ac198e1e15fc71ccca791510`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isFixedPt_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/isfixedpt-id--a6da2b7cac584cc62af5e73f.md) | 36 | `result-track:a6da2b7cac584cc62af5e73fa1ad9ea694d27ea7d7e8b7f6731baab99085d4cd` |
| 2 | `theorem` | [forall_isFixedPt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/forall-isfixedpt-iff--57f909b067dcb5ffd2067742.md) | 40 | `result-track:57f909b067dcb5ffd206774203859d8f61a708dd00dc1661ff23e54dc21a0f74` |
| 3 | `instance` | [decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/decidable--929f4dd18890c92b4524f78a.md) | 45 | `declaration-track:929f4dd18890c92b4524f78a0071bc1b0e1392e01843ed4799ad595b6c10d86b` |
| 4 | `theorem` | [eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/eq--a49c6fc7b82f84448c0aed6e.md) | 49 | `result-track:a49c6fc7b82f84448c0aed6e59ec14f18d29f1e1edc3e25424f7c83a11e80357` |
| 5 | `theorem` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/comp--ff4c079d5625213d94169a29.md) | 53 | `result-track:ff4c079d5625213d94169a294c158c5d3a2246e2e4e139b2b611a010ded40ff8` |
| 6 | `theorem` | [iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/iterate--0329b1badcb03a929192733e.md) | 59 | `result-track:0329b1badcb03a929192733e54388c7ef4d2ddd49867025868fe761d9499f409` |
| 7 | `theorem` | [left_of_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/left-of-comp--1a6ddb25422d97b28f5d33f7.md) | 63 | `result-track:1a6ddb25422d97b28f5d33f7512682cf2368723c8b0d9d2ed43882b8ae55e0f0` |
| 8 | `theorem` | [to_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/to-leftinverse--7c9f9b02ec9a04ec6ffcfcf3.md) | 70 | `result-track:7c9f9b02ec9a04ec6ffcfcf34b5290eb88d00475da15cb84eb85316767475e75` |
| 9 | `theorem` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/map--814f270436daad2d1bc01043.md) | 77 | `result-track:814f270436daad2d1bc010439700d76e6b12f9a6d551b5165211f222ade302fc` |
| 10 | `theorem` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/apply--7c682cae3727ffccdb6db634.md) | 83 | `result-track:7c682cae3727ffccdb6db63498ca7fa26c18c3fb6fb234a3072f78365dc00c0b` |
| 11 | `theorem` | [preimage_iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/preimage-iterate--ab9c6bb048b64bf51f187e92.md) | 85 | `result-track:ab9c6bb048b64bf51f187e9222231c187d6b9553d2683d7cce322c4c9c79a4e6` |
| 12 | `lemma` | [image_iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/image-iterate--9498ce522c2e9bcacd746e85.md) | 90 | `result-track:9498ce522c2e9bcacd746e85574c32646f7bf0e55548a71d4137411828171f6f` |
| 13 | `theorem` | [equiv_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/equiv-symm--8a18bff0b09ef94550a90c57.md) | 94 | `result-track:8a18bff0b09ef94550a90c575818fdd25ddcd01a10bb6ef23e0f812178dfdbf2` |
| 14 | `theorem` | [perm_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/perm-inv--ff638767b15270abd8012fa8.md) | 97 | `result-track:ff638767b15270abd8012fa85c17f0efc62861492f7df32d7fd912603196630b` |
| 15 | `theorem` | [perm_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/perm-pow--22ed8952b4bf719f49cfe8c1.md) | 100 | `result-track:22ed8952b4bf719f49cfe8c1458ea6406fd40b163bf20ef164cd7b3faed306c1` |
| 16 | `theorem` | [perm_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/perm-zpow--c947367c33de9f5d3eb04fc7.md) | 102 | `result-track:c947367c33de9f5d3eb04fc7cf0e00991a4aa40553c05161cdeabce322987530` |
| 17 | `theorem` | [Injective.isFixedPt_apply_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/injective-isfixedpt-apply-iff--16d309cd60397a79eca23f3d.md) | 109 | `result-track:16d309cd60397a79eca23f3d0714241724fd44e29460fb9e065af32b4a64c479` |
| 18 | `def` | [fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/fixedpoints--8397b6c9ae4792ac1b4d93d4.md) | 114 | `declaration-track:8397b6c9ae4792ac1b4d93d4e55c3a663e70d9cbdab986efca278c005bf61b14` |
| 19 | `instance` | [fixedPoints.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/fixedpoints-decidable--df60e55ae4185a2b9ae34b9b.md) | 117 | `declaration-track:df60e55ae4185a2b9ae34b9b6941d911389d091e9b07f52fe52e43fecc2af785` |
| 20 | `theorem` | [mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/mem-fixedpoints--7e3b8ee3011888f8a613935c.md) | 122 | `result-track:7e3b8ee3011888f8a613935c9d433406e9c2fabdb8dd97f2bd7855aafba4cd10` |
| 21 | `theorem` | [mem_fixedPoints_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/mem-fixedpoints-iff--4980e999392faae6dbbb0e04.md) | 125 | `result-track:4980e999392faae6dbbb0e046084c0128a1ffbaa4f128191d95f5282bccafe10` |
| 22 | `theorem` | [fixedPoints_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/fixedpoints-id--c38b16ec938c46558ae84ce8.md) | 129 | `result-track:c38b16ec938c46558ae84ce8114a51d5310ccfd35e43c42a484d100aa46547c2` |
| 23 | `theorem` | [fixedPoints_subset_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/fixedpoints-subset-range--ec5ed460bb5773ee32ca4145.md) | 132 | `result-track:ec5ed460bb5773ee32ca41454d2b26dee8e82048d81eeb3e0f7293f79c4159c8` |
| 24 | `theorem` | [Semiconj.mapsTo_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/semiconj-mapsto-fixedpoints--2bd16d617e6efd43dd533801.md) | 136 | `result-track:2bd16d617e6efd43dd5338019451c4a793c2e9a317dc041f3f46dc8a2369fc48` |
| 25 | `theorem` | [invOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/invon-fixedpoints-comp--dc33f96260d4a9843940b069.md) | 141 | `result-track:dc33f96260d4a9843940b0698678f787ff2e41330a218f3c23d8fd2d726c521a` |
| 26 | `theorem` | [mapsTo_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/mapsto-fixedpoints-comp--8ad129dbae3fdf4e824aa712.md) | 146 | `result-track:8ad129dbae3fdf4e824aa712cdd84dddcc81c5a2dcbc00a29e81f41b2ef84e17` |
| 27 | `theorem` | [bijOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/bijon-fixedpoints-comp--4e5e74ee6ce26fb7a91b14a8.md) | 151 | `result-track:4e5e74ee6ce26fb7a91b14a843351f164820cf45e6ae1580cb9a533d76d58d94` |
| 28 | `theorem` | [Commute.invOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/commute-invon-fixedpoints-comp--eed10e2c8fc3bb39396b32d5.md) | 157 | `result-track:eed10e2c8fc3bb39396b32d5349f02cab609e93232bc8e28be00eed6cb6d8557` |
| 29 | `theorem` | [Commute.left_bijOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/commute-left-bijon-fixedpoints-comp--2cca5c977a08ae8b431f5b97.md) | 163 | `result-track:2cca5c977a08ae8b431f5b9733af41f45989e547e47c5d5af77a72b5da52d6dc` |
| 30 | `theorem` | [Commute.right_bijOn_fixedPoints_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3547c3a93363c7a238fad55defc54a3e0125931657f53b9c5afc7664728dd400.lean/declarations/commute-right-bijon-fixedpoints-comp--5f03eaffadf76b293aa7eb2d.md) | 169 | `result-track:5f03eaffadf76b293aa7eb2d8689f9c055dbbb260af1ff8408ae9053584be7ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
