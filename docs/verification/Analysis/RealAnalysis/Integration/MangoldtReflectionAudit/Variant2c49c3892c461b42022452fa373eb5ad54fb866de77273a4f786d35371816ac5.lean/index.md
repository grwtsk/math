# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MangoldtReflectionAudit.Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c25156f28dd10431b805b84c470e0adaf85ff17",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c25156f28dd10431b805b84c470e0adaf85ff17`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperObservation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSign` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtObservation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/mangoldtobservation--d88628e8aca873ec86d15ff5.md) | 15 | `declaration-track:d88628e8aca873ec86d15ff5bc9f79768272dd2ba2dbd0e493a80b52fd76e41f` |
| 2 | `theorem` | [mangoldtObservation_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/mangoldtobservation-continuous--6f88c5b8b0c43bf370b2a3c2.md) | 20 | `result-track:6f88c5b8b0c43bf370b2a3c2d9b399009ef0e0091e4a7741f89dad54001bfc94` |
| 3 | `theorem` | [mangoldtObservation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/mangoldtobservation-hascompactsupport--aecdf2d3b9ec21b70b82790c.md) | 28 | `result-track:aecdf2d3b9ec21b70b82790c8c76a5ffe5759e29f0afd8d83c74c3367f61c67a` |
| 4 | `theorem` | [mangoldtObservation_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/mangoldtobservation-square-integrable--8bf15973b901a6efeb94079e.md) | 44 | `result-track:8bf15973b901a6efeb94079e059471c18e28817495b2ffbcb7d268a264967815` |
| 5 | `theorem` | [mangoldtObservation_reflection_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/mangoldtobservation-reflection-integrable--5cf43e4568ee044f0d77131e.md) | 53 | `result-track:5cf43e4568ee044f0d77131e75c4159f2e0d5619768cffcdafccadee9ff7f16b` |
| 6 | `theorem` | [mangoldtObservation_reflection_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/mangoldtobservation-reflection-eq--fddf6de51c74b793aff8e17c.md) | 62 | `result-track:fddf6de51c74b793aff8e17cffc2b7218a244af168ea0d7e929f3f7b954edc8d` |
| 7 | `theorem` | [reflection_eq_even_square_sub_odd_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/reflection-eq-even-square-sub-odd-square--f004e8587cc114ee0fbec3fe.md) | 100 | `result-track:f004e8587cc114ee0fbec3fe004450ac3892825abaf5c1f24b81f6cec3732da9` |
| 8 | `theorem` | [actual_shifted_reflection_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MangoldtReflectionAudit/Variant2c49c3892c461b42022452fa373eb5ad54fb866de77273a4f786d35371816ac5.lean/declarations/actual-shifted-reflection-negative--dc1ebdd1497efb31746ade19.md) | 125 | `result-track:dc1ebdd1497efb31746ade19351739d4d44d07ec0d83246f85d7c602c92b2dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
