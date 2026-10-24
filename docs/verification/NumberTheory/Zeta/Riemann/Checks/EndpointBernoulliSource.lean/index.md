# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointBernoulliSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc8d76fec38e750c4b5fc177f450c2100231de44",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc8d76fec38e750c4b5fc177f450c2100231de44`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.EndpointBernoulliResidual`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointBernoulliResidual.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointJetRefinement`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointJetRefinement.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [outer_bounds](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/outer-bounds--6d0d70d16d68bba0c539b89c.md) | 29 | `result-track:6d0d70d16d68bba0c539b89c39224e933902ebb047dc1ce4f2d24eb27b961322` |
| 2 | `theorem` | [rational_remainder_budget](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/rational-remainder-budget--652ddf01c8c759a6bf280ffa.md) | 44 | `result-track:652ddf01c8c759a6bf280ffaa9d642a8cde9953e3c9889a6e552256f7eb6f969` |
| 3 | `theorem` | [uniform_source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/uniform-source--55d924600beeb1c1bb1ecfd6.md) | 49 | `result-track:55d924600beeb1c1bb1ecfd613026dc8e6b40009372cf31863e53c4ec3b56a1a` |
| 4 | `theorem` | [centerEstimates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/centerestimates--b868b23f129aa6eb47ccbb59.md) | 63 | `result-track:b868b23f129aa6eb47ccbb59b8bdc760ef4b0bfe56dcc2a1eb486369a6332a43` |
| 5 | `theorem` | [unique_simple_point](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/unique-simple-point--93cdbe1d033532ba5d890984.md) | 68 | `result-track:93cdbe1d033532ba5d890984b959410c2af4fb0aca2fab241ec761a8f4c324fa` |
| 6 | `theorem` | [degree_one_seam_must_not_cancel](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/degree-one-seam-must-not-cancel--a6f7c2726f141e373f8b9872.md) | 75 | `result-track:a6f7c2726f141e373f8b9872384320f8dae5bec77fd3aa874d67e69d0fe45248` |
| 7 | `theorem` | [empty_block_is_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/empty-block-is-zero--25020ca4d79e0c0d2f794647.md) | 80 | `result-track:25020ca4d79e0c0d2f794647be3bb85722fdc4ffcf504d6b9c9d237f312be17b` |
| 8 | `theorem` | [periodic_bound_is_not_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/periodic-bound-is-not-zero--3a67254bb54849311ef1366e.md) | 85 | `result-track:3a67254bb54849311ef1366e659cb78f247d680df0bcdaad91dcfbb56d5dbab2` |
| 9 | `theorem` | [rational_budget_identity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/EndpointBernoulliSource.lean/declarations/rational-budget-identity--b01ddb7835964a899f347e40.md) | 92 | `result-track:b01ddb7835964a899f347e40551657912a99c8afa24ee5909128b7460d600c8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
