# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTenHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf64a206478869ebff187ea796550bb2984619f9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf64a206478869ebff187ea796550bb2984619f9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/declarations/gap--4760493066538fe2f3ece7fe.md) | 20 | `declaration-track:4760493066538fe2f3ece7fed2c9a169c44f7ba6e51a230291cd553df84cb8da` |
| 2 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/declarations/coefficients--2369a9e4967f8d178f35ac4b.md) | 22 | `declaration-track:2369a9e4967f8d178f35ac4b302c0d827543340406aae3680b5b546c0f465e31` |
| 3 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/declarations/tensor-identity--711e57dfa68f2957b90f0bc5.md) | 37 | `result-track:711e57dfa68f2957b90f0bc567647e18befdef53f04c82a820574746bba7216f` |
| 4 | `theorem` | [gap_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/declarations/gap-nonneg--a1cb05d54214a81d3d12f1ff.md) | 42 | `result-track:a1cb05d54214a81d3d12f1ff5c7ca76610a65516b0324addfae2035de96152d9` |
| 5 | `theorem` | [squared_ratio_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/declarations/squared-ratio-bound--fc58f3ac04ed78c909039bfb.md) | 54 | `result-track:fc58f3ac04ed78c909039bfbd0b25ed3718a1fdaed1cdd79ef2f035b05b43eda` |
| 6 | `theorem` | [height_eleven_gap_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripTenHeightBernstein.lean/declarations/height-eleven-gap-negative--d5d704ae1d885e6c0452d65a.md) | 62 | `result-track:d5d704ae1d885e6c0452d65af0d6f6ede73d5786407a0478f1730928b0a248d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
