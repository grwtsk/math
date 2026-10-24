# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4427b08cdf7ebf62ce5e43032c038145ff34c23",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4427b08cdf7ebf62ce5e43032c038145ff34c23`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Polynomial.ConjugateQuartic`](../../../../../mathematics/Algebra/Polynomial/ConjugateQuartic.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/declarations/zerocoordinate--81a7be4d218856676f7a8574.md) | 19 | `declaration-track:81a7be4d218856676f7a8574ceed1dbaca08d7df6e9d59f8419ceb1eaccbae2c` |
| 2 | `theorem` | [roots_eq_zero_coordinates](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/declarations/roots-eq-zero-coordinates--6e15d7597c6dd0aec4e937c1.md) | 22 | `result-track:6e15d7597c6dd0aec4e937c1a2e5b7e19770a992e2e8c35f36429b8ae804edf1` |
| 3 | `theorem` | [root_has_nontrivial_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean/declarations/root-has-nontrivial-zero--45bfe9ac5399c0b7490b0ecc.md) | 46 | `result-track:45bfe9ac5399c0b7490b0ecc289ef6a778f0d9f14ed6246044bbda1c37717c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
