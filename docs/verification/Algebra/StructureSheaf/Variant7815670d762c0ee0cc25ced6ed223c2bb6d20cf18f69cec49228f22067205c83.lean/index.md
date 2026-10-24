# Verification target: GRWTSK.Algebra.StructureSheaf.Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16d13a313fdcbe94729aa3a89c612e6cd1e46a49",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/index.md) · [Full source](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16d13a313fdcbe94729aa3a89c612e6cd1e46a49`.

Source path: `GRWTSK/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/isfraction--400e57087ab643406290af32.md) | 79 | `declaration-track:400e57087ab643406290af3298d54292f2c912d996d3ba36e0ed2b35f4000ad9` |
| 2 | `def` | [isFractionPrelocal](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/isfractionprelocal--7f6fbe3dac08367d7f669273.md) | 86 | `declaration-track:7f6fbe3dac08367d7f669273afe3d93a70f53aae7c246bd23fba6a4e989f6314` |
| 3 | `def` | [isLocallyFraction](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/islocallyfraction--9ff139fd439f44f20d33493c.md) | 93 | `declaration-track:9ff139fd439f44f20d33493c4bfdff0934dc6e5cca35d9916e1659b0a0d9804a` |
| 4 | `theorem` | [zero_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/zero-mem--d29933758203c8041ea84950.md) | 102 | `result-track:d29933758203c8041ea8495028c24a2f2b2b7cd3f37a0c22d0fd2892b4ee2fe5` |
| 5 | `theorem` | [one_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/one-mem--003f1f82197e8f4e8aae7197.md) | 106 | `result-track:003f1f82197e8f4e8aae719711fbeb7be1058239852ef13ded6424b6e08d1461` |
| 6 | `theorem` | [add_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/add-mem--65517a03d7bf562751c76c8f.md) | 110 | `result-track:65517a03d7bf562751c76c8fb52e542b78c58ece99393d371b967e46eab434a4` |
| 7 | `theorem` | [neg_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/neg-mem--8d71e9182b59707430435184.md) | 126 | `result-track:8d71e9182b597074304351844fcf4f49f1d422cbffd6195a2f152db1cb3d0e9d` |
| 8 | `theorem` | [mul_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/mul-mem--a7830e6b517f05a1bf77fd71.md) | 133 | `result-track:a7830e6b517f05a1bf77fd71aed020aa8e1973858eda2319396ce70d367fa970` |
| 9 | `def` | [sectionsSubring](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/sectionssubring--9d18696c8c32a4efd294a8c3.md) | 157 | `declaration-track:9d18696c8c32a4efd294a8c3bea8a1c8c733403be4a28806d7baaeeba2fbbc1e` |
| 10 | `def` | [structureSheafInType](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/structuresheafintype--4e4ccfc6a9c3493a29eba5a6.md) | 170 | `declaration-track:4e4ccfc6a9c3493a29eba5a67c8af2f3ffe5bdc2fa50179bcb3c49c338c1e16b` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/commringstructuresheafintypeobj--5b1c124c101df0e86954cc02.md) | 173 | `declaration-track:5b1c124c101df0e86954cc02b002aa27f7b60d1c992389608950c41d71476f08` |
| 12 | `def` | [structurePresheafInCommRing](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/structurepresheafincommring--6b8db01393189392a1d5e5a5.md) | 180 | `declaration-track:6b8db01393189392a1d5e5a5f3db4ea603da2474407e7cedd79d6c70ca5fb08b` |
| 13 | `def` | [structurePresheafCompForget](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/structurepresheafcompforget--7d25031769e482cceca2debc.md) | 191 | `declaration-track:7d25031769e482cceca2debc56ac83bb8f711b1e65a3d0e5c5aec6ff7f023107` |
| 14 | `def` | [Proj.structureSheaf](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-structuresheaf--16ef3990962301ffb081477a.md) | 202 | `declaration-track:16ef3990962301ffb081477a576417683c2efe8410e1b97f57d53f8b22e00dcb` |
| 15 | `theorem` | [Proj.res_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-res-apply--6b93bd52cec585444f97aafa.md) | 220 | `result-track:6b93bd52cec585444f97aafa70cab34ff62c1aca71a5985b4e4747de08ead308` |
| 16 | `theorem` | [Proj.ext](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-ext--2dcfd384c4e8e9101f2fac33.md) | 222 | `result-track:2dcfd384c4e8e9101f2fac33e12eb873e1c887ebc338b7ba7030f104d5099cb4` |
| 17 | `theorem` | [Proj.add_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-add-apply--7f65e171b5be8b50ba58fa80.md) | 223 | `result-track:7f65e171b5be8b50ba58fa80e671edd21adac948ff6808d7b13ab42ab57d5f66` |
| 18 | `theorem` | [Proj.mul_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-mul-apply--861531c72e1e749f8f51488f.md) | 224 | `result-track:861531c72e1e749f8f51488f5659370eb35879b08016e3dca801f69423ea6f1e` |
| 19 | `theorem` | [Proj.sub_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-sub-apply--2e7cf006bd7e9d1dd3b93371.md) | 225 | `result-track:2e7cf006bd7e9d1dd3b933714f4ad4e3b917489182a4987fbf6f9b449080beea` |
| 20 | `theorem` | [Proj.pow_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-pow-apply--847463f0d9b236be8c2fda64.md) | 226 | `result-track:847463f0d9b236be8c2fda64f3b260852d411bcace8f66a4eed5faf8140d1dd2` |
| 21 | `theorem` | [Proj.zero_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-zero-apply--da80f215e960f76939d2776b.md) | 227 | `result-track:da80f215e960f76939d2776b269f02784ae52b674543b58ecd78b308dfea4e50` |
| 22 | `theorem` | [Proj.one_apply](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-one-apply--1a73c7c51752733a03ce1dab.md) | 228 | `result-track:1a73c7c51752733a03ce1dab251548e17ff95179a419260532c90d82f238f68a` |
| 23 | `def` | [Proj.toSheafedSpace](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-tosheafedspace--8db0f600cacd5796e16826e2.md) | 233 | `declaration-track:8db0f600cacd5796e16826e2074f0e435c5252216ce40341de7e1758cb8a613f` |
| 24 | `def` | [openToLocalization](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/opentolocalization--03b5a2da4b83cda162b7131a.md) | 241 | `declaration-track:03b5a2da4b83cda162b7131a1aeb0d5b7c7913e434f9ea1370716ba3d61fe801` |
| 25 | `def` | [stalkToFiberRingHom](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/stalktofiberringhom--e4a3a1b19da175e8de7c87ef.md) | 253 | `declaration-track:e4a3a1b19da175e8de7c87efe89e882c31eee280c5b7ccbabba4d43c54e0b376` |
| 26 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/germ-comp-stalktofiberringhom--5873cd0ccb06e15b91dbca37.md) | 262 | `result-track:5873cd0ccb06e15b91dbca371f550f739ac4b08d319d40dd1a727563e3ec3af1` |
| 27 | `theorem` | [stalkToFiberRingHom_germ](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/stalktofiberringhom-germ--ce41714ff57862574711a080.md) | 269 | `result-track:ce41714ff57862574711a0801560793cb03f6831e4b0d9ca9bc38bd499dcec38` |
| 28 | `theorem` | [mem_basicOpen_den](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/mem-basicopen-den--81e393a73fd09ea991b09a85.md) | 274 | `result-track:81e393a73fd09ea991b09a854500b919aabbc8b433f50e93076bc467618a1ee8` |
| 29 | `def` | [sectionInBasicOpen](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/sectioninbasicopen--ee530804ef3937226ea9db8e.md) | 283 | `declaration-track:ee530804ef3937226ea9db8e77bbc718e5ca844ab54a8e2075b075a852812a03` |
| 30 | `def` | [homogeneousLocalizationToStalk](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/homogeneouslocalizationtostalk--31e3bebe8c43c8bc9af58820.md) | 295 | `declaration-track:31e3bebe8c43c8bc9af58820c41d980698067ac56b4fa0b46cbe348d134d116f` |
| 31 | `lemma` | [homogeneousLocalizationToStalk_stalkToFiberRingHom](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/homogeneouslocalizationtostalk-stalktofiberringhom--91cb4d1413d3560758cabef9.md) | 317 | `result-track:91cb4d1413d3560758cabef95118a3ad71d6f25ccbd719df1d9c86f4c0c55dcc` |
| 32 | `lemma` | [stalkToFiberRingHom_homogeneousLocalizationToStalk](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/stalktofiberringhom-homogeneouslocalizationtostalk--01b69b500d7577462a268755.md) | 335 | `result-track:01b69b500d7577462a2687554363460f67a07e6292d03b440552a4191f9343d2` |
| 33 | `def` | [Proj.stalkIso'](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-stalkiso--0862ee36f0870339ec2bfab1.md) | 343 | `declaration-track:0862ee36f0870339ec2bfab1523cd513702f0e80a7fdffd867375a052fe7fda6` |
| 34 | `theorem` | [Proj.stalkIso'_germ](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-stalkiso-germ--a941ccaa0962167d8dcaab1d.md) | 351 | `result-track:a941ccaa0962167d8dcaab1db5e9c49307a14cf2ffa2f13319aef56f028d994f` |
| 35 | `theorem` | [Proj.stalkIso'_symm_mk](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-stalkiso-symm-mk--518eb188ab94950ae50767ff.md) | 357 | `result-track:518eb188ab94950ae50767ff8bc198b47664729a938725c0ea77aab2efa9e5da` |
| 36 | `def` | [Proj.toLocallyRingedSpace](../../../../mathematics/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean/declarations/proj-tolocallyringedspace--4f0c7eb00db9fcbf6d437540.md) | 362 | `declaration-track:4f0c7eb00db9fcbf6d437540e3f15d79a517cfa294c67f578a531ca915ecee3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
