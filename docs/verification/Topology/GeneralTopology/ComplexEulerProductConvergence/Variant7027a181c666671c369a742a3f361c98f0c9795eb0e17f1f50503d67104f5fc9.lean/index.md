# Verification target: GRWTSK.Topology.GeneralTopology.ComplexEulerProductConvergence.Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7baba381aec4fc590920a78a7c33c97520c875e9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7baba381aec4fc590920a78a7c33c97520c875e9`.

Source path: `GRWTSK/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_finset_sums_of_summable_of_eventually_contains_Icc](../../../../../mathematics/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/declarations/tendsto-finset-sums-of-summable-of-eventually-contains-icc--5d2e33dbc86a0eebfd530271.md) | 25 | `result-track:5d2e33dbc86a0eebfd53027187ab3481d37ad5beeda75ee87762cdcd7dedfa0f` |
| 2 | `theorem` | [tendsto_boundedSmoothNumber_sums_complexWeight](../../../../../mathematics/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/declarations/tendsto-boundedsmoothnumber-sums-complexweight--b4377706f67663d9079456b1.md) | 68 | `result-track:b4377706f67663d9079456b160c451755c356137c35b4d52a7ffa78917887342` |
| 3 | `theorem` | [tendsto_zetaEulerApproxComplex](../../../../../mathematics/Topology/GeneralTopology/ComplexEulerProductConvergence/Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9.lean/declarations/tendsto-zetaeulerapproxcomplex--2de221fcddbf3c9c38600a91.md) | 100 | `result-track:2de221fcddbf3c9c38600a914555dccbdb1fccb5553b30eb15ae30d6592223a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
