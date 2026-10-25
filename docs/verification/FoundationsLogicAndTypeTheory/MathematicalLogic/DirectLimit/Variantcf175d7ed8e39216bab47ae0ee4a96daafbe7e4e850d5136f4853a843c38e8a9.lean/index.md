# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DirectLimit.Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fd79dbb9939a80f332481818e258c48f24a90b0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fd79dbb9939a80f332481818e258c48f24a90b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/natlerec--2a7776a1782c780c9a49a80c.md) | 56 | `declaration-track:2a7776a1782c780c9a49a80c0f03655481e92685fa21aaf35231e5e9230d283a` |
| 2 | `theorem` | [coe_natLERec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/coe-natlerec--ef26705e9f30a6f9290cbe0a.md) | 60 | `result-track:ef26705e9f30a6f9290cbe0a74bdd7967c8fb3f25acafe3b95022fcbf1870809` |
| 3 | `instance` | [natLERec.directedSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/natlerec-directedsystem--e30661666409e0cb5e744562.md) | 70 | `declaration-track:e30661666409e0cb5e74456259f60b3f5660b6efaddd703ba1ec6c8bd9373f6d` |
| 4 | `abbrev` | [Structure.Sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/structure-sigma--05457899ee6412219b20f05e.md) | 86 | `declaration-track:05457899ee6412219b20f05ed65aab44cc21b97df34bfe5500ef7f017a33e6be` |
| 5 | `abbrev` | [Structure.Sigma.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/structure-sigma-mk--44eed18f6659098a27a504b6.md) | 91 | `declaration-track:44eed18f6659098a27a504b6280af5ce1378d5e05c012de2a4a6a03884ccbc56` |
| 6 | `def` | [unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/unify--b695e67970383a0a427ba91d.md) | 96 | `declaration-track:b695e67970383a0a427ba91dc92ce3c183e76680a40cca9422dc2608af8af1b4` |
| 7 | `theorem` | [unify_sigma_mk_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/unify-sigma-mk-self--f4af25b6c61691a2c8c56004.md) | 104 | `result-track:f4af25b6c61691a2c8c56004cc9e573ffaa7d2c024f251a846c772c798a956b9` |
| 8 | `theorem` | [comp_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/comp-unify--51bf69f2f804cffeda9945c0.md) | 111 | `result-track:51bf69f2f804cffeda9945c0a4197c7cac2623ddd11b80ff2b6562497a16c014` |
| 9 | `def` | [setoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/setoid--52c3d25340fc1f603c733737.md) | 126 | `declaration-track:52c3d25340fc1f603c73373702c15608067b3bedc99f567bd0bad704e363a353` |
| 10 | `def` | [sigmaStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/sigmastructure--2c1c20028dac5191eca45248.md) | 140 | `declaration-track:2c1c20028dac5191eca45248332ad5cbce4e0ac6e41b0b5de33cc9c1d84d2105` |
| 11 | `def` | [DirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/directlimit--4dcc9b8dee03fdbf3c97eb14.md) | 154 | `declaration-track:4dcc9b8dee03fdbf3c97eb149e3ff1171f3412e4651aa3a183849273d3c4ac9e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/instance--5eefc16da8b5852583960fd5.md) | 159 | `declaration-track:5eefc16da8b5852583960fd59b9d139744bda8c7169a03460e73e851198b7c9c` |
| 13 | `theorem` | [equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-iff--5a9ced33b74bbae9056e0bfa.md) | 167 | `result-track:5a9ced33b74bbae9056e0bfa19e45251dfe2267af73d10d0e0532e8581ad93c5` |
| 14 | `theorem` | [funMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/funmap-unify-equiv--e125e848d923e1a28b3248d6.md) | 179 | `result-track:e125e848d923e1a28b3248d6ba2522f0c311347457573d42bc82391acd33838b` |
| 15 | `theorem` | [relMap_unify_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/relmap-unify-equiv--85dd31915ea52508ac8f0299.md) | 186 | `result-track:85dd31915ea52508ac8f02990c5f2e00b2f88b06169cf493d8aabe382e011ab1` |
| 16 | `theorem` | [exists_unify_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/exists-unify-eq--98c95841818cdc775f385d3c.md) | 194 | `result-track:98c95841818cdc775f385d3c931ae6e123284ff731350131e59aeb3ac74bcd34` |
| 17 | `theorem` | [funMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/funmap-equiv-unify--2fba9549da85066ddb3fe36d.md) | 202 | `result-track:2fba9549da85066ddb3fe36dec02fbc7eff6a40eba72d6a7dbe1f5eab193ba1a` |
| 18 | `theorem` | [relMap_equiv_unify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/relmap-equiv-unify--6af1240e254748beeadbcbac.md) | 207 | `result-track:6af1240e254748beeadbcbac395ddd89618c5a92727e61a4c3af9634bbcab410` |
| 19 | `instance` | [prestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/prestructure--93803a59386bf897f9af6395.md) | 214 | `declaration-track:93803a59386bf897f9af6395d0b326649b4d5bcba166cc3ba36863b0c58e2753` |
| 20 | `instance` | [instStructureDirectLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/inststructuredirectlimit--d5c41169b4ab49473a1d842f.md) | 229 | `declaration-track:d5c41169b4ab49473a1d842f4a70849943bb8b055b0404d9d2006fbdb01c062a` |
| 21 | `theorem` | [funMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/funmap-quotient-mk-sigma-mk--4415c9cb1754d98da9ee0b08.md) | 233 | `result-track:4415c9cb1754d98da9ee0b0870a196dd71e111851895173b53d2e3d60330672c` |
| 22 | `theorem` | [relMap_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/relmap-quotient-mk-sigma-mk--dc6ecc403f554d30c5362a89.md) | 243 | `result-track:dc6ecc403f554d30c5362a89722c757f2454f925f9a8b8685b492db5465ea3aa` |
| 23 | `theorem` | [exists_quotient_mk'_sigma_mk'_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/exists-quotient-mk-sigma-mk-eq--dc418d85700dda9860ea413a.md) | 250 | `result-track:dc418d85700dda9860ea413a027b10cabe4bd2387248841ee6dfcc35acfdd332` |
| 24 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/of--4249e95cbdb017a72080ae42.md) | 268 | `declaration-track:4249e95cbdb017a72080ae42bd8933b4a4c1eb275d8999cec8dabedeb89d53e1` |
| 25 | `theorem` | [of_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/of-apply--77e01d4ba061ab3a88f758de.md) | 287 | `result-track:77e01d4ba061ab3a88f758de07e1b5bccc271ccdc9643ee259a94d0537e87431` |
| 26 | `theorem` | [of_f](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/of-f--d80e67a42d9289d4692e2f60.md) | 293 | `result-track:d80e67a42d9289d4692e2f603ab9e5e1d0a91880f02cbf7fe8151a70f72a3d8a` |
| 27 | `theorem` | [exists_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/exists-of--657e0cf0bb22404c8c50cdd3.md) | 301 | `result-track:657e0cf0bb22404c8c50cdd3126bf3aec98099eebae951b22464ed8d380a967b` |
| 28 | `theorem` | [inductionOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/inductionon--144e7bacf4356baf137f289a.md) | 305 | `result-track:144e7bacf4356baf137f289a499ea2ac6ab7b56d18a807985f98e9b346d577d1` |
| 29 | `theorem` | [iSup_range_of_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/isup-range-of-eq-top--67bb62d6c2986750a51d8cf0.md) | 310 | `result-track:67bb62d6c2986750a51d8cf071b73ae05849206ecd6556e242744898a6b55818` |
| 30 | `theorem` | [exists_fg_substructure_in_Sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/exists-fg-substructure-in-sigma--d35ed1e2d71acc0287dfbaff.md) | 317 | `result-track:d35ed1e2d71acc0287dfbaff15ef7e8bc0de09a3cbab4e99d4a94c90230e5ec1` |
| 31 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/lift--7899f03c5c9e10128b04c7f5.md) | 335 | `declaration-track:7899f03c5c9e10128b04c7f54a8bdfd898eaf39dd657aadac0e596d7e40c3071` |
| 32 | `theorem` | [lift_quotient_mk'_sigma_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/lift-quotient-mk-sigma-mk--3ecd4d526f9c68af0c8c7f3c.md) | 364 | `result-track:3ecd4d526f9c68af0c8c7f3c2fd9b42a317112ba6653d9804c7c710983b055a2` |
| 33 | `theorem` | [lift_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/lift-of--b1e4c5cdfbbdc4829c60d2a2.md) | 368 | `result-track:b1e4c5cdfbbdc4829c60d2a2e849805303ec3c45ab5defe9e4fd140867478e03` |
| 34 | `theorem` | [lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/lift-unique--448fd7b5352717fa692eb650.md) | 370 | `result-track:448fd7b5352717fa692eb650d90dc4f009d377d8d85f2da4f0cf077a447d5139` |
| 35 | `lemma` | [range_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/range-lift--18121953b43bc55d8967265c.md) | 376 | `result-track:18121953b43bc55d8967265cf0de121b42eb29955c12f665c001e162e3c5ece9` |
| 36 | `def` | [equiv_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-lift--a4eeaa35e8bf5d74c4b66e28.md) | 389 | `declaration-track:a4eeaa35e8bf5d74c4b66e28d457ad18bdec7d062e0727e603c13567f94ca9f8` |
| 37 | `theorem` | [equiv_lift_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-lift-of--84ed9089066b7a307af5a8d9.md) | 405 | `result-track:84ed9089066b7a307af5a8d90e111a8642f73ca086625c5f46ff1242340167bd` |
| 38 | `theorem` | [cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/cg--2f0e9b156116bf7255c50690.md) | 412 | `result-track:2f0e9b156116bf7255c506905c7cb271db2c5cb023a086fff5ca6ec5a22b2cd4` |
| 39 | `instance` | [cg'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/cg--79b398830d42f262361f120d.md) | 428 | `declaration-track:79b398830d42f262361f120dc801e1c3671d7346aef4699c80253af8384b37fb` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/instance--295c4a169b72739cebb98ce4.md) | 441 | `declaration-track:295c4a169b72739cebb98ce41c3195aec174b9ba78ae87269fe519b5e18cf244` |
| 41 | `def` | [liftInclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/liftinclusion--df6ee77ff21f8b850ae6d306.md) | 448 | `declaration-track:df6ee77ff21f8b850ae6d30693d80fca9db1cc33125cc31928186484dbeb2d8e` |
| 42 | `theorem` | [liftInclusion_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/liftinclusion-of--972ea89858c0b02124b38753.md) | 453 | `result-track:972ea89858c0b02124b38753b35b3ca0d7ef1fb95bf61c77fa06765b24a09e96` |
| 43 | `lemma` | [rangeLiftInclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/rangeliftinclusion--edf656130e7391ba30206692.md) | 458 | `result-track:edf656130e7391ba30206692ef882988d78594ffe427f0f3388aec157d502da8` |
| 44 | `def` | [Equiv_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-isup--8c733f341fb39c9e92536937.md) | 462 | `declaration-track:8c733f341fb39c9e925369374f837876bf55a4aefa62c0026e33f20791b0203b` |
| 45 | `theorem` | [Equiv_isup_of_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-isup-of-apply--6e971d5b5c713dce89741286.md) | 476 | `result-track:6e971d5b5c713dce8974128618e6f6cd2cbe0894a6437fc14f6576f88e98cd81` |
| 46 | `theorem` | [Equiv_isup_symm_inclusion_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-isup-symm-inclusion-apply--b8644b66fa9eb413d7a079b3.md) | 480 | `result-track:b8644b66fa9eb413d7a079b3848364a336559c1d05509b1b634396b55f46782b` |
| 47 | `theorem` | [Equiv_isup_symm_inclusion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantcf175d7ed8e39216bab47ae0ee4a96daafbe7e4e850d5136f4853a843c38e8a9.lean/declarations/equiv-isup-symm-inclusion--ea87419fcd5a9cecfe288923.md) | 488 | `result-track:ea87419fcd5a9cecfe288923ada409af532db4d29f4ca8d7d699fa9338fed768` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
