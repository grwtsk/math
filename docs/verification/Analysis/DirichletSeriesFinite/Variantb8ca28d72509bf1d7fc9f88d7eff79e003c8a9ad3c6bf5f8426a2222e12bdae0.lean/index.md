# Verification target: GRWTSK.Analysis.DirichletSeriesFinite.Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eabfb36c7ed6cc254f3a8d5c333f701e2b2b25c7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean/index.md) · [Full source](../../../../mathematics/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eabfb36c7ed6cc254f3a8d5c333f701e2b2b25c7`.

Source path: `GRWTSK/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.DirichletConvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDirichletSum](../../../../mathematics/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean/declarations/finitedirichletsum--4fb0aae1df2cfc4c259c8b4c.md) | 24 | `declaration-track:4fb0aae1df2cfc4c259c8b4c7c8abdcc4b55f41d89f1eda1bf4c7226e405a895` |
| 2 | `theorem` | [finiteDirichletSum_add](../../../../mathematics/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean/declarations/finitedirichletsum-add--408d2057781ba16e7a801ffc.md) | 30 | `result-track:408d2057781ba16e7a801ffcfe016841c11f6e79b2c8ea87a5a8f2dbaaa9c1da` |
| 3 | `theorem` | [finiteDirichletSum_zero](../../../../mathematics/Analysis/DirichletSeriesFinite/Variantb8ca28d72509bf1d7fc9f88d7eff79e003c8a9ad3c6bf5f8426a2222e12bdae0.lean/declarations/finitedirichletsum-zero--d5a0ccc2deca7095916ced2e.md) | 38 | `result-track:d5a0ccc2deca7095916ced2eca74bbcb4bdc3825dfda543507e9252e689f65e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
