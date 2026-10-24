# Verification target: GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4c4cbd4dfa996330c29818de0a7b595ddd42788",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4c4cbd4dfa996330c29818de0a7b595ddd42788`.

Source path: `GRWTSK/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signed_square_eq_double](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/declarations/signed-square-eq-double--82b08bc3cbc59e142a9a6b28.md) | 13 | `result-track:82b08bc3cbc59e142a9a6b28aa584b15375bc69aa252aa9a47b1bb2a99df6545` |
| 2 | `theorem` | [correlation_integrable](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/declarations/correlation-integrable--e7e14c0a137bdb92407cd714.md) | 25 | `result-track:e7e14c0a137bdb92407cd714d61402cc02a846897cf84d65b58a6143f531f6e5` |
| 3 | `theorem` | [energy_eq_complete_double](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/declarations/energy-eq-complete-double--d0dd1db0521162dfa3088517.md) | 32 | `result-track:d0dd1db0521162dfa3088517bf79a25a8ba71ee2bbbd48e4c052aa412c41d923` |
| 4 | `theorem` | [energy_eq_diagonal_add_cross](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/declarations/energy-eq-diagonal-add-cross--de06382aeb255a1d475a7cdd.md) | 54 | `result-track:de06382aeb255a1d475a7cdd859562b5b10b2e0c956667b4fa30290d812e5505` |
| 5 | `theorem` | [cross_eq_energy_sub_diagonal](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/declarations/cross-eq-energy-sub-diagonal--8bb22d138e4a225298b73a91.md) | 65 | `result-track:8bb22d138e4a225298b73a91799c82818b6a8dcb2f2a829b792bca38ac659106` |
| 6 | `theorem` | [energy_polynomial_implies_P04](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/declarations/energy-polynomial-implies-p04--e91375058145b8e3821b783b.md) | 69 | `result-track:e91375058145b8e3821b783be9d9bb5ef8d31f09ab728168de9461fc90d1f769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
