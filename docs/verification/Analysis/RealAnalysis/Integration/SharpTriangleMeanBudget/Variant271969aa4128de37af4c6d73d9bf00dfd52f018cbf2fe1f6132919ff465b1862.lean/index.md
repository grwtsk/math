# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a07ec14b2883a1bd2442a64f6e50ad2a2da6effe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a07ec14b2883a1bd2442a64f6e50ad2a2da6effe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/declarations/cumulative--870dc5cf399af570328105a6.md) | 23 | `declaration-track:870dc5cf399af570328105a6afbbdb98e50dafea7a4501a650fe3eac305f7f13` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/declarations/cumulative-hasderivat--b92232e752a6bf186f523006.md) | 25 | `result-track:b92232e752a6bf186f523006d9a202eb3a2e4d6683805bf21e79b975cbbaed19` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/declarations/cumulative-continuous--04cf7b795d24f60f51105417.md) | 30 | `result-track:04cf7b795d24f60f5110541761165d7b4b3088e9b49d9c93c78964a9056a83e3` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/declarations/triangle-integral-eq--51e9b9b85b04dffbfda427b8.md) | 34 | `result-track:51e9b9b85b04dffbfda427b895b786ca7995710432c57cad855758d0c65aa521` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant271969aa4128de37af4c6d73d9bf00dfd52f018cbf2fe1f6132919ff465b1862.lean/declarations/triangle-integral-le--54b527a8586a078096133091.md) | 83 | `result-track:54b527a8586a0780961330913a0bf761c71cee93662c03eaf8052889ea422627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
