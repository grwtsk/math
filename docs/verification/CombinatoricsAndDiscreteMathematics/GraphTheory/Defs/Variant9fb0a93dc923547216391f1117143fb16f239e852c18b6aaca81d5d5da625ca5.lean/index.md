# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Defs.Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92f3d8e83b0f0e8dc0d4c39bd446f14d0b83f88d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92f3d8e83b0f0e8dc0d4c39bd446f14d0b83f88d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CofilteredSystem` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Set` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComponentCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl--9d64ac5432a8eb55b839f86f.md) | 33 | `declaration-track:9d64ac5432a8eb55b839f86f1ad8f279672d4dbe9780fd6933ab3d01125c4bb6` |
| 2 | `abbrev` | [componentComplMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcomplmk--1f93371226f5f1927cd7c7ad.md) | 39 | `declaration-track:1f93371226f5f1927cd7c7adf8c6f832982d5c8b494705f6ff5e7157941cb03e` |
| 3 | `def` | [ComponentCompl.supp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-supp--55e66addeec7e2e129cd9a83.md) | 43 | `declaration-track:55e66addeec7e2e129cd9a83c1781dc6bdb73ff3b11e775499f0c0d5a7350a6e` |
| 4 | `theorem` | [ComponentCompl.supp_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-supp-injective--151a673f16a761ffb1d89735.md) | 47 | `result-track:151a673f16a761ffb1d897358d2edf260d2bc87420ab553a6155bc755dd9b260` |
| 5 | `theorem` | [ComponentCompl.supp_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-supp-inj--811d599d26d27caad826eb53.md) | 54 | `result-track:811d599d26d27caad826eb5330cfe852f68985a2ec208be6f9c9741f120f5944` |
| 6 | `instance` | [ComponentCompl.setLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-setlike--d7a1431e1d0245d935112479.md) | 57 | `declaration-track:d7a1431e1d0245d935112479c2f96a15e28b285c213920a57d13a40483e8290d` |
| 7 | `theorem` | [ComponentCompl.mem_supp_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-mem-supp-iff--00f9ff66f7a13d423491e9bf.md) | 62 | `result-track:00f9ff66f7a13d423491e9bfa72897c15f7016fe8d1a92edf7d74df176b5e440` |
| 8 | `theorem` | [componentComplMk_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcomplmk-mem--9a32dc76ac50c7e12cad5d11.md) | 66 | `result-track:9a32dc76ac50c7e12cad5d11d11fdeaa07bcb7fd2d9a0a5d4e3033517fe324db` |
| 9 | `theorem` | [componentComplMk_eq_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcomplmk-eq-of-adj--bcc3c19aaace5e64d982e98a.md) | 69 | `result-track:bcc3c19aaace5e64d982e98ab93deb4fa6f5ff746a6447272fd07f08cfbecd56` |
| 10 | `instance` | [componentCompl_nonempty_of_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-nonempty-of-infinite--48e6d0c99fa67611b170b544.md) | 76 | `declaration-track:48e6d0c99fa67611b170b54410525086298f107d664515fbc6b0541813e42852` |
| 11 | `def` | [lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/lift--281eab455bf3af36d30c0ce6.md) | 86 | `declaration-track:281eab455bf3af36d30c0ce64f34cd2a577b7e8b32868375e35ba849d3ddfa93` |
| 12 | `theorem` | [ind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/ind--61877778340f868ec59ff67a.md) | 94 | `result-track:61877778340f868ec59ff67a3e10774fef13571f2a37e522f7d2e19e4f56804d` |
| 13 | `abbrev` | [coeGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/coegraph--8359dd376692f4a53510e34b.md) | 100 | `declaration-track:8359dd376692f4a53510e34b0aacac37a40d35f2263a18eb4d91c5b274204b77` |
| 14 | `theorem` | [coe_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/coe-inj--2c2f09150a91663b3eb9e688.md) | 103 | `result-track:2c2f09150a91663b3eb9e688ca553afa2770b7714333755bbd7a925dad7c1875` |
| 15 | `theorem` | [nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/nonempty--203f5479cf8170f3114aea99.md) | 107 | `result-track:203f5479cf8170f3114aea991a1563df07177b3b2f400644f75ae7d9bd05f13b` |
| 16 | `theorem` | [exists_eq_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/exists-eq-mk--31b6086159c7d4f4e6ea2ff2.md) | 110 | `result-track:31b6086159c7d4f4e6ea2ff2d714ba30a85fedfd03f5063b4487f63ed5576c6d` |
| 17 | `theorem` | [disjoint_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/disjoint-right--0bbe9a3ae0d8ed7895252c8f.md) | 114 | `result-track:0bbe9a3ae0d8ed7895252c8ff65ffcd373b2562957a2448283912aeff0a44de7` |
| 18 | `theorem` | [notMem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/notmem-of-mem--1cf721b783208def0ba15a32.md) | 118 | `result-track:1cf721b783208def0ba15a3227379c8b35c4c58d0a2245f3264270bc5e0f4b26` |
| 19 | `theorem` | [pairwise_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/pairwise-disjoint--102d12d1c7ec2cb4d161d12f.md) | 123 | `result-track:102d12d1c7ec2cb4d161d12f0a75a2a20dd1ed36702a97e63e494502f8f03983` |
| 20 | `theorem` | [mem_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/mem-of-adj--8a1dbb20b469cd62655a76d0.md) | 131 | `result-track:8a1dbb20b469cd62655a76d06b1ba28f59b47de06171208c58c0f83a61828d4c` |
| 21 | `theorem` | [exists_adj_boundary_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/exists-adj-boundary-pair--07cc8e4ec661bf3cd88401bd.md) | 141 | `result-track:07cc8e4ec661bf3cd88401bde88da192067434e28ca0cc47c7ee02d183e5c479` |
| 22 | `abbrev` | [hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom--d591d4003b9358b4b8b225c9.md) | 160 | `declaration-track:d591d4003b9358b4b8b225c962b0fb2508979da618bdee77b94cf7b69fe15ca1` |
| 23 | `theorem` | [subset_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/subset-hom--9b906f3548b14b6756353d27.md) | 163 | `result-track:9b906f3548b14b6756353d276161ca9b05e7e1d892dede5cac4a9de1806cd253` |
| 24 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComponentCompl.Variant9cd9b75d7912fb9763912a28b559e5906367b59b8e16146bb4600eb338db8fca.SimpleGraph.componentComplMk_mem_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-componentcom--42c2c7569815bec08aedda70.md) | 167 | `result-track:42c2c7569815bec08aedda70bcd49da780242d16cb3034dbadc0db3c45cc6b8a` |
| 25 | `theorem` | [hom_eq_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom-eq-iff-le--4a2cf55be7ab1d15a41d8111.md) | 172 | `result-track:4a2cf55be7ab1d15a41d811106fef8c77e0bd5e9ed53a35e2761c9ca78fc2b5e` |
| 26 | `theorem` | [hom_eq_iff_not_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom-eq-iff-not-disjoint--33e06ac7e19bca6035cd097f.md) | 176 | `result-track:33e06ac7e19bca6035cd097f544b9124b71777a150568bff5a6e2c3ffcacf30f` |
| 27 | `theorem` | [hom_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom-refl--e2178560f0f6837adef0d909.md) | 188 | `result-track:e2178560f0f6837adef0d909f72f9817c6c171e068578ef55ec5caa01199cab0` |
| 28 | `theorem` | [hom_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom-trans--899701b59cc4f59780252a8e.md) | 192 | `result-track:899701b59cc4f59780252a8eb83d9db2b638f2065822715e10d22957a025c236` |
| 29 | `theorem` | [hom_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom-mk--c362ca2c51f4b4f5128d2b1e.md) | 198 | `result-track:c362ca2c51f4b4f5128d2b1ea396dc61262bf5296ab237116586dafdbed95dac` |
| 30 | `theorem` | [hom_infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/hom-infinite--5d289ccdd26658c1dca019fb.md) | 202 | `result-track:5d289ccdd26658c1dca019fbd66b27260b4b2ddabd09ce62ffd14d75ac4ca23f` |
| 31 | `theorem` | [infinite_iff_in_all_ranges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/infinite-iff-in-all-ranges--ecc6cd90bf9e26410a119a53.md) | 206 | `result-track:ecc6cd90bf9e26410a119a5355ab3a78b76e62fc120f6049cf42e5a74a5e6746` |
| 32 | `instance` | [componentCompl_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcompl-finite--23155a7389d9612fd9d3ce47.md) | 225 | `declaration-track:23155a7389d9612fd9d3ce470c3ed533e931d3b4dee56105957c2a1a4ebdb3c5` |
| 33 | `def` | [componentComplFunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/componentcomplfunctor--58adcd174d046df298b86aaa.md) | 262 | `declaration-track:58adcd174d046df298b86aaa1c4e18fe96b5a9bf40df6c8a8a6116856e1a12b1` |
| 34 | `def` | [«end»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/end--b6063912ad7e0b74c441f3ca.md) | 271 | `declaration-track:b6063912ad7e0b74c441f3ca7e23b436c1d58cd882dde7a0ddc20048fe365b1e` |
| 35 | `theorem` | [end_hom_mk_of_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/end-hom-mk-of-mk--a7dc175f39557f19bff0be31.md) | 274 | `result-track:a7dc175f39557f19bff0be31f2eb66cae5253a7ed210a969cddc36e504e1735f` |
| 36 | `theorem` | [infinite_iff_in_eventualRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9fb0a93dc923547216391f1117143fb16f239e852c18b6aaca81d5d5da625ca5.lean/declarations/infinite-iff-in-eventualrange--b9cf509b5564a4f849dd5cff.md) | 280 | `result-track:b9cf509b5564a4f849dd5cff8b4e66c3c07495147abfea48d82b875e65382a2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
