# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SignedHeightControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64442f342d716faf8a8b8b5b3c134cebd91c46dd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64442f342d716faf8a8b8b5b3c134cebd91c46dd`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow`](../../../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [allMass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/allmass--436df9eb0b8480235adc6208.md) | 24 | `declaration-track:436df9eb0b8480235adc62087cfb218898aa3c09c5698e150346ee37962a1199` |
| 2 | `def` | [positiveMass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/positivemass--494b17d1bc6a0d29bf5b6f35.md) | 27 | `declaration-track:494b17d1bc6a0d29bf5b6f353dd0a0cf147307c2c34ca0a40d683ea900ba6157` |
| 3 | `def` | [openPositiveMass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/openpositivemass--915226993a07ea35195b5d19.md) | 30 | `declaration-track:915226993a07ea35195b5d19da5cb902d809f5d7df522e0f7d1e96d4667b4f53` |
| 4 | `theorem` | [repeated_pair_is_not_cardinality](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/repeated-pair-is-not-cardinality--dd7f5131ec23ed8f9d40a3a8.md) | 34 | `result-track:dd7f5131ec23ed8f9d40a3a83fcc75df1e2e7e4ca10aa7113bb7e7db970e4dae` |
| 5 | `theorem` | [cutoff_atom_cannot_be_dropped](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/cutoff-atom-cannot-be-dropped--89ea875ae1dfb5d8fc293151.md) | 40 | `result-track:89ea875ae1dfb5d8fc293151d0fad0dbd1104bf704a7e561467efe891a447aa3` |
| 6 | `theorem` | [unequal_weights_break_doubling](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/unequal-weights-break-doubling--8760b0e4ef787a237055b2c8.md) | 45 | `result-track:8760b0e4ef787a237055b2c8f4b4e4f13d55ad969f2ca812f8c68a3174d8c297` |
| 7 | `theorem` | [real_axis_atom_breaks_doubling](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/real-axis-atom-breaks-doubling--399d720c854a64a97efcfc40.md) | 51 | `result-track:399d720c854a64a97efcfc4091f72cfa3a9ef90770bf47d7f9c7890ff50564dd` |
| 8 | `theorem` | [found_pair_does_not_give_upper_count](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/found-pair-does-not-give-upper-count--f5d683d20843acec25be66b9.md) | 56 | `result-track:f5d683d20843acec25be66b90f072dded351aa6eee3542bd7b182eb995c5ed9f` |
| 9 | `theorem` | [half_boundary_is_not_closed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/half-boundary-is-not-closed--b011ad827a109ba604604bcd.md) | 62 | `result-track:b011ad827a109ba604604bcdd5da3325bf15e5fd92b84cb17e7112557ca42d9f` |
| 10 | `theorem` | [strict_upper_is_essential](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/strict-upper-is-essential--9487fe6103eb96ed58521a75.md) | 67 | `result-track:9487fe6103eb96ed58521a75feb31a282c12269ad944a5935621cb704f376112` |
| 11 | `theorem` | [target_two_window_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/target-two-window-controls--5ff55dd1ebaea5c9e3c206ec.md) | 70 | `result-track:5ff55dd1ebaea5c9e3c206eca713b279d41fe79b085ead7e1075033a15c86f21` |
| 12 | `theorem` | [repeated_polynomial_conjugates](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/repeated-polynomial-conjugates--5d4f2bc5507691d32af4b4b7.md) | 77 | `result-track:5d4f2bc5507691d32af4b4b720f66b56d75cf24c300168b932099d1ff6b25122` |
| 13 | `theorem` | [canonical_zero_height](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SignedHeightControls.lean/declarations/canonical-zero-height--58a45d0af982afd153bee3a5.md) | 81 | `result-track:58a45d0af982afd153bee3a5f00c24f024c2d0db2c2cbcd83ffb7748af7bb873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
