# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevTailAttempt03.Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38e5ad3fad950e4b4b15455e6cf31adcd732dab",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38e5ad3fad950e4b4b15455e6cf31adcd732dab`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualChebyshevAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiErrorTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/psierrortail--13d9caf17921ad76e486ef4e.md) | 14 | `declaration-track:13d9caf17921ad76e486ef4e03ef29ae4d38fa131fb38b136c132d1f96ba15b5` |
| 2 | `def` | [triangleKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel--2f94cc77abc83eaed896a628.md) | 16 | `declaration-track:2f94cc77abc83eaed896a62855ef477ffe38768ad13c2c2c5dffc9c182daa0fd` |
| 3 | `theorem` | [triangleKernel_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel-measurable--9ab9465d36f5f72cfb87f158.md) | 19 | `result-track:9ab9465d36f5f72cfb87f158aaee389f022e583b9a8614d35335f3f9af798392` |
| 4 | `theorem` | [triangleKernel_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel-slice--404a52a95e57c94177867a3d.md) | 24 | `result-track:404a52a95e57c94177867a3d08ba992ee69986e862839476b35f6fdd921c4133` |
| 5 | `theorem` | [triangleKernel_slice_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel-slice-integrable--9f260a8991f89378ab5e0d55.md) | 30 | `result-track:9f260a8991f89378ab5e0d55456af2cd358f1f9ea7eafd85cc465fb791727488` |
| 6 | `theorem` | [triangleKernel_slice_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel-slice-norm-integral--3e7a5f154433c41cc21f0daf.md) | 36 | `result-track:3e7a5f154433c41cc21f0dafa4df59b44a27cf82f321ca2ad317cd04003a937d` |
| 7 | `theorem` | [triangleKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel-integrable--4bf938a20d0f495153df6f7c.md) | 45 | `result-track:4bf938a20d0f495153df6f7c78c0c4a6348e9880d60a33754cf3ce9d35b97675` |
| 8 | `theorem` | [triangleKernel_inner_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/trianglekernel-inner-eq--248d375c256c0f5cfd0ad669.md) | 55 | `result-track:248d375c256c0f5cfd0ad66901a5221fc3a064d9736b374034b393c3d2d6a20f` |
| 9 | `theorem` | [psiErrorTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevTailAttempt03/Variant174f3e8da10eff28a75ddc296f9937a9d0cb6a9b96072907ea338e55cfdc7f26.lean/declarations/psierrortail-integrable--3bc8da50ec463ddf1751c63e.md) | 68 | `result-track:3bc8da50ec463ddf1751c63e8d8c317b802aff5120e2765e0d684519b9b99c86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
