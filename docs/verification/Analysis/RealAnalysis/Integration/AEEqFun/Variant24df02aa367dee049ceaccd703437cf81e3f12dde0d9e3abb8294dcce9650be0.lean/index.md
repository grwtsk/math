# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqFun.Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b999ca80caa8e7b9e65cc3bd106c177d33ac61e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b999ca80caa8e7b9e65cc3bd106c177d33ac61e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable--c16373b48a6c537d5ad26d62.md) | 48 | `declaration-track:c16373b48a6c537d5ad26d6220063ffd3addb30e26aa95321411e616f75de782` |
| 2 | `theorem` | [integrable_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-mk--85f1329c3c333c96b712a41c.md) | 51 | `result-track:85f1329c3c333c96b712a41c2db8aa1bcde7a17e3050490a5896529d4823b3d8` |
| 3 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-coefn--a2481f7a62f41bb4224ebcc1.md) | 57 | `result-track:a2481f7a62f41bb4224ebcc14c383ece3d635ba4c6b73e982c02d5d91354ba35` |
| 4 | `theorem` | [integrable_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-zero--9968d641ebba7322aa71defd.md) | 60 | `result-track:9968d641ebba7322aa71defd7eb5828a575838b199235a704b6abadf8d1cccd7` |
| 5 | `theorem` | [Integrable.neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-neg--c4f77931cae56b868f8cd11b.md) | 67 | `result-track:c4f77931cae56b868f8cd11b5554f7c1fbca2032465d4a8b9bf42fed122d5c0b` |
| 6 | `theorem` | [integrable_iff_mem_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-iff-mem-l1--dd5eda69d70a85e842a83c05.md) | 72 | `result-track:dd5eda69d70a85e842a83c050054d924474a253326b58f10d191046194e157fb` |
| 7 | `theorem` | [Integrable.add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-add--33c3a041e7d644db5fd4e3dc.md) | 76 | `result-track:33c3a041e7d644db5fd4e3dca9e2ab76d8efcdc11c5225db2ce0f937648e8acd` |
| 8 | `theorem` | [Integrable.sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-sub--9768114872f1d46936f45d82.md) | 81 | `result-track:9768114872f1d46936f45d8260dfa0fd3f89dc1179011313e8194e5acffd448a` |
| 9 | `theorem` | [Integrable.smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-smul--560f2bbad276e4274b230d22.md) | 91 | `result-track:560f2bbad276e4274b230d222f8b761a34df0a1d6000da029464f6790dd766bd` |
| 10 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/integrable-coefn--5e2b5e8cd622de58d188a97e.md) | 104 | `result-track:5e2b5e8cd622de58d188a97e06a12aeedf088affd98ed887122abf3e3a8ed8b9` |
| 11 | `theorem` | [hasFiniteIntegral_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/hasfiniteintegral-coefn--593144ccf1d86d42e987c11a.md) | 108 | `result-track:593144ccf1d86d42e987c11a5d3df6b0bdf10e5a56cc30471fd66036b067e6bb` |
| 12 | `theorem` | [stronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/stronglymeasurable-coefn--2b588a709b907293f5e46e98.md) | 112 | `result-track:2b588a709b907293f5e46e98df2c71e7f8b4d37effe8a808acfcf69efa9ec741` |
| 13 | `theorem` | [measurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/measurable-coefn--db28414d788c687b88a5a052.md) | 116 | `result-track:db28414d788c687b88a5a05256a27a54905d8c110e942bf9405354568e8440f8` |
| 14 | `theorem` | [aestronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/aestronglymeasurable-coefn--7bcffd2a308189ab422780c3.md) | 120 | `result-track:7bcffd2a308189ab422780c394debe32653dfa8c52eb8340cb942ed31a8d505f` |
| 15 | `theorem` | [aemeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/aemeasurable-coefn--a930cfd8f54bfbd13f4c4df5.md) | 124 | `result-track:a930cfd8f54bfbd13f4c4df5d98c74a5ed24ab043bb42baa50636306aeaf6221` |
| 16 | `theorem` | [edist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/edist-def--b69bde0ca6be3ad1bb8d66f4.md) | 127 | `result-track:b69bde0ca6be3ad1bb8d66f48a255a5dd867659f6995eb02282791f253b2f376` |
| 17 | `theorem` | [dist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/dist-def--7c924fc7d2112f43fe8d2aa6.md) | 132 | `result-track:7c924fc7d2112f43fe8d2aa6e63ee2ea783131b85c84e3d6985054e136312983` |
| 18 | `theorem` | [norm_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/norm-def--1b12ccb66f6dff25741fe0a6.md) | 135 | `result-track:1b12ccb66f6dff25741fe0a65871df455ea2e1a9076c1a53997c2e28d3e8f898` |
| 19 | `theorem` | [norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/norm-sub-eq-lintegral--3c7f72c186ce4edc79cb2e8f.md) | 141 | `result-track:3c7f72c186ce4edc79cb2e8f80cf674114abdf6425b0c1d33d96fd23faa831a4` |
| 20 | `theorem` | [ofReal_norm_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/ofreal-norm-eq-lintegral--fe9d5d6077f2333581fb8c16.md) | 148 | `result-track:fe9d5d6077f2333581fb8c161a4e451e7d77c638adc87e124c37f7e13db129e3` |
| 21 | `theorem` | [ofReal_norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/ofreal-norm-sub-eq-lintegral--0ec3051cced72eac20e091bd.md) | 155 | `result-track:0ec3051cced72eac20e091bd0f257d58ab7a0c1543a7ed9a3861a56b1db7aafb` |
| 22 | `def` | [toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1--089427239f5248c0a289adca.md) | 169 | `declaration-track:089427239f5248c0a289adca6fed8ced90332067d65d28967a62636dd3ca4f3e` |
| 23 | `theorem` | [toL1_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-coefn--9aa90f2368fb6bef1bfbfbd3.md) | 173 | `result-track:9aa90f2368fb6bef1bfbfbd3f2da03a65ad9884c5ee5c91425a995ad7ae75a0f` |
| 24 | `theorem` | [coeFn_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/coefn-tol1--d60e170b1bd26acd8eead86c.md) | 176 | `result-track:d60e170b1bd26acd8eead86c442d83656a6042b518bc86052db238691c4cec3f` |
| 25 | `theorem` | [toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-zero--10a84c27530c68f13b2e9928.md) | 180 | `result-track:10a84c27530c68f13b2e992804a1b9c9f4d1e4ee9cca2461045243b41f92a82a` |
| 26 | `theorem` | [toL1_eq_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-eq-mk--855c3cad67b91cba236df1ab.md) | 184 | `result-track:855c3cad67b91cba236df1ab92e1e15db7840716cb48d422955a3b12ba1863e5` |
| 27 | `theorem` | [toL1_eq_toL1_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-eq-tol1-iff--5615eba996ef40b8095f65b7.md) | 189 | `result-track:5615eba996ef40b8095f65b7b88c6bc9e6d189eaaca47630aa981a21b9958de8` |
| 28 | `theorem` | [toL1_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-add--ca78740a10fbb30dfacd3078.md) | 193 | `result-track:ca78740a10fbb30dfacd3078df5d25e6c8b43de5c62cd01ec78e1a6c52936fd5` |
| 29 | `theorem` | [toL1_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-neg--0772a0f8c0a62993d25f8809.md) | 197 | `result-track:0772a0f8c0a62993d25f8809b58e03c5d06368d8042b298d749a88bccee0dbec` |
| 30 | `theorem` | [toL1_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-sub--e577d7d1d796e08f3fc77aa4.md) | 200 | `result-track:e577d7d1d796e08f3fc77aa49f3f2cbc5ad52857b4f0c623415a071c6980907d` |
| 31 | `theorem` | [norm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/norm-tol1--316ce0ae48a17a17f3466d1f.md) | 204 | `result-track:316ce0ae48a17a17f3466d1f54434aa2da474f1f5c2494ae6a158a66e859f0de` |
| 32 | `theorem` | [enorm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/enorm-tol1--ce6924cceb37cd6ddf8a64ea.md) | 209 | `result-track:ce6924cceb37cd6ddf8a64eaf74e75e991609140011d1465c734be7b98d9ba52` |
| 33 | `theorem` | [norm_toL1_eq_lintegral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/norm-tol1-eq-lintegral-norm--950d19ad1b91c8fca3a3ddd6.md) | 213 | `result-track:950d19ad1b91c8fca3a3ddd664d81209724561351d7d118c599517894c7a0b44` |
| 34 | `theorem` | [norm_toL1_eq_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/norm-tol1-eq-lintegral-enorm--de790c0d9670cd0ab31e109b.md) | 217 | `result-track:de790c0d9670cd0ab31e109b4ccfc38fb729ebde1518894c4dc2179cc7869079` |
| 35 | `theorem` | [edist_toL1_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/edist-tol1-tol1--57012e306d97fe68c3b6eab5.md) | 222 | `result-track:57012e306d97fe68c3b6eab5f983fe8e45cf6d6cc86655701fb475e49c8a4189` |
| 36 | `theorem` | [edist_toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/edist-tol1-zero--ba8349c86d87ff3e4682d904.md) | 230 | `result-track:ba8349c86d87ff3e4682d90407450e80cea9cb10d4c888b617ef8e20bf2ad830` |
| 37 | `theorem` | [toL1_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-smul--792362236466744fd1428d86.md) | 237 | `result-track:792362236466744fd1428d8637416c0e4206cb42503fd2d446bcc2f98fbe9a5b` |
| 38 | `theorem` | [toL1_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant24df02aa367dee049ceaccd703437cf81e3f12dde0d9e3abb8294dcce9650be0.lean/declarations/tol1-smul--b0a02c714a3767680fc57dfb.md) | 241 | `result-track:b0a02c714a3767680fc57dfb0766d49ae26e9a4bae347aacdc0d5713fbe6c875` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
