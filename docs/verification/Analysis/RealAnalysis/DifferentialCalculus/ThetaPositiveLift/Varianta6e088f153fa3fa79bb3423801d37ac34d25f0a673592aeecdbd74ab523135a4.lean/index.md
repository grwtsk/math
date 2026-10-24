# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5d9230ad98135e36148df578132e252dede38ad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5d9230ad98135e36148df578132e252dede38ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRatioTwo` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/declarations/differentiable-thetatail--5fba0d200106e296394a1b95.md) | 21 | `result-track:5fba0d200106e296394a1b95a135205d0d5dbe9c7cd85c8eaefea188f1754fa5` |
| 2 | `theorem` | [deriv_thetaTail_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/declarations/deriv-thetatail-integrableon--2478d12794ff8c2924455f03.md) | 27 | `result-track:2478d12794ff8c2924455f03ed2907aa222327582eadfa2237692b9df90962e1` |
| 3 | `theorem` | [thetaTail_succ_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/declarations/thetatail-succ-eq-integral--f853498c929a02ba676f64dc.md) | 36 | `result-track:f853498c929a02ba676f64dc285db846a26bc4ecca6d5b7395d8eef966129605` |
| 4 | `theorem` | [thetaTail_succ_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/declarations/thetatail-succ-integral-add--aeef79a30f73579e1a35560e.md) | 47 | `result-track:aeef79a30f73579e1a35560e3367affd5c5c8b9cb94ae27d1d30bc52a71e5507` |
| 5 | `theorem` | [thetaTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/declarations/thetatail-logslope-antitone--5d0a18c57238d7a6c4a44395.md) | 53 | `result-track:5d0a18c57238d7a6c4a4439526ea9dda776c9b013874c5fd67317041096a8f04` |
| 6 | `theorem` | [thetaTail_succ_div_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Varianta6e088f153fa3fa79bb3423801d37ac34d25f0a673592aeecdbd74ab523135a4.lean/declarations/thetatail-succ-div-antitone--22d31b17ce8eadf176ea262f.md) | 74 | `result-track:22d31b17ce8eadf176ea262f990dce8933fef7f3b9d61163b850a0037ad98586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
