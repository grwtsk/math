# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Seam.Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d7c149696a39bbaa0e7c3ec69ecc0bd056f1473",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d7c149696a39bbaa0e7c3ec69ecc0bd056f1473`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.TwoLine` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instContinuousSMulRealComplex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/instcontinuoussmulrealcomplex--27d106008c5b680b859af098.md) | 37 | `declaration-track:27d106008c5b680b859af098c3517b29587c3195d03ee4a1a122a880479bffc9` |
| 2 | `theorem` | [analyticOrderAt_hardyW_ne_top](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/analyticorderat-hardyw-ne-top--6b99e233543ac109289650f6.md) | 45 | `result-track:6b99e233543ac109289650f637a7d0b4da3cf92507ade63b506eecc08fa8f5a8` |
| 3 | `theorem` | [wMult_cast](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/wmult-cast--41ecb0af107361a8456b37d1.md) | 63 | `result-track:41ecb0af107361a8456b37d1b1e0640e99e32530bca1da26238b6306ab8ae90c` |
| 4 | `theorem` | [analyticOrderNatAt_hardyW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/analyticordernatat-hardyw--abd28a330e99729137bd1d3a.md) | 66 | `result-track:abd28a330e99729137bd1d3ab58d95fe6888bcd601771c4583d0abe6624aac78` |
| 5 | `theorem` | [one_le_wMult_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/one-le-wmult-iff--14c36fbec3dbc3ce2169d3e6.md) | 69 | `result-track:14c36fbec3dbc3ce2169d3e621fa3bf883478bf74fbc5be5e11eba694d425b72` |
| 6 | `theorem` | [finite_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/finite-upper--05643f8024151876547628c8.md) | 81 | `result-track:05643f8024151876547628c8cb174734743e27f7944936c288e2687514c52973` |
| 7 | `theorem` | [finite_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/finite-lower--a89c77606fd66bf93769fa6c.md) | 115 | `result-track:a89c77606fd66bf93769fa6c1fc23dab0319d04c0ef67191ba25af481be96248` |
| 8 | `theorem` | [finite_window_W](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/finite-window-w--a7ddfe4040a5aec28bf72b06.md) | 124 | `result-track:a7ddfe4040a5aec28bf72b067fe8b4b333b52786eb9e2370b02cb8f8528421da` |
| 9 | `theorem` | [wSeam_of_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Seam/Variant6dc1ce2cdf4ad398397d8732db64e598435cf30cef941876cd16e18c3269db03.lean/declarations/wseam-of-strip--1122aa2df7d67552d6caa313.md) | 135 | `result-track:1122aa2df7d67552d6caa3138d928f5a711a740bb7474167a8f0f2a079254263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
