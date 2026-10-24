# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de885f71e044849bf77118f867a82340c571f72b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de885f71e044849bf77118f867a82340c571f72b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiModeOrbitSymmetrization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiDerivativeStep_smul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphiderivativestep-smul--773818b7f8b9e9f25b00501c.md) | 30 | `result-track:773818b7f8b9e9f25b00501c17f8eaf8f6309960c9829e5bafcbaa4176ebb2e2` |
| 2 | `def` | [thetaPhiBasePolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphibasepolynomial--abb6f2a912dde9ba9ee604b0.md) | 51 | `declaration-track:abb6f2a912dde9ba9ee604b0e90a182bad45a79142ecebc74b366ac080b49e40` |
| 3 | `theorem` | [thetaPhiBasePolynomial_one_eval](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphibasepolynomial-one-eval--fb0133bb2bef04fa8d0f29a9.md) | 57 | `result-track:fb0133bb2bef04fa8d0f29a95538ae2216445e7b461a5246ffd1502d4f4b862e` |
| 4 | `theorem` | [thetaPhiBasePolynomial_succ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphibasepolynomial-succ--e609fa63044ecb82d106be0c.md) | 67 | `result-track:e609fa63044ecb82d106be0cf6e67e708504f36e9e75ac6176061656821b2a45` |
| 5 | `theorem` | [thetaPhiDerivativePolynomial_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphiderivativepolynomial-christoffel--ff125b3e4eb0930b580c76cf.md) | 73 | `result-track:ff125b3e4eb0930b580c76cf1dff33ea74f0323f916c6d476ae55cac16e75ee5` |
| 6 | `theorem` | [thetaPhiDerivativePolynomial_eval_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphiderivativepolynomial-eval-christoffel--a163c1e1ba5a7e284fce1f86.md) | 111 | `result-track:a163c1e1ba5a7e284fce1f86dffc220c22b6a209f2605eff9915591fa4ef993d` |
| 7 | `def` | [thetaPhiBaseModeValue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphibasemodevalue--dca231128dac7bdc0972d52e.md) | 126 | `declaration-track:dca231128dac7bdc0972d52eedaad44b7c5457354987bb8464f2a83673991505` |
| 8 | `theorem` | [thetaPhiDerivativeModeValue_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphiderivativemodevalue-christoffel--4aec829e97fc46bf4c6e5e8e.md) | 133 | `result-track:4aec829e97fc46bf4c6e5e8e1b29142fe8bfb23819ed04f61571096bd90af038` |
| 9 | `def` | [thetaPhiBaseTapeTruncation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphibasetapetruncation--fa71ba841e4ffe06656ebb32.md) | 144 | `declaration-track:fa71ba841e4ffe06656ebb32a35663fbc4088a8e663dcb4e08f26513417ca63d` |
| 10 | `theorem` | [thetaPhiDerivativeTapeTruncation_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphiderivativetapetruncation-christoffel--34c9aa09ce0e415ce1a55e14.md) | 150 | `result-track:34c9aa09ce0e415ce1a55e149e43114505989dd9a2dbb6a4d5194a84436d0e89` |
| 11 | `def` | [thetaPhiChristoffelHankel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphichristoffelhankel--63964de26adfe05bf47714bd.md) | 163 | `declaration-track:63964de26adfe05bf47714bdd06f555f6888861732dc9d396333dc4cc33fa47f` |
| 12 | `theorem` | [thetaPhiDerivativeHankelTruncation_eq_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/thetaphiderivativehankeltruncation-eq-christoffel--960d9038237536c6d50ea71f.md) | 172 | `result-track:960d9038237536c6d50ea71f8931a46d642e060461c7d4efcc471fb1a1fa5393` |
| 13 | `theorem` | [signedJetDet_truncation_eq_christoffel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantb05e8b50fdaaa13cf84b898760df6f07eb834b906df518cd4a3ad3540913a1bb.lean/declarations/signedjetdet-truncation-eq-christoffel--7820df90b6b606fd5a16b822.md) | 188 | `result-track:7820df90b6b606fd5a16b822e67e8cdee900e264e02b71437510fd4ac6605404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
