# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RouteClosure.Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78e73afd0135c4dddfefcd90e5a88be2abb5c4ab",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78e73afd0135c4dddfefcd90e5a88be2abb5c4ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ProofStrategy.CertifiedRoute` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RouteCandidateDisposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/routecandidatedisposition--956be1bc11d1bcd42107fc49.md) | 27 | `declaration-track:956be1bc11d1bcd42107fc49e14c4cba4845fb77e15ec0ba638b95d1422bfc8e` |
| 2 | `structure` | [ExactFiniteRouteClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/exactfiniterouteclosure--a38c817af3eccc0a8b169ff5.md) | 35 | `declaration-track:a38c817af3eccc0a8b169ff567a64596fc62fb4ffa7fd3d9e3092d52fb86e022` |
| 3 | `theorem` | [eligible_iff_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/eligible-iff-mem--90d5fdc10d1d3407413f81f5.md) | 62 | `result-track:90d5fdc10d1d3407413f81f5132bb9ecaa5b1dfeaecb04df34d44380247ff071` |
| 4 | `theorem` | [included_iff_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/included-iff-mem--0ac1dd291ff0f541d5cafe60.md) | 74 | `result-track:0ac1dd291ff0f541d5cafe6001c903c886191bf299ae2cd221185bcfebb06aea` |
| 5 | `theorem` | [omitted_is_ineligible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/omitted-is-ineligible--9569510d035230ad789fa4ec.md) | 89 | `result-track:9569510d035230ad789fa4ecc3b2c594d5555e1fd1069c1c863aee0e208ebd5a` |
| 6 | `structure` | [BoundedRouteClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/boundedrouteclosure--98852b03d637a5fc339e1f4c.md) | 105 | `declaration-track:98852b03d637a5fc339e1f4c74e5bad5953baacecde188773d6afdce0e57c35e` |
| 7 | `structure` | [EnumerativeRouteClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/enumerativerouteclosure--02f0a9b512f841d4cefbf711.md) | 113 | `declaration-track:02f0a9b512f841d4cefbf7115aea82ebed95f256cc0c00d30c732a8d00cedc7c` |
| 8 | `inductive` | [RouteClosureClaim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variantd2b7ebb510a2106b2aec9209df9b726f252925588f223f605860ba3f7f7fd81c.lean/declarations/routeclosureclaim--d60014cf428468d04aeb80a9.md) | 121 | `declaration-track:d60014cf428468d04aeb80a977be1b009661c6cf13be180f4a995e837eb3674c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
