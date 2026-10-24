# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05aa97eb574541d2e4ba363f384ee082b988e144",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05aa97eb574541d2e4ba363f384ee082b988e144`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean.json)

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
| 1 | `theorem` | [infinite_setOfPred_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/infinite-setofpred-prime--60a1329df9af494b81995253.md) | 35 | `result-track:60a1329df9af494b81995253a1bfde7c68067181b72595ba5a39c2c2e07a8c76` |
| 2 | `instance` | [Primes.infinite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primes-infinite--a68c9a0866868ba206264b73.md) | 40 | `declaration-track:a68c9a0866868ba206264b73c2293a349c074033f9900001098dd113f99706e7` |
| 3 | `instance` | [Primes.countable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primes-countable--7ab67c092238ab2324a1ec84.md) | 42 | `declaration-track:7ab67c092238ab2324a1ec84111c89bc0cf6741c5dfe928fb91a6522996233f5` |
| 4 | `def` | [primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors--94c75a696c3be742cb4f6bb0.md) | 45 | `declaration-track:94c75a696c3be742cb4f6bb0ca47ff49e290325f2934d81dab30f03ebe692899` |
| 5 | `lemma` | [toFinset_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/tofinset-factors--930079ef2c643cb2bf49bf1d.md) | 47 | `result-track:930079ef2c643cb2bf49bf1d8653d4b7d221a6c7f5f71e784aadc31cf7f32a00` |
| 6 | `lemma` | [mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/mem-primefactors--5e7e1dc578e7145da7e0bf72.md) | 49 | `result-track:5e7e1dc578e7145da7e0bf72f2b9ee28290fb54d2697f4159763eb95bbc01eae` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/mem-primefactors-of-ne-zero--23c47b28e656b43350272121.md) | 52 | `result-track:23c47b28e656b43350272121a5b8a75fb6f85f98a555da5a889db5c0184da741` |
| 8 | `lemma` | [Prime.mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/prime-mem-primefactors--eacc4f32849822ac9ff74238.md) | 55 | `result-track:eacc4f32849822ac9ff74238e6b7932b377fda5e81e16e581a805e1aca408b1d` |
| 9 | `lemma` | [Prime.mem_primeFactors'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/prime-mem-primefactors--702110eaa3e4bbb9c3d9dff7.md) | 59 | `result-track:702110eaa3e4bbb9c3d9dff7c6b2a726d9dd68720d95ac5191f2828b0196cdba` |
| 10 | `lemma` | [Prime.mem_primeFactors_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/prime-mem-primefactors-self--2f05beb6dc47d5751cbf5aaa.md) | 62 | `result-track:2f05beb6dc47d5751cbf5aaa77a93597f8a4ca50ef7d1408dba5d86d35f257c9` |
| 11 | `lemma` | [primeFactors_mono](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-mono--3a9d2e18dc5bd91f7a83ce92.md) | 65 | `result-track:3a9d2e18dc5bd91f7a83ce92acbc79b16f600232eeb9942b9d8b6b02e3da7d7e` |
| 12 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/mem-primefactors-iff-mem-primefactorslist--72853e5ccfc455d310b252b0.md) | 69 | `result-track:72853e5ccfc455d310b252b029bffde4f71bc2588bf12c7ab9e73555e89fdc91` |
| 13 | `lemma` | [prime_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/prime-of-mem-primefactors--6844583edbef4c8f5414d2dc.md) | 72 | `result-track:6844583edbef4c8f5414d2dc8cdb7bdc079f61f69e5bac34667c76dda91aa101` |
| 14 | `lemma` | [dvd_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/dvd-of-mem-primefactors--a6bd474d54d4ff802a6b2520.md) | 73 | `result-track:a6bd474d54d4ff802a6b2520621ff161a584836c9169b9b640bc068dec2f9f9a` |
| 15 | `lemma` | [pos_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/pos-of-mem-primefactors--78a168393c30dafb0f67ae29.md) | 75 | `result-track:78a168393c30dafb0f67ae2912e9e03bbfff94e2e3a03c748dddd15b345a2c00` |
| 16 | `lemma` | [le_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/le-of-mem-primefactors--10c66d4a63a3136daeccd9bc.md) | 78 | `result-track:10c66d4a63a3136daeccd9bce304172b703dc5a3baee9cb4a12195819fe78bf1` |
| 17 | `lemma` | [primeFactors_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-zero--be7b1ddc5ec5a51693654077.md) | 81 | `result-track:be7b1ddc5ec5a5169365407723fd509ce10174e69a2de85865b73357a843c36e` |
| 18 | `lemma` | [primeFactors_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-one--ecc8148a0ba982496f15ee32.md) | 85 | `result-track:ecc8148a0ba982496f15ee32931c3c4d1501fe791340445599029ff0ec030c48` |
| 19 | `lemma` | [primeFactors_eq_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-eq-empty--75554cd4c8147b799e7e562a.md) | 89 | `result-track:75554cd4c8147b799e7e562a5296fba32f6506ae808d0d43ba2a6716da2c4bb0` |
| 20 | `lemma` | [nonempty_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/nonempty-primefactors--ce939c7b1f19aaa426b8004d.md) | 98 | `result-track:ce939c7b1f19aaa426b8004d0a042a9d09b51497996ea51d1530bfa4ec25e1c7` |
| 21 | `lemma` | [Prime.primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/prime-primefactors--0283f003aa74c9e9a2869eda.md) | 102 | `result-track:0283f003aa74c9e9a2869eda92596fa112afadb2ce878c51bca39def5126d773` |
| 22 | `lemma` | [primeFactors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-mul--7760a8d1455d892f37d1292b.md) | 105 | `result-track:7760a8d1455d892f37d1292ba0d2af80b5984d938beab76aa80277447d5b4e08` |
| 23 | `lemma` | [Coprime.primeFactors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/coprime-primefactors-mul--dbfd39359901dd6913b23607.md) | 110 | `result-track:dbfd39359901dd6913b23607fb340372a6a30e1908402c6e6d22f79eeaebee66` |
| 24 | `lemma` | [primeFactors_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-gcd--f12a546c2279c60c1c2f76f6.md) | 114 | `result-track:f12a546c2279c60c1c2f76f626c7dbd59687f9b88e80664762392ee41ef5cde0` |
| 25 | `lemma` | [disjoint_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/disjoint-primefactors--08c5898816b75bf30b8fe18c.md) | 118 | `result-track:08c5898816b75bf30b8fe18ce5b86fb15c55bf447a43dd69dcd618aab7d80a09` |
| 26 | `lemma` | [Coprime.disjoint_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/coprime-disjoint-primefactors--00457f64dd70688da5914739.md) | 123 | `result-track:00457f64dd70688da59147397bf8b3af9b1feb605761fec2ef1107c2306cc366` |
| 27 | `lemma` | [primeFactors_pow_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-pow-succ--ec1cde666ec3bba16bcbce53.md) | 127 | `result-track:ec1cde666ec3bba16bcbce5323fceae6ab0203452cf0beea6713ecf20a9be329` |
| 28 | `lemma` | [primeFactors_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-pow--ebf01f68d53a343888a8a274.md) | 134 | `result-track:ebf01f68d53a343888a8a274ab687f8c27d4992d6bf14d4b9aba2dd0716f3cb1` |
| 29 | `lemma` | [primeFactors_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean/declarations/primefactors-prime-pow--d26192c825789f1ab51c2e35.md) | 140 | `result-track:d26192c825789f1ab51c2e35ea74eef139ea00080bdc9a24b85408e6ca0c730e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
