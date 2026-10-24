# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19986ee19a45ec9e760b635951e67e16b08e0626",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19986ee19a45ec9e760b635951e67e16b08e0626`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentAbsolute.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit`](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonical_square_source_eq_tsum](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/canonical-square-source-eq-tsum--37bc90eb619c2c79819c9d35.md) | 33 | `result-track:37bc90eb619c2c79819c9d3572659a9a2648f9e2430ea99ae867681e213c85d0` |
| 2 | `theorem` | [canonical_square_hasSum](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/canonical-square-hassum--7eb106540ca128d1d35b715a.md) | 43 | `result-track:7eb106540ca128d1d35b715a24b5bbe8cc1e213fa24c0f4db202f4907ba1e259` |
| 3 | `theorem` | [norm_square_source_sub_finite_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/norm-square-source-sub-finite-le--2eb6afb9225e769dbf805fff.md) | 62 | `result-track:2eb6afb9225e769dbf805fff5ccb69287cc29e3d5298e3bb51f6133e13695023` |
| 4 | `theorem` | [norm_square_source_sub_evaluated_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/norm-square-source-sub-evaluated-le--87d79ce67fcccda20c1d9deb.md) | 84 | `result-track:87d79ce67fcccda20c1d9deb2956024b47b75dc847e56f45173732ca3ca009cf` |
| 5 | `theorem` | [heightHead_tendsto_atTop](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/heighthead-tendsto-attop--3c3a2455507cae9557358e45.md) | 103 | `result-track:3c3a2455507cae9557358e459d9866606b75bf2e0fcb65053707274259e6a5da` |
| 6 | `theorem` | [canonical_heads_tendsto](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/canonical-heads-tendsto--059351b9b29a92ec10e20654.md) | 114 | `result-track:059351b9b29a92ec10e206542c25790f4814f2b6529377133bcfd33208289917` |
| 7 | `theorem` | [square_residues_tendsto_all_heights](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/square-residues-tendsto-all-heights--d3fd43fcf0554eaf886e37a8.md) | 124 | `result-track:d3fd43fcf0554eaf886e37a897f8f329d791aadabab92add92a2962ee52677b2` |
| 8 | `theorem` | [square_canonical_tail_budget](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/declarations/square-canonical-tail-budget--190b17601d74e3783d33badb.md) | 137 | `result-track:190b17601d74e3783d33badb87f21170c4f89ad80f94119a342af1b4e9ab7602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
