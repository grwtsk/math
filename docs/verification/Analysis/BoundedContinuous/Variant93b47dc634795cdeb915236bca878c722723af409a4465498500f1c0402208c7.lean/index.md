# Verification target: GRWTSK.Analysis.BoundedContinuous.Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecfd99f5375f2aa50a256783d9be32f14b36edbd",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BoundedContinuous/Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BoundedContinuous/Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7.lean/index.md) · [Full source](../../../../mathematics/Analysis/BoundedContinuous/Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecfd99f5375f2aa50a256783d9be32f14b36edbd`.

Source path: `GRWTSK/Analysis/BoundedContinuous/Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BoundedContinuous/Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [restrict_toContinuousMap_eq_toContinuousMapStar_restrict](../../../../mathematics/Analysis/BoundedContinuous/Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7.lean/declarations/restrict-tocontinuousmap-eq-tocontinuousmapstar-restrict--b8442b2c0f9f2785d53aaeff.md) | 23 | `result-track:b8442b2c0f9f2785d53aaeffa3d58702049509b3794a4811685400a2c5ca9199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
