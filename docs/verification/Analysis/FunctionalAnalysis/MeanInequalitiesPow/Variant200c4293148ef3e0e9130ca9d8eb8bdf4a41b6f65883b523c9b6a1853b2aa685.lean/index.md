# Verification target: GRWTSK.Analysis.FunctionalAnalysis.MeanInequalitiesPow.Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "294c1d799ca703d41365f8e9ec8e80f149f64adc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `294c1d799ca703d41365f8e9ec8e80f149f64adc`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean.json)

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
| 1 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/pow-arith-mean-le-arith-mean-pow--6aa30554d491a567191e0264.md) | 66 | `result-track:6aa30554d491a567191e0264eadd2bbbe312ce2ceb5bc7e6f44693c30cfced29` |
| 2 | `theorem` | [pow_arith_mean_le_arith_mean_pow_of_even](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/pow-arith-mean-le-arith-mean-pow-of-even--ea2debb79d75365d043d1512.md) | 71 | `result-track:ea2debb79d75365d043d151215250a3b91a0654d2f4241c4cf4dfaa17241a6ae` |
| 3 | `theorem` | [zpow_arith_mean_le_arith_mean_zpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/zpow-arith-mean-le-arith-mean-zpow--d9138a57d27cf837abbc6f8d.md) | 76 | `result-track:d9138a57d27cf837abbc6f8d1ca02f0b067b28a145c1f556385c697cb91832e3` |
| 4 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--63233bf1ce446dd26437b690.md) | 81 | `result-track:63233bf1ce446dd26437b690302a21ceb8097a8b258c6e3bc600e9be91fdf191` |
| 5 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/arith-mean-le-rpow-mean--c74ddcec038ae45886faceaa.md) | 86 | `result-track:c74ddcec038ae45886faceaa6bf49ce9aa028013b04513c52dabc69a16f131aa` |
| 6 | `theorem` | [pow_arith_mean_le_arith_mean_pow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/pow-arith-mean-le-arith-mean-pow--84c83b004e6da1c05034d73f.md) | 103 | `result-track:84c83b004e6da1c05034d73fdca8ff4104fb0014290831deff09cc81df2613ed` |
| 7 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--8e8c4c550af0ded7452baca7.md) | 111 | `result-track:8e8c4c550af0ded7452baca77837431e936cda130e232e2f319ddddc306e2bbf` |
| 8 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--448001c6981847f2212c3ff8.md) | 118 | `result-track:448001c6981847f2212c3ff86edd424e2a077d0171aab78a105d3f293094e2fd` |
| 9 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-mul-rpow-add-rpow--198e95b8a6b69fde3def5443.md) | 125 | `result-track:198e95b8a6b69fde3def5443ed4e90bc6170d57853212cbed1e490c31915dc0b` |
| 10 | `theorem` | [arith_mean_le_rpow_mean](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/arith-mean-le-rpow-mean--539e6fc2b8dcf9af0036ddc9.md) | 139 | `result-track:539e6fc2b8dcf9af0036ddc903f8098a0a12872ad2bbf1aab16afacc9c566e54` |
| 11 | `theorem` | [add_rpow_le_one_of_add_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/add-rpow-le-one-of-add-le-one--58e73911075fea5d685f9dbd.md) | 145 | `result-track:58e73911075fea5d685f9dbd306884ab170c94e9c24d2144f46291b9af7905fc` |
| 12 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/add-rpow-le-rpow-add--a019ab057d0a98a7fdef079f.md) | 152 | `result-track:a019ab057d0a98a7fdef079f06ff992c6ad9ebba688d72ffa0c7915e19b9d21b` |
| 13 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-rpow-le-add--99b1ca576f8916a5b4522f40.md) | 166 | `result-track:99b1ca576f8916a5b4522f40270b5ca314f55f9a13067790535c937535e2f6b5` |
| 14 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-rpow-le--259338c55f8f929436ae4fdf.md) | 172 | `result-track:259338c55f8f929436ae4fdf53bc25fd83df10728f60e1b4be5046884d2c2393` |
| 15 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-add-rpow--aea70359ced13edb878bf00e.md) | 185 | `result-track:aea70359ced13edb878bf00e742ed6486c6b6170a6e02d94f8ece5acf7c1fbbf` |
| 16 | `lemma` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/add-rpow-le-rpow-add--1d77cb5a1fa771d2bac02643.md) | 198 | `result-track:1d77cb5a1fa771d2bac026433972a0068e2a4e9ecb814f32e08cbc9c9ea729be` |
| 17 | `lemma` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-rpow-le-add--5efcb9a3cf5b20d35e9cc80f.md) | 204 | `result-track:5efcb9a3cf5b20d35e9cc80f944f4a3217bc7724a6d28843bcab3c99380dcdd0` |
| 18 | `lemma` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-rpow-le--3a1ec7f5747a3a82b547eb1e.md) | 210 | `result-track:3a1ec7f5747a3a82b547eb1e0efb8d54f5764cef34f132c5ab65aeaad57dbf44` |
| 19 | `lemma` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-add-rpow--bc7cd255ca443398039a5602.md) | 217 | `result-track:bc7cd255ca443398039a5602201d219f4ecb4c2998f231afee6a7fa8dac4aece` |
| 20 | `theorem` | [rpow_arith_mean_le_arith_mean_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-arith-mean-le-arith-mean-rpow--6cd8c22fa93704b6cdba9049.md) | 230 | `result-track:6cd8c22fa93704b6cdba9049f76db700d9f7bbb0b7588f61502c66296507ef5f` |
| 21 | `theorem` | [rpow_arith_mean_le_arith_mean2_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-arith-mean-le-arith-mean2-rpow--312b087917f78ecc1074789e.md) | 273 | `result-track:312b087917f78ecc1074789e91fba20d4ee0ca01f80d6f5959183135ec81339c` |
| 22 | `theorem` | [rpow_add_le_mul_rpow_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-mul-rpow-add-rpow--01d54d033e041d447204065c.md) | 280 | `result-track:01d54d033e041d447204065cc588bf89b28d34a1d1a7cc33b03a72cf7efa35bc` |
| 23 | `theorem` | [add_rpow_le_rpow_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/add-rpow-le-rpow-add--2a88b336100329a202340714.md) | 290 | `result-track:2a88b336100329a20234071443c9d27ebcc21f142e6cecd3738c6501917c9168` |
| 24 | `theorem` | [rpow_add_rpow_le_add](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-rpow-le-add--d39d3b4512c30d07dce6a3aa.md) | 302 | `result-track:d39d3b4512c30d07dce6a3aac96ccaae59aa647580a146b9ac20d9cf3407f2a2` |
| 25 | `theorem` | [rpow_add_rpow_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-rpow-le--a6e6155de7d453886ddac0f5.md) | 308 | `result-track:a6e6155de7d453886ddac0f5f48b10b0d1188fa266f3a92659317739c873b5fc` |
| 26 | `theorem` | [rpow_add_le_add_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-add-rpow--397bafff825c2bdfef7c962d.md) | 320 | `result-track:397bafff825c2bdfef7c962d61b23b3a85006a31275c9ef61bbb50e4a65766b6` |
| 27 | `def` | [LpAddConst](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/lpaddconst--18e710e691ff72050f9b96f1.md) | 331 | `declaration-track:18e710e691ff72050f9b96f102a61f4d9d13d0f0db7f1365abe82b2a018d634d` |
| 28 | `theorem` | [LpAddConst_of_one_le](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/lpaddconst-of-one-le--dcf927d244e90d5696efd24b.md) | 334 | `result-track:dcf927d244e90d5696efd24bce0c0d5669ef1c00556f9434d588a8861383dfe7` |
| 29 | `theorem` | [LpAddConst_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/lpaddconst-zero--225f2f08580195653073813d.md) | 339 | `result-track:225f2f08580195653073813d51ddd1468247ab1c0b021fefb0901b35b960b578` |
| 30 | `theorem` | [LpAddConst_lt_top](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/lpaddconst-lt-top--9a9eaa53787096fc6fc5b6f5.md) | 344 | `result-track:9a9eaa53787096fc6fc5b6f5307f95295976016ff0ad65758a36eaa926bcfda1` |
| 31 | `theorem` | [LpAddConst_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/lpaddconst-ne-zero--9a7ec55535a69f591e1263a1.md) | 352 | `result-track:9a7ec55535a69f591e1263a160e1da4691df83c71eb584be4f9cd6b8b0664663` |
| 32 | `theorem` | [rpow_add_le_mul_rpow_add_rpow'](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-mul-rpow-add-rpow--62c2a33f6a58b1505536275a.md) | 359 | `result-track:62c2a33f6a58b1505536275a588ec657d41757765b0dd8d66432d029eb12ceaa` |
| 33 | `theorem` | [rpow_add_le_mul_rpow_add_rpow''](../../../../../mathematics/Analysis/FunctionalAnalysis/MeanInequalitiesPow/Variant200c4293148ef3e0e9130ca9d8eb8bdf4a41b6f65883b523c9b6a1853b2aa685.lean/declarations/rpow-add-le-mul-rpow-add-rpow--17b2707a7f8b584d8e00f7f7.md) | 377 | `result-track:17b2707a7f8b584d8e00f7f774a3586f35b8aba7b4630c331470f2659e4355c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
