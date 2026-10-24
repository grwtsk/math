# Verification target: GRWTSK.NumberTheory.SourceNativeDirichlet.Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "464f82914e07e3669507e39ac57c6f6fda212e1e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `464f82914e07e3669507e39ac57c6f6fda212e1e`.

Source path: `GRWTSK/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightLineMajorant](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/rightlinemajorant--4c0eef82ca0edb6f646fb8f2.md) | 20 | `declaration-track:4c0eef82ca0edb6f646fb8f2a5497931f43e24d28af35bd90b7da11147d66f59` |
| 2 | `def` | [combinedMultiplier](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/combinedmultiplier--c547494ee5a10998455532fc.md) | 24 | `declaration-track:c547494ee5a10998455532fceaf5a46d9fd607cd8864ba22cf55a8be7362b6ce` |
| 3 | `theorem` | [term_norm](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/term-norm--b31a1f6115ecbf190948e791.md) | 26 | `result-track:b31a1f6115ecbf190948e7915085ee7f38b7742ba4c2e7e7d0f8b9e935346751` |
| 4 | `theorem` | [rightLineMajorant_summable](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/rightlinemajorant-summable--9690cea1d5f5a20616a222dc.md) | 36 | `result-track:9690cea1d5f5a20616a222dcbfb13256d2bc0cbe49bf1fa63fab9736a6343c93` |
| 5 | `theorem` | [norm_series_eq_majorant](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/norm-series-eq-majorant--0738c24c64d38c4e2f664333.md) | 42 | `result-track:0738c24c64d38c4e2f66433353efb3ca91b2582ac341a90c4f1cf97bd2db6b6b` |
| 6 | `theorem` | [combinedMultiplier_norm_le](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/combinedmultiplier-norm-le--9e1c8e960005cbd3471c31ea.md) | 54 | `result-track:9e1c8e960005cbd3471c31eaadad103e02ed51e409b29b4879336b79d40923db` |
| 7 | `theorem` | [rightLineMajorant_nonneg](../../../../mathematics/NumberTheory/SourceNativeDirichlet/Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1.lean/declarations/rightlinemajorant-nonneg--559a82853535bdce31846e02.md) | 68 | `result-track:559a82853535bdce31846e021ce649ac6e3b1f2dd34f416284e302137ef74613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
