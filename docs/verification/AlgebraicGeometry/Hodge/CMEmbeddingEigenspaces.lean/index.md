# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingEigenspaces

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6498cd959aba4513fab921e1e8fe664ddcf33ae1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6498cd959aba4513fab921e1e8fe664ddcf33ae1`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingLines`](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterEigenspace](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenspace--6aa463cb31f9d4d4cfc62795.md) | 25 | `declaration-track:6aa463cb31f9d4d4cfc627958e9725ae416f013ef3cd73698daad8da3a7f2af9` |
| 2 | `theorem` | [mem_characterEigenspace_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/mem-charactereigenspace-iff--1f0423d1ee37502600a82769.md) | 43 | `result-track:1f0423d1ee37502600a8276980b88ab29b31353c1867259dd914af6a0772c8e8` |
| 3 | `structure` | [CharacterEigenlineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenlinerealization--f2b78244d7243fcd6a5ea532.md) | 57 | `declaration-track:f2b78244d7243fcd6a5ea53293f1e2f85a42c524751cd5c5619741c8bd4328b9` |
| 4 | `structure` | [CharacterEigenspaceDecomposition](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenspacedecomposition--7a53ee4c8898f728cf726c06.md) | 78 | `declaration-track:7a53ee4c8898f728cf726c06848045d3a3745e6d383a62f21b434f3883673cbb` |
| 5 | `def` | [CharacterEigenspaceDecomposition.toEigenlineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenspacedecomposition-toeigenlinerealization--f9003d59b740159208635b23.md) | 90 | `declaration-track:f9003d59b740159208635b237a06d8194f91505403ed4741ba53c97bac481631` |
| 6 | `def` | [CharacterEigenlineRealization.toLinearEmbeddingLineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenlinerealization-tolinearembeddinglinerealization--c6a6a958722bdaccd45011c0.md) | 101 | `declaration-track:c6a6a958722bdaccd45011c0f2073663600315932a9f19c5df2b677f80ad3b81` |
| 7 | `theorem` | [characterEigenlines_fourFactor_bidegree_two_two](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenlines-fourfactor-bidegree-two-two--9eb9b8dd0fc9618d1aa2b41f.md) | 119 | `result-track:9eb9b8dd0fc9618d1aa2b41f9c3e7118c002490266f491848523e699abecb1d2` |
| 8 | `theorem` | [CharacterEigenspaceDecomposition.finrank_eq_card](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenspacedecomposition-finrank-eq-card--3559444132baab38030c664b.md) | 162 | `result-track:3559444132baab38030c664bb2cf9863786ae92ad2a8cc0b8aa49ae84eba3319` |
| 9 | `theorem` | [CharacterEigenspaceDecomposition.finrank_eq_fieldDegree](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenspacedecomposition-finrank-eq-fielddegree--a25b6e0b6a445cd69b2a1404.md) | 181 | `result-track:a25b6e0b6a445cd69b2a1404facbee6be41f0edeb6c2a210af573ba37f6fa478` |
| 10 | `theorem` | [characterEigenspaceDecompositions_fourFactor_bidegree_two_two](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/declarations/charactereigenspacedecompositions-fourfactor-bidegree-two-two--66cec5f265d2952a1c804fbb.md) | 199 | `result-track:66cec5f265d2952a1c804fbb6bdd9258674771d69275da6b585ab08a1a90c43d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
