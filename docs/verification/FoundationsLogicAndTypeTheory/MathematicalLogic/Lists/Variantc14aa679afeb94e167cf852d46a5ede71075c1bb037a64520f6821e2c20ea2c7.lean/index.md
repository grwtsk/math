# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lists.Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e1cea3a626b79a5705df59aa64caa95c060851",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e1cea3a626b79a5705df59aa64caa95c060851`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean.json)

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
| 1 | `inductive` | [Lists'.](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/lists--0590b56403f00fe5990db89a.md) | 66 | `declaration-track:0590b56403f00fe5990db89a4d6643dd05b5f4ac2efede8ed444fa7109aba24e` |
| 2 | `def` | [Lists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/lists--af4e0bcb1af58235255599fd.md) | 76 | `declaration-track:af4e0bcb1af58235255599fd9f6d5274c845253042cef0d1c8eb9caf1b28bb48` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--0cebad852ec87f5ae8636fdd.md) | 81 | `declaration-track:0cebad852ec87f5ae8636fdd2128e144b050695385187c463d0429066a8bb70c` |
| 4 | `def` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/cons--41c62194ca5fb77c0efe7ff9.md) | 86 | `declaration-track:41c62194ca5fb77c0efe7ff96033c1cf000e70b222ba96057ec35f784c346d04` |
| 5 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/tolist--8337726c9a5a7bac7bce1c70.md) | 91 | `declaration-track:8337726c9a5a7bac7bce1c70acb9eaa65b5f88ae21c294b06dcd2d41881ae03e` |
| 6 | `theorem` | [toList_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/tolist-cons--485f2eda83041442bf63c0ed.md) | 97 | `result-track:485f2eda83041442bf63c0ed62995cc6359f3e5a921a1f0b741e347ee6aade5c` |
| 7 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/oflist--1bbae00946654ad0cdd1a3d8.md) | 101 | `declaration-track:1bbae00946654ad0cdd1a3d884ffc79bcb3f5980038a4fc33e402755d805510a` |
| 8 | `theorem` | [to_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/to-oflist--99f6a3d090d63ade19bf164a.md) | 106 | `result-track:99f6a3d090d63ade19bf164a876d7dc92f7f4d865bd42c2ae4061d93282231ee` |
| 9 | `theorem` | [of_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/of-tolist--e72bbc58597529a433341fc1.md) | 109 | `result-track:e72bbc58597529a433341fc12a057024618ffbd3f4f2a284f5993cd895d0dfd8` |
| 10 | `def` | [recOfList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/recoflist--a641619d23e0b163457afdd9.md) | 122 | `declaration-track:a641619d23e0b163457afdd90cc684c510733e37032e2bcff1bf2f47ff3242db` |
| 11 | `inductive` | [Lists.Equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/lists-equiv--8434f9cc26ffe836b6a1fe73.md) | 129 | `declaration-track:8434f9cc26ffe836b6a1fe73cb8cfe42ad1abdd504cff1997b9c3e17659590fb` |
| 12 | `inductive` | [Lists'.Subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/lists-subset--595d86b18ad636350ac0bdd0.md) | 135 | `declaration-track:595d86b18ad636350ac0bdd0e2d1ee4f2ba5b3e436db79fe4f8dcec9515ed81c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--e68a54a65a4e2086b44c7fa1.md) | 146 | `declaration-track:e68a54a65a4e2086b44c7fa11c2b79a9dae30c9c18dc87a66cf510d4d5d62fc7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--feea367020a099757d12f2e0.md) | 151 | `declaration-track:feea367020a099757d12f2e024b9376afcdde954e419f0ca8dcbd20aa7fdbe56` |
| 15 | `theorem` | [mem_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem-def--846cf1a3abfb5b985e0c9b36.md) | 154 | `result-track:846cf1a3abfb5b985e0c9b36ab328c6ce64cec8f7bd7ac11c7ac76e1d12ca5fa` |
| 16 | `theorem` | [mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem-cons--4daf614ade8ce1c62e69af99.md) | 158 | `result-track:4daf614ade8ce1c62e69af99eccb471c632da227479f4229cc40f1aa2c68053f` |
| 17 | `theorem` | [cons_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/cons-subset--2dfe57f18c828f185738ab7c.md) | 161 | `result-track:2dfe57f18c828f185738ab7c37a87bb53e5408f5cafa12525dc378627cbf632d` |
| 18 | `theorem` | [ofList_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/oflist-subset--76e4f48601d52e77f5ad6a57.md) | 169 | `result-track:76e4f48601d52e77f5ad6a57eb6335e934be72f8da622b84388d093e9d0f9ccd` |
| 19 | `theorem` | [Subset.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/subset-refl--c4b1465309f9f4817b11685d.md) | 178 | `result-track:c4b1465309f9f4817b11685dfb890a15cd0904b3eede18df5f1b01c9a62a370d` |
| 20 | `theorem` | [subset_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/subset-nil--da22279a2064078169b160bd.md) | 181 | `result-track:da22279a2064078169b160bd574e7bb7be212ffe9f2980319ba4ce85b40e89ce` |
| 21 | `theorem` | [mem_of_subset'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem-of-subset--62f79428373753743874cd1b.md) | 188 | `result-track:62f79428373753743874cd1b6120209ae68bcc6a8a488163f566617be7962474` |
| 22 | `theorem` | [subset_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/subset-def--89dd6fe8c8a1f58d220fa7af.md) | 197 | `result-track:89dd6fe8c8a1f58d220fa7af22afb62941b9a4be4c5b526b6f29fd2597e2de77` |
| 23 | `def` | [atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/atom--18f862f64e72f9c083300614.md) | 212 | `declaration-track:18f862f64e72f9c08330061478800623de6c909f5133d4f16a4f1417be2ca929` |
| 24 | `def` | [of'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/of--0a3c14d22de228b5bd085823.md) | 217 | `declaration-track:0a3c14d22de228b5bd085823843a12b42d8653702591466efc5aa0adda3a564a` |
| 25 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/tolist--289f59d968beb51de95ed80c.md) | 222 | `declaration-track:289f59d968beb51de95ed80ce15d55e36a430a9c08383a8b4046570d527f9739` |
| 26 | `def` | [IsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/islist--42153f3ea9fb2b441d79ebbe.md) | 226 | `declaration-track:42153f3ea9fb2b441d79ebbe9f82ff02b3b8b851335865e570a24bb375fc7ce0` |
| 27 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/oflist--0ae7af3ff8b79d5eb95c17c0.md) | 230 | `declaration-track:0ae7af3ff8b79d5eb95c17c0186b2e23212e8e3a9b8b654ac43db9700d504b3d` |
| 28 | `theorem` | [isList_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/islist-tolist--4cf1b0dbee7a3439b45ec3ed.md) | 233 | `result-track:4cf1b0dbee7a3439b45ec3ed7fbdb6d0e10357b1e16e46ba469d8fecfd18a023` |
| 29 | `theorem` | [to_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/to-oflist--137ac8b9f1609c41673b3f4b.md) | 236 | `result-track:137ac8b9f1609c41673b3f4b07f79b89b768babfe1c55e90cf3f709e08062846` |
| 30 | `theorem` | [of_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/of-tolist--72ea04ddf0366b0dd7eadd7e.md) | 239 | `result-track:72ea04ddf0366b0dd7eadd7e74135fc0d609a268e96b3cf7d386c1aeb637d7ac` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--8469fca61baae516f46169ad.md) | 242 | `declaration-track:8469fca61baae516f46169ad8a8465aa27d12c6fcb106c12eaed5e75025859ec` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--0f413b23ad5adc8be33914ee.md) | 245 | `declaration-track:0f413b23ad5adc8be33914eee3cf6e67807bfae4ec5b3543da662c4bca57d173` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--97fd17918ac87501feef62e9.md) | 247 | `declaration-track:97fd17918ac87501feef62e9875ebe9fc3b511afd57ab9a5e434fe870500c9d3` |
| 34 | `def` | [inductionMut](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/inductionmut--cb79e08de6cd310a89c7527b.md) | 250 | `declaration-track:cb79e08de6cd310a89c7527b7a31778ad7963f25601a6bd8432c53c961d55298` |
| 35 | `def` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem--ab17ba9ea9a1daa156ef40ec.md) | 270 | `declaration-track:ab17ba9ea9a1daa156ef40ececb92d84d70d1a8aed5c9c7f196956961bff0c52` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--e7dd5b51413d46841a795573.md) | 274 | `declaration-track:e7dd5b51413d46841a795573609856c42a368ceea32e4f9909ee5f0bb33628c7` |
| 37 | `theorem` | [isList_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/islist-of-mem--cdc9a16b1c3c315082f20964.md) | 277 | `result-track:cdc9a16b1c3c315082f2096462ef9f6d4f50b2d45dbdc907125b6d54defc527e` |
| 38 | `theorem` | [Equiv.antisymm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/equiv-antisymm-iff--37d6e4293bd747a56de32835.md) | 281 | `result-track:37d6e4293bd747a56de328355745c9ffc013c5b482cd096ba501aa57d5043eb7` |
| 39 | `theorem` | [equiv_atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/equiv-atom--c83e2b4a4ab662af3dc30c16.md) | 289 | `result-track:c83e2b4a4ab662af3dc30c166e0f5b5c6882519d82ba923dc59bdfbebf849315` |
| 40 | `theorem` | [Equiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/equiv-symm--4cf4dd6e6f12596e49ce1269.md) | 293 | `result-track:4cf4dd6e6f12596e49ce12696aecbf061e89aa58c98e9a27dfd5020b8b0c87c6` |
| 41 | `theorem` | [Equiv.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/equiv-trans--89b8c99963a0c3c6c5ea74af.md) | 296 | `result-track:89b8c99963a0c3c6c5ea74af778a1a24194b1847525117bd9f45b7b9c828f04e` |
| 42 | `instance` | [instSetoidLists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instsetoidlists--42f2246c045a7631e4c4692c.md) | 322 | `declaration-track:42f2246c045a7631e4c4692c98f54bccff7cadb1f24cfbaff740f898f28436e4` |
| 43 | `theorem` | [sizeof_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/sizeof-pos--e895b75a8429769a285cf455.md) | 327 | `result-track:e895b75a8429769a285cf4557a49e118d48d2270d13b6a79e2fbf6db8cae00cd` |
| 44 | `theorem` | [lt_sizeof_cons'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/lt-sizeof-cons--bca1f80732f56a77abe5f73c.md) | 331 | `result-track:bca1f80732f56a77abe5f73c6555adf65010513f339f9d51003cafde3dfd2b0d` |
| 45 | `def` | [Equiv.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/equiv-decidable--8d2a30a347314392085f483c.md) | 341 | `declaration-track:8d2a30a347314392085f483ca48449f83f06971e57eff307eaf9c2e741c8a6a7` |
| 46 | `def` | [Subset.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/subset-decidable--b313ae07a5a4e09f76e98e9e.md) | 364 | `declaration-track:b313ae07a5a4e09f76e98e9ee88ddcbb1c540b33e38dd697645cbe9b095cc8da` |
| 47 | `def` | [mem.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem-decidable--4fc59a0ba1a9cbd087914779.md) | 378 | `declaration-track:4fc59a0ba1a9cbd087914779155bb110239e95497305d548c28990b38315ae34` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--d314dac2aedb93bad3cbc75c.md) | 398 | `declaration-track:d314dac2aedb93bad3cbc75c8b9adafaa134c0f53174e7d09355ed188d8b5ad5` |
| 49 | `theorem` | [mem_equiv_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem-equiv-left--545cffc2c09a35d32449ff2d.md) | 407 | `result-track:545cffc2c09a35d32449ff2d5f6e739d11f9f0f4cd360407ce715c5dbde9404a` |
| 50 | `theorem` | [mem_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/mem-of-subset--ed17c7b1be5986821a5d2a33.md) | 411 | `result-track:ed17c7b1be5986821a5d2a33aedea38108f23421279b1adce7d8b6c8ad5468c5` |
| 51 | `theorem` | [Subset.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/subset-trans--503d538cbf0e8d28a21a1efd.md) | 414 | `result-track:503d538cbf0e8d28a21a1efddc7f880dfef818ae9467afbd3af9b667aedb5113` |
| 52 | `def` | [Finsets](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/finsets--e5e83079bb1299db1ae6b688.md) | 420 | `declaration-track:e5e83079bb1299db1ae6b688a269f738ea6709afa12b4ee9079a7352286322ba` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--1340693642c1cde29604f390.md) | 425 | `declaration-track:1340693642c1cde29604f3904a4e76d2ed9182ce415c748185d5de2873cf1af5` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--a656eed9935fc1a59a891f88.md) | 428 | `declaration-track:a656eed9935fc1a59a891f8820382629c1cd595992f0240a17bcdd1715a40e8a` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/declarations/instance--7bfc7c74723290d9ed4f065a.md) | 431 | `declaration-track:7bfc7c74723290d9ed4f065aa70bfdc543a08fe29badda47317acfa8dd3cd049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
