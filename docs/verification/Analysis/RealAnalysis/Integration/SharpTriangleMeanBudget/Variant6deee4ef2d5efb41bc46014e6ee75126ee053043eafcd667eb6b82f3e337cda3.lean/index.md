# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67026c510d9e3b7d97943fd4a7638be40d78b89c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67026c510d9e3b7d97943fd4a7638be40d78b89c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/declarations/cumulative--f1fd093ab7875384f9b8d9f3.md) | 24 | `declaration-track:f1fd093ab7875384f9b8d9f3c73d1126c8f6c143949935a2e1e953281fd36d07` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/declarations/cumulative-hasderivat--8d6cb9ccc1bc50c7226c3683.md) | 26 | `result-track:8d6cb9ccc1bc50c7226c368381b5a142734739117feedba87f150cb904470c74` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/declarations/cumulative-continuous--9453b6a9bd474965e900f51f.md) | 31 | `result-track:9453b6a9bd474965e900f51f0d4483f830b131495b596d4abc37da5afe528450` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/declarations/triangle-integral-eq--0e4a263e695dfe00d200fd41.md) | 35 | `result-track:0e4a263e695dfe00d200fd41fbd998578d347b4b06735de885366dc035d6747e` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant6deee4ef2d5efb41bc46014e6ee75126ee053043eafcd667eb6b82f3e337cda3.lean/declarations/triangle-integral-le--543d636a66c7863c74c4f69c.md) | 89 | `result-track:543d636a66c7863c74c4f69c3b50f418eaed201941a00c787ab956da069ed316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
