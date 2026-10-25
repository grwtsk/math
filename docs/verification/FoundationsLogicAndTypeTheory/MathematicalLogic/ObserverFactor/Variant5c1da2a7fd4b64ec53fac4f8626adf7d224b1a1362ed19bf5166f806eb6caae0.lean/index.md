# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ObserverFactor.Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "520d6f4d0b37c9a244c7e7726fc500565a567212",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `520d6f4d0b37c9a244c7e7726fc500565a567212`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalCausalEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalequivalent--f808411df8489b7d26d81292.md) | 44 | `declaration-track:f808411df8489b7d26d8129281da19dec3e0ade11ef3db9db7877ed59b5948d4` |
| 2 | `theorem` | [localCausalEquivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalequivalent-refl--34c403adbffb281c96fa5edf.md) | 52 | `result-track:34c403adbffb281c96fa5edfd3ad9215ecfc7f21aa99e92c7eaabc672bc2e094` |
| 3 | `theorem` | [localCausalEquivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalequivalent-symm--69b7f019c394b66d88faac9b.md) | 60 | `result-track:69b7f019c394b66d88faac9ba4ce67b68884626c10a6d1da6da0f0b38170d4e2` |
| 4 | `theorem` | [localCausalEquivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalequivalent-trans--056e7e8e07422b29b85bd8ad.md) | 68 | `result-track:056e7e8e07422b29b85bd8ad5c1fe167681e83dbb92be7ae9c090f497cb73a28` |
| 5 | `def` | [localCausalSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalsetoid--2aa8ed70f527667c7906fa52.md) | 78 | `declaration-track:2aa8ed70f527667c7906fa5246bd0437dd0c0c8c3a6faa83f1ec5293062806c7` |
| 6 | `def` | [LocalCausalState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalstate--a7b77e5b5ec99ba1841bd918.md) | 89 | `declaration-track:a7b77e5b5ec99ba1841bd9180050dd62841dfa4a39a576fcd78c0af701fabf10` |
| 7 | `def` | [toLocalCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tolocalcausal--cd4cc4b56e9bc2bf8753b011.md) | 95 | `declaration-track:cd4cc4b56e9bc2bf8753b011a628894c509f9b2fa94999446b42d7eb60d8578a` |
| 8 | `theorem` | [toLocalCausal_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tolocalcausal-eq-iff--eea282a4536b2da7d60136d6.md) | 102 | `result-track:eea282a4536b2da7d60136d670e6ca50236ebfc340f039e8b1d039c8f1f1eb74` |
| 9 | `theorem` | [localCausalEquivalent_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalequivalent-step--5077a2f581a3f037e6589842.md) | 115 | `result-track:5077a2f581a3f037e6589842e73b92f6017e2993007ac5b8db8a2a80c8626a75` |
| 10 | `def` | [localCausalStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalstep--0bf12e3c4d2370d955e042f4.md) | 127 | `declaration-track:0bf12e3c4d2370d955e042f495dddd2264760807be52ef97546571c0c7f95d4e` |
| 11 | `theorem` | [localCausalStep_toLocalCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalstep-tolocalcausal--651a22c1b0665526a0398400.md) | 136 | `result-track:651a22c1b0665526a0398400846cf39b5a5d27be919a00e0ede9fe0331dd7085` |
| 12 | `def` | [localCausalObserve](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalobserve--d73a3ec7ba435730b6285628.md) | 146 | `declaration-track:d73a3ec7ba435730b62856286ece32f10bcfcc827642f28b369f807cc2a15d3a` |
| 13 | `theorem` | [localCausalObserve_toLocalCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localcausalobserve-tolocalcausal--880ead658ace1083d843aea5.md) | 155 | `result-track:880ead658ace1083d843aea5fa6896c9440c25d19e9baa435b5c38e057f1e6a0` |
| 14 | `def` | [causalToLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/causaltolocal--d768ea9db4738c63638021bd.md) | 166 | `declaration-track:d768ea9db4738c63638021bd3c9b6bd003171c7391c086c745aba7f9fbebd7ca` |
| 15 | `theorem` | [causalToLocal_toCausal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/causaltolocal-tocausal--5723b2afb52c2b6f0f7fffd8.md) | 173 | `result-track:5723b2afb52c2b6f0f7fffd8778ba2c9e712b928fd4a3171c1d165bfcead686e` |
| 16 | `theorem` | [causalToLocal_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/causaltolocal-surjective--cd417d801121c569e6cc705c.md) | 182 | `result-track:cd417d801121c569e6cc705cc622b4bc6920208d179e222d5d1643e9717e9ace` |
| 17 | `theorem` | [causalToLocal_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/causaltolocal-step--5df3712cb6d89fae0e73916f.md) | 192 | `result-track:5df3712cb6d89fae0e73916f73d2306d2052630d4d77da0bc7c9a83e67b79019` |
| 18 | `theorem` | [causalToLocal_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/causaltolocal-observe--6f5a09da8ef2cb14453a8312.md) | 204 | `result-track:6f5a09da8ef2cb14453a831203713b150cec706fb68f8e9bb945500d2feadd86` |
| 19 | `def` | [observerTuple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/observertuple--a62524dd2a9526c084314ea8.md) | 217 | `declaration-track:a62524dd2a9526c084314ea873d25fdc70b08ea7822e03d572a8117495cd3445` |
| 20 | `theorem` | [observerTuple_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/observertuple-injective--7900ec5fabcfb527e9970483.md) | 223 | `result-track:7900ec5fabcfb527e9970483ba1ccd1e1cdb9184a8cb6763c21232f01b611b72` |
| 21 | `def` | [ObserverTupleImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/observertupleimage--4a659ad605ffe64f43d71807.md) | 237 | `declaration-track:4a659ad605ffe64f43d71807ec4d6587a06349b658d788d98056e8a2d4cd1252` |
| 22 | `def` | [toObserverTupleImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/toobservertupleimage--feb4e6327741b8576d5fb317.md) | 243 | `declaration-track:feb4e6327741b8576d5fb31711b2f217139cee5ecfeae053521dd39eee9cb2cd` |
| 23 | `def` | [causalStateEquivObserverTupleImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/causalstateequivobservertupleimage--8291b77b609f9c1ccb09a09d.md) | 249 | `declaration-track:8291b77b609f9c1ccb09a09dc477c24805495735108674fc5018a7218c2c4c22` |
| 24 | `structure` | [ObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/observerreducer--a82b800187ece2482c5fa5ad.md) | 267 | `declaration-track:a82b800187ece2482c5fa5ada5d0c6355ba40244adbc6702480e9900bbbe8e19` |
| 25 | `def` | [ofRealizedImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/ofrealizedimage--0c7b192dd87c9f7e7e640cd9.md) | 288 | `declaration-track:0c7b192dd87c9f7e7e640cd9266fa2aee23a22efa8352656cc8fea7a987b406e` |
| 26 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/run--1689b4c42da5e918620f9dfd.md) | 317 | `declaration-track:1689b4c42da5e918620f9dfd41ede269bcf39543aff72ac4cbf0d65a7fdc8151` |
| 27 | `theorem` | [run_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/run-nil--b0441785352b5aa4b4469e05.md) | 326 | `result-track:b0441785352b5aa4b4469e05e56b51547de67310f0dfc8853c9f6efc3218ef41` |
| 28 | `theorem` | [run_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/run-cons--88b55d6be74e5eb0fdb3c11f.md) | 333 | `result-track:88b55d6be74e5eb0fdb3c11f6723d20a8b9cfcba66b11970e852b252d5a3dd5c` |
| 29 | `theorem` | [reduce_run](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/reduce-run--158df5e0fed12905f6a847b6.md) | 343 | `result-track:158df5e0fed12905f6a847b64fa3486a21f6f58e284cbc7a525679f4893df2dd` |
| 30 | `theorem` | [reduce_eq_implies_localCausalEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/reduce-eq-implies-localcausalequivalent--174c49bef6f819ecdc0eacf0.md) | 355 | `result-track:174c49bef6f819ecdc0eacf0f5e065f9b4d5f6a607b4a33826b485a9ece703dd` |
| 31 | `def` | [toCanonicalLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal--ef54f2d043eb12aa7e0a2c5e.md) | 374 | `declaration-track:ef54f2d043eb12aa7e0a2c5e6c1b6495df4744ce29e21ee3037ae850133393de` |
| 32 | `theorem` | [toCanonicalLocal_reduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal-reduce--4ec86bfe7dfe98dc11775fdb.md) | 381 | `result-track:4ec86bfe7dfe98dc11775fdb04f2e6467096f500677e7851f882a2147e280136` |
| 33 | `theorem` | [toCanonicalLocal_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal-surjective--3283e622ee8b859283a0cb45.md) | 391 | `result-track:3283e622ee8b859283a0cb4561a74de4f63ff00f665870f5c89b0223c0e0d9d1` |
| 34 | `theorem` | [toCanonicalLocal_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal-step--24712fe3b145baab51bd6d34.md) | 400 | `result-track:24712fe3b145baab51bd6d3440332328f01b94b27bb8f5699cf621afaafb7702` |
| 35 | `theorem` | [toCanonicalLocal_observe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal-observe--8ce79e4303b63837e2bf4293.md) | 412 | `result-track:8ce79e4303b63837e2bf429300f9df4860ef12b53c891868d54e902b3761d9c9` |
| 36 | `theorem` | [toCanonicalLocal_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal-unique--193426d324dd9aa9766a4985.md) | 422 | `result-track:193426d324dd9aa9766a49854df5e57f61099decc4af04953f89abd13c3b47b9` |
| 37 | `def` | [Exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/exact--1ee78f6b01d12f4b27b235da.md) | 433 | `declaration-track:1ee78f6b01d12f4b27b235da8e236dcd8220104b9f1073a980452358d7bb264d` |
| 38 | `theorem` | [toCanonicalLocal_injective_of_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/tocanonicallocal-injective-of-exact--83159f3f3c471c56027a5142.md) | 440 | `result-track:83159f3f3c471c56027a5142ddb7a8746f0aa653674b6db5da2e855fa9e2e7a4` |
| 39 | `def` | [equivCanonicalLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/equivcanonicallocal--c8643d6bf2123620303c42f0.md) | 452 | `declaration-track:c8643d6bf2123620303c42f06f9f81df860fd531da9acdeea180e83a29294260` |
| 40 | `theorem` | [localStep_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localstep-unique--512a057538f870433779857a.md) | 461 | `result-track:512a057538f870433779857aadea5f2c9dd90575aec29b6adf3d629c9887c233` |
| 41 | `theorem` | [localObserve_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ObserverFactor/Variant5c1da2a7fd4b64ec53fac4f8626adf7d224b1a1362ed19bf5166f806eb6caae0.lean/declarations/localobserve-unique--fc25a7f96e1263538faf94ca.md) | 472 | `result-track:fc25a7f96e1263538faf94ca42aed715bf810112c8ec0861d18ba2c25e07b333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
