# Verification target: GRWTSK.Algebra.Basic.Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd1ed5aa4add397a15cacedfd77155c23ee4896e",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd1ed5aa4add397a15cacedfd77155c23ee4896e`.

Source path: `GRWTSK/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.MinimalPrime.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/instance--850e5041d84a3a527b84a88f.md) | 69 | `declaration-track:850e5041d84a3a527b84a88f9f21c75a5c7a564250b250ebda6526a0ec860ff0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/instance--a55937e5ce189232a18f89f2.md) | 74 | `declaration-track:a55937e5ce189232a18f89f2f1a154a99018cb72d1a225c1c4d37b2b2009b265` |
| 3 | `def` | [equivSubtype](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/equivsubtype--c32b1a375399781e2460d0af.md) | 81 | `declaration-track:c32b1a375399781e2460d0afe5e864e7ac4d19628517157aad1a613c70d0dd83` |
| 4 | `theorem` | [range_asIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/range-asideal--d8da69960a04ea93dcc55b13.md) | 87 | `result-track:d8da69960a04ea93dcc55b13afda26c03f0ec24b29f72dc4b7627c710f8811d7` |
| 5 | `def` | [primeSpectrumProdOfSum](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/primespectrumprodofsum--7c116c68dedca2f5d9a9594e.md) | 94 | `declaration-track:7c116c68dedca2f5d9a9594efc9465de77c5ea4bc398ec4df8a78ed642b2801e` |
| 6 | `def` | [primeSpectrumProd](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/primespectrumprod--80f5815e5fe65f2b94e294fd.md) | 100 | `declaration-track:80f5815e5fe65f2b94e294fdd99d5dec678af6d41c2c5cc15707eba1322514df` |
| 7 | `theorem` | [primeSpectrumProd_symm_inl_asIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/primespectrumprod-symm-inl-asideal--2145957ab9becf1d36527675.md) | 119 | `result-track:2145957ab9becf1d36527675be561c5b20a7c6ae6a39a024a844a5bc44eab485` |
| 8 | `theorem` | [primeSpectrumProd_symm_inr_asIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/primespectrumprod-symm-inr-asideal--a22cc5e302266e228d72f3df.md) | 125 | `result-track:a22cc5e302266e228d72f3df80adbe7b6cb74f4e12032139b57c3377e4111c3a` |
| 9 | `def` | [zeroLocus](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus--18978c51787aaaaa6926552b.md) | 138 | `declaration-track:18978c51787aaaaa6926552b9b68dc584aa77624464da8a16559f36720b47029` |
| 10 | `theorem` | [mem_zeroLocus](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/mem-zerolocus--7976e6a4859a86b73b2084cd.md) | 142 | `result-track:7976e6a4859a86b73b2084cd669f5ffd48c952177218ff2695a96902ecf2460e` |
| 11 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-span--a4ef98ac2479731ac274db10.md) | 146 | `result-track:a4ef98ac2479731ac274db1067b197c8461cfe807db3cd2e58a1bd95363be26a` |
| 12 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal--07ce8c91bd910ed02c3b8089.md) | 158 | `declaration-track:07ce8c91bd910ed02c3b808931a05d3361fa5b968392cad6b862d9429683576a` |
| 13 | `theorem` | [coe_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/coe-vanishingideal--3ed29d4a63a03ea59c4f80d0.md) | 161 | `result-track:3ed29d4a63a03ea59c4f80d0020fe8dfcb19a19425454805443905f4ff6c7296` |
| 14 | `theorem` | [mem_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/mem-vanishingideal--7c0dfa3a245fd1ebca329f5d.md) | 168 | `result-track:7c0dfa3a245fd1ebca329f5def4b6fbc5e9ffb3b21ac16efbac9d31021a708cb` |
| 15 | `theorem` | [vanishingIdeal_singleton](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-singleton--ac2ec443990a6a1110ab79e3.md) | 173 | `result-track:ac2ec443990a6a1110ab79e3d6371fd7a104851e297860797a851c3e8bd126b5` |
| 16 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/subset-zerolocus-iff-le-vanishingideal--ed52554bd104ba9f1490e980.md) | 176 | `result-track:ed52554bd104ba9f1490e980931c4eb8cb2dcedfd8b7b71420dcfcc62e4ce0d5` |
| 17 | `theorem` | [gc](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/gc--c740aaf8a4895d029645de80.md) | 186 | `result-track:c740aaf8a4895d029645de80ec64e728b7cb537a6353942ba06224732392ef00` |
| 18 | `theorem` | [gc_set](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/gc-set--0efc06d1c237929e5416f34b.md) | 192 | `result-track:0efc06d1c237929e5416f34b6f54bd921dd594a9358c8184599b77f6218503e7` |
| 19 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/subset-zerolocus-iff-subset-vanishingideal--266ecc3fdf086fd49e33aac2.md) | 198 | `result-track:266ecc3fdf086fd49e33aac2c435823247824bdf897b4d1531a37bd0572e75e9` |
| 20 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/subset-vanishingideal-zerolocus--404edf0861071814d81533ae.md) | 204 | `result-track:404edf0861071814d81533ae2395e815c4166af43a03cff2304753e928b45db1` |
| 21 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/le-vanishingideal-zerolocus--b847fb1c97211cd6a7880c2d.md) | 207 | `result-track:b847fb1c97211cd6a7880c2d71c01b20a728977b26ea33741ae359923f7128b7` |
| 22 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-zerolocus-eq-radical--3bbdd61db19287372a772980.md) | 211 | `result-track:3bbdd61db19287372a77298085b05f2a0a2a0f989ef1b35b3863ee02b9f843e6` |
| 23 | `theorem` | [nilradical_eq_iInf](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/nilradical-eq-iinf--46d9209c95dada54fd08aad6.md) | 217 | `result-track:46d9209c95dada54fd08aad6732b9ccfd81d5189da44c39a48687f8502dd59c2` |
| 24 | `theorem` | [vanishingIdeal_univ](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-univ--dce33d152e6af0536456ae51.md) | 220 | `result-track:dce33d152e6af0536456ae519d2b20f41d4bf3e2d32bec41b4f69fab12faa8d4` |
| 25 | `theorem` | [zeroLocus_radical](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-radical--b4876fbb41ceb8baaf7c5954.md) | 224 | `result-track:b4876fbb41ceb8baaf7c59540225365399d72706d7b92a7133164136e5cbb5bf` |
| 26 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/subset-zerolocus-vanishingideal--940a7fee6a8a63fd8ea97171.md) | 227 | `result-track:940a7fee6a8a63fd8ea97171734b327353c1673fd976475c526ae05e29144541` |
| 27 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-anti-mono--3afd30f7994c7469693dc033.md) | 231 | `result-track:3afd30f7994c7469693dc0333540751aa3bb71809a3d5b6b9668ffaf24d121f6` |
| 28 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-anti-mono-ideal--2b39ff7147be1f886b0a9285.md) | 234 | `result-track:2b39ff7147be1f886b0a9285c2b957e2aa7321cfa76aa0a7c912f76574e31a38` |
| 29 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-anti-mono--66dc616d7fcc577e9f1e4e10.md) | 238 | `result-track:66dc616d7fcc577e9f1e4e10aeda8c8edb0ea1260bb0b4bf3ba12a656b4c852d` |
| 30 | `theorem` | [zeroLocus_subset_zeroLocus_iff](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-subset-zerolocus-iff--8ace5b4255bd2081742e5928.md) | 242 | `result-track:8ace5b4255bd2081742e59289d04ce36fe705da80cedeff6c81acf6a2db67f00` |
| 31 | `theorem` | [zeroLocus_subset_zeroLocus_singleton_iff](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-subset-zerolocus-singleton-iff--8d5eddeaa364cb565de8b478.md) | 246 | `result-track:8d5eddeaa364cb565de8b478218fa25098b6dda34070076bf68b630885d4bd3e` |
| 32 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-bot--613efea3459767e7cb9c7763.md) | 251 | `result-track:613efea3459767e7cb9c776387d7a547ec2bfa58ff802d0b40818b55596c0b00` |
| 33 | `lemma` | [zeroLocus_nilradical](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-nilradical--9ad1663663cc34d78a0ca6da.md) | 255 | `result-track:9ad1663663cc34d78a0ca6da15ee28e701281eb09c1df837f2bc83b01c4275a1` |
| 34 | `theorem` | [zeroLocus_singleton_zero](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-singleton-zero--b41e6c712f8a74580fcaf541.md) | 259 | `result-track:b41e6c712f8a74580fcaf541745abfcadd18ab5eb6bf9962ebb75298efb0c3b8` |
| 35 | `theorem` | [zeroLocus_empty](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-empty--1196698d921ce58e595037db.md) | 263 | `result-track:1196698d921ce58e595037db3d7c5df25e687835ba107ae4f4c07273a0c0c561` |
| 36 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-empty--6137cabc63424d973ab02267.md) | 267 | `result-track:6137cabc63424d973ab0226780340aa7f3497b6d61ec7fbde00f8b75ef4e88e7` |
| 37 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-empty-of-one-mem--df51c5f61427c3da4120265c.md) | 270 | `result-track:df51c5f61427c3da4120265c2cc2ddc4dd9841c3f4e588b671dabdfb30650921` |
| 38 | `theorem` | [zeroLocus_singleton_one](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-singleton-one--d7de7b8a44b3d95d8cfab41b.md) | 281 | `result-track:d7de7b8a44b3d95d8cfab41bf1ee75d52d4e0eb859e634049076206af2525990` |
| 39 | `theorem` | [zeroLocus_empty_iff_eq_top](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-empty-iff-eq-top--84a1b7c19ec9a7d6fc6d8549.md) | 284 | `result-track:84a1b7c19ec9a7d6fc6d85497ec4021b37052292971ae45c54a12afe1ff2f4be` |
| 40 | `theorem` | [zeroLocus_univ](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-univ--890a293b0972b62bb81870ee.md) | 295 | `result-track:890a293b0972b62bb81870ee38e0d5bdecea069d2fed4018a0b0075a477b1560` |
| 41 | `theorem` | [vanishingIdeal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-eq-top-iff--eb6c5edba9c51734c28d3fa9.md) | 298 | `result-track:eb6c5edba9c51734c28d3fa96a1a599b2d71def2abd4b9bf33f82887db62bff4` |
| 42 | `theorem` | [zeroLocus_eq_univ_iff](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-eq-univ-iff--3d530ff6d29733239180574d.md) | 302 | `result-track:3d530ff6d29733239180574d9e4b742a4ae62adbe60156cd49440893eba892f1` |
| 43 | `theorem` | [zeroLocus_sup](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-sup--ee0e94dcfb5cfd6d062841c6.md) | 308 | `result-track:ee0e94dcfb5cfd6d062841c687c6886a7d116e5a8d29c8a72b41555d35914070` |
| 44 | `theorem` | [zeroLocus_union](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-union--bdfef943a955250a901110a2.md) | 312 | `result-track:bdfef943a955250a901110a2f3b7a98267b25ee399346c23891296a2fecb2356` |
| 45 | `theorem` | [vanishingIdeal_union](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-union--fea250a5b098c917eba90680.md) | 315 | `result-track:fea250a5b098c917eba906808fbbf9c70e34ee3f6a20877df3ab6ab68e952bae` |
| 46 | `theorem` | [zeroLocus_iSup](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-isup--fff439b75b0ac352ae96f8b9.md) | 319 | `result-track:fff439b75b0ac352ae96f8b9f828b3571ee0b11b8e6c1d04656d091c6d70b452` |
| 47 | `theorem` | [zeroLocus_iUnion](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-iunion--0f88f5eab392ff98928362fd.md) | 323 | `result-track:0f88f5eab392ff98928362fdf80ecd74747a8ce7e92aa76598e76edc45bab73a` |
| 48 | `theorem` | [zeroLocus_iUnion₂](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-iunion--09f31c2a66a3f1f009e1fdd5.md) | 327 | `result-track:09f31c2a66a3f1f009e1fdd5918edef49dc8a7b5dbac8d570321d38f03b14798` |
| 49 | `theorem` | [zeroLocus_bUnion](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-bunion--766a27ab77118e80317116ae.md) | 331 | `result-track:766a27ab77118e80317116ae5cd39fd53603c215b9aa4b132893e9d646666774` |
| 50 | `theorem` | [vanishingIdeal_iUnion](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/vanishingideal-iunion--2390d4027bfcddfabe7c323a.md) | 334 | `result-track:2390d4027bfcddfabe7c323a88e08a1dabb4c81d39059db1a57c2b3ca211d5c9` |
| 51 | `theorem` | [zeroLocus_inf](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-inf--63a3147015d3966b3e7a6ee8.md) | 338 | `result-track:63a3147015d3966b3e7a6ee8ccc51383c8599c2f731bec29684fce23bca61457` |
| 52 | `theorem` | [union_zeroLocus](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/union-zerolocus--5c00b6f04dc4bd15d1855f70.md) | 342 | `result-track:5c00b6f04dc4bd15d1855f70a446079943f9ba4bbd47cf39834e421fe2fbc024` |
| 53 | `theorem` | [zeroLocus_mul](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-mul--5126290210128daa8037af6b.md) | 347 | `result-track:5126290210128daa8037af6bdad81975f43b43d555377949d99cfb2f34b808be` |
| 54 | `theorem` | [zeroLocus_singleton_mul](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-singleton-mul--cab8bb1b9fea07794b115cfe.md) | 351 | `result-track:cab8bb1b9fea07794b115cfebcef277d620f5da64b3d0f22f3bb9f191e3ce7de` |
| 55 | `theorem` | [zeroLocus_pow](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-pow--4c841d7f5daf950061b1bc5b.md) | 356 | `result-track:4c841d7f5daf950061b1bc5b7e6b6258919f0a8144a8a3dbca95560900948793` |
| 56 | `theorem` | [zeroLocus_singleton_pow](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-singleton-pow--2979d7a695316c9ffaac5da6.md) | 361 | `result-track:2979d7a695316c9ffaac5da671f15a7d0326d471decce851612763b0d47c4f96` |
| 57 | `theorem` | [sup_vanishingIdeal_le](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/sup-vanishingideal-le--4eb6e430c39ea1a2d260ac22.md) | 365 | `result-track:4eb6e430c39ea1a2d260ac22d2854696310be919cb9528b59254994f09673944` |
| 58 | `theorem` | [mem_compl_zeroLocus_iff_notMem](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/mem-compl-zerolocus-iff-notmem--64536263f08b1741205a60fa.md) | 373 | `result-track:64536263f08b1741205a60fae31d0512b8bda27c41b63be2035f3846af08c37b` |
| 59 | `lemma` | [zeroLocus_insert_zero](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-insert-zero--fb8bbd92fefd947bf85873c3.md) | 381 | `result-track:fb8bbd92fefd947bf85873c3096b2ec024b28b6922994b385683969a7f558a9e` |
| 60 | `lemma` | [zeroLocus_diff_singleton_zero](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-diff-singleton-zero--4b623e3a26623f37bb689192.md) | 385 | `result-track:4b623e3a26623f37bb689192868a38ff73129dd2b6a0fe6df54d23fc7b24807e` |
| 61 | `lemma` | [zeroLocus_smul_of_isUnit](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/zerolocus-smul-of-isunit--523e61204089f18cb7abb430.md) | 388 | `result-track:523e61204089f18cb7abb430a3e194731e9717be17583342d10b90901b54d7d8` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/instance--412211600d0fbed7d3c5bbaf.md) | 402 | `declaration-track:412211600d0fbed7d3c5bbafab3a1c20f9ef397ce0c661a602604918730d6d1d` |
| 63 | `theorem` | [asIdeal_le_asIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/asideal-le-asideal--f0291dd86a37a303b997301e.md) | 406 | `result-track:f0291dd86a37a303b997301ec441197e432fc33d5d7232e5eaca317d423905ae` |
| 64 | `theorem` | [asIdeal_lt_asIdeal](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/asideal-lt-asideal--93431c67f22477809ef5c507.md) | 410 | `result-track:93431c67f22477809ef5c507aea1c269a24908d0558b052d5a33f239aac53976` |
| 65 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/instance--c0e21c949210682bc98e9c64.md) | 413 | `declaration-track:c0e21c949210682bc98e9c649486aa8abf8f0d981bb8e7d495ed41da3eb18d87` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/instance--3a8fc92b4c7a5accb54e1ef2.md) | 417 | `declaration-track:3a8fc92b4c7a5accb54e1ef2d19497f00adcc284f09ae37400d28ffff673ae23` |
| 67 | `lemma` | [isMax_iff](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/ismax-iff--c8bf55bde970e7ef3705ab6d.md) | 422 | `result-track:c8bf55bde970e7ef3705ab6d6221f0f75f027f540344abb91caca6f616465266` |
| 68 | `lemma` | [isMin_iff](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/ismin-iff--2fbe512829e8a8dccdc43290.md) | 429 | `result-track:2fbe512829e8a8dccdc432909bc679ee793b1c68439a8532983a3bf12c579b2f` |
| 69 | `theorem` | [exists_primeSpectrum_prod_le](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/exists-primespectrum-prod-le--2eb1c8a0387fc6b86e757cad.md) | 446 | `result-track:2eb1c8a0387fc6b86e757cad4465fbad80325de3b6abd841950ec6082ca22d05` |
| 70 | `theorem` | [exists_primeSpectrum_prod_le_and_ne_bot_of_domain](../../../../mathematics/Algebra/Basic/Variant9af3970783b900c0d7652c80c836bf994fdbf827d243f872b2e317af07dfec61.lean/declarations/exists-primespectrum-prod-le-and-ne-bot-of-domain--c2cd5cfb159926da843e5e35.md) | 478 | `result-track:c2cd5cfb159926da843e5e35499bc918a15f5ed0e31ccfdef6c30834caf25c58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
