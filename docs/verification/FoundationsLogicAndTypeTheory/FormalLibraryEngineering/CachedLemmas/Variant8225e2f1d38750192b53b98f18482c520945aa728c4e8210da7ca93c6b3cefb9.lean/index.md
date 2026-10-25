# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CachedLemmas.Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55fef836e79e12c83baf83c5dc0aa3b365a7b93c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55fef836e79e12c83baf83c5dc0aa3b365a7b93c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_mkAtom_cached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/denote-mkatom-cached--e319469e4edb25e61d6f6a30.md) | 39 | `result-track:e319469e4edb25e61d6f6a301451ad1fc40be6fc7976e51769712497dab1d4e5` |
| 2 | `theorem` | [mkAtomCached_hit_aig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkatomcached-hit-aig--08dfc328c1e52a59c549faf5.md) | 51 | `result-track:08dfc328c1e52a59c549faf5a9314c99437147b6c96af14ef96f0d3af9dd51fe` |
| 3 | `theorem` | [mkAtomCached_miss_aig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkatomcached-miss-aig--332a373d703270b2e17299b4.md) | 59 | `result-track:332a373d703270b2e17299b4bd94fb53913cfecc0699fc520cde43f067ebb0b1` |
| 4 | `theorem` | [mkAtomCached_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkatomcached-decl-eq--e4c75e0516c90d90f709ad71.md) | 68 | `result-track:e4c75e0516c90d90f709ad71db54ab49f29ea611e405fcbe4e470f7e72196abf` |
| 5 | `theorem` | [mkAtomCached_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkatomcached-le-size--a957be784cf8534cc7062551.md) | 85 | `result-track:a957be784cf8534cc7062551608caea60834f73c4957af4a5d32de8a7aa1e412` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/instance--62493dc94968fd9630341139.md) | 92 | `declaration-track:62493dc94968fd96303411397658607b29ca3cb43c025dfc4a704384cbaf8308` |
| 7 | `theorem` | [mkAtomCached_eval_eq_mkAtom_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkatomcached-eval-eq-mkatom-eval--86cbcd86b41bd175efc69370.md) | 100 | `result-track:86cbcd86b41bd175efc69370e1730f85f8f3a642f84e42fd2a76b469f9652390` |
| 8 | `theorem` | [denote_mkConstCached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/denote-mkconstcached--9374a20b11dc0322de15c1de.md) | 112 | `result-track:9374a20b11dc0322de15c1de5c941904dfd40c966774e8c1bb1851f355afe46c` |
| 9 | `theorem` | [denote_mkGate_cached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/denote-mkgate-cached--325b977fdba1869198df4ca0.md) | 124 | `result-track:325b977fdba1869198df4ca0b79e06697e14a094e1350e4896b06fc5d3e0efee` |
| 10 | `theorem` | [mkGateCached.go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkgatecached-go-le-size--76125fb1297a8ce5670b2fc4.md) | 138 | `result-track:76125fb1297a8ce5670b2fc4db20c7bcff683066e73203095c1b783d018f92a3` |
| 11 | `theorem` | [mkGateCached_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkgatecached-le-size--407d6d86258bc00788374c68.md) | 151 | `result-track:407d6d86258bc00788374c686a5fa4dcd5ef865c94cd6ae49c3012b335d41dc6` |
| 12 | `theorem` | [mkGateCached.go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkgatecached-go-decl-eq--7588b07ba2be0eebdbae04fc.md) | 158 | `result-track:7588b07ba2be0eebdbae04fc34237b64e23a8bc9b2215e2fcabddaec7d56eb7f` |
| 13 | `theorem` | [mkGateCached_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkgatecached-decl-eq--938c5e4f5eb4d4388984168a.md) | 196 | `result-track:938c5e4f5eb4d4388984168a9012bbbb62558716c32f8504b1834ef90f3b8268` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/instance--6b09b2b8db6a1ce91c889029.md) | 207 | `declaration-track:6b09b2b8db6a1ce91c88902919c91eaf0cddf876bad44f58472d15ae8d011338` |
| 15 | `theorem` | [mkGateCached.go_eval_eq_mkGate_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkgatecached-go-eval-eq-mkgate-eval--2e6c577b4a13942a60ef9d13.md) | 213 | `result-track:2e6c577b4a13942a60ef9d138c1d5529cdccbebabd689dc5f95fc9c82ea09571` |
| 16 | `theorem` | [mkGateCached_eval_eq_mkGate_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedLemmas/Variant8225e2f1d38750192b53b98f18482c520945aa728c4e8210da7ca93c6b3cefb9.lean/declarations/mkgatecached-eval-eq-mkgate-eval--4ea1a379c94d5ff0ef0ca41f.md) | 238 | `result-track:4ea1a379c94d5ff0ef0ca41fa5d9d975796b5c1843f211f4d14c7e68dcd6096c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
