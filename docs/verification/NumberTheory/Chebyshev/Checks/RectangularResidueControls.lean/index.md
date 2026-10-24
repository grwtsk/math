# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.RectangularResidueControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f71de019e70b70d3fe916bd457427eb040ef1ff4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f71de019e70b70d3fe916bd457427eb040ef1ff4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues`](../../../../../mathematics/NumberTheory/Chebyshev/TentFiniteResidues.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [centered_interior](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/centered-interior--c1b88410fd1ceb269ff4d06e.md) | 21 | `result-track:c1b88410fd1ceb269ff4d06ed00813cc780600a96e9f9cc352b7824a13affc51` |
| 2 | `theorem` | [noncentral_interior](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/noncentral-interior--7542e6aca1d9ae3b04791619.md) | 26 | `result-track:7542e6aca1d9ae3b047916194313e3080430b8f4502e2ba53894da98a6368e13` |
| 3 | `theorem` | [exterior_is_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/exterior-is-zero--73d4c90f4aaed58c330546f5.md) | 31 | `result-track:73d4c90f4aaed58c330546f5ababca0b9ba3737cb2cb89d6a31ed7325c319597` |
| 4 | `theorem` | [coefficient_minus_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/coefficient-minus-two--b05a96eb51b3b9affa368b8b.md) | 35 | `result-track:b05a96eb51b3b9affa368b8b762a4c17fd037f5144198597163d010d8304520a` |
| 5 | `theorem` | [reversed_orientation](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/reversed-orientation--8fc563c7375b26e524e4a6f6.md) | 41 | `result-track:8fc563c7375b26e524e4a6f64d8ba77238e2e771bc0bef3b67d62106b97dfc81` |
| 6 | `theorem` | [boundary_point_not_interior](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/boundary-point-not-interior--5a36486cb340decb032000f0.md) | 46 | `result-track:5a36486cb340decb032000f03d9d1ea57f5f6c9d1a1555d2d1018984a7204630` |
| 7 | `theorem` | [boundary_point_not_exterior](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/boundary-point-not-exterior--9211c923a03490dfd4e4bd1e.md) | 50 | `result-track:9211c923a03490dfd4e4bd1e8fba822ad835c56d218a816fd79e16cce280c031` |
| 8 | `theorem` | [zero_height_guard](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/zero-height-guard--2935ce3a1ac10201b7f4e566.md) | 53 | `result-track:2935ce3a1ac10201b7f4e56614e3904ccd6ffd44511de41aeabb6c3ae75e6016` |
| 9 | `theorem` | [negative_corner_has_opposite_sign](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RectangularResidueControls.lean/declarations/negative-corner-has-opposite-sign--7585d01266a25c8b37125cb9.md) | 56 | `result-track:7585d01266a25c8b37125cb937291e9c36fa61206ef6334881d2949bfcfe6d5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
