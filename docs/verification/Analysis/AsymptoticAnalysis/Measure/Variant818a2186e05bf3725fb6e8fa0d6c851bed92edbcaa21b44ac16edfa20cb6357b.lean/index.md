# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Measure.Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccd581e1f102d420a7542bdc5c12563436cd2ab9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccd581e1f102d420a7542bdc5c12563436cd2ab9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Transcendental.Liouville.Residual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Transcendental.Liouville.LiouvilleWith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_liouvilleWith_subset_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/declarations/setof-liouvillewith-subset-aux--59c2b233bb8768e2edcd73b8.md) | 40 | `result-track:59c2b233bb8768e2edcd73b855038b353915803d9efbf9f115c419e75867df47` |
| 2 | `theorem` | [volume_iUnion_setOf_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/declarations/volume-iunion-setof-liouvillewith--d5fc526070c4e73b9d1f35f1.md) | 82 | `result-track:d5fc526070c4e73b9d1f35f1a2d225d67e6b71c9b9d5391cc9d0ab94c3081389` |
| 3 | `theorem` | [ae_not_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/declarations/ae-not-liouvillewith--31e2a1ed51aae791a965e467.md) | 113 | `result-track:31e2a1ed51aae791a965e467342cbd1c54331ea2b038e377b498448b5929d581` |
| 4 | `theorem` | [ae_not_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/declarations/ae-not-liouville--9223cf33fad1ad00b3133d54.md) | 117 | `result-track:9223cf33fad1ad00b3133d54063389bd2bdd643d24e08185fadd12453e4fa703` |
| 5 | `theorem` | [volume_setOf_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/declarations/volume-setof-liouville--3f31c307415954f98376cd86.md) | 122 | `result-track:3f31c307415954f98376cd86a7a82faf5365b9ce054233e0f88b234cb0c1779f` |
| 6 | `theorem` | [Real.disjoint_residual_ae](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/declarations/real-disjoint-residual-ae--28712abfa41a2ea4ca80d5ee.md) | 127 | `result-track:28712abfa41a2ea4ca80d5eec9363532e252a3354898b228907dbe903b2fc131` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
