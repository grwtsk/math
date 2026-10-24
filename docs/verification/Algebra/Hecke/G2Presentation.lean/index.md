# Verification target: GRWTSK.Algebra.Hecke.G2Presentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7957cc9c617ae4dee881f52ecc930ad328de80ee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hecke/G2Presentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7957cc9c617ae4dee881f52ecc930ad328de80ee`.

Source path: `GRWTSK/Algebra/Hecke/G2Presentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hecke/G2Presentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Hecke.G2BraidSixMatrices`](../../../../mathematics/Algebra/Hecke/G2BraidSixMatrices.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Algebra.FreeAlgebra` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [G2Relation](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2relation--6b2e19eb1bfbbd676a6d0f59.md) | 12 | `declaration-track:6b2e19eb1bfbbd676a6d0f59121f4bdb8b68db72d1413d2c4c4a582589bf9a6d` |
| 2 | `abbrev` | [G2Presented](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2presented--9be5fc29810993f27a37f1ea.md) | 21 | `declaration-track:9be5fc29810993f27a37f1ea861b9610ea7bb46297eb9a7a2b2b13c8caf82177` |
| 3 | `def` | [g2Generator](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2generator--3660ba6cfcc3308adf9ab773.md) | 24 | `declaration-track:3660ba6cfcc3308adf9ab7736fb51a59fe2d5e369d3ea1110a6628b2445a0f89` |
| 4 | `theorem` | [g2Generator_quadratic](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2generator-quadratic--9562b126163806b865a1bdd4.md) | 27 | `result-track:9562b126163806b865a1bdd499a0865064e7252ff4a026f3a25279de5df8cd0f` |
| 5 | `theorem` | [g2Generator_braid](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2generator-braid--285d60b405fbdf08bac5660a.md) | 31 | `result-track:285d60b405fbdf08bac5660a44e976df1305c17aeaaaeb3bcf7fa9736c5fd86e` |
| 6 | `def` | [g2PresentationLift](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2presentationlift--94a7e1db0cb4f2f56736333d.md) | 39 | `declaration-track:94a7e1db0cb4f2f56736333df96e34a363a08c76bf5c90b40072a1b711a2663b` |
| 7 | `theorem` | [g2PresentationLift_generator](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2presentationlift-generator--a720f279b49b391af331cbee.md) | 49 | `result-track:a720f279b49b391af331cbeed474c2a1fa3da2e2a3e48bdbf354476235fcaefc` |
| 8 | `theorem` | [g2PresentationLift_unique](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2presentationlift-unique--7fc412c2bf14064c0c731e79.md) | 56 | `result-track:7fc412c2bf14064c0c731e79495567b64b54b0b7b110797ecbd6bd8f15003804` |
| 9 | `def` | [g2MatrixRepresentation](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2matrixrepresentation--cd43b68e058ecc31628dfeeb.md) | 68 | `declaration-track:cd43b68e058ecc31628dfeebfe5707a77a064475fd907c385b64d374742ef6a3` |
| 10 | `theorem` | [g2MatrixRepresentation_generator](../../../../mathematics/Algebra/Hecke/G2Presentation.lean/declarations/g2matrixrepresentation-generator--dec58d9a3a94c57077d44556.md) | 75 | `result-track:dec58d9a3a94c57077d44556f6b1b9749ad2f01995d952be76ece1b91d2584f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
