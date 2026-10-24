# Verification target: GRWTSK.Analysis.Convolution.CompactSupportContact

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f691b7e401eb6f4a825fc8e14ad7e17105ecb09f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactSupportContact.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f691b7e401eb6f4a825fc8e14ad7e17105ecb09f`.

Source path: `GRWTSK/Analysis/Convolution/CompactSupportContact.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactSupportContact.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedProfile](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/declarations/closedprofile--37efd059edb084b4eb2e73a9.md) | 29 | `declaration-track:37efd059edb084b4eb2e73a989634001988df3ba2b93ed2999e38a6990993f76` |
| 2 | `theorem` | [correlation_zero_of_shift_ge_width](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/declarations/correlation-zero-of-shift-ge-width--2cd582187b52884345b8c50a.md) | 32 | `result-track:2cd582187b52884345b8c50a23f91880217fe15f2979ca14370fcc93caacfe9f` |
| 3 | `theorem` | [short_overlap_product_nonneg](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/declarations/short-overlap-product-nonneg--5f416a3cdc24eeefff117709.md) | 48 | `result-track:5f416a3cdc24eeefff1177097442ab1c2cecffdb93ae763efc344f0626eee6ae` |
| 4 | `theorem` | [overlap_product_lower_bound](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/declarations/overlap-product-lower-bound--a4c55d6ab370cc2481dd631d.md) | 66 | `result-track:a4c55d6ab370cc2481dd631d9a42613e92908089874f99e02463061b4364d8b4` |
| 5 | `theorem` | [positive_traces_eventual_overlap_lower_bound](../../../../mathematics/Analysis/Convolution/CompactSupportContact.lean/declarations/positive-traces-eventual-overlap-lower-bound--9cab9ea19cec67c7366f7391.md) | 100 | `result-track:9cab9ea19cec67c7366f739150a17e47c1cfd8e7fed3dc48e418832b4298b0fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
