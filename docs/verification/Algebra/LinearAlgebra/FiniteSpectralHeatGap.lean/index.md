# Verification target: GRWTSK.LinearAlgebra.FiniteSpectralHeatGap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4629f6ae40b5f5e27266fefc99dd4632419992ee",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/FiniteSpectralHeatGap.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4629f6ae40b5f5e27266fefc99dd4632419992ee`.

Source path: `GRWTSK/LinearAlgebra/FiniteSpectralHeatGap.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/FiniteSpectralHeatGap.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FiniteSpectralHeat`](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeat.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupportedAbove](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/declarations/supportedabove--a481aae2a6062f12eff12520.md) | 16 | `declaration-track:a481aae2a6062f12eff1252019068d885ef82bf8e82d8ea1824ab54ecaab95e4` |
| 2 | `theorem` | [heat_gap_contracts](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/declarations/heat-gap-contracts--2a5eb8e64c3d26c413605188.md) | 20 | `result-track:2a5eb8e64c3d26c413605188cae4f734c17927c5a4c2e0ff81e896fa8a464f96` |
| 3 | `def` | [IsCoordinateEigencomponent](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/declarations/iscoordinateeigencomponent--6e8273e59d661424e405d52b.md) | 72 | `declaration-track:6e8273e59d661424e405d52b67f71d208bc0087346b44e13dd2322f8754742ea` |
| 4 | `theorem` | [heat_eigencomponent](../../../../mathematics/Algebra/LinearAlgebra/FiniteSpectralHeatGap.lean/declarations/heat-eigencomponent--815e701f62a1e3161198f84b.md) | 77 | `result-track:815e701f62a1e3161198f84b8baf587a8db3ab49f9d00edaaa5d71bf669e4782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
