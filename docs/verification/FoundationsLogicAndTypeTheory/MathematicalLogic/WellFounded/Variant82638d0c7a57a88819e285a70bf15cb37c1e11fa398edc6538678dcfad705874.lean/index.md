# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WellFounded.Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb4c11ab2b549a4c73aaa178f6b1560c4f960c81",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb4c11ab2b549a4c73aaa178f6b1560c4f960c81`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isAsymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/isasymm--65dc28d3103d808b902fb91e.md) | 28 | `result-track:65dc28d3103d808b902fb91e8bc50cad1702e6c981151fe62ab1f74a97b5756b` |
| 2 | `theorem` | [isIrrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/isirrefl--d54797d50a385920d8c46314.md) | 30 | `result-track:d54797d50a385920d8c463141406aadc88707dac55172cf5afa199b0c7a928cd` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/instance--282af8cd126a9ea4c0517548.md) | 32 | `declaration-track:282af8cd126a9ea4c05175482faedf36699e14ac73e7e9fc55f0606ca4ccb21d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/instance--46501e911e7dd6bcb6ddf0ed.md) | 35 | `declaration-track:46501e911e7dd6bcb6ddf0edae7ab8be28fa6e299c2f55f6a81774d9a354d6ac` |
| 5 | `theorem` | [mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/mono--3f82bc42827f83d1e0c13eb2.md) | 37 | `result-track:3f82bc42827f83d1e0c13eb21b2dc58962b8671b270b93838db6515579e2e97b` |
| 6 | `theorem` | [onFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/onfun--ce446d26ab9ef3817d0f733e.md) | 41 | `result-track:ce446d26ab9ef3817d0f733e2e7996eff493d29b0922ecc622ddee68d195da4d` |
| 7 | `theorem` | [has_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/has-min--c7b36aa9b01bd79639bd69cd.md) | 47 | `result-track:c7b36aa9b01bd79639bd69cd6b3ddcf89f4b721940ec92894f8cd85cd8fbd572` |
| 8 | `def` | [min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/min--581a545a89e97a83483d7b53.md) | 59 | `declaration-track:581a545a89e97a83483d7b53e0f9ada83b6b9d2113e89d6cb3b7a4f7d6ecfcb7` |
| 9 | `theorem` | [min_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/min-mem--781aac01d83bdc64d2ffe035.md) | 62 | `result-track:781aac01d83bdc64d2ffe035b171037e5110335be7e985efa7966fb3fce33dac` |
| 10 | `theorem` | [not_lt_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/not-lt-min--f18ef3cc8b511f2010962cfc.md) | 67 | `result-track:f18ef3cc8b511f2010962cfc87d298219f8c5d34349453a913797120c8fea5a7` |
| 11 | `theorem` | [wellFounded_iff_has_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfounded-iff-has-min--6c2207605415c5279bf5a5a9.md) | 72 | `result-track:6c2207605415c5279bf5a5a9a55cd47a85adc0b6814d324169d0ebde02f39555` |
| 12 | `theorem` | [wellFounded_iff_no_descending_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfounded-iff-no-descending-seq--3b3eead7087d7b88d2c0acd1.md) | 84 | `result-track:3b3eead7087d7b88d2c0acd16a216d806c090f0bc2b2af73e2c7f5c59969e6e0` |
| 13 | `theorem` | [not_rel_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/not-rel-apply-succ--396a1c92f8a5ee932ac26259.md) | 97 | `result-track:396a1c92f8a5ee932ac262592502371d43e92748219b79194e08b8748961a94e` |
| 14 | `def` | [sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/sup--6a42a1a14aaa3be26d71fda3.md) | 104 | `declaration-track:6a42a1a14aaa3be26d71fda3e43c0fa28e2071b6778ea5e11e4eb7aa17a23105` |
| 15 | `theorem` | [lt_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/lt-sup--0ecb897bdd4aa501304aa5c3.md) | 108 | `result-track:0ecb897bdd4aa501304aa5c338a98b24de31fa690215188d15ec9a83f50999bb` |
| 16 | `def` | [succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/succ--cfd0a11dd46e5efedfad5bb3.md) | 120 | `declaration-track:cfd0a11dd46e5efedfad5bb3e3d04d5748e710d634cf712fbce16a8339fd10fd` |
| 17 | `theorem` | [lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/lt-succ--eb3500bdb6d245d510d239ea.md) | 125 | `result-track:eb3500bdb6d245d510d239eaeea91a2a3a478333c0f5c6332db3e8adffc2c536` |
| 18 | `theorem` | [lt_succ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/lt-succ-iff--62b5c1c9d244cc920dc0873d.md) | 132 | `result-track:62b5c1c9d244cc920dc0873d5ba8a91567262070033beec1087be35255e46cae` |
| 19 | `theorem` | [WellFounded.min_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfounded-min-le--8ec51d40bfa892c4682ca9a4.md) | 157 | `result-track:8ec51d40bfa892c4682ca9a4a6fdbe0d90ba6c6d7162cf308857042e5115e5f9` |
| 20 | `theorem` | [Set.range_injOn_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/set-range-injon-strictmono--dfc2710444d2ba5d7a0cd08a.md) | 161 | `result-track:dfc2710444d2ba5d7a0cd08abe6ae4b73d867a80f7175fcae19e6a7d139e3c3b` |
| 21 | `theorem` | [Set.range_injOn_strictAnti](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/set-range-injon-strictanti--04cdfc41416e999209036f25.md) | 178 | `result-track:04cdfc41416e999209036f255a4f59f16cc288dc79c6368279ce24625f730a98` |
| 22 | `theorem` | [StrictMono.range_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-range-inj--d3f4a95aa40446826469576c.md) | 182 | `result-track:d3f4a95aa40446826469576cd8482f9820d2d979e40fbd91d64c903c40a7e035` |
| 23 | `theorem` | [StrictAnti.range_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictanti-range-inj--6d10d49e2248afa84d8d8964.md) | 186 | `result-track:6d10d49e2248afa84d8d89644b7b9b8221594259401c45ebfa78b597599386ee` |
| 24 | `theorem` | [StrictMono.id_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-id-le--18d7689226c15e9199384171.md) | 191 | `result-track:18d7689226c15e919938417192b10f16c546d3515e74b9c159796be9b457b30c` |
| 25 | `theorem` | [StrictMono.le_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-le-apply--9167898e92b87eb83e60eb20.md) | 197 | `result-track:9167898e92b87eb83e60eb20cd67152153bbacacdf0c71d4e8a4de23495e7a9f` |
| 26 | `theorem` | [StrictMono.le_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-le-id--83f849d09f6d41fe77d494a0.md) | 201 | `result-track:83f849d09f6d41fe77d494a07b4d91dfe9b651791f9ce017e196de3f88efbb61` |
| 27 | `theorem` | [StrictMono.apply_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-apply-le--e4ac651a6d552ff01fc3b4d9.md) | 204 | `result-track:e4ac651a6d552ff01fc3b4d9415540ed9ec04ca1b278f3f419ca8196c2ed6ff5` |
| 28 | `theorem` | [StrictMono.not_bddAbove_range_of_wellFoundedLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-not-bddabove-range-of-wellfoundedlt--64ab36bb6fd1a00dd620d68f.md) | 207 | `result-track:64ab36bb6fd1a00dd620d68fec2b0a974d996c1c4fc73b6ebe0cc9bb90235d53` |
| 29 | `theorem` | [StrictMono.not_bddBelow_range_of_wellFoundedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/strictmono-not-bddbelow-range-of-wellfoundedgt--09db428eed4a726be4f22df5.md) | 213 | `result-track:09db428eed4a726be4f22df54cb07477471286c189f79038446ee1029e6e2562` |
| 30 | `def` | [argmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/argmin--76b785bc0e9ae375882fc99c.md) | 229 | `declaration-track:76b785bc0e9ae375882fc99c9614e16d85a6ad3166e32cdc679a186ffacfb73f` |
| 31 | `theorem` | [not_lt_argmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/not-lt-argmin--10353b7cfb8b7160f9f9f5ed.md) | 232 | `result-track:10353b7cfb8b7160f9f9f5ed2ab1f452fab7a902c0ce94c0fe480efe1370b5e5` |
| 32 | `def` | [argminOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/argminon--d815a6852d3c25caebed7779.md) | 238 | `declaration-track:d815a6852d3c25caebed777963e99ac8b9b3ebebb6145797084013633419bff1` |
| 33 | `theorem` | [argminOn_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/argminon-mem--033cf2386a475628d8104c1d.md) | 242 | `result-track:033cf2386a475628d8104c1d24771810cbff4fe25f77aa1ce4eac33e9085f1d4` |
| 34 | `theorem` | [not_lt_argminOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/not-lt-argminon--47f755c0cfbc291ee97d94c1.md) | 245 | `result-track:47f755c0cfbc291ee97d94c16f9d2779da55193e8f407b2e3d68b0d0f3ac15fb` |
| 35 | `theorem` | [argmin_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/argmin-le--a03614c7b951ea7aaac27aa3.md) | 255 | `result-track:a03614c7b951ea7aaac27aa377890a9762b123bae1cf72556bf77952701d5620` |
| 36 | `theorem` | [argminOn_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/argminon-le--6f98f704762875b8af2d8593.md) | 258 | `result-track:6f98f704762875b8af2d859324e48b1de762497306c8d5d83fbef37516d623d4` |
| 37 | `theorem` | [Acc.induction_bot'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/acc-induction-bot--5ccd6ba9625a59c070b502ad.md) | 273 | `result-track:5ccd6ba9625a59c070b502adb3f01578ad8edc10969047d5b496afde08f7924b` |
| 38 | `theorem` | [Acc.induction_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/acc-induction-bot--d2d6231c3954313063a2e3c5.md) | 284 | `result-track:d2d6231c3954313063a2e3c5c166e805303982685b5813784d51105ef5b8949d` |
| 39 | `theorem` | [WellFounded.induction_bot'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfounded-induction-bot--cdc38607456b36d06249f116.md) | 294 | `result-track:cdc38607456b36d06249f116d439c7a366c27790458f77d536cef7f4a22379d5` |
| 40 | `theorem` | [WellFounded.induction_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfounded-induction-bot--4e3fbec24e46a2f5ab52a5a1.md) | 306 | `result-track:4e3fbec24e46a2f5ab52a5a1c23cac9986b4ea40e9b3fbedda064df824ca6f5a` |
| 41 | `def` | [WellFoundedLT.toOrderBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfoundedlt-toorderbot--68457fae1212075b7e7e827f.md) | 313 | `declaration-track:68457fae1212075b7e7e827f2f219e1330f1eeba487335db5893b9128d0fd1dc` |
| 42 | `def` | [WellFoundedGT.toOrderTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant82638d0c7a57a88819e285a70bf15cb37c1e11fa398edc6538678dcfad705874.lean/declarations/wellfoundedgt-toordertop--2955ac9b3c7e32fbb8773725.md) | 319 | `declaration-track:2955ac9b3c7e32fbb877372507e6e316549e9384d37c30becf8d0915e2d220ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
