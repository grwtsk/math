# Verification target: GRWTSK.Algebra.RegularSequence.Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be1aaf625255d71de95cd19457d1d5ccd67e8b08",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/index.md) · [Full source](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be1aaf625255d71de95cd19457d1d5ccd67e8b08`.

Source path: `GRWTSK/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Regular.IsSMulRegular` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofList](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/oflist--03e008b816aa8f750ad21e7f.md) | 39 | `declaration-track:03e008b816aa8f750ad21e7f661ad4159f594005c83ad0232307e998b5f4c512` |
| 2 | `lemma` | [ofList_nil](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/oflist-nil--303609aae33c75699a370e0b.md) | 41 | `result-track:303609aae33c75699a370e0bdb058154329f421378466dbf6fe329283b1b6e1b` |
| 3 | `lemma` | [ofList_append](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/oflist-append--54754150fe3a25fa9c7a03d3.md) | 45 | `result-track:54754150fe3a25fa9c7a03d3ff6182365c5eea9c1e437de1d411dece4900c24d` |
| 4 | `lemma` | [ofList_singleton](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/oflist-singleton--029c5b1f0f4e17d89d9bd0f9.md) | 50 | `result-track:029c5b1f0f4e17d89d9bd0f95fac56556607c4bffdc50f543e38eb7b0556048e` |
| 5 | `lemma` | [ofList_cons](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/oflist-cons--76883468f859401d71e12d55.md) | 53 | `result-track:76883468f859401d71e12d55936aa1d5f8093ed93896773449bbdde0e52b1769` |
| 6 | `lemma` | [map_ofList](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/map-oflist--8a05824395ccebe2593c5137.md) | 57 | `result-track:8a05824395ccebe2593c51370df824b8ebdbdb7f8c7942ca50ca02185545df1a` |
| 7 | `lemma` | [ofList_cons_smul](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/oflist-cons-smul--26967051c99e80e34aeb4b3e.md) | 62 | `result-track:26967051c99e80e34aeb4b3e456dd8fc96f5bb189e76b88f35de466bdaf5473d` |
| 8 | `lemma` | [smul_top_le_comap_smul_top](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/smul-top-le-comap-smul-top--169d9e4b344eb09d8240313a.md) | 71 | `result-track:169d9e4b344eb09d8240313a7c35ccbe8d2e3af71898fd37e9787ef31d994b26` |
| 9 | `def` | [quotOfListConsSMulTopEquivQuotSMulTopInner](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/quotoflistconssmultopequivquotsmultopinner--ecf004ff539728c5eda0c009.md) | 81 | `declaration-track:ecf004ff539728c5eda0c009d82be210891bdcccfbde65a1930cd45189cc94ce` |
| 10 | `def` | [quotOfListConsSMulTopEquivQuotSMulTopOuter](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/quotoflistconssmultopequivquotsmultopouter--9d70578bfa4e8e6ffe4d6836.md) | 89 | `declaration-track:9d70578bfa4e8e6ffe4d683610377bca21429d04345a5af06428fc801abc5438` |
| 11 | `lemma` | [quotOfListConsSMulTopEquivQuotSMulTopInner_naturality](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/quotoflistconssmultopequivquotsmultopinner-naturality--0bb8b5308c49210b67d19e27.md) | 98 | `result-track:0bb8b5308c49210b67d19e27963e24d71f4ee762547751d7700662ba3a750e3a` |
| 12 | `lemma` | [top_eq_ofList_cons_smul_iff](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/top-eq-oflist-cons-smul-iff--17292f161276df3220c74036.md) | 105 | `result-track:17292f161276df3220c74036b9ad26a085c7531fea91f5b665069c506bbe1acd` |
| 13 | `structure` | [IsWeaklyRegular](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular--1864fe8ea5b57b63b054f448.md) | 139 | `declaration-track:1864fe8ea5b57b63b054f448736f370b6e9513ebdd00d148a1f9d1163a179e7e` |
| 14 | `lemma` | [isWeaklyRegular_iff_Fin](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-iff-fin--1694a5699dc6c453c0f46a67.md) | 143 | `result-track:1694a5699dc6c453c0f46a676aac1f6665360b75923c33a04dfc9c3a7be623bc` |
| 15 | `structure` | [IsRegular](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isregular--7f40c03f5b1ddede80db4e07.md) | 150 | `declaration-track:7f40c03f5b1ddede80db4e07eded4a2467e508a260ba7f8e1b8ffea2cf0998ce` |
| 16 | `lemma` | [_root_.AddHom.map_smul_top_toAddSubgroup_of_surjective](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-addhom-map-smul-top-toaddsubgroup-of-surjective--924b07c989b13fd87d6fb753.md) | 162 | `result-track:924b07c989b13fd87d6fb753c74054444ee61518076dc173f388db9d264831d5` |
| 17 | `lemma` | [_root_.AddEquiv.isWeaklyRegular_congr](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-addequiv-isweaklyregular-congr--8f11a8ce20f07414acb2c9c9.md) | 180 | `result-track:8f11a8ce20f07414acb2c9c986bc7e18692a8e5f849216de44d4985565fba601` |
| 18 | `lemma` | [_root_.LinearEquiv.isWeaklyRegular_congr'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-linearequiv-isweaklyregular-congr--8815c6683cbfe61686c44688.md) | 192 | `result-track:8815c6683cbfe61686c4468822f953b4aea638e5230b1fc401808e9ea18c2a74` |
| 19 | `lemma` | [_root_.LinearEquiv.isWeaklyRegular_congr](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-linearequiv-isweaklyregular-congr--5ba2e40f8aff69c548a66df8.md) | 197 | `result-track:5ba2e40f8aff69c548a66df8c535c20941b50c2150c3bb04bc071a3059e3b246` |
| 20 | `lemma` | [_root_.AddEquiv.isRegular_congr](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-addequiv-isregular-congr--9b57c0660cfdae37f2f03805.md) | 201 | `result-track:9b57c0660cfdae37f2f0380569150a3da76caf5186772bd7ffde817316c00ce6` |
| 21 | `lemma` | [_root_.LinearEquiv.isRegular_congr'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-linearequiv-isregular-congr--85d5b37e001f23d9597c0fcc.md) | 210 | `result-track:85d5b37e001f23d9597c0fcc1aa175397dac698fb651674f344c1a4731e4f8b7` |
| 22 | `lemma` | [_root_.LinearEquiv.isRegular_congr](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-linearequiv-isregular-congr--4270da36cf0d4db8022e0939.md) | 215 | `result-track:4270da36cf0d4db8022e093927f5190aa26061b673aca68d2d08955011af9820` |
| 23 | `lemma` | [isWeaklyRegular_map_algebraMap_iff](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-map-algebramap-iff--af25c166116e453bd898fcd7.md) | 221 | `result-track:af25c166116e453bd898fcd7d62a3ff143561c6263ae018f4899163ec9c52982` |
| 24 | `lemma` | [isWeaklyRegular_cons_iff](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-cons-iff--9cd295a429c6bf55af54e5e7.md) | 232 | `result-track:9cd295a429c6bf55af54e5e77cd3fab33796cb897481b85b5a50af74a4e16cb7` |
| 25 | `lemma` | [isWeaklyRegular_cons_iff'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-cons-iff--08167bd76c6264ca99e260e4.md) | 242 | `result-track:08167bd76c6264ca99e260e45af1276db86904bf0ee915f79359d4fd2c22f38d` |
| 26 | `lemma` | [isRegular_cons_iff](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isregular-cons-iff--93dec050407b0e5cd1494d32.md) | 251 | `result-track:93dec050407b0e5cd1494d32ab238dfa8b875786e9a0c6d37504e3fa77c96bac` |
| 27 | `lemma` | [isRegular_cons_iff'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isregular-cons-iff--58c5f981e8edb26e158d01e0.md) | 257 | `result-track:58c5f981e8edb26e158d01e0bf4f1b9ecdf7d64cd733d84e35487481a4593a63` |
| 28 | `lemma` | [nil](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/nil--1e819ac838c55fb3656e5686.md) | 271 | `result-track:1e819ac838c55fb3656e56860739427fdf08542cd84b0701bb31a83054c10704` |
| 29 | `lemma` | [cons](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/cons--6d0ae45e8224f82c9bac2f60.md) | 274 | `result-track:6d0ae45e8224f82c9bac2f609d4d371bb1537d93f1a3c93c2516a76a03f42347` |
| 30 | `lemma` | [cons'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/cons--b77f580351e39eab59fa3e6d.md) | 278 | `result-track:b77f580351e39eab59fa3e6d7cad22a984f0ca2ed0580616ec7afd9f021f62d6` |
| 31 | `def` | [recIterModByRegular](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/recitermodbyregular--52147a73345e8935114115eb.md) | 292 | `declaration-track:52147a73345e8935114115eb8090196be19db7f10a35488e836e7159d9b12cdc` |
| 32 | `def` | [ndrecIterModByRegular](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/ndrecitermodbyregular--2db4fb04c1d37c458d8b79df.md) | 309 | `declaration-track:2db4fb04c1d37c458d8b79df234d6be7845f078a11077d63eb8abc965b68b542` |
| 33 | `def` | [recIterModByRegularWithRing](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/recitermodbyregularwithring--3ab670dfc49d521167781e7a.md) | 323 | `declaration-track:3ab670dfc49d521167781e7afbd9e8f21ab83b6f6dc97e95c238297731a9b0ee` |
| 34 | `def` | [ndrecWithRing](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/ndrecwithring--2e7ebf4516d84fe665c20c5d.md) | 345 | `declaration-track:2e7ebf4516d84fe665c20c5df12c348d535ba78204bcbada68086da495f5ecc1` |
| 35 | `lemma` | [isWeaklyRegular_singleton_iff](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-singleton-iff--83e4e1f2d36c010ae07f44ef.md) | 367 | `result-track:83e4e1f2d36c010ae07f44efab3ef141dcd3e132816122f0a7e596cd18109737` |
| 36 | `lemma` | [isWeaklyRegular_append_iff](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-append-iff--f0457f24529cedbf927cfeb4.md) | 371 | `result-track:f0457f24529cedbf927cfeb4aaec88ceb3b389a0765cbb69ecbf02c5958e0102` |
| 37 | `lemma` | [isWeaklyRegular_append_iff'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-append-iff--1436bf5028a853826230c725.md) | 385 | `result-track:1436bf5028a853826230c725ba7494597124493c9b9c68e45436e09fef8bfb36` |
| 38 | `lemma` | [nil](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/nil--1e8e6802a266f25215c81b40.md) | 398 | `result-track:1e8e6802a266f25215c81b40bc3774c1124ed13f719da4b410882bd6907868bf` |
| 39 | `lemma` | [cons](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/cons--2a7b9ad1c7d7b2c484ef8342.md) | 404 | `result-track:2a7b9ad1c7d7b2c484ef8342e4b6dbad6ecd1f2c5a72a1ef915feac360d36f6f` |
| 40 | `lemma` | [cons'](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/cons--6db8fa331989f972df1d6280.md) | 408 | `result-track:6db8fa331989f972df1d6280925cc0adc5783d325c8173d48971225e87d8526a` |
| 41 | `def` | [recIterModByRegular](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/recitermodbyregular--ca4340309add80de3a343eb0.md) | 421 | `declaration-track:ca4340309add80de3a343eb05cc13c55d78241c65ba4ba34d9de972e6f94a4dd` |
| 42 | `def` | [ndrecIterModByRegular](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/ndrecitermodbyregular--5875384dfeaf2664e5706850.md) | 441 | `declaration-track:5875384dfeaf2664e5706850623113a58805b22b544aa14d19dbd1869248fa67` |
| 43 | `def` | [recIterModByRegularWithRing](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/recitermodbyregularwithring--b3d7158b4a00d50abc5e4974.md) | 454 | `declaration-track:b3d7158b4a00d50abc5e4974d0bf5d83307b61db855dd666f10b3be127553759` |
| 44 | `def` | [ndrecIterModByRegularWithRing](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/ndrecitermodbyregularwithring--0ca7b80b5ec28227138d51e4.md) | 479 | `declaration-track:0ca7b80b5ec28227138d51e41c5156ff1e37008ce8c0155a1e27c59f076a4896` |
| 45 | `lemma` | [quot_ofList_smul_nontrivial](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/quot-oflist-smul-nontrivial--5c205425962dfbd36edbb391.md) | 497 | `result-track:5c205425962dfbd36edbb3916c9bfe936ea647a6119894ef941daa096c6a3101` |
| 46 | `lemma` | [nontrivial](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/nontrivial--b3d31ffd1747426d1ec38de6.md) | 502 | `result-track:b3d31ffd1747426d1ec38de647159f43101ed466f6fe02a6a759bd17500abf66` |
| 47 | `lemma` | [isRegular_iff_isWeaklyRegular_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isregular-iff-isweaklyregular-of-subset-jacobson-annihilator--ef5f4ecd336bf5bc3dcd8364.md) | 508 | `result-track:ef5f4ecd336bf5bc3dcd836454a22b1621758bd2e77c3d9eb64ae115c935a816` |
| 48 | `lemma` | [_root_.IsLocalRing.isRegular_iff_isWeaklyRegular_of_subset_maximalIdeal](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-islocalring-isregular-iff-isweaklyregular-of-subset-maximalideal--788f7e079088dbbcee41f153.md) | 515 | `result-track:788f7e079088dbbcee41f153d8b762be872728b0829952f4814a7f38b93e12e4` |
| 49 | `lemma` | [eq_nil_of_isRegular_on_artinian](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/eq-nil-of-isregular-on-artinian--384e5435994bebd15c307b4e.md) | 525 | `result-track:384e5435994bebd15c307b4e5a9d8620a8daeeaddfb3bf627ba4f36ed52d43ae` |
| 50 | `lemma` | [IsWeaklyRegular.isWeaklyRegular_lTensor](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-isweaklyregular-ltensor--b118cc8d40e305441db3d2f0.md) | 535 | `result-track:b118cc8d40e305441db3d2f057738bc3d6ad56c8a902f62293f4651f499f4367` |
| 51 | `lemma` | [IsWeaklyRegular.isWeaklyRegular_rTensor](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-isweaklyregular-rtensor--e58dc035a6b9e9ca4a712a44.md) | 544 | `result-track:e58dc035a6b9e9ca4a712a443f50a6254039a1a525e8ebb20917a69ea9102d2f` |
| 52 | `lemma` | [map_first_exact_on_four_term_right_exact_of_isSMulRegular_last](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/map-first-exact-on-four-term-right-exact-of-issmulregular-last--d09d80c158716118d7c48c34.md) | 554 | `result-track:d09d80c158716118d7c48c349c370a5199abcad10988e4b7c91fecf4b5ff7849` |
| 53 | `lemma` | [IsWeaklyRegular.swap](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-swap--24c988f65bb7c07b7e28904e.md) | 579 | `result-track:24c988f65bb7c07b7e28904e8e5be788c4f71c94cb0c8691f3dde0c25771ce30` |
| 54 | `lemma` | [IsWeaklyRegular.prototype_perm](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-prototype-perm--e330dc221e4c813a0c9c5a71.md) | 599 | `result-track:e330dc221e4c813a0c9c5a71c664df1212837f10cf5fa77038e83dfb61103d77` |
| 55 | `lemma` | [IsWeaklyRegular.of_perm_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isweaklyregular-of-perm-of-subset-jacobson-annihilator--b37caf9d6cc96153b704214c.md) | 633 | `result-track:b37caf9d6cc96153b704214c7bf840d0693407ea583d6e72e04f487686fd1ac3` |
| 56 | `lemma` | [IsRegular.of_perm_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/isregular-of-perm-of-subset-jacobson-annihilator--8cd92292b0ba6eae2915540a.md) | 650 | `result-track:8cd92292b0ba6eae2915540a640fb0b7c5af43bc91c575bee34af0d989193eaa` |
| 57 | `lemma` | [_root_.IsLocalRing.isWeaklyRegular_of_perm_of_subset_maximalIdeal](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-islocalring-isweaklyregular-of-perm-of-subset-maximalideal--caa66d619509cef336380bbb.md) | 658 | `result-track:caa66d619509cef336380bbbebc18a981407b60f8f458f904345494846f70f5c` |
| 58 | `lemma` | [_root_.IsLocalRing.isRegular_of_perm](../../../../mathematics/Algebra/RegularSequence/Variant936538aafdb9044ab12c93b54a402a99e6869a6837882aa96660bebef5350431.lean/declarations/root-islocalring-isregular-of-perm--f3f63333d525ca9e975de2f4.md) | 665 | `result-track:f3f63333d525ca9e975de2f45ec31dcc9f0ca3850eb197c67b22612b4ee428c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
