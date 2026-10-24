# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Bounds.Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d602d5ff2ec204c2f0e471f3a701a018a5ddd17",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d602d5ff2ec204c2f0e471f3a701a018a5ddd17`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [harmonic_eq_sum_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/declarations/harmonic-eq-sum-icc--81f0d08dc965a7dc181e3085.md) | 17 | `result-track:81f0d08dc965a7dc181e308597dd03d2bf642a25ed9ce0a106b1b7ae70b0432c` |
| 2 | `theorem` | [log_add_one_le_harmonic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/declarations/log-add-one-le-harmonic--94548727dca463f3027fed34.md) | 21 | `result-track:94548727dca463f3027fed341b7bd48f73787415afbad43ec683aeb2ef154707` |
| 3 | `theorem` | [harmonic_le_one_add_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/declarations/harmonic-le-one-add-log--c1f96417710baf5c2b1eca8c.md) | 30 | `result-track:c1f96417710baf5c2b1eca8ca5e51abc6c9a2b05f97f951a3bfbe709af268f1f` |
| 4 | `theorem` | [log_le_harmonic_floor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/declarations/log-le-harmonic-floor--d86e4bfe1255c66906f77d7f.md) | 56 | `result-track:d86e4bfe1255c66906f77d7f942a63ac9259bf6c44ef21ada6b75a88653fb286` |
| 5 | `theorem` | [harmonic_floor_le_one_add_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bounds/Variantec972b081affb5f8fead66105948c96857e51d153edb48980a263ae76c1ac5ac.lean/declarations/harmonic-floor-le-one-add-log--4b5957aa47147f2498af5bc0.md) | 68 | `result-track:4b5957aa47147f2498af5bc0e267b86c0857b21033d3bdb5314f1dae2c9c3d40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
