# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Count.Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "914d33c50b2fa2dc9431a58ebc899c28af675d97",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `914d33c50b2fa2dc9431a58ebc899c28af675d97`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Contour` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Generic` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.ArgBound` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Sides` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Backlund` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gw](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/gw--ef3831e00d8ede038dc30b5f.md) | 51 | `declaration-track:ef3831e00d8ede038dc30b5f3062af1c6ed8b07fee213951d11501327d7915a5` |
| 2 | `lemma` | [Gw_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/gw-analyticat--3384c67a226b5cfdc2ad0a59.md) | 53 | `result-track:3384c67a226b5cfdc2ad0a5971a0f37dd781a204ac2fa98ea6e2be434c057309` |
| 3 | `lemma` | [logDeriv_hardyW_eq_of_zeta_ne](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/logderiv-hardyw-eq-of-zeta-ne--8637a40b10952ad6de53966e.md) | 58 | `result-track:8637a40b10952ad6de53966e1e70cb4f8165932070bfd8b1d416580354154c77` |
| 4 | `theorem` | [vertical_boundW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/vertical-boundw--444d5cb05cdb603eee5af1b8.md) | 71 | `result-track:444d5cb05cdb603eee5af1b8f8245bdac4c33508fad181074950d8f8ce9b11a9` |
| 5 | `theorem` | [hardyW_generic_inputs](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/hardyw-generic-inputs--584dacc625dfd4f54050cded.md) | 130 | `result-track:584dacc625dfd4f54050cdede6adb01b0029a5cff526ac5e675b8a55b1a7971b` |
| 6 | `theorem` | [horizontal_boundW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/horizontal-boundw--4f64891f76012d8f1d0bea62.md) | 140 | `result-track:4f64891f76012d8f1d0bea623f35526eac776f66240faaceb6e544d19ed9d342` |
| 7 | `theorem` | [local_countW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/local-countw--7de77623a91b772fdf51d402.md) | 149 | `result-track:7de77623a91b772fdf51d4022b6c9180f85c80f1fbbe8fc02683b22f900fd1ba` |
| 8 | `theorem` | [local_count_wZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/local-count-wzeros--a7bc0264623ca0c9af4382ee.md) | 155 | `result-track:a7bc0264623ca0c9af4382ee9c9f0e2e2e94099f6c7aa5479077fd63a6a7890f` |
| 9 | `theorem` | [halfContour_omegaW_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/halfcontour-omegaw-split--d9b4e4e6ff0afb02d2b17639.md) | 161 | `result-track:d9b4e4e6ff0afb02d2b176394b62fc1259641564a2e51204da8cb30019173b9a` |
| 10 | `theorem` | [halfContour_hardyW_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/halfcontour-hardyw-bound--7214415e5a4d47b761500603.md) | 227 | `result-track:7214415e5a4d47b7615006034ac20d6bdf7651ce5778412012aa8079b3afd0e6` |
| 11 | `theorem` | [hardyW_rvM_main](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/hardyw-rvm-main--74df266acc98aba407fab1bd.md) | 266 | `result-track:74df266acc98aba407fab1bd4d78a5d3b45a7e1467274fb9ad915a0af5d6337c` |
| 12 | `theorem` | [riemannVonMangoldt_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/riemannvonmangoldt-w--f77180b233474231c4e8102a.md) | 284 | `result-track:f77180b233474231c4e8102a7bfb33d08913db0f6b4a2be52cf6b0faf6a1d66e` |
| 13 | `theorem` | [riemannVonMangoldt_W'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant278f811d6df9dba65a6840eb91a304cf4c690d2e9ebe286a81b1b992e71792a8.lean/declarations/riemannvonmangoldt-w--70debc0b32f73e1a16a46bb3.md) | 292 | `result-track:70debc0b32f73e1a16a46bb31a15148c52807a1e7a6f95703db8a88d6ef08679` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
