# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LeafIntegrals.Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09eeee87b82d48b14fb4888945481956a1f66eef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09eeee87b82d48b14fb4888945481956a1f66eef`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/declarations/integral-left--e63df404067a178c190bb3d2.md) | 32 | `result-track:e63df404067a178c190bb3d23e5102371bd30fa0ed245678b5a8ed3ba34438e1` |
| 2 | `lemma` | [integral_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/declarations/integral-right--34b49de8a132e5296a1c3fda.md) | 58 | `result-track:34b49de8a132e5296a1c3fdab99bd913a31973fb0def8f1303335ae82be76889` |
| 3 | `theorem` | [Ig_core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/declarations/ig-core--30be8ecd76256531636606df.md) | 84 | `result-track:30be8ecd76256531636606df7d61181e9f681bf674817fee941f67053b074f45` |
| 4 | `theorem` | [W3_core](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LeafIntegrals/Variant251db2551f45e4fab702bf161c6c4a0c80085dffb6c1cb2b57c6f9d5219a1ef2.lean/declarations/w3-core--69289778a774c5d3599989aa.md) | 126 | `result-track:69289778a774c5d3599989aa886d29fde034aa1942fe5ad3178e4f1b03acf4d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
