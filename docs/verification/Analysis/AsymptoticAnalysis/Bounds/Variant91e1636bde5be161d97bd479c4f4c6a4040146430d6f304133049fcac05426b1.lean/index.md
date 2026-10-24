# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Bounds.Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a7a81121fba0ce6053c95315caabf80ee49a4e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a7a81121fba0ce6053c95315caabf80ee49a4e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean.json)

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
| 1 | `lemma` | [isBigO_exp_neg_mul_of_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/isbigo-exp-neg-mul-of-le--c949d839c76d5479633790bb.md) | 48 | `result-track:c949d839c76d5479633790bb094c34c857630f8539f9c68e1fc0a43fc1e257ca` |
| 2 | `lemma` | [exp_lt_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/exp-lt-aux--ddd8929fb85fcb3af41d7e39.md) | 55 | `result-track:ddd8929fb85fcb3af41d7e39d170804efdb71cf8827e18cea91a959c7998b965` |
| 3 | `lemma` | [isBigO_one_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/isbigo-one-aux--e75a6bae18c5b64dc6a6e55c.md) | 58 | `result-track:e75a6bae18c5b64dc6a6e55c5a9bc5a54dc3c2397d5b8fdcdf7fd73e1f2bc6e0` |
| 4 | `def` | [f_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-nat--6547ec3357725ea37cb723d9.md) | 70 | `declaration-track:6547ec3357725ea37cb723d9341f0e7fd77dbf382dd1cd4a2fa0d36e6c28bdc1` |
| 5 | `def` | [g_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/g-nat--c7621e7398c905d3b66ac29a.md) | 73 | `declaration-track:c7621e7398c905d3b66ac29aa84f66c9bba4956c357250c4f69676052e48481b` |
| 6 | `lemma` | [f_le_g_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-le-g-nat--a1de0259a2cee4e12e73273d.md) | 75 | `result-track:a1de0259a2cee4e12e73273d1a75db1b40fca822eeee9756acb48068ce5b320c` |
| 7 | `def` | [F_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-nat--b614d0fb56265944522debbd.md) | 85 | `declaration-track:b614d0fb56265944522debbd09414d8378d417702f9fb181d9fa5b763e159213` |
| 8 | `lemma` | [summable_f_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/summable-f-nat--9bedae8a3688eb2db80eae40.md) | 87 | `result-track:9bedae8a3688eb2db80eae400c4a4fde18e4548a357c65d8265b9ab93ea18ae1` |
| 9 | `lemma` | [F_nat_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-nat-zero-le--2fbc4c2294a831883e3e20df.md) | 115 | `result-track:2fbc4c2294a831883e3e20dfdb868382a615d7f746d9756f772da78d3a3f6419` |
| 10 | `lemma` | [F_nat_zero_zero_sub_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-nat-zero-zero-sub-le--b8e03ce61e9aa21921f149d2.md) | 124 | `result-track:b8e03ce61e9aa21921f149d2369d7c1043a5a6101b929924b90e98a1307f4531` |
| 11 | `lemma` | [isBigO_atTop_F_nat_zero_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/isbigo-attop-f-nat-zero-sub--061cc0653d2026610cf21f24.md) | 132 | `result-track:061cc0653d2026610cf21f243f9045492d02f43b07aa27ec07739040cdc71712` |
| 12 | `lemma` | [F_nat_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-nat-one-le--a4c08a09accab9a615ecbca8.md) | 160 | `result-track:a4c08a09accab9a615ecbca811bc6cce53a286a37066104952b288b895ee936f` |
| 13 | `lemma` | [isBigO_atTop_F_nat_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/isbigo-attop-f-nat-one--c8f6170b0a5ec7446d4cfc63.md) | 179 | `result-track:c8f6170b0a5ec7446d4cfc632928c0da08cef4be3d7cf57d75367a23233db6be` |
| 14 | `def` | [f_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-int--1a4d0df553c45f89d90d439b.md) | 209 | `declaration-track:1a4d0df553c45f89d90d439b9729c2c62c544568ea0dd238360db8cacd01b50f` |
| 15 | `lemma` | [f_int_ofNat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-int-ofnat--860b5bca087174e6902b86ed.md) | 211 | `result-track:860b5bca087174e6902b86edf00b2c8f1e24024a2a6b25624d0c0521140a49c5` |
| 16 | `lemma` | [f_int_negSucc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-int-negsucc--206537653052e0042ce245d5.md) | 215 | `result-track:206537653052e0042ce245d5b2f72bce45bf1925c5f5eaf2adf6f0912ab07390` |
| 17 | `lemma` | [summable_f_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/summable-f-int--ce83b64d550b1b842956985f.md) | 220 | `result-track:ce83b64d550b1b842956985f4c4ec27dd3ac3965d4f00a40f8619854a3ae88fa` |
| 18 | `def` | [F_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-int--03a7e8a575cdd1a6752f9182.md) | 233 | `declaration-track:03a7e8a575cdd1a6752f918280ec48e3a8ef94d0047fc8b305e2a085ae0e9c71` |
| 19 | `lemma` | [F_int_eq_of_mem_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/f-int-eq-of-mem-icc--6e5109b4a505f1c1e5f578b5.md) | 239 | `result-track:6e5109b4a505f1c1e5f578b5369a837a14c9b94f706706b58f86176abc95e699` |
| 20 | `lemma` | [isBigO_atTop_F_int_zero_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/isbigo-attop-f-int-zero-sub--4edd96c440399f8e2036c2e1.md) | 249 | `result-track:4edd96c440399f8e2036c2e12cb7809f2784688935792c13cc68f8de45618c8b` |
| 21 | `lemma` | [isBigO_atTop_F_int_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variant91e1636bde5be161d97bd479c4f4c6a4040146430d6f304133049fcac05426b1.lean/declarations/isbigo-attop-f-int-one--b891131b02e712d73ad7ffbb.md) | 266 | `result-track:b891131b02e712d73ad7ffbb67b6c9b7c3b0e4840a7f3a198a654d9b19997e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
