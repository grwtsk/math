# Verification target: GRWTSK.Algebra.Basic.Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79cf73c914f625a55d598faf96e56ab883aec722",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79cf73c914f625a55d598faf96e56ab883aec722`.

Source path: `GRWTSK/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semiring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Pow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Archimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean--c7e2803afa29bde3547ceafc.md) | 41 | `declaration-track:c7e2803afa29bde3547ceafcbf7e856e9a4dd481418bb4f6b725cb0da0db84b0` |
| 2 | `class` | [MulArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/mularchimedean--57b6f0bbe54d07bc21005200.md) | 51 | `declaration-track:57b6f0bbe54d07bc21005200141be4181f92ad5f10644f020804cbfe083e508d` |
| 3 | `instance` | [OrderDual.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/orderdual-instmularchimedean--0adf3d3b1a4d112deaf21876.md) | 59 | `declaration-track:0adf3d3b1a4d112deaf218768ffcf4e194e1e7433bb6f31d31568eb07958f8f6` |
| 4 | `instance` | [Additive.instArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/additive-instarchimedean--baa101e0635a9ac0271627f8.md) | 66 | `declaration-track:baa101e0635a9ac0271627f82b7066a47729e77b00d5baaae2d54805378ca6c2` |
| 5 | `instance` | [Multiplicative.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/multiplicative-instmularchimedean--85d35eefd6b6016080ec7b38.md) | 70 | `declaration-track:85d35eefd6b6016080ec7b387c1039cce15230c38f417764d34651f73c99e9a3` |
| 6 | `theorem` | [exists_lt_pow](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-lt-pow--bcaee23f27ffbb35b267d8fc.md) | 75 | `result-track:bcaee23f27ffbb35b267d8fc9317d8cf4ff0f73f3dc9aec218a3f5ed546ad926` |
| 7 | `theorem` | [existsUnique_zpow_near_of_one_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/existsunique-zpow-near-of-one-lt--fd250339a6bcb8c1c27608c7.md) | 88 | `result-track:fd250339a6bcb8c1c27608c70041e2ae281223fd407a826d5c0f2ec4de3f53ca` |
| 8 | `theorem` | [existsUnique_zpow_near_of_one_lt'](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/existsunique-zpow-near-of-one-lt--a31349d301d3dd7af91e05f3.md) | 108 | `result-track:a31349d301d3dd7af91e05f37cd724054224064ed27a563d6ee8f0ee73e2ddd4` |
| 9 | `theorem` | [existsUnique_div_zpow_mem_Ico](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/existsunique-div-zpow-mem-ico--3fa42c74846bd4a89740d0eb.md) | 114 | `result-track:3fa42c74846bd4a89740d0ebb78a44d872d0f44209525b84c343430712afd9df` |
| 10 | `theorem` | [existsUnique_mul_zpow_mem_Ico](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/existsunique-mul-zpow-mem-ico--8eb0752b7c0a8757a4e1aeae.md) | 120 | `result-track:8eb0752b7c0a8757a4e1aeaecc0d99dd8475256ee81078f40da28430ef3bf0f6` |
| 11 | `theorem` | [existsUnique_add_zpow_mem_Ioc](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/existsunique-add-zpow-mem-ioc--897b8068c7cf39cb42560d13.md) | 127 | `result-track:897b8068c7cf39cb42560d13435c556e2fa8082cb5d38ba23673f6eb6d2d27b2` |
| 12 | `theorem` | [existsUnique_sub_zpow_mem_Ioc](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/existsunique-sub-zpow-mem-ioc--823e5ec8f83445cd091d1e26.md) | 135 | `result-track:823e5ec8f83445cd091d1e261400c46df7776eeaa5256f349ca37b7fe14e0b6f` |
| 13 | `theorem` | [exists_nat_ge](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-nat-ge--f86e60dfc3fdc967e32e03c8.md) | 147 | `result-track:f86e60dfc3fdc967e32e03c805c503a90169e340522a8ba2e74d47c8649130ea` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--8a26a82348b7c2deb09e7774.md) | 152 | `declaration-track:8a26a82348b7c2deb09e777478a64727eebb0d5e3ce53ff42aee2da68070570c` |
| 15 | `lemma` | [exists_nat_gt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-nat-gt--4c5c180c32335117e91e4f46.md) | 163 | `result-track:4c5c180c32335117e91e4f46ebdef0d09aa41bd023b5ffb37110888793598517` |
| 16 | `theorem` | [add_one_pow_unbounded_of_pos](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/add-one-pow-unbounded-of-pos--2801cde235abb0662315243f.md) | 166 | `result-track:2801cde235abb0662315243f3145504a317b1e49f90d29047f99851457850493` |
| 17 | `lemma` | [pow_unbounded_of_one_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/pow-unbounded-of-one-lt--6d3bdbf21b2bd866f72bed8d.md) | 178 | `result-track:6d3bdbf21b2bd866f72bed8d40a4d02936b800896f2dc590d5c718ed261b1099` |
| 18 | `theorem` | [exists_int_ge](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-int-ge--b945cacbd94e6977277eda3d.md) | 189 | `result-track:b945cacbd94e6977277eda3d3b22f0c94b409c768b994db668fb3e9715f2e3a4` |
| 19 | `theorem` | [exists_int_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-int-le--2cf37ce933531e2e4232c123.md) | 191 | `result-track:2cf37ce933531e2e4232c1236d54fd42cc12d0131be64380511081ffba6d917c` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--100cd09740d614b7b45c3d8b.md) | 194 | `declaration-track:100cd09740d614b7b45c3d8b6abe72ac701cc42cca1248cafc21c854bad7a35a` |
| 21 | `theorem` | [exists_int_gt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-int-gt--12bf9d53057f4dcb50a9058b.md) | 205 | `result-track:12bf9d53057f4dcb50a9058ba66203b6f94f955114b2c9294ee8ce091b1d0690` |
| 22 | `theorem` | [exists_int_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-int-lt--80b03c0568a64d3a69ffd626.md) | 209 | `result-track:80b03c0568a64d3a69ffd6269658a23951e23411f9f73e6ed19ca3d7afd859d4` |
| 23 | `theorem` | [exists_floor](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-floor--b6f63a6d7d7fc4a35b720f66.md) | 213 | `result-track:b6f63a6d7d7fc4a35b720f6608304bee92724d1bc739ad667dedb6ef8f6ce89d` |
| 24 | `theorem` | [exists_nat_pow_near](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-nat-pow-near--8b771c2d107c2323d4f09e91.md) | 233 | `result-track:8b771c2d107c2323d4f09e918476b5d96a120d4a84fe39002cf4827bb33221d8` |
| 25 | `lemma` | [exists_nat_one_div_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-nat-one-div-lt--3f3555620096bf05fccc4581.md) | 249 | `result-track:3f3555620096bf05fccc45812cdf7c53cfb695b87d6a83f4e7506c4f2e3c42ed` |
| 26 | `theorem` | [exists_mem_Ico_zpow](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-mem-ico-zpow--824c0ffd63d6169b10096d8b.md) | 262 | `result-track:824c0ffd63d6169b10096d8b5f8d0a8c047009a403c837d19a9a4c9342b8bdf3` |
| 27 | `theorem` | [exists_mem_Ioc_zpow](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-mem-ioc-zpow--7edae1439a5e38aee8a9b087.md) | 281 | `result-track:7edae1439a5e38aee8a9b087836896af555826361486d402966b566b17e34072` |
| 28 | `theorem` | [exists_pow_lt_of_lt_one](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-pow-lt-of-lt-one--3ef193356d018ab04ca7a850.md) | 288 | `result-track:3ef193356d018ab04ca7a850d91540059a7824e825dc59921fa083a48f50b1f0` |
| 29 | `theorem` | [exists_nat_pow_near_of_lt_one](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-nat-pow-near-of-lt-one--c40f12515cfd0db99beebf48.md) | 299 | `result-track:c40f12515cfd0db99beebf489a0c392cd4c1f5845f332d829543d5d3ac20c7a9` |
| 30 | `lemma` | [exists_pow_btwn_of_lt_mul](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-pow-btwn-of-lt-mul--70bc3383c415a78795c9601c.md) | 309 | `result-track:70bc3383c415a78795c9601c382113dbd936b058461a2858be0ac9726a82425c` |
| 31 | `lemma` | [exists_zpow_btwn_of_lt_mul](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-zpow-btwn-of-lt-mul--060003e2e5dbc9a677885842.md) | 324 | `result-track:060003e2e5dbc9a677885842699a5406db4aecc3e1548638aa1ae4d0aee5a6ff` |
| 32 | `theorem` | [archimedean_iff_nat_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-iff-nat-lt--fe8c7c7c153879d34ec48229.md) | 349 | `result-track:fe8c7c7c153879d34ec4822901afa8e84d27f29781a3df0e277a1426028d7cff` |
| 33 | `theorem` | [archimedean_iff_nat_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-iff-nat-le--4a18922bb94d48323579738b.md) | 354 | `result-track:4a18922bb94d48323579738b7882f03b7a6d5d00c63ddc35536e657e199cbdde` |
| 34 | `theorem` | [archimedean_iff_int_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-iff-int-lt--5d8fef85159c3c8f5384eb32.md) | 360 | `result-track:5d8fef85159c3c8f5384eb32f48213ebc7690ca073a8acc86a3f1097776247ec` |
| 35 | `theorem` | [archimedean_iff_int_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-iff-int-le--fb1bacc0476504f34662a128.md) | 368 | `result-track:fb1bacc0476504f34662a128b5c879fe0543f7c1dc951598d4523e24b571c41f` |
| 36 | `theorem` | [archimedean_iff_rat_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-iff-rat-lt--00186ff27be9b7eef303bb2e.md) | 374 | `result-track:00186ff27be9b7eef303bb2e0db70cab250b51160935d94333a5061fd69c4b43` |
| 37 | `theorem` | [archimedean_iff_rat_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-iff-rat-le--7e91407499142e595ff6af90.md) | 381 | `result-track:7e91407499142e595ff6af907c09ff2d7fee732ad266e3f7957a3bbbe1004bf6` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--2abc7cf898a9f465e0cd8a6d.md) | 387 | `declaration-track:2abc7cf898a9f465e0cd8a6d0a653b7322937fa337b496abff9c07a650b1421d` |
| 39 | `theorem` | [exists_rat_gt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-rat-gt--66f4b0214358debdf586f70b.md) | 392 | `result-track:66f4b0214358debdf586f70b95b2d3f848493b761c930e7c906338aca1326d51` |
| 40 | `theorem` | [exists_rat_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-rat-lt--8cf714be54b57215d306f8d5.md) | 394 | `result-track:8cf714be54b57215d306f8d5383060a066d3cdf25d04e232ac690531443aa959` |
| 41 | `theorem` | [exists_rat_btwn](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-rat-btwn--bf3b72a4a6a457ad2ef263a6.md) | 398 | `result-track:bf3b72a4a6a457ad2ef263a6241f603a1d2bc54395b7609dc1de831cf8e7e33f` |
| 42 | `theorem` | [exists_pow_btwn](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-pow-btwn--522a7c9740792693cdfcfc78.md) | 416 | `result-track:522a7c9740792693cdfcfc78514915723ac7a475b8a495be7b77bdc128387ffc` |
| 43 | `theorem` | [exists_rat_pow_btwn](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-rat-pow-btwn--b54777eda92c11e998cb4280.md) | 445 | `result-track:b54777eda92c11e998cb428043812d207cdcf2ed51c824108df17b2bde91632e` |
| 44 | `theorem` | [le_of_forall_rat_lt_imp_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/le-of-forall-rat-lt-imp-le--498a5506f1319eb86449fef1.md) | 454 | `result-track:498a5506f1319eb86449fef136d14f48db6b59074bc3e496eace397207eeabec` |
| 45 | `theorem` | [le_of_forall_lt_rat_imp_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/le-of-forall-lt-rat-imp-le--9d21a4d8c688304b07ed75dd.md) | 459 | `result-track:9d21a4d8c688304b07ed75dde81aa7f14fd2b46e8d89494b41f9e866de104321` |
| 46 | `theorem` | [le_iff_forall_rat_lt_imp_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/le-iff-forall-rat-lt-imp-le--d4e8a7617d5926058a293771.md) | 464 | `result-track:d4e8a7617d5926058a293771c90bd9491b8b1221412479ba2dc78f7c93425a03` |
| 47 | `theorem` | [le_iff_forall_lt_rat_imp_le](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/le-iff-forall-lt-rat-imp-le--3c39ca3ae22939b8027dcc14.md) | 467 | `result-track:3c39ca3ae22939b8027dcc148d3e1170495c73ecbbe317f1ff52b416277cce63` |
| 48 | `theorem` | [eq_of_forall_rat_lt_iff_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/eq-of-forall-rat-lt-iff-lt--fa00e0fd456cdc82d7fe8e62.md) | 470 | `result-track:fa00e0fd456cdc82d7fe8e62418f5b07b91aef8853b63caa072e2b17385780ec` |
| 49 | `theorem` | [eq_of_forall_lt_rat_iff_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/eq-of-forall-lt-rat-iff-lt--d08c29593569dccee9b4985c.md) | 474 | `result-track:d08c29593569dccee9b4985c6cb0dad185806055f12b3d4f27440c789f5e137d` |
| 50 | `theorem` | [exists_pos_rat_lt](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-pos-rat-lt--69ed60e844c81df83d28d5d5.md) | 478 | `result-track:69ed60e844c81df83d28d5d54e32ea4c16282ab5d00d24e99c9aad2ae383896a` |
| 51 | `theorem` | [exists_rat_near](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/exists-rat-near--7adafa122772c99c7db647d0.md) | 481 | `result-track:7adafa122772c99c7db647d04079bde4911dfa0c433603319d0d37a5e539b260` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--e8ceac854eaee8748ba6ab13.md) | 488 | `declaration-track:e8ceac854eaee8748ba6ab13c66986ef7f533eb067550069a7af72445979fa38` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--22b4d38a7297e880b11291f6.md) | 493 | `declaration-track:22b4d38a7297e880b11291f68f5289293fa9d2bd6428f664b9135d34e708836f` |
| 54 | `instance` | [Nonneg.instArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/nonneg-instarchimedean--687d7f60aa746bf7dae8ba0d.md) | 500 | `declaration-track:687d7f60aa746bf7dae8ba0def41c39eaabaf14e72888aa298ab849bef57839c` |
| 55 | `instance` | [Nonneg.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/nonneg-instmularchimedean--b1f5c1c3dfd716bb6f023322.md) | 507 | `declaration-track:b1f5c1c3dfd716bb6f023322fcc853d91f3bd34d5141530506e7e1699826c2ae` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--13d410df061f37d64ab2e415.md) | 512 | `declaration-track:13d410df061f37d64ab2e41586338610958041713561f06f97d1b205758c055e` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--c034f90c644785184c2c613b.md) | 513 | `declaration-track:c034f90c644785184c2c613b70512cae1e7af07da443829f9468604ff56bec52` |
| 58 | `def` | [Archimedean.floorRing](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/archimedean-floorring--c8eb4fff739d8c156f1c1558.md) | 517 | `declaration-track:c8eb4fff739d8c156f1c15584eaaf75c027f7013e6cb820c3d34e819d7350eab` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/instance--6dd090fb5abef8ef0d4c3092.md) | 524 | `declaration-track:6dd090fb5abef8ef0d4c30922100fe6ec65283dac9a135a3ae40424dc2a99d1c` |
| 60 | `instance` | [Units.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/units-instmularchimedean--b696910afd5fc8474f54e015.md) | 531 | `declaration-track:b696910afd5fc8474f54e015ce16e6431868b55b4e2037e6b3235d2963662f57` |
| 61 | `instance` | [WithBot.instArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/withbot-instarchimedean--2a4bd5e4f40c88fdd88d0f3d.md) | 535 | `declaration-track:2a4bd5e4f40c88fdd88d0f3db8770363bb170d09290b5fae6a946e9bd783abbc` |
| 62 | `instance` | [WithZero.instMulArchimedean](../../../../mathematics/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/declarations/withzero-instmularchimedean--538df1ab65fdeaaccec49feb.md) | 546 | `declaration-track:538df1ab65fdeaaccec49feb18bc5d19bbe1f7b84eed93f85ba2f59872920e0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
