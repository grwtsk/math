# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroCount.Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fa8e4703df69d60e537b5ecef1c3888d474e904",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fa8e4703df69d60e537b5ecef1c3888d474e904`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ZeroCount.Sides` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Contour` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GenericRvM` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [halfContour_xiDeriv_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/declarations/halfcontour-xideriv-split--901c338915285bf6e7bdd42c.md) | 43 | `result-track:901c338915285bf6e7bdd42c5f018dca59eb65b81c7e958956829192180930c1` |
| 2 | `theorem` | [halfContour_Yfn_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/declarations/halfcontour-yfn-bound--a11d7aebed13f329766fcd6f.md) | 111 | `result-track:a11d7aebed13f329766fcd6fbdc047bee5528499a58a016b62eb7affe2318408` |
| 3 | `theorem` | [xiDeriv_rvM_main](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/declarations/xideriv-rvm-main--50bb7e73120af79607e26173.md) | 149 | `result-track:50bb7e73120af79607e26173a7d88c228d8b6fe4a7054b2544b5392e9845aa8d` |
| 4 | `theorem` | [xiDeriv_riemannVonMangoldt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/declarations/xideriv-riemannvonmangoldt--dc92a58e1317081698ad86d4.md) | 165 | `result-track:dc92a58e1317081698ad86d4e4bc8d981dff65f3d5554c964d9f93e60be01ab9` |
| 5 | `theorem` | [xiDeriv_riemannVonMangoldt'](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroCount/Variantfd34ac4514e46abbcb001ce9031d3723c4ba5e004bc5b851fd7773391cbc3016.lean/declarations/xideriv-riemannvonmangoldt--26c529cfe74b56bb89304a91.md) | 169 | `result-track:26c529cfe74b56bb89304a91214e04a5c33d7f23ea4af9b164369d6bebb8ad04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
