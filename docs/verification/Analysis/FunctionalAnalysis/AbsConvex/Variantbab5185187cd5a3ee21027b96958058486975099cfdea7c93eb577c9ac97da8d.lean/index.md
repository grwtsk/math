# Verification target: GRWTSK.Analysis.FunctionalAnalysis.AbsConvex.Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "460f31d8eee7ae15b8c21ab70179033b6549c922",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `460f31d8eee7ae15b8c21ab70179033b6549c922`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhds_basis_abs_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/nhds-basis-abs-convex--f5460be41c64302a64a2fdc1.md) | 55 | `result-track:f5460be41c64302a64a2fdc1dba187598dd476c045dab0d070f419c2754e3056` |
| 2 | `theorem` | [nhds_basis_abs_convex_open](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/nhds-basis-abs-convex-open--1bf100b230a6df2ff0866eca.md) | 68 | `result-track:1bf100b230a6df2ff0866eca7ecc4c387eeb4ebc62f2de5aea35e46b3e005ac7` |
| 3 | `def` | [AbsConvexOpenSets](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/absconvexopensets--0edd714d1a695b55bbb3c4f5.md) | 91 | `declaration-track:0edd714d1a695b55bbb3c4f52e24a84dce8b79210a89fe133822a632835519dc` |
| 4 | `instance` | [AbsConvexOpenSets.instCoeTC](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/absconvexopensets-instcoetc--bbda58c977b7b0fcb3af4b94.md) | 95 | `declaration-track:bbda58c977b7b0fcb3af4b94372894e3b9f545f17277b5ca277b3cd34d2b1857` |
| 5 | `theorem` | [coe_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/coe-zero-mem--e65bb46ab5f3615f30a01508.md) | 103 | `result-track:e65bb46ab5f3615f30a015088663cfdcdaa6422acb52c1e7ba35d90aab290ec1` |
| 6 | `theorem` | [coe_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/coe-isopen--9e46de5f0eed30d5e0adb963.md) | 107 | `result-track:9e46de5f0eed30d5e0adb963ea77cf9bfda12ec85e957c51d885f1492f9b0d10` |
| 7 | `theorem` | [coe_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/coe-nhds--71ee985c6b10d8b773e8e924.md) | 111 | `result-track:71ee985c6b10d8b773e8e924b4af5f956ff8b9569906cf4cae4aa619b721755b` |
| 8 | `theorem` | [coe_balanced](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/coe-balanced--e509f546d84aaa1d8b692eea.md) | 115 | `result-track:e509f546d84aaa1d8b692eea7ecefad0d34b02861e0e267ea9fc3cb933f7c42e` |
| 9 | `theorem` | [coe_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/coe-convex--d120d3f620cfaeeb1cb4902c.md) | 119 | `result-track:d120d3f620cfaeeb1cb4902cd9394e812c77b490ad42956ecdaeea699e522b03` |
| 10 | `instance` | [AbsConvexOpenSets.instNonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/absconvexopensets-instnonempty--75e0d3c28232178ca4f28005.md) | 125 | `declaration-track:75e0d3c28232178ca4f28005ce20237126da7d1515f49263a93eee170bb2c8da` |
| 11 | `def` | [gaugeSeminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/gaugeseminormfamily--3f356180382fd6f9b05769da.md) | 144 | `declaration-track:3f356180382fd6f9b05769dac4aea37b7b2b2714713ae09ae48cbab7dd9999d9` |
| 12 | `theorem` | [gaugeSeminormFamily_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/gaugeseminormfamily-ball--99f927b17ab476d2530f579f.md) | 150 | `result-track:99f927b17ab476d2530f579f2c3a078056ac90c62cf2168bbac5a0694f94fe08` |
| 13 | `theorem` | [with_gaugeSeminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/declarations/with-gaugeseminormfamily--f9b90ef2d8b6fa85261565d9.md) | 163 | `result-track:f9b90ef2d8b6fa85261565d9d6539546085dc42d5f40697ab1ab201b5b06e828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
