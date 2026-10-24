# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74d56ea401b2c7d48b4d9eb467d28fca909e75c0",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74d56ea401b2c7d48b4d9eb467d28fca909e75c0`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeIndex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeindex--949eeecaba713806708d66ae.md) | 41 | `declaration-track:949eeecaba713806708d66aee49523c52ab767bfbd25f43b33f44707c95138e2` |
| 2 | `abbrev` | [PrimeExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeexponent--ba9bbf59bce3e501e5c2da8b.md) | 44 | `declaration-track:ba9bbf59bce3e501e5c2da8b3ff8dc20841a5c1fea6bcb1eff8c992379abbf42` |
| 3 | `def` | [primeCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primecoordinate--b21fa2ec06218d880a3cb5cb.md) | 47 | `declaration-track:b21fa2ec06218d880a3cb5cbaaaa9ddb78fdd0c7669cdf9f96221801d4698e2a` |
| 4 | `theorem` | [primeCoordinate_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primecoordinate-apply--11e6faf617c2faa6be045686.md) | 51 | `result-track:11e6faf617c2faa6be045686e8bcf696d2ad2c9b3c77497eb594d21385da8b81` |
| 5 | `def` | [primeProjector](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeprojector--123379abac4bb16a8f345ef2.md) | 56 | `declaration-track:123379abac4bb16a8f345ef22549b380417a30f5eda4d7779811978bd41b55ab` |
| 6 | `theorem` | [primeProjector_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeprojector-apply--0c98353bf33365b619c6b618.md) | 60 | `result-track:0c98353bf33365b619c6b618a91a1ffa1648c166616cd0c8346ac2ba253314e4` |
| 7 | `theorem` | [primeCoordinate_projector_same](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primecoordinate-projector-same--4da5d0c18a85b46de789abb8.md) | 65 | `result-track:4da5d0c18a85b46de789abb8b10f576feaec522e0ceb33b0138bcf052931fc62` |
| 8 | `theorem` | [primeCoordinate_projector_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primecoordinate-projector-ne--4e6f62144d85e3241024e988.md) | 70 | `result-track:4e6f62144d85e3241024e9886a80e5f017a9cf89edfd7ee7796e636f969deed7` |
| 9 | `theorem` | [primeProjector_idempotent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeprojector-idempotent--71ae027f9cd25fc66370a5e4.md) | 76 | `result-track:71ae027f9cd25fc66370a5e48beb1bbb61d55a76119a39aac35a4178a1493726` |
| 10 | `theorem` | [primeProjector_orthogonal](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeprojector-orthogonal--68595237a9a630f4620ca163.md) | 85 | `result-track:68595237a9a630f4620ca1633de1d386324f3ae32deedab28aa403d43ad5e31f` |
| 11 | `theorem` | [finite_prime_projector_reconstruction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/finite-prime-projector-reconstruction--577bdc2ec6a3adbee54a81b3.md) | 94 | `result-track:577bdc2ec6a3adbee54a81b30432fdeb78dd33212dbac6e4688cdf4a498390ec` |
| 12 | `def` | [primeLogHom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primeloghom--c385674f5fc89261a4dc0c61.md) | 99 | `declaration-track:c385674f5fc89261a4dc0c61df38464ba999a57d6fdba8ff7fa20d23f8594b8c` |
| 13 | `def` | [logRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/logrealization--bd9d909d07812e9d7468a476.md) | 107 | `declaration-track:bd9d909d07812e9d7468a476aad10c915cb2a588c9e08323415299ae44a7fb7b` |
| 14 | `theorem` | [logRealization_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/logrealization-single--3c27440c1dd395281fe5c3d5.md) | 111 | `result-track:3c27440c1dd395281fe5c3d56da5a89cc1e212e49768dd9ef7a992c1bcd775f5` |
| 15 | `def` | [rationalRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization--6bcf78691c680c87fe647124.md) | 118 | `declaration-track:6bcf78691c680c87fe647124e669f550e92d90d39acb747368ca17a45b8384f6` |
| 16 | `theorem` | [rationalRealization_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-pos--977dc5410907e6a3ba95b7e4.md) | 121 | `result-track:977dc5410907e6a3ba95b7e458e7d879a1451eda910d839c9bb97374e63cf864` |
| 17 | `theorem` | [rationalRealization_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-ne-zero--6a49c1bbbb73b0d03a0959ee.md) | 127 | `result-track:6a49c1bbbb73b0d03a0959eed4abd19b1eec155fee266aafdd135a9d4b0224d6` |
| 18 | `theorem` | [rationalRealization_add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-add--57030e8bdba157dca549e141.md) | 132 | `result-track:57030e8bdba157dca549e14189d76a455ce77c21f0ea55a818731fe8ea23021f` |
| 19 | `theorem` | [rationalRealization_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-zero--7a552bc0ae8ccd5aabdd1ff6.md) | 140 | `result-track:7a552bc0ae8ccd5aabdd1ff60b4fb018553a8bf3a27f7347f82279950878d09b` |
| 20 | `theorem` | [rationalRealization_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-neg--9c7f0ec213600d4b1b73c55a.md) | 145 | `result-track:9c7f0ec213600d4b1b73c55a9a394147042ce83ddd3408656b7c82dad7db7e33` |
| 21 | `theorem` | [padicValRat_prime_zpow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/padicvalrat-prime-zpow--2e9f58d40cb12ee6d4ec9d81.md) | 152 | `result-track:2e9f58d40cb12ee6d4ec9d816799da1c3949420a4b7766799ce8eb79db180abe` |
| 22 | `theorem` | [padicValRat_rationalRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/padicvalrat-rationalrealization--3e6e673c45147bb76a0ee6c9.md) | 168 | `result-track:3e6e673c45147bb76a0ee6c9ec316aae837fd60b8ad21341f21962f3b737a412` |
| 23 | `theorem` | [rationalRealization_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-injective--e9b4202b0b7dde27a375675a.md) | 187 | `result-track:e9b4202b0b7dde27a375675abdbd06f61c6cf0596402290cd9c54ccc00ce5b78` |
| 24 | `def` | [positiveRationalUnits](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/positiverationalunits--245c86919ebd8bd3d2e38abe.md) | 195 | `declaration-track:245c86919ebd8bd3d2e38abe85d5754a20bd9c5548126c1e3014a5c4f334cdb5` |
| 25 | `abbrev` | [PositiveRationalScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/positiverationalscale--5dbc9ae2bd245eff1cc65f59.md) | 209 | `declaration-track:5dbc9ae2bd245eff1cc65f59403e5d0cb88797ff2945cbcdf7418a4cce4a0865` |
| 26 | `def` | [positiveRationalValue](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/positiverationalvalue--df4ac5d821adf552d1e7cff2.md) | 212 | `declaration-track:df4ac5d821adf552d1e7cff24e40681d835d76ae605910d70d3fe43c5a4cc813` |
| 27 | `theorem` | [positiveRationalValue_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/positiverationalvalue-pos--4169da2e13cd846e05149785.md) | 215 | `result-track:4169da2e13cd846e05149785757a149d96160325b487f20e41bce4d728b50531` |
| 28 | `def` | [exponentToPositiveRational](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponenttopositiverational--e62330714e16ac60400056ea.md) | 220 | `declaration-track:e62330714e16ac60400056eac7c5960d286b89c04c6973b7b314516814424877` |
| 29 | `theorem` | [exponentToPositiveRational_value](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponenttopositiverational-value--b1e0d5536d0c9a03050e9ea3.md) | 226 | `result-track:b1e0d5536d0c9a03050e9ea397ddd23ea11249d15648988a9ade992e9fd84367` |
| 30 | `def` | [natPrimeExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/natprimeexponent--12e769bf7a8b2b003c11e072.md) | 233 | `declaration-track:12e769bf7a8b2b003c11e072eca65678aa4ea09967f6c2f45dd59503e1c653ca` |
| 31 | `theorem` | [natPrimeExponent_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/natprimeexponent-apply--4aa181b0077d71ffc826143a.md) | 240 | `result-track:4aa181b0077d71ffc826143a96fbb03da20a8763710a6af937bba42138dd83eb` |
| 32 | `theorem` | [rationalRealization_natPrimeExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-natprimeexponent--a684652b2051dcbcad7862a7.md) | 245 | `result-track:a684652b2051dcbcad7862a72b1fe59da256070bed584339faff5764732b9e11` |
| 33 | `def` | [positiveRationalExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/positiverationalexponent--00f51e4620636e210a42d534.md) | 270 | `declaration-track:00f51e4620636e210a42d5343e191d215c2243baa42a5a8eb3949683cb49abad` |
| 34 | `theorem` | [rationalRealization_positiveRationalExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/rationalrealization-positiverationalexponent--b8d3e1e1e65f00e0b0df3512.md) | 276 | `result-track:b8d3e1e1e65f00e0b0df3512764efc23f96368bae9fb4b1ed99a123df41ee5f9` |
| 35 | `def` | [valuationCoordinates](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/valuationcoordinates--bf2fc19277b02bd66b865709.md) | 300 | `declaration-track:bf2fc19277b02bd66b86570993a0540d57c2ce5c5c83be0a4e056ac7d35ef6ab` |
| 36 | `theorem` | [valuationCoordinates_exponentToPositiveRational](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/valuationcoordinates-exponenttopositiverational--1e8af9126398d61374f4afea.md) | 305 | `result-track:1e8af9126398d61374f4afeae58929b702e13165d48d52b1f980c5a70c619e25` |
| 37 | `theorem` | [exponentToPositiveRational_valuationCoordinates](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponenttopositiverational-valuationcoordinates--812c463060ebc52af0e58410.md) | 314 | `result-track:812c463060ebc52af0e58410b90435d3e0c43229f6ea3bdbbab65a21716a4797` |
| 38 | `def` | [positiveRationalPrimeExponentEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/positiverationalprimeexponentequiv--3b4d8c3c635939f2088bf16b.md) | 323 | `declaration-track:3b4d8c3c635939f2088bf16b247a3dff93028db42dbf2a82759ea17fc77aa5c6` |
| 39 | `theorem` | [valuationCoordinates_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/valuationcoordinates-apply--d162c4051273ed5bfaadae8f.md) | 338 | `result-track:d162c4051273ed5bfaadae8f612d8db2224df26b6dfbfce14daf23652ac9d8ba` |
| 40 | `theorem` | [logRealization_eq_log_rationalRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/logrealization-eq-log-rationalrealization--82acf3ff8317dcbe377001af.md) | 349 | `result-track:82acf3ff8317dcbe377001afc4806148919e57e12a471758ddacc049d2d32758` |
| 41 | `theorem` | [logRealization_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/logrealization-injective--23fd94e23a72d20a8a9ffa21.md) | 362 | `result-track:23fd94e23a72d20a8a9ffa218fb077d07acccdf42349eb9df3e89f990cc33b38` |
| 42 | `def` | [arithmeticLogScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/arithmeticlogscale--54c2d79d5f6ee991f97b472a.md) | 374 | `declaration-track:54c2d79d5f6ee991f97b472a8d517fb42bebe2af4e43f2fb897f4fcc8a241f29` |
| 43 | `abbrev` | [ArithmeticLogScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/arithmeticlogscale--53362a3396828c8a32766d35.md) | 378 | `declaration-track:53362a3396828c8a32766d357098825d9ad30f37a2988a0b1a7ef79d934981e7` |
| 44 | `def` | [exponentToScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponenttoscale--7bb565c783a08ce829a8a2d0.md) | 382 | `declaration-track:7bb565c783a08ce829a8a2d0e2bf6b707e8808e6d2af13dcfad264e59f17e6be` |
| 45 | `theorem` | [exponentToScale_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponenttoscale-coe--865c4f47d6323fb48244deb0.md) | 388 | `result-track:865c4f47d6323fb48244deb0628feaf3cb38f4112fbfabfde4236523dd7b24e4` |
| 46 | `theorem` | [arithmeticLogScale_existsUniqueExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/arithmeticlogscale-existsuniqueexponent--78660a886e882c45de63b4b0.md) | 393 | `result-track:78660a886e882c45de63b4b050457ef59b028f617531850973de59e8edaa00db` |
| 47 | `def` | [exponentEquivScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponentequivscale--83e08d3dc33bde86be86d326.md) | 405 | `declaration-track:83e08d3dc33bde86be86d32620e718c8b3e7fb3c921bc3e216439b6599a2d36e` |
| 48 | `def` | [scalePrimeCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimecoordinate--ee93be5fea8cc6d2eda92a09.md) | 418 | `declaration-track:ee93be5fea8cc6d2eda92a09e033ac26acecc28895d135afb7468a33a0ac258f` |
| 49 | `theorem` | [scalePrimeCoordinate_exponentToScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimecoordinate-exponenttoscale--cb86c4ba01bd882d3ca2301e.md) | 423 | `result-track:cb86c4ba01bd882d3ca2301e8e32b3dfc4c940b01ca8301c713791d8a99dc8e6` |
| 50 | `def` | [scalePrimeSection](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimesection--4f45779b2682c4c35bf1894c.md) | 430 | `declaration-track:4f45779b2682c4c35bf1894cdc7798caa262f837e86b42cc2dc5d9ae985662f6` |
| 51 | `theorem` | [scalePrimeCoordinate_section](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimecoordinate-section--0633b18a3e8e99c14060effc.md) | 434 | `result-track:0633b18a3e8e99c14060effc8d146ebac45ebb51921088d78db041c82bfca3bb` |
| 52 | `def` | [scalePrimeProjector](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimeprojector--a18237a95ae37ab6beb12a23.md) | 439 | `declaration-track:a18237a95ae37ab6beb12a231ed988380456c677e61665fc1a217dcd043d734f` |
| 53 | `theorem` | [scalePrimeProjector_idempotent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimeprojector-idempotent--d606d937fb03bf71affb3924.md) | 444 | `result-track:d606d937fb03bf71affb392432b71bb257846f5abe0e51abde61552eabb9df3c` |
| 54 | `theorem` | [scalePrimeProjector_orthogonal](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/scaleprimeprojector-orthogonal--2c349e6ebf082e52fbbae47d.md) | 451 | `result-track:2c349e6ebf082e52fbbae47dcb1a58e1b8bab69a3f469a5da27232dba98df2a3` |
| 55 | `theorem` | [finite_scale_projector_reconstruction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/finite-scale-projector-reconstruction--648d6379cbe0f070c85b896d.md) | 458 | `result-track:648d6379cbe0f070c85b896dccbc64628e8837d837d46f735f6760e716389fa7` |
| 56 | `def` | [radialPrimePower](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/radialprimepower--e4ab5d6d39d88420b4aa7e21.md) | 467 | `declaration-track:e4ab5d6d39d88420b4aa7e21df6d1a8aac2a517e2ba75aae18aa7691344ef257` |
| 57 | `def` | [radialRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/radialrealization--f273c75deca6ff5a2fa89237.md) | 472 | `declaration-track:f273c75deca6ff5a2fa8923774878e1a572272966d68021dcdbdb71a9a204634` |
| 58 | `theorem` | [radialRealization_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/radialrealization-zero--b2dd1b7fd424cda53d388f47.md) | 476 | `result-track:b2dd1b7fd424cda53d388f473f67973b4e98cfd3673215f08f9d75352d8a7302` |
| 59 | `theorem` | [radialRealization_add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/radialrealization-add--058086013c838e6251119f0e.md) | 482 | `result-track:058086013c838e6251119f0e338a7cc0efe6162ff9d82a00f9dabb142187134b` |
| 60 | `theorem` | [radialRealization_exponentToScale](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/radialrealization-exponenttoscale--8241facad68e06c5c0a02c63.md) | 490 | `result-track:8241facad68e06c5c0a02c6356c2ec8f7cb1ec3e33a1c7ec84f3169ee23d807b` |
| 61 | `theorem` | [padicValRat_radialRealization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/padicvalrat-radialrealization--b04627b0387004eaae050049.md) | 496 | `result-track:b04627b0387004eaae0500499fda724100434097c9e031dd14cea2edfa671e0b` |
| 62 | `def` | [finitePadicNormProduct](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/finitepadicnormproduct--2d63ebb3283c8a3bc51ac035.md) | 505 | `declaration-track:2d63ebb3283c8a3bc51ac03549dbb2ad88580ba85568eca3b91aeaa5f50abf5a` |
| 63 | `theorem` | [exponent_product_formula](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponent-product-formula--618446c43e15733dd6bfe4d4.md) | 509 | `result-track:618446c43e15733dd6bfe4d41cf7773b882259be212aa455ab216f8c6aaad650` |
| 64 | `theorem` | [exponent_log_product_formula](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/exponent-log-product-formula--ae2258f266f7bfab965c327f.md) | 524 | `result-track:ae2258f266f7bfab965c327f43292f7774dc924eb456812d23fbbe3e21956731` |
| 65 | `def` | [primeLineEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean/declarations/primelineequiv--433a8de3b23691772aa74ec4.md) | 532 | `declaration-track:433a8de3b23691772aa74ec44b1cd909ac0d1a85ed5e2d2ffd3c3b5ea4233b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
