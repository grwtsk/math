# Verification target: GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceee9c1a9b9611e2ba3349210e2163ba2f230c55",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticAdjacencyGaloisCorrespondence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticAdjacencyGaloisCorrespondence.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticAdjacencyGaloisCorrespondence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceee9c1a9b9611e2ba3349210e2163ba2f230c55`.

Source path: `GRWTSK/Algebra/QuarticAdjacencyGaloisCorrespondence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticAdjacencyGaloisCorrespondence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticAdjacencyStabilizer`](../../../mathematics/Algebra/QuarticAdjacencyStabilizer.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.FieldTheory.Galois.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacencyStabilizer_eq_fixingSubgroup](../../../mathematics/Algebra/QuarticAdjacencyGaloisCorrespondence.lean/declarations/adjacencystabilizer-eq-fixingsubgroup--3de7d173d6010ed0fea10444.md) | 31 | `result-track:3de7d173d6010ed0fea1044458a038e4b8cff75533c50d0a551b0363537c294c` |
| 2 | `theorem` | [adjacencyField_eq_fixedField](../../../mathematics/Algebra/QuarticAdjacencyGaloisCorrespondence.lean/declarations/adjacencyfield-eq-fixedfield--83d342f43e97e5f6f627c6d5.md) | 41 | `result-track:83d342f43e97e5f6f627c6d59732ec9c2c3dd4770ef2d3fba22b0c0156d238f2` |
| 3 | `theorem` | [finrank_adjacencyField_eq_card_stabilizer](../../../mathematics/Algebra/QuarticAdjacencyGaloisCorrespondence.lean/declarations/finrank-adjacencyfield-eq-card-stabilizer--8f5b832485b9a0979a5dfa6b.md) | 51 | `result-track:8f5b832485b9a0979a5dfa6be176131ad2b223a9dd2ff5a2ae08be2f64ce2dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
