# Verification target: GRWTSK.Analysis.Complex.BlaschkeQuotientLogarithm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c219746d834b4bd7630380a4a1a8161185c91b0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c219746d834b4bd7630380a4a1a8161185c91b0`.

Source path: `GRWTSK/Analysis/Complex/BlaschkeQuotientLogarithm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/BlaschkeQuotientLogarithm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.NormalizedDiskLogarithm`](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.AbsMax` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_product_on_boundary](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/declarations/norm-product-on-boundary--dd920e95522792aa923f7b5a.md) | 30 | `result-track:dd920e95522792aa923f7b5a835da82b7439efef9c1c8327a6b099d9ddb64cda` |
| 2 | `theorem` | [norm_product_at_center_le_one](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/declarations/norm-product-at-center-le-one--43ca2e48c8a06a48b9796955.md) | 40 | `result-track:43ca2e48c8a06a48b9796955d26f17d9de8567c6ce248f9c86e26383f87c272e` |
| 3 | `theorem` | [quotient_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/declarations/quotient-norm-le--c44c6b4cc81abfaf1b90aa9a.md) | 52 | `result-track:c44c6b4cc81abfaf1b90aa9ac31807931420a6cd85c8c2909b3664253d2c7ab9` |
| 4 | `theorem` | [quotient_center_floor](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/declarations/quotient-center-floor--1ba2c8286d206954272e215c.md) | 71 | `result-track:1ba2c8286d206954272e215cc18b2cb84323cdc82a5cda6374bce933982750c1` |
| 5 | `theorem` | [exists_log_from_quotient](../../../../mathematics/Analysis/ComplexAnalysis/BlaschkeQuotientLogarithm.lean/declarations/exists-log-from-quotient--9da2450837edd679620e7f40.md) | 84 | `result-track:9da2450837edd679620e7f40fcee412d9608d550ffcca6674466ae65739b4256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
