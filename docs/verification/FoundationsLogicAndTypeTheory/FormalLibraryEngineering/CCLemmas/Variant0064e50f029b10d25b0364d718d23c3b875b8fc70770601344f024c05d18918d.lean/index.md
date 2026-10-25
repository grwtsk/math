# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CCLemmas.Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5358ed084c5f37297abb83814a90eeccadecfee",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5358ed084c5f37297abb83814a90eeccadecfee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Logic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_eq_of_eq_true_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/iff-eq-of-eq-true-left--84f58516852c89f0c9e95903.md) | 12 | `result-track:84f58516852c89f0c9e95903185c7f97367fe4a551355725fea8f3cd38c67e0d` |
| 2 | `theorem` | [iff_eq_of_eq_true_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/iff-eq-of-eq-true-right--8d276eacab7f4a93a7dc5463.md) | 15 | `result-track:8d276eacab7f4a93a7dc54630e362589aa4a4185d14dd2969f4e383680e5d79b` |
| 3 | `theorem` | [iff_eq_true_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/iff-eq-true-of-eq--f432374d5b4179c2ea2ef5b5.md) | 18 | `result-track:f432374d5b4179c2ea2ef5b56f2c22abde3cc486e38f620b5791aae0f57d3b3f` |
| 4 | `theorem` | [and_eq_of_eq_true_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/and-eq-of-eq-true-left--e2403da16fb97c5189552a7d.md) | 21 | `result-track:e2403da16fb97c5189552a7dbf5910258498feee86c8adc185afcb771dcbc1f5` |
| 5 | `theorem` | [and_eq_of_eq_true_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/and-eq-of-eq-true-right--b69cf02a36f25a211e95299c.md) | 24 | `result-track:b69cf02a36f25a211e95299c0a53a1f5a67a2fca0c369166939302504bb310b4` |
| 6 | `theorem` | [and_eq_of_eq_false_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/and-eq-of-eq-false-left--c2229b450360132934e4ac70.md) | 27 | `result-track:c2229b450360132934e4ac70b3193ff379a97da3672bf2c15e56a91f21af3fd1` |
| 7 | `theorem` | [and_eq_of_eq_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/and-eq-of-eq-false-right--2d0fc17114955fcfb698be9c.md) | 30 | `result-track:2d0fc17114955fcfb698be9c882cc4964e53ddf74c96fc3ef978630f09d38830` |
| 8 | `theorem` | [and_eq_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/and-eq-of-eq--409b99994738af7603fb8af3.md) | 33 | `result-track:409b99994738af7603fb8af3ab865ee0fa58338978ae8531f9cb256013abec32` |
| 9 | `theorem` | [or_eq_of_eq_true_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/or-eq-of-eq-true-left--f599f5f90d9f4bb2fd4778c9.md) | 36 | `result-track:f599f5f90d9f4bb2fd4778c9095d019049093cf7badf1059222fe7ec9383f3ca` |
| 10 | `theorem` | [or_eq_of_eq_true_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/or-eq-of-eq-true-right--9479279751c6da62ee62f7a9.md) | 39 | `result-track:9479279751c6da62ee62f7a9c7b24b08d1554e50760f34bb82da80e54bb80a6e` |
| 11 | `theorem` | [or_eq_of_eq_false_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/or-eq-of-eq-false-left--85ed72e528424e5a71755fa3.md) | 42 | `result-track:85ed72e528424e5a71755fa34ac6eacfcd5b5f8c20c10daeb7497ff3ce0c0a7d` |
| 12 | `theorem` | [or_eq_of_eq_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/or-eq-of-eq-false-right--2f64a18940afd3b994455f0b.md) | 45 | `result-track:2f64a18940afd3b994455f0bedf9cf0925962a1f58741bf9979ab8031a0ffb97` |
| 13 | `theorem` | [or_eq_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/or-eq-of-eq--c7bd7681d6125eac5f3be253.md) | 48 | `result-track:c7bd7681d6125eac5f3be253b4f27f7cb7fef850df3be2bbeb240eae625e1340` |
| 14 | `theorem` | [imp_eq_of_eq_true_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/imp-eq-of-eq-true-left--38dee72bbd60230b08cd097e.md) | 51 | `result-track:38dee72bbd60230b08cd097e2b544e98f9a9703e396063e5e36a8f46d5abc6a8` |
| 15 | `theorem` | [imp_eq_of_eq_true_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/imp-eq-of-eq-true-right--7795ff7671ad1f32bf1112b4.md) | 54 | `result-track:7795ff7671ad1f32bf1112b4e227a346e79225f35fa563d132b335cf491597ea` |
| 16 | `theorem` | [imp_eq_of_eq_false_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/imp-eq-of-eq-false-left--630387577a647ba0849987f5.md) | 57 | `result-track:630387577a647ba0849987f5ab4337c6b798cd19658990c839b3f57850bd72fc` |
| 17 | `theorem` | [imp_eq_of_eq_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/imp-eq-of-eq-false-right--2330eda5c0c22d9df690becc.md) | 60 | `result-track:2330eda5c0c22d9df690beccb3c1edc3e688889e2565df204bd1a0cbb7c1817f` |
| 18 | `theorem` | [not_imp_eq_of_eq_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/not-imp-eq-of-eq-false-right--922d08234c54ae072a229199.md) | 65 | `result-track:922d08234c54ae072a229199bb33c6031119ff51ad517ccc05ad1515faedede2` |
| 19 | `theorem` | [imp_eq_true_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/imp-eq-true-of-eq--b1644f5863fcbef956b8e465.md) | 69 | `result-track:b1644f5863fcbef956b8e4656dff5aba9e9034ce4efc8252bf611045bc2036c0` |
| 20 | `theorem` | [not_eq_of_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/not-eq-of-eq-true--ea5f43d598c131ca7b6201bd.md) | 72 | `result-track:ea5f43d598c131ca7b6201bd71102632a2a5f822d47df6ddcb010632ad68a06f` |
| 21 | `theorem` | [not_eq_of_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/not-eq-of-eq-false--248e7291b51f29911f8c617a.md) | 75 | `result-track:248e7291b51f29911f8c617a8e1de863ba9d81e8dcad98c781a11f23cd315887` |
| 22 | `theorem` | [false_of_a_eq_not_a](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/false-of-a-eq-not-a--4960a7804556ebabb7480387.md) | 78 | `result-track:4960a7804556ebabb748038716e75749893f8819c4cb0efaadd40ddaafaecc81` |
| 23 | `theorem` | [if_eq_of_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/if-eq-of-eq-true--4f23eef40683137417cbc2fd.md) | 84 | `result-track:4f23eef40683137417cbc2fd3f6d7f609359939fdda5b9783ddf34f14f6593d3` |
| 24 | `theorem` | [if_eq_of_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/if-eq-of-eq-false--7826ca94358fba43b291b9e7.md) | 88 | `result-track:7826ca94358fba43b291b9e78f1a59f7fe7a06701db1973958291a8c922f7489` |
| 25 | `theorem` | [if_eq_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/if-eq-of-eq--c25f3b71da87756738ed3d51.md) | 92 | `result-track:c25f3b71da87756738ed3d5189501121ee0cd51ddf94127dd7c3c930c3c56dac` |
| 26 | `theorem` | [eq_true_of_and_eq_true_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/eq-true-of-and-eq-true-left--19a0bee9ca74d2385c7c6607.md) | 98 | `result-track:19a0bee9ca74d2385c7c6607dc6c53c9889f0a34af2dc88c690641a43316ed44` |
| 27 | `theorem` | [eq_true_of_and_eq_true_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/eq-true-of-and-eq-true-right--74c5d594b94694d3a1b92d51.md) | 101 | `result-track:74c5d594b94694d3a1b92d51a2d773080e706476aeebeb5d2bec6ecef8329e95` |
| 28 | `theorem` | [eq_false_of_or_eq_false_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/eq-false-of-or-eq-false-left--c1a284f8e3792a34c46cc2b2.md) | 104 | `result-track:c1a284f8e3792a34c46cc2b2ceede3036377b398c2261be59919e1be400c3c6b` |
| 29 | `theorem` | [eq_false_of_or_eq_false_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/eq-false-of-or-eq-false-right--f9e1dd7d70de5bc392396f90.md) | 107 | `result-track:f9e1dd7d70de5bc392396f9044352563a081534536c81cc7af1dc8a798a4332f` |
| 30 | `theorem` | [eq_false_of_not_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/eq-false-of-not-eq-true--2cf60a96fcb34c409889b352.md) | 110 | `result-track:2cf60a96fcb34c409889b3527bf29b244f4b03314395eaa1801c2952d9a59544` |
| 31 | `theorem` | [eq_true_of_not_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/eq-true-of-not-eq-false--076780b9e7e6a38a480a002c.md) | 115 | `result-track:076780b9e7e6a38a480a002cd8d38dfcd496df1dc81d70f2e7133f7e3e03cc20` |
| 32 | `theorem` | [ne_of_eq_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/ne-of-eq-of-ne--bece2e8bd13a2a9d60b4a572.md) | 118 | `result-track:bece2e8bd13a2a9d60b4a5728c78630bc21ef749a0b949d272f5bfa3a1be0462` |
| 33 | `theorem` | [ne_of_ne_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CCLemmas/Variant0064e50f029b10d25b0364d718d23c3b875b8fc70770601344f024c05d18918d.lean/declarations/ne-of-ne-of-eq--cf1f8d3a2a2f2b826abb0839.md) | 124 | `result-track:cf1f8d3a2a2f2b826abb0839d783a5d61adaf5059397d32000cfcb4de818690c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
