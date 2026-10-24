# Verification target: GRWTSK.Algebra.SequentialPrime.Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7644e8659184af2ba98eb2e49d7d50d35bcd1d84",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/index.md) · [Full source](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7644e8659184af2ba98eb2e49d7d50d35bcd1d84`.

Source path: `GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/ext--24f2064d72b7a3378c92d26e.md) | 22 | `result-track:24f2064d72b7a3378c92d26e5bc4c731400205198d535b43dd70aa516048994b` |
| 2 | `def` | [axesFrom](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/axesfrom--369063b4c3c8392062bd2b92.md) | 34 | `declaration-track:369063b4c3c8392062bd2b92250381b45b7c2ea33902e4c37bd876164c0c9f1a` |
| 3 | `def` | [axisCardinalities](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/axiscardinalities--d57a927cf5cfc15fc0da4506.md) | 41 | `declaration-track:d57a927cf5cfc15fc0da45061740c55cf22efa30b42a1ce19b4f661e6c6fada8` |
| 4 | `theorem` | [axesFrom_positive](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/axesfrom-positive--90503ce3708d6ccb539a14b8.md) | 45 | `result-track:90503ce3708d6ccb539a14b8b5b2188b8578cbbe037f1ff044a064ae2a0c65ee` |
| 5 | `theorem` | [axisCardinalities_positive](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/axiscardinalities-positive--b1c086752ad6ce073bc253a8.md) | 59 | `result-track:b1c086752ad6ce073bc253a81d12c6712401d1be702b69a353ec332a8d7bfc83` |
| 6 | `def` | [CoordinateFiber](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/coordinatefiber--f72631f9e92e2b502c5512b0.md) | 69 | `declaration-track:f72631f9e92e2b502c5512b0657be4361b8817db15c88bac76023ff36ba19041` |
| 7 | `def` | [cardinality](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/cardinality--2752d98992112d883bc15de1.md) | 76 | `declaration-track:2752d98992112d883bc15de1d188a0804b148ca4b1d88a79aebf2501fdbf3443` |
| 8 | `def` | [mixedRadix](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradix--17631fa72ff118e62d364101.md) | 81 | `declaration-track:17631fa72ff118e62d36410144e2a965e73aac3fa740ec874288ef924d77636e` |
| 9 | `def` | [zero](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/zero--4b2e00b0bd0ff0289dccf33d.md) | 87 | `declaration-track:4b2e00b0bd0ff0289dccf33d73806341a7ae18dc518ffa607c911114ac61e7fb` |
| 10 | `theorem` | [mixedRadix_zero](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradix-zero--87a1bc9c170a7b7a24d86252.md) | 95 | `result-track:87a1bc9c170a7b7a24d862524191c254af171d2da3de09ff7283d34c4a1ac3ce` |
| 11 | `theorem` | [cardinality_positive](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/cardinality-positive--3f7c51caef2154baf90a491e.md) | 106 | `result-track:3f7c51caef2154baf90a491e9e0bad3661f9140b23a1d0016e5eabccdfbe05d9` |
| 12 | `def` | [ofNat](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/ofnat--2dce1c09c34cd3c7ad36c17c.md) | 118 | `declaration-track:2dce1c09c34cd3c7ad36c17cdc8dd82c8dafdc10d1071369444bbaa8d61d7b05` |
| 13 | `theorem` | [mixedRadix_ofNat](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradix-ofnat--31fb92297ad8dd4058d028e5.md) | 126 | `result-track:31fb92297ad8dd4058d028e5647957d2895a5acd19c3028ccb315f3e70a2f5d3` |
| 14 | `theorem` | [mixedRadix_injective](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradix-injective--98a2cc92fad732a78e51833f.md) | 149 | `result-track:98a2cc92fad732a78e51833f0da24da11aab234c5432906b8cf726d78726850d` |
| 15 | `theorem` | [mixedRadix_lt_cardinality](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradix-lt-cardinality--a1aeca782a065bc4f0aaa42f.md) | 179 | `result-track:a1aeca782a065bc4f0aaa42ff6cf6f0ea173554b6b7db8b89d495c0e151fbbe7` |
| 16 | `def` | [mixedRadixEquiv](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradixequiv--e343bcbeefd9a4870a6ef956.md) | 203 | `declaration-track:e343bcbeefd9a4870a6ef95617986300407f91d4611e3e20237bb6af2ef8459f` |
| 17 | `theorem` | [mixedRadixEquiv_apply](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/mixedradixequiv-apply--1a179584108155735bb6d6df.md) | 218 | `result-track:1a179584108155735bb6d6df694371ac9d244086babdc62ce7c8ef64fa32086c` |
| 18 | `def` | [triangular](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/triangular--29c41093fdd2a42de3ec09c7.md) | 230 | `declaration-track:29c41093fdd2a42de3ec09c77c7952cde9a8dc3272114a0262b5161f131fe97a` |
| 19 | `theorem` | [triangular_formula](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/triangular-formula--8825369ce74b1ab8a8ac6408.md) | 233 | `result-track:8825369ce74b1ab8a8ac6408456b95167baaf3682d0b9d864e26d981c50795fe` |
| 20 | `theorem` | [triangular_succ](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/triangular-succ--fa2b1ec97c74c6f10ca86fd6.md) | 239 | `result-track:fa2b1ec97c74c6f10ca86fd69e8d04ef4123dd95fef08b408ceffd455572ba3c` |
| 21 | `theorem` | [triangular_strictMono](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/triangular-strictmono--af0e5b5d76877548b689b90f.md) | 243 | `result-track:af0e5b5d76877548b689b90ff2ccf8689e4715164aced2198f08a4c5d59ac2e3` |
| 22 | `theorem` | [pair_eq_triangular](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/pair-eq-triangular--d4587d9a24a4e70803406e7a.md) | 248 | `result-track:d4587d9a24a4e70803406e7a5a1ae453e8743552792b5c65fa38388326173865` |
| 23 | `theorem` | [pair_lower](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/pair-lower--e070124c252d2e474c75ebf3.md) | 252 | `result-track:e070124c252d2e474c75ebf31fc95e5ab6f0029ac8d98b46a0e1d181fca93481` |
| 24 | `theorem` | [pair_upper](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/pair-upper--ee9baec703ba99dacbdb8989.md) | 257 | `result-track:ee9baec703ba99dacbdb89897d008bb7126f5e15461f34afd1ab2b1abdf12c75` |
| 25 | `theorem` | [pair_injective](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/pair-injective--0f8c96b2dadc84d58d10b178.md) | 262 | `result-track:0f8c96b2dadc84d58d10b178512d6faec409e503bf1294e9cc673a2f58143fb5` |
| 26 | `theorem` | [pair_injective₂](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/pair-injective--222597c49c9c3f7a1f2ff742.md) | 290 | `result-track:222597c49c9c3f7a1f2ff742a42de087c38f91123cfed1ab24cef7544b19c2e1` |
| 27 | `theorem` | [finiteSequenceCode_injective](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/finitesequencecode-injective--849e40f988cfa7b37eaccd7d.md) | 300 | `result-track:849e40f988cfa7b37eaccd7d44aaa20a5c601f4f8c2c8f4555e36d2a4a1cfde4` |
| 28 | `theorem` | [specificationCode_injective](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/specificationcode-injective--b3d5395b6ed313d83e30c3fb.md) | 324 | `result-track:b3d5395b6ed313d83e30c3fb22d5ba567a8897149fa7b17e8de497c8c3f8094c` |
| 29 | `structure` | [SequentialPrimeCarrierAddress](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/sequentialprimecarrieraddress--8dfe9e8d95fabec57f10ede9.md) | 331 | `declaration-track:8dfe9e8d95fabec57f10ede97ca27c433ad604c484c92414e3a091141ee37a8c` |
| 30 | `theorem` | [ext](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/ext--89b8a251411716d0379403d2.md) | 339 | `result-track:89b8a251411716d0379403d2caed50e755ebc65f6b5a672f3669149be6552f6a` |
| 31 | `def` | [code](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/code--48c742b64f670a6d942510d7.md) | 353 | `declaration-track:48c742b64f670a6d942510d7e696c6f43116322cccef9582405a185cc3b74716` |
| 32 | `theorem` | [code_injective](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/code-injective--8e2e623b22d957e9a5b43e9c.md) | 358 | `result-track:8e2e623b22d957e9a5b43e9c9b856722e8873cfe5193b6dd5dc54e6181e399c8` |
| 33 | `def` | [unitSpecification](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/unitspecification--d1ea070d46a36669a16ff295.md) | 381 | `declaration-track:d1ea070d46a36669a16ff295f2df363263a45bbda836615a341eac6ee3b376dd` |
| 34 | `def` | [unitCoordinate](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/unitcoordinate--78e2806aab01f1ed3fd7ae2d.md) | 388 | `declaration-track:78e2806aab01f1ed3fd7ae2da50b45781cb612b2a507ae02a14b69fb282a84fe` |
| 35 | `def` | [occurrenceEmbedding](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/occurrenceembedding--83bfdbca28f26a2397cd45db.md) | 394 | `declaration-track:83bfdbca28f26a2397cd45db47d4b3f44f2e782466f50187b866d36362e56aae` |
| 36 | `def` | [AddressImage](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/addressimage--3b2eca87662a9e47a2a35949.md) | 401 | `declaration-track:3b2eca87662a9e47a2a359494aa17c47dffcd482ed7f6e060613095d2ec9bae3` |
| 37 | `theorem` | [addressImage_infinite](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/addressimage-infinite--0be4353861ee1a8f7cf2c243.md) | 403 | `result-track:0be4353861ee1a8f7cf2c2430770342d29206015c5a5293b989fbd6a24e5b15f` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/instance--5e70a37d51078d960581f3e3.md) | 410 | `declaration-track:5e70a37d51078d960581f3e3bbfccf07668a4a2ac5122c5665c9cd2a30ca9226` |
| 39 | `def` | [increasingImageEnumeration](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/increasingimageenumeration--de8868c675f384b593e1d682.md) | 414 | `declaration-track:de8868c675f384b593e1d682efd1ff06e7f4a0bc4cbc67a43f7b010f4fed91e1` |
| 40 | `theorem` | [increasingImageEnumeration_coe](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/increasingimageenumeration-coe--23e6e1cd1308bdef9c2249da.md) | 417 | `result-track:23e6e1cd1308bdef9c2249da340d9a476e7aa030f4fffac6f4bc286cc1869888` |
| 41 | `def` | [filteredEnumeration](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/filteredenumeration--2c268183920f7de5bf3eac96.md) | 426 | `declaration-track:2c268183920f7de5bf3eac96ca069496a8ec092ab4e3a968bbaea7cda6dfac03` |
| 42 | `theorem` | [code_filteredEnumeration](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/code-filteredenumeration--1e1446e6f8ac73303ecc7143.md) | 431 | `result-track:1e1446e6f8ac73303ecc7143faffa2d2caf2119b83f53d6ef66a9cc172c06a38` |
| 43 | `def` | [canonicalEnumeration](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/canonicalenumeration--280a1c3a8a431010f60aba6f.md) | 440 | `declaration-track:280a1c3a8a431010f60aba6f3664c2cfb2da8ea829841cd3b75ad1d3875f6a6d` |
| 44 | `theorem` | [code_canonicalEnumeration](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/code-canonicalenumeration--d6cfd5d4467d08d592b6288b.md) | 451 | `result-track:d6cfd5d4467d08d592b6288b3386f93add3e394baef7cd2d3ba5313ce37dc091` |
| 45 | `theorem` | [canonicalEnumeration_code_mem](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/canonicalenumeration-code-mem--b4a82f752f0319ef991eb9ae.md) | 456 | `result-track:b4a82f752f0319ef991eb9aef1e5b716b819e09607b25427dc0a202a078cad82` |
| 46 | `theorem` | [canonicalEnumeration_increasing](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/canonicalenumeration-increasing--9b7bbc028f68748aa8a7cda3.md) | 462 | `result-track:9b7bbc028f68748aa8a7cda36aca76db8712fc921e9025160d9b088af6c46b60` |
| 47 | `def` | [addressImageCount](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/addressimagecount--d4deef00ffbb4ed5dd4e31a5.md) | 469 | `declaration-track:d4deef00ffbb4ed5dd4e31a5ad4ba253e0de1b60423f8d90361b6037d7b1a0d5` |
| 48 | `theorem` | [canonicalEnumeration_inverse_count](../../../../mathematics/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/declarations/canonicalenumeration-inverse-count--c134b5e86eba800f19b0ae33.md) | 473 | `result-track:c134b5e86eba800f19b0ae33febc41f8fb808298ee227752277351c047818de6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
