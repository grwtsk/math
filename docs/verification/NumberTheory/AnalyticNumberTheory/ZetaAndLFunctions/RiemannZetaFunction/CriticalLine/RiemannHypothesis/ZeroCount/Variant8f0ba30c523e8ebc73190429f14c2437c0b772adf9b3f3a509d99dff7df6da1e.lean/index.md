# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroCount.Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2329396e714cd79da01629c3ce70e3e7110d26c5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2329396e714cd79da01629c3ce70e3e7110d26c5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ZeroCount.Sides` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Contour` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GenericRvM` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [halfContour_xiDeriv_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/declarations/halfcontour-xideriv-split--ecc02708c627b1add97ab28d.md) | 51 | `result-track:ecc02708c627b1add97ab28d308b17c4f2425695f618c66f67a82ffdf1f4aa3b` |
| 2 | `theorem` | [halfContour_Yfn_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/declarations/halfcontour-yfn-bound--51cdc8344332ddfdf91ba87a.md) | 119 | `result-track:51cdc8344332ddfdf91ba87ab467809f566bbb0a08b393ec6f052739376aa7dc` |
| 3 | `theorem` | [xiDeriv_rvM_main](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/declarations/xideriv-rvm-main--3f0fe959e64e529e6f5192c4.md) | 157 | `result-track:3f0fe959e64e529e6f5192c4523689f33cf28b7e2c164cb13059d87ced7759de` |
| 4 | `theorem` | [xiDeriv_riemannVonMangoldt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/declarations/xideriv-riemannvonmangoldt--c0f05545045a24bfee544b40.md) | 173 | `result-track:c0f05545045a24bfee544b40c7e8d273cf433eb9f57d17d526c049894db0921d` |
| 5 | `theorem` | [xiDeriv_riemannVonMangoldt'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variant8f0ba30c523e8ebc73190429f14c2437c0b772adf9b3f3a509d99dff7df6da1e.lean/declarations/xideriv-riemannvonmangoldt--41d874ff9b7d7d1d4d7c9933.md) | 177 | `result-track:41d874ff9b7d7d1d4d7c9933389bf12238207d28b97f92c524c65400655fd720` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
