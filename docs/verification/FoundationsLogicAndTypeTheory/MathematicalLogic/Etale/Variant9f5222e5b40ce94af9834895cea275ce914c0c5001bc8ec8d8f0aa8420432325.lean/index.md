# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Etale.Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65b2073433fa1958bb61cf05db35fc6140a1be9e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65b2073433fa1958bb61cf05db35fc6140a1be9e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.QuotientNilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Kaehler` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallyUnramified](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified--804b87c70da083f68a9667d9.md) | 51 | `declaration-track:804b87c70da083f68a9667d90c72afd1fbe2376ec7accdb78eb62b2621b82709` |
| 2 | `class` | [FormallySmooth](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth--18310197986445aa53a2453b.md) | 61 | `declaration-track:18310197986445aa53a2453b244d103220f630adbdd3cb3974cfa456aa21b2ed` |
| 3 | `class` | [FormallyEtale](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale--689674590a349f3ba4494ff1.md) | 71 | `declaration-track:689674590a349f3ba4494ff1cfcb8533d5dc4b19608571225d6845d71b6c5b62` |
| 4 | `theorem` | [FormallyEtale.iff_unramified_and_smooth](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-iff-unramified-and-smooth--110db8925bb6e73faad352d3.md) | 80 | `result-track:110db8925bb6e73faad352d30cda75cca2bc6b07b48c89d13c9d4f7447c9ce79` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/instance--a73218b1d6e048c2ed346c0a.md) | 87 | `declaration-track:a73218b1d6e048c2ed346c0ae32f228c5a12245e1765052c5b5189b053368c04` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/instance--6c0c262a34f35e91f9f0795a.md) | 92 | `declaration-track:6c0c262a34f35e91f9f0795a4f1ed055b0b927e74eb889e8ea870d8e74d4c26e` |
| 7 | `theorem` | [FormallyEtale.of_unramified_and_smooth](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-of-unramified-and-smooth--c3f2637159ad3ba945674f71.md) | 96 | `result-track:c3f2637159ad3ba945674f71c999085c50c1872d3bc0e6d93055e9c5e62108ec` |
| 8 | `theorem` | [FormallyUnramified.lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-lift-unique--9fa25ed22c43b0ae5be0094d.md) | 101 | `result-track:9fa25ed22c43b0ae5be0094d29261737b4d526db49b22af397311aefee3437ea` |
| 9 | `theorem` | [FormallyUnramified.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-ext--7d5fdb2431ab9a2c1c3f2843.md) | 118 | `result-track:7d5fdb2431ab9a2c1c3f2843ae9e5e68175974ad881f8fdf2d17d0d962f0f1b7` |
| 10 | `theorem` | [FormallyUnramified.lift_unique_of_ringHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-lift-unique-of-ringhom--fe9fe1d96b4e5bac9485015d.md) | 123 | `result-track:fe9fe1d96b4e5bac9485015d5a6339e272ce326c6f3d4e41d2599afaf4feca23` |
| 11 | `theorem` | [FormallyUnramified.ext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-ext--5df651deabf8ece7e9b552ea.md) | 134 | `result-track:5df651deabf8ece7e9b552eaf209761b0fbfe20cf71ff37ae6ea9c2f9b772555` |
| 12 | `theorem` | [FormallyUnramified.lift_unique'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-lift-unique--7075e6744e43ed496f5324df.md) | 140 | `result-track:7075e6744e43ed496f5324df81535feba50c6a6e47b0daf75268dbdcfbca0750` |
| 13 | `theorem` | [FormallySmooth.exists_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-exists-lift--1134bd936557f6d7a5530d09.md) | 146 | `result-track:1134bd936557f6d7a5530d09f123f1536eef394824b0ed133e9f659066a75e83` |
| 14 | `def` | [FormallySmooth.lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-lift--f9b22182dcef2ac3b890df23.md) | 171 | `declaration-track:f9b22182dcef2ac3b890df23e1892c118e6faf1d158e9a49d0f2c5efee0f3f46` |
| 15 | `theorem` | [FormallySmooth.comp_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-comp-lift--07a98854a628963c65d89b7e.md) | 177 | `result-track:07a98854a628963c65d89b7e7d2820f210822ec6c72adbe245e6ad4e8b2b8c84` |
| 16 | `theorem` | [FormallySmooth.mk_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-mk-lift--4ed0eceee71b1dd0c2ed55b5.md) | 183 | `result-track:4ed0eceee71b1dd0c2ed55b5456300fea0d9034985df8008c494ce08b288c69b` |
| 17 | `def` | [FormallySmooth.liftOfSurjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-liftofsurjective--a90e3beb60976d3652572a0d.md) | 192 | `declaration-track:a90e3beb60976d3652572a0d57f1bcdd8ccdef6a2ca4af4c83a57583e771930c` |
| 18 | `theorem` | [FormallySmooth.liftOfSurjective_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-liftofsurjective-apply--0ed75f108a17df03e29ecd50.md) | 199 | `result-track:0ed75f108a17df03e29ecd504ede88a606c9776e71c685778b324fb5c557d04d` |
| 19 | `theorem` | [FormallySmooth.comp_liftOfSurjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-comp-liftofsurjective--e0364c771156c7c2db2e4ac1.md) | 213 | `result-track:e0364c771156c7c2db2e4ac161a471fdc7e3352a108a2e34c43643b24387101c` |
| 20 | `theorem` | [FormallySmooth.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-of-equiv--8aec3944609adfba7d574a92.md) | 227 | `result-track:8aec3944609adfba7d574a921c0927e29aa3b73a1bad4bf52dfc07b3784b95c0` |
| 21 | `theorem` | [FormallyUnramified.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-of-equiv--eae0e91837c5bfb2245b6dc1.md) | 235 | `result-track:eae0e91837c5bfb2245b6dc1890d9e479410c6630d859f472af9d86409a0f6e5` |
| 22 | `theorem` | [FormallyEtale.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-of-equiv--3dc4f65333e953845b8e2a6f.md) | 245 | `result-track:3dc4f65333e953845b8e2a6f918f2e90a3cd743616ea8c8f82a4019c19eb8868` |
| 23 | `instance` | [FormallySmooth.mvPolynomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-mvpolynomial--e8c46892df5b8c9433a1e204.md) | 258 | `declaration-track:e8c46892df5b8c9433a1e2043108d76d09a661a470322e443733aca4fd69df7f` |
| 24 | `instance` | [FormallySmooth.polynomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-polynomial--3ace6395a0fac743d538dc0a.md) | 270 | `declaration-track:3ace6395a0fac743d538dc0a602cd1020f00f153c726be1524fabba2920904f1` |
| 25 | `theorem` | [FormallySmooth.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-comp--7578dbd17a58d6de07b8d5f8.md) | 286 | `result-track:7578dbd17a58d6de07b8d5f85b9b515dbd322a47334424b5eb5d1b652e51bcbb` |
| 26 | `theorem` | [FormallyUnramified.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-comp--22df43d4c0106ede9d138fb3.md) | 297 | `result-track:22df43d4c0106ede9d138fb3e8762482863b31c2ad0c97a9734a21eb40f0e9c0` |
| 27 | `theorem` | [FormallyUnramified.of_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-of-comp--12ab23c3bde1008dc34096ac.md) | 313 | `result-track:12ab23c3bde1008dc34096ac2ee0d6a6b75c43ccb4ad82fe8b67cd30dee8c662` |
| 28 | `theorem` | [FormallyEtale.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-comp--afdfb5e450555410c9950003.md) | 324 | `result-track:afdfb5e450555410c9950003dc8cf490c78a6faba877de34c31524b08813ee69` |
| 29 | `theorem` | [FormallySmooth.of_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-of-split--9c1dd381df6391caf6ace0f8.md) | 339 | `result-track:9c1dd381df6391caf6ace0f8b8d706ffb8e0f9901872e2af71519c36d618ea76` |
| 30 | `theorem` | [FormallySmooth.iff_split_surjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-iff-split-surjection--1093760062aeef1cf74c0ec3.md) | 365 | `result-track:1093760062aeef1cf74c0ec3696d911142b3645ffba63e382172b61724bbafd6` |
| 31 | `instance` | [FormallyUnramified.subsingleton_kaehlerDifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-subsingleton-kaehlerdifferential--d9e50ec88d63db78648e9836.md) | 406 | `declaration-track:d9e50ec88d63db78648e9836535570c6f2a00e3eeb29697e3b4dc51622424106` |
| 32 | `theorem` | [FormallyUnramified.iff_subsingleton_kaehlerDifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-iff-subsingleton-kaehlerdifferential--bb84f3d38dfefeded5d98c45.md) | 418 | `result-track:bb84f3d38dfefeded5d98c45bf2b5b8c96e1d54a5f00f9b62e0518fa9f588d1f` |
| 33 | `instance` | [FormallyUnramified.base_change](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-base-change--09ce18d7bfa9db9ba99f42f2.md) | 445 | `declaration-track:09ce18d7bfa9db9ba99f42f2f7e0d5102bc80fd519a4e813295e10e114fe0100` |
| 34 | `instance` | [FormallySmooth.base_change](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-base-change--150a73b1cc0a8a2fade66b56.md) | 456 | `declaration-track:150a73b1cc0a8a2fade66b56750dcf714cbb10e27c592ee2f135cfdf4c3cf276` |
| 35 | `instance` | [FormallyEtale.base_change](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-base-change--4740e444724a567050e3de40.md) | 470 | `declaration-track:4740e444724a567050e3de404304f6907ee2599389b0a4e0ddcf99be6b5ce6c7` |
| 36 | `theorem` | [FormallySmooth.of_isLocalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-of-islocalization--e3135e2ea4cda23397a00fda.md) | 491 | `result-track:e3135e2ea4cda23397a00fda55dcee4a259679c80de4eaa3961707d7930ae777` |
| 37 | `theorem` | [FormallyUnramified.of_isLocalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-of-islocalization--ad55e5906ec352f34862e265.md) | 509 | `result-track:ad55e5906ec352f34862e265b3d17b5e3992c008c3eda57f9bc74ac3f99c36d6` |
| 38 | `theorem` | [FormallyEtale.of_isLocalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-of-islocalization--eb3ddfe70d198b2bb7534892.md) | 518 | `result-track:eb3ddfe70d198b2bb7534892ced50cfb161e93cd6824246b2fce90a945c8ee2f` |
| 39 | `theorem` | [FormallySmooth.localization_base](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-localization-base--1ced608ce1fb864c56a4c58a.md) | 523 | `result-track:1ced608ce1fb864c56a4c58ace23d570c88801bbbdccea45988c72eb87940035` |
| 40 | `theorem` | [FormallyUnramified.localization_base](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-localization-base--28faf9b076edac3334f0aaf8.md) | 551 | `result-track:28faf9b076edac3334f0aaf851c66db89d8e23bb7a3ed36b399949523f9aea02` |
| 41 | `theorem` | [FormallyEtale.localization_base](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-localization-base--48a6e3366087dc6777312140.md) | 557 | `result-track:48a6e3366087dc67773121406632e194b2648d1c2b87689e81e0dc3e55d53b1c` |
| 42 | `theorem` | [FormallySmooth.localization_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallysmooth-localization-map--5e46608f4bb4099d0ad9aab1.md) | 562 | `result-track:5e46608f4bb4099d0ad9aab11ca4415097279af0f140909364b6067f242bebe8` |
| 43 | `theorem` | [FormallyUnramified.localization_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyunramified-localization-map--386eca44713766694ba9bb57.md) | 568 | `result-track:386eca44713766694ba9bb5775e49061052c4d04e57fd9971cfd9630aa4dbb01` |
| 44 | `theorem` | [FormallyEtale.localization_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/declarations/formallyetale-localization-map--ad05ec50b27d880f9b9e91aa.md) | 576 | `result-track:ad05ec50b27d880f9b9e91aa8172e5d52ef379806de8ec12a5ffbda829f46851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
