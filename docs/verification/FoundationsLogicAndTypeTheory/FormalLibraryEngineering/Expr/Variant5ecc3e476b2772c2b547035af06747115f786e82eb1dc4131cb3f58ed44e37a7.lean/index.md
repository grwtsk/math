# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aa84c0eb0b6af118ad3e6f92cf97991b131e463",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aa84c0eb0b6af118ad3e6f92cf97991b131e463`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cache.Key](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/cache-key--1b1173ddcaa27d97f7dfdd19.md) | 46 | `declaration-track:1b1173ddcaa27d97f7dfdd19b621a9fc18aaf22849573c4d8f354f9fc2aacf17` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/instance--02c158f8911ba51347b4dbd6.md) | 51 | `declaration-track:02c158f8911ba51347b4dbd6f0238b6e1985da5b73cd91e65542c05abcb26d87` |
| 3 | `structure` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/cache--8a181171b1299c96a3c4008b.md) | 55 | `declaration-track:8a181171b1299c96a3c4008be0bc2305b4bf5b3b1439223de0a3e61174781927` |
| 4 | `def` | [Cache.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/cache-empty--df6aec2a8fd09872b249d60a.md) | 60 | `declaration-track:df6aec2a8fd09872b249d60a443960c860db7300a9f705c8a69e4ec98e2cc46b` |
| 5 | `def` | [Cache.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/cache-insert--0c91cd45585b7baef7d1d24b.md) | 64 | `declaration-track:0c91cd45585b7baef7d1d24bb35bb981bf401461cb324fa94cc7a38fa1002a4a` |
| 6 | `def` | [Cache.get?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/cache-get--95a0eb9c5203e1b6f51f9b0e.md) | 85 | `declaration-track:95a0eb9c5203e1b6f51f9b0e432323addd646d9da23e697487b634a326b6430d` |
| 7 | `def` | [Cache.cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/cache-cast--890c9c4b93c78fc669b4c5e9.md) | 102 | `declaration-track:890c9c4b93c78fc669b4c5e92fe6a59a617b89be053f1581019b886e11e551f2` |
| 8 | `structure` | [WithCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/withcache--1bd3206575423bf5f42e78ba.md) | 112 | `declaration-track:1bd3206575423bf5f42e78bab576f1329edc25c894ec3b1ddfca03d08b14fd1b` |
| 9 | `structure` | [Return](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/return--4a57e480d297fe55054acfe8.md) | 116 | `declaration-track:4a57e480d297fe55054acfe8ad33ef533c60d92e947a0524f60bc3d9fb0df5d6` |
| 10 | `def` | [bitblast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/bitblast--8138ccdcb5188fd1054726cb.md) | 121 | `declaration-track:8138ccdcb5188fd1054726cb74edb18f0172041261137ede7f7f149feafb58bd` |
| 11 | `theorem` | [goCache_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/gocache-decl-eq--a15e710c3c632076f3e3c626.md) | 321 | `result-track:a15e710c3c632076f3e3c6263117579abb8278efdbef5ff8cc1f603648fa386b` |
| 12 | `theorem` | [go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/go-decl-eq--00eeb743b1567e3e68c709b2.md) | 334 | `result-track:00eeb743b1567e3e68c709b2b6a671a2a0da3cbd7fe4659a7bff9aeec6ed01dd` |
| 13 | `theorem` | [bitblast_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/bitblast-decl-eq--c622e1dbb421b8ec488e8d06.md) | 418 | `result-track:c622e1dbb421b8ec488e8d06d951fc60f4fcb4bac4db59478590643c5e8f4659` |
| 14 | `theorem` | [bitblast_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/bitblast-le-size--19cb4dabde9d12c30191c02a.md) | 424 | `result-track:19cb4dabde9d12c30191c02a3d9baece738cf8c859b8b50d60932e8befaf64a1` |
| 15 | `theorem` | [bitblast_lt_size_of_lt_aig_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant5ecc3e476b2772c2b547035af06747115f786e82eb1dc4131cb3f58ed44e37a7.lean/declarations/bitblast-lt-size-of-lt-aig-size--2d09f654a8c371e7bc8204c1.md) | 428 | `result-track:2d09f654a8c371e7bc8204c10a27edeb4720e05af49085823dc970655a1c7d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
