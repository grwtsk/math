# Verification target: GRWTSK.Algebra.Limits.Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6389c9ad2d828799cd7a8c3860ff2a4b589f0ae`.

Source path: `GRWTSK/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/semiringobj--d9b1d851d815e30474be8a87.md) | 50 | `declaration-track:d9b1d851d815e30474be8a87e5748017cde9c76c99fc5bd31a3333a0ae9b4f0c` |
| 2 | `def` | [sectionsSubsemiring](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/sectionssubsemiring--8ecf11da3587e743be7d9fa5.md) | 59 | `declaration-track:8ecf11da3587e743be7d9fa5ab790ea8b54733ed4d36ac746e788f8b516d18da` |
| 3 | `instance` | [limitSemiring](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitsemiring--49bcdaa24b883b4775eebc9c.md) | 70 | `declaration-track:49bcdaa24b883b4775eebc9cc475852b216db7c47eb1a82f35b5e23741f5804c` |
| 4 | `def` | [limitπRingHom](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limit-ringhom--9cf75bf1eca48da6b8241a44.md) | 77 | `declaration-track:9cf75bf1eca48da6b8241a44c2623031bb088bf68c315daae899d0308dd5d8cb` |
| 5 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitcone--71b4ce33ca4a68619670eac7.md) | 96 | `declaration-track:71b4ce33ca4a68619670eac7f1a7f1a8c4c0e9420fd5f4df3eb1c97ab9f09fcf` |
| 6 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitconeislimit--8aa1bd8006392e4ef4278410.md) | 108 | `declaration-track:8aa1bd8006392e4ef427841017c8929ef3a2b56e9543f77e022e5ef8f488f1ad` |
| 7 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimitsofsize--733f7b51f98e50d83b5e0483.md) | 124 | `declaration-track:733f7b51f98e50d83b5e0483cac00cc1d8032023f71b6373b78a115d32edfcdb` |
| 8 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimits--a0e1ba54d631d69d131e9171.md) | 130 | `declaration-track:a0e1ba54d631d69d131e9171db333923a222694c0f1d779db8b53b7382e90715` |
| 9 | `def` | [forget₂AddCommMonPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-addcommmonpreserveslimitsaux--7f422f5d6959414fcf41edb9.md) | 138 | `declaration-track:7f422f5d6959414fcf41edb9901251f209fbd7d8144681bd713ca246c920cfa6` |
| 10 | `instance` | [forget₂AddCommMonPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-addcommmonpreserveslimitsofsize--fa628f56e1293301ac890dd9.md) | 146 | `declaration-track:fa628f56e1293301ac890dd97455908cb2f7d5b3ffda5a661a348ec248e3d050` |
| 11 | `instance` | [forget₂AddCommMonPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-addcommmonpreserveslimits--89a5deec0bd671e3abcffa3c.md) | 155 | `declaration-track:89a5deec0bd671e3abcffa3c781b07c1d6f5acdbf47223692fe2726fce8d0463` |
| 12 | `def` | [forget₂MonPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-monpreserveslimitsaux--aa0631cdc379b30077d241f2.md) | 163 | `declaration-track:aa0631cdc379b30077d241f22ba87bdb020502f258ebcb59be18f32131f76748` |
| 13 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-monpreserveslimitsofsize--6624543d190db2145ca51b4d.md) | 171 | `declaration-track:6624543d190db2145ca51b4d9f24576d11162f9cbda8c7a1ef82c6b9a38876d4` |
| 14 | `instance` | [forget₂MonPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-monpreserveslimits--6e2d9e451c65bf2a2e62cb16.md) | 180 | `declaration-track:6e2d9e451c65bf2a2e62cb169624037a541bd752133f4ec20d340f8f036e104c` |
| 15 | `instance` | [forgetPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimitsofsize--0c8ae315c4d6e18822284c28.md) | 187 | `declaration-track:0c8ae315c4d6e18822284c281ebf18d97aa814914dd1855677055eac5a7b78cb` |
| 16 | `instance` | [forgetPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimits--97326f55851b01545b66414b.md) | 196 | `declaration-track:97326f55851b01545b66414b6e41f2ac1d935395d63254751e123728ee3f3df7` |
| 17 | `abbrev` | [CommSemiRingCatMax.](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/commsemiringcatmax--35ef12c13aafed40ba4a0e05.md) | 206 | `declaration-track:35ef12c13aafed40ba4a0e059a200729bf6fd3676c5b3dffa41aae95a83ca240` |
| 18 | `instance` | [commSemiringObj](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/commsemiringobj--87d8e91eb196cda0b30ddd12.md) | 212 | `declaration-track:87d8e91eb196cda0b30ddd129a7d14be06d8b99ee9a0d4237dbb404689894dca` |
| 19 | `instance` | [limitCommSemiring](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitcommsemiring--1ef076e2f797be7fc3b3cf11.md) | 219 | `declaration-track:1ef076e2f797be7fc3b3cf11194d3d305652f381f52afdada1d3eeab00aae8fe` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/instance--8c7bc369f7541df78e6273ae.md) | 231 | `declaration-track:8c7bc369f7541df78e6273ae5bc57840245a7ea033cbe779c8e1e46bc582842b` |
| 21 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitcone--0715c7a8703b8de40b12d549.md) | 265 | `declaration-track:0715c7a8703b8de40b12d549ab6bbd20b9b2a45a6221eb5c276a4cb460bf131e` |
| 22 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitconeislimit--85bc79e70825e78602ee6120.md) | 273 | `declaration-track:85bc79e70825e78602ee6120a14da066445a45582058447d253b7217abec6407` |
| 23 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimitsofsize--5cdcbd8fca49a306174c7c82.md) | 280 | `declaration-track:5cdcbd8fca49a306174c7c82b42d8df4ededbcd7cfead6554c2fa1c777424d39` |
| 24 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimits--db93e2a17aaa81ab345cdf9a.md) | 287 | `declaration-track:db93e2a17aaa81ab345cdf9ad9125b56041126c9c6dbfe3bcc367cfd525e310c` |
| 25 | `instance` | [forget₂SemiRingPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-semiringpreserveslimitsofsize--3264188017272d9149fb1fa3.md) | 294 | `declaration-track:3264188017272d9149fb1fa3e164ca04a5cc7f643acb03ac73c7381af1ca0836` |
| 26 | `instance` | [forget₂SemiRingPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-semiringpreserveslimits--ed7234818854a8d552306f94.md) | 303 | `declaration-track:ed7234818854a8d552306f94ef8e78b8d03fa191edfd7109dc7e5b0805d99d19` |
| 27 | `instance` | [forgetPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimitsofsize--282fb92e42690d6e96a421f0.md) | 312 | `declaration-track:282fb92e42690d6e96a421f02158ae9b1c0b4bd3ffefc5ac7057858e7512c453` |
| 28 | `instance` | [forgetPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimits--311705a6226a72b506d8bbd1.md) | 321 | `declaration-track:311705a6226a72b506d8bbd12e08b9d56dbcbd8fd77546753d16dbc4fb9bc3a9` |
| 29 | `abbrev` | [RingCatMax.](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/ringcatmax--c7df85bc377bef388591b017.md) | 331 | `declaration-track:c7df85bc377bef388591b01702a9b566dd356b58875b894ecc2cf32033b1e525` |
| 30 | `instance` | [ringObj](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/ringobj--4b40cf86ccf70719f92c1baf.md) | 337 | `declaration-track:4b40cf86ccf70719f92c1baf9e7991a64e5af96ddfbd0c8a473229bde72152ae` |
| 31 | `def` | [sectionsSubring](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/sectionssubring--beb058a30e459d0e1d6909e8.md) | 345 | `declaration-track:beb058a30e459d0e1d6909e8a3618c77d2288be1bd7c2545623d09eeed1f462b` |
| 32 | `instance` | [limitRing](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitring--561e901fa8374455b1d7722a.md) | 356 | `declaration-track:561e901fa8374455b1d7722ab807e50ed4588b4903e5ca498163ed5bce29ffae` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/instance--6333dfb5a41d16cf139470ae.md) | 367 | `declaration-track:6333dfb5a41d16cf139470ae4d7817320d6532781a41d90a720d926fe1d22b33` |
| 34 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitcone--5c40cdbed67d127c710bfc65.md) | 387 | `declaration-track:5c40cdbed67d127c710bfc653bac3ab00c1c0b953c86a3b88adb35253fbcc219` |
| 35 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitconeislimit--b799f4acd5d08b5c935c0458.md) | 395 | `declaration-track:b799f4acd5d08b5c935c0458a808e495533cb45444eb1fc621e5d1214944c8cf` |
| 36 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimitsofsize--f88acbce3bc9182626261685.md) | 402 | `declaration-track:f88acbce3bc9182626261685ebeb8ee29f5504ec99496e442e3e8021c886ffe8` |
| 37 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimits--7dbe1e02c81298a824e467c2.md) | 409 | `declaration-track:7dbe1e02c81298a824e467c25df80e9b862051822282b57f65fe0e3002730f37` |
| 38 | `instance` | [forget₂SemiRingPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-semiringpreserveslimitsofsize--c51518e85bdb290b1cbb33dc.md) | 416 | `declaration-track:c51518e85bdb290b1cbb33dcbb20a2d3490907ce65583a74d3b317ef2b8649a9` |
| 39 | `instance` | [forget₂SemiRingPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-semiringpreserveslimits--a811d4d451508709e8d5aeab.md) | 425 | `declaration-track:a811d4d451508709e8d5aeabcb8f1d6dbe64ad5289090ef2ac960378e3873cae` |
| 40 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-addcommgrouppreserveslimitsaux--ce8cd66d04632bd88fef70fd.md) | 432 | `declaration-track:ce8cd66d04632bd88fef70fdf6957f9a0cb00d09fc57b679da37c9513a74c85a` |
| 41 | `instance` | [forget₂AddCommGroupPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-addcommgrouppreserveslimitsofsize--8207bf8b220d687874a4532f.md) | 442 | `declaration-track:8207bf8b220d687874a4532ffe53eb26da0209a25910b5d5052dc957007f3e6b` |
| 42 | `instance` | [forget₂AddCommGroupPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-addcommgrouppreserveslimits--c9f663dd89c35488fb26da26.md) | 451 | `declaration-track:c9f663dd89c35488fb26da26334dbdc4f880163d3e95ce2d5760b2ecd581d60b` |
| 43 | `instance` | [forgetPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimitsofsize--c73dbfbf7d920ebb7a5e9d37.md) | 460 | `declaration-track:c73dbfbf7d920ebb7a5e9d373a838fc145ba11d9112224f538aec9732bd6050a` |
| 44 | `instance` | [forgetPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimits--a49e5f6fee859a1418875900.md) | 468 | `declaration-track:a49e5f6fee859a1418875900c7e08fbb7dabdc1cec47797c555b49b79d6901e4` |
| 45 | `abbrev` | [CommRingCatMax.](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/commringcatmax--49b30fd41a2e76be0ea0b5d7.md) | 478 | `declaration-track:49b30fd41a2e76be0ea0b5d7e930f37006b963aee61ad99391d72fe3184aede5` |
| 46 | `instance` | [commRingObj](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/commringobj--0caa6220a2ddde784b1d4ed1.md) | 484 | `declaration-track:0caa6220a2ddde784b1d4ed1454f9da243c3366c9fd7bfe7842efe48feff750c` |
| 47 | `instance` | [limitCommRing](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitcommring--3bdd6ce1ab196f12c1e21f91.md) | 491 | `declaration-track:3bdd6ce1ab196f12c1e21f917a8923c9ee03dea5a8bba2e6436f8f41022964ca` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/instance--78551db6018f320abf7166b4.md) | 503 | `declaration-track:78551db6018f320abf7166b4752af538ac67170e0b2156c3dc259c94c795e13d` |
| 49 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitcone--4b39467ad7ac87e8dafb76e5.md) | 542 | `declaration-track:4b39467ad7ac87e8dafb76e52c5f21718b211f2d29bc61d37fcc50f2f777742b` |
| 50 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/limitconeislimit--dabc14c75ff9e57d99a5444b.md) | 552 | `declaration-track:dabc14c75ff9e57d99a5444b31518ca0d1d61d65e5f5f30b081799598692fb1a` |
| 51 | `instance` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimitsofsize--bcae4ae4155199b7bf5c7f7b.md) | 559 | `declaration-track:bcae4ae4155199b7bf5c7f7bec386b17b182a44909bcd3406f53dba1e0e5d82c` |
| 52 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/haslimits--449e9e47d705b55c6f597d21.md) | 568 | `declaration-track:449e9e47d705b55c6f597d21257ddeff903f70028d56d0782531b6a1b7d7a3b7` |
| 53 | `instance` | [forget₂RingPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-ringpreserveslimitsofsize--a433987b3c3e3e0c65ef9f3c.md) | 576 | `declaration-track:a433987b3c3e3e0c65ef9f3c1c371cda0e473ce1131b02acc88551009525b2d3` |
| 54 | `instance` | [forget₂RingPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-ringpreserveslimits--b16ccb5c23c37a95bf655274.md) | 585 | `declaration-track:b16ccb5c23c37a95bf6552742e28f8d9e840ab4b85461dcf9b377828287bc9ce` |
| 55 | `def` | [forget₂CommSemiRingPreservesLimitsAux](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-commsemiringpreserveslimitsaux--e86bee8a2b4a4bfd070a9a79.md) | 592 | `declaration-track:e86bee8a2b4a4bfd070a9a791bc5a90d52e07cfc687963c7c404d5b6ce0a9bea` |
| 56 | `instance` | [forget₂CommSemiRingPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-commsemiringpreserveslimitsofsize--30b0b9c79bc5d60a60478fc5.md) | 602 | `declaration-track:30b0b9c79bc5d60a60478fc5bb7be579d50c064ddd54c156beeab43355d049e7` |
| 57 | `instance` | [forget₂CommSemiRingPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forget-commsemiringpreserveslimits--4d6672998395aa6a56290a05.md) | 611 | `declaration-track:4d6672998395aa6a56290a05ee1eccd61faee6f6ae8631df494ddb82b9fc9935` |
| 58 | `instance` | [forgetPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimitsofsize--7ead50fe1ef976b1ae74269d.md) | 620 | `declaration-track:7ead50fe1ef976b1ae74269d586919f52d2a49c28fcdbd89794536ea0b75c32a` |
| 59 | `instance` | [forgetPreservesLimits](../../../../mathematics/Algebra/Limits/Variant8783936c5345b6e0cca6b2f444fb0136fd8f5895529f275b680728e9ec624938.lean/declarations/forgetpreserveslimits--ef4f4b8ecd70593fd1d83a42.md) | 629 | `declaration-track:ef4f4b8ecd70593fd1d83a42177e321c26aed925813651e18a32d6ed74ea3320` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
