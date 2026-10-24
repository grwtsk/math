# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef34b06cff60c634df9ec888bdb06ad41b241450",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef34b06cff60c634df9ec888bdb06ad41b241450`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/islocalattarget--6d5e7eaf18c6ea04d6ccb61b.md) | 117 | `declaration-track:6d5e7eaf18c6ea04d6ccb61b4482022a1ad09c09c18d88cbf6ffe82df6ecf604` |
| 2 | `lemma` | [mk'](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/mk--93342b31f1f5be9058331188.md) | 135 | `result-track:93342b31f1f5be90583311880894f29d73c141a859bc830fcd2e5bc000df5487` |
| 3 | `instance` | [inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/inf--1a05c92d639664b81655d1d7.md) | 147 | `declaration-track:1a05c92d639664b81655d1d79e4915d9b3330a110390dae57abf854ca6c3aab2` |
| 4 | `lemma` | [of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-ispullback--063954a08c4bb613ed82f9a8.md) | 156 | `result-track:063954a08c4bb613ed82f9a8f64a641dc05c30e4a228acfa55ebe9a87916492a` |
| 5 | `theorem` | [restrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/restrict--dd8b857c40e8a811426e51e5.md) | 161 | `result-track:dd8b857c40e8a811426e51e56662de0ad0aabe654d2629c102776d9bc51c9b06` |
| 6 | `lemma` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-isup-eq-top--18bd8f37c848f4360d811439.md) | 164 | `result-track:18bd8f37c848f4360d8114397fa680605fcba20b9bd04ed75d2b99382c36ac2d` |
| 7 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-isup-eq-top--0b13e0d6fdbb426b8c04840f.md) | 174 | `result-track:0b13e0d6fdbb426b8c04840f2b27ad6eff68a51847932e65fb19eb75af014df2` |
| 8 | `lemma` | [of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-opencover--efc0cfd4660f134fb84f8ee1.md) | 178 | `result-track:efc0cfd4660f134fb84f8ee1998a0bfd883be457f7c7bb4dc20bdba444e97ac4` |
| 9 | `theorem` | [iff_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-opencover--ac81552ddc6ed5ee52cc36b4.md) | 182 | `result-track:ac81552ddc6ed5ee52cc36b42abb864a26128d1072eab31b6ed9110b78e74e98` |
| 10 | `lemma` | [of_range_subset_iSup](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-range-subset-isup--b1b76611eae70099c61a57ff.md) | 186 | `result-track:b1b76611eae70099c61a57ff786d589549b7522ad8a2854519a68c12d8bf5f60` |
| 11 | `instance` | [top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/top--1bef5a512befbe8b702d0290.md) | 206 | `declaration-track:1bef5a512befbe8b702d0290f3f8230004b0a39fb86d6d744857c7dc16fe60fa` |
| 12 | `class` | [IsLocalAtSource](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/islocalatsource--436bcea2d80c5fcc4f835946.md) | 217 | `declaration-track:436bcea2d80c5fcc4f835946a58a97d03bc9bf068d52c5a89c1938814bd390f2` |
| 13 | `lemma` | [mk'](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/mk--8fdff37ec461fe074057a958.md) | 235 | `result-track:8fdff37ec461fe074057a9589e2e1e0036b343cc98a912497a7f51113c4f672f` |
| 14 | `instance` | [inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/inf--0670fe5df2fabf4523251d45.md) | 254 | `declaration-track:0670fe5df2fabf4523251d452c0b9b9238dbd80950f180e6b21cbd5d0ee1870a` |
| 15 | `lemma` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/comp--1c39d82bef79aba5441db93a.md) | 264 | `result-track:1c39d82bef79aba5441db93afe6a7d6fd2b01d4eed9385db395ecb8eb4192f38` |
| 16 | `instance` | [respectsLeft_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/respectsleft-isopenimmersion--5066fc242a0cf75aff8331c0.md) | 269 | `declaration-track:5066fc242a0cf75aff8331c0cd4e43089ccaf55276e5fb3f6e43923fe6799117` |
| 17 | `lemma` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-isup-eq-top--3ad712d5fe360747ad876690.md) | 273 | `result-track:3ad712d5fe360747ad8766900de2aed91b92a79ccafda1a6f3a4935d4cfc2a36` |
| 18 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-isup-eq-top--3cce31d032495c13387d5437.md) | 280 | `result-track:3cce31d032495c13387d54379f310333c04edecd8748e6a0b8a99615522475f4` |
| 19 | `lemma` | [of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-opencover--ebec8cb5f60f66211a4a6cde.md) | 284 | `result-track:ebec8cb5f60f66211a4a6cdeae1c905839980cf9343fa9865037c3825465f021` |
| 20 | `theorem` | [iff_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-opencover--f936253107497e663bcd0407.md) | 291 | `result-track:f936253107497e663bcd04070b18dee2c559f7317492ab1234e38609add4022c` |
| 21 | `lemma` | [of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-isopenimmersion--27f571b5a16edb0a392382ed.md) | 296 | `result-track:27f571b5a16edb0a392382ed6e9ca7ebb3b104f6d330ffdaba4a2a63125ed313` |
| 22 | `lemma` | [isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/islocalattarget--b748b0f6915312720cfd3cbc.md) | 299 | `result-track:b748b0f6915312720cfd3cbc41c9bac8740c7bff05b751e58c06527bcd59815d` |
| 23 | `lemma` | [sigmaDesc](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/sigmadesc--fd531e7a8c4da47bfb66ebcd.md) | 309 | `result-track:fd531e7a8c4da47bfb66ebcdb8d93b090005eb4b8e2141f293dce7ec5b56bf85` |
| 24 | `instance` | [top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/top--c3de1bd2112136e6c6e31237.md) | 314 | `declaration-track:c3de1bd2112136e6c6e31237c915c293fe2b64fb40d7101827009d74275358ea` |
| 25 | `lemma` | [resLE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/resle--ff47e4766335a492c31c8325.md) | 321 | `result-track:ff47e4766335a492c31c8325aea8e65f681f264aca8fcd8a49da7c67edff450b` |
| 26 | `lemma` | [iff_exists_resLE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-exists-resle--23c38d90cb89ec2c3cba88c4.md) | 327 | `result-track:23c38d90cb89ec2c3cba88c4113627214d5c892af02fef3db4df845d39cc8640` |
| 27 | `def` | [AffineTargetMorphismProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/affinetargetmorphismproperty--fc942db172c6dab5ed5ab176.md) | 347 | `declaration-track:fc942db172c6dab5ed5ab176cb8126c7cf63f5cbcf960e63e56356cf859fda59` |
| 28 | `lemma` | [ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/ext--385b8df1fa0001cde9d2603c.md) | 353 | `result-track:385b8df1fa0001cde9d2603c95002818e755d394950d022e0288d9be87cd2f54` |
| 29 | `def` | [of](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of--bed3c07258ec3f51fc5229cd.md) | 358 | `declaration-track:bed3c07258ec3f51fc5229cd849cf0b24f344a459a1d2ce52a55226491518744` |
| 30 | `def` | [toProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/toproperty--251b2207f7ad8b8e547575a8.md) | 363 | `declaration-track:251b2207f7ad8b8e547575a894c27e90537b9420a7d27be3c4785d38c7aa9752` |
| 31 | `theorem` | [toProperty_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/toproperty-apply--230fdcfbd638ee3e3433201e.md) | 366 | `result-track:230fdcfbd638ee3e3433201ec282f90a6a1370afc90978f21d3fd7c05945d1e4` |
| 32 | `theorem` | [cancel_left_of_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/cancel-left-of-respectsiso--78ddacfc20bf5c6043531f14.md) | 370 | `result-track:78ddacfc20bf5c6043531f14cca834f44074e7a7a1978db2d8bf6e6163cd0629` |
| 33 | `theorem` | [cancel_right_of_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/cancel-right-of-respectsiso--3895feaad163062e8a1ba833.md) | 375 | `result-track:3895feaad163062e8a1ba83398cb87d2a82d95cb9be6d81c6670d9908309175e` |
| 34 | `theorem` | [arrow_mk_iso_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/arrow-mk-iso-iff--136969c10530d01841a57f05.md) | 381 | `result-track:136969c10530d01841a57f0542b70bd38af62a2c2f9c3efa95c04ca286a7388d` |
| 35 | `theorem` | [respectsIso_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/respectsiso-mk--3f7aaacc63d76ab2f33ce259.md) | 389 | `result-track:3f7aaacc63d76ab2f33ce259baf6f1df606a273271d7fd0f217d077b15cde9a0` |
| 36 | `instance` | [respectsIso_of](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/respectsiso-of--4aea93f389a5574bb300595a.md) | 398 | `declaration-track:4aea93f389a5574bb300595acbbb0fe1af99324cd48c83aa6dd9f560fa3efde5` |
| 37 | `class` | [IsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/islocal--4dc21c373082bba6df5a424e.md) | 412 | `declaration-track:4dc21c373082bba6df5a424e954819b27dc088eb548f00554e1925c3547db1b9` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/instance--5a1d436c2e75efc82d2edee2.md) | 427 | `declaration-track:5a1d436c2e75efc82d2edee220f031b688fc5ac4b5a2807404bdc9f50df7d823` |
| 39 | `def` | [IsStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/isstableunderbasechange--98a0c3d6da597983454da4d9.md) | 435 | `declaration-track:98a0c3d6da597983454da4d9466a7822f60e5b6711141000e1a5499e92f19bb2` |
| 40 | `lemma` | [IsStableUnderBaseChange.mk](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/isstableunderbasechange-mk--8a647efef07a626d485bbf9d.md) | 439 | `result-track:8a647efef07a626d485bbf9d353b0633e4cc00d846412ea6da4ff2f05b9f2dd0` |
| 41 | `def` | [targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/targetaffinelocally--ff00dac62df9e8bcdfe1f420.md) | 452 | `declaration-track:ff00dac62df9e8bcdfe1f420a42deb5f724559f0995b7b637e1f358fd175b473` |
| 42 | `theorem` | [of_targetAffineLocally_of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-targetaffinelocally-of-ispullback--5cc2a94975410bcd5b1bf2f6.md) | 455 | `result-track:5cc2a94975410bcd5b1bf2f63565012d0637da0915722d9b775c7be5a47d4aee` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/instance--b0e1399fb7deb393b78c5d4a.md) | 464 | `declaration-track:b0e1399fb7deb393b78c5d4ab18f87c4c7efbc2f97e1e42ca0b32c00e13dde43` |
| 44 | `class` | [HasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/hasaffineproperty--95478883a435afca5f57c7cf.md) | 484 | `declaration-track:95478883a435afca5f57c7cf3cfd4973a46f919d2c4274a7f993bb673bff6ebc` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/instance--29a0c6b14cfd356cfc95e29e.md) | 494 | `declaration-track:29a0c6b14cfd356cfc95e29ecf5b3432f8214a8a40b90e94fa4d8eaf2b145b4a` |
| 46 | `lemma` | [eq_targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/eq-targetaffinelocally--d4cd98dc5a6f9f1129027d9a.md) | 498 | `result-track:d4cd98dc5a6f9f1129027d9a8a111408cb8abad9b21ac3c7111da26acd38a25f` |
| 47 | `lemma` | [of_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-islocalattarget--b5f8c6a419597bdcc642b594.md) | 502 | `result-track:b5f8c6a419597bdcc642b594356d47e9bbf66dcc4e6afa520d6334a982ee3f10` |
| 48 | `lemma` | [copy](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/copy--83fee8d4ef5661dc7d770b45.md) | 514 | `result-track:83fee8d4ef5661dc7d770b4530eab421710f95da5e40fae520cc1a796b2fe025` |
| 49 | `theorem` | [of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-ispullback--be5eec359828c58260e92117.md) | 521 | `result-track:be5eec359828c58260e921177d66fef17093fb06db537b37257b3ac7d51bd89b` |
| 50 | `theorem` | [restrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/restrict--46c7c0d7b79f6de11a5fb659.md) | 527 | `result-track:46c7c0d7b79f6de11a5fb659bbb19eab622fbd57e8b3f5d543cccd0931f2c8f4` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/instance--ee16be12d73588deae0f15bd.md) | 531 | `declaration-track:ee16be12d73588deae0f15bdb13cd4e5afb766c19f998ea463ba37c617fd3c00` |
| 52 | `theorem` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-isup-eq-top--0262d885b15495641b13fb23.md) | 536 | `result-track:0262d885b15495641b13fb231fd0ef43c63778bc7d93ccac6034a8ed872737b6` |
| 53 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-isup-eq-top--c81a8d51c888bf4610161357.md) | 559 | `result-track:c81a8d51c888bf4610161357dd16d9edca6ea42d7d5ce6da7df4e6ed61a49191` |
| 54 | `theorem` | [of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/of-opencover--eb52c3364d0cc09c84bbb64d.md) | 564 | `result-track:eb52c3364d0cc09c84bbb64de313579c2481e6572b757e569b2030b8bdf619d0` |
| 55 | `theorem` | [iff_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-opencover--c6c0f8854c13bf1e3b51d621.md) | 572 | `result-track:c6c0f8854c13bf1e3b51d6213cc41a6379c85b3d05d64ac3b69fdf50b0adce0b` |
| 56 | `theorem` | [iff_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff-of-isaffine--20c442c3a68c23547c1e32dd.md) | 580 | `result-track:20c442c3a68c23547c1e32dda9aac0005d319b725666fc8ecc93e354e22022ca` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/instance--33a19dd655851500f8ea2c7b.md) | 591 | `declaration-track:33a19dd655851500f8ea2c7b78f7a5833a4c108b8f8dfd066614bd562f0fe736` |
| 58 | `theorem` | [iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/iff--cd0b282794b7e70aebc2863a.md) | 611 | `result-track:cd0b282794b7e70aebc2863a0a97b828859e0b3409ef11fcb7a9544658a0e480` |
| 59 | `theorem` | [pullback_fst_of_right](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/pullback-fst-of-right--e9bd077196b29d1511cc5ff9.md) | 616 | `result-track:e9bd077196b29d1511cc5ff936d63c3ba0f8a98471954018215188119ff13b60` |
| 60 | `theorem` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/isstableunderbasechange--5d8402bd4ffd100a67aca246.md) | 629 | `result-track:5d8402bd4ffd100a67aca2469ab41e4ca9520e400348515b808a8e1c0c36727f` |
| 61 | `lemma` | [isLocalAtSource](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/islocalatsource--f89fd25ea2950bc10b403edb.md) | 651 | `result-track:f89fd25ea2950bc10b403edb9041ae6dbfde747bb7faeac371ad72e2b2a81f65` |
| 62 | `lemma` | [hasOfPostcompProperty_isOpenImmersion_of_morphismRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/hasofpostcompproperty-isopenimmersion-of-morphismrestrict--d2bc05e218048a403fff5316.md) | 667 | `result-track:d2bc05e218048a403fff531638738ffd5940df55bb22d3433da0654b6562a603` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/declarations/instance--c30dcfb3d3a55c7c72f31bb1.md) | 678 | `declaration-track:c30dcfb3d3a55c7c72f31bb10e4d42925b037085af92f71ee59b0898cb98d1c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
