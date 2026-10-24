# Verification target: GRWTSK.Algebra.LinearAlgebra.FixedHankelCutoff.Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0535c90e0f97e473a4283d89367a1d5a8660c723",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0535c90e0f97e473a4283d89367a1d5a8660c723`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffSequence](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/cutoffsequence--02b9a5efe4e381309078559e.md) | 35 | `declaration-track:02b9a5efe4e381309078559eddb57cebadc1b32c8febc816933392b19f72c6d8` |
| 2 | `theorem` | [unshifted_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/unshifted-eq-one--4c76960e5e8abcb621852b6d.md) | 38 | `result-track:4c76960e5e8abcb621852b6de1eb2da2099533295079cdbd248c0f75d4d1e7b8` |
| 3 | `theorem` | [shifted_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/shifted-eq-one--6e7e3bb94711f395bc1b4e78.md) | 48 | `result-track:6e7e3bb94711f395bc1b4e7891c1a182a21ac59ef05d90b555b94d527031171a` |
| 4 | `theorem` | [all_ones_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/all-ones-possemidef--a98c7d16dc0cc5e1c071fc0c.md) | 58 | `result-track:a98c7d16dc0cc5e1c071fc0c18302dce9f456bab4f4e57ae6491b462f3b914c6` |
| 5 | `theorem` | [both_towers_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/both-towers-possemidef--dd7c80d50e7528dd1c2d91e5.md) | 64 | `result-track:dd7c80d50e7528dd1c2d91e56c534949ef0c306d7a99810d5d201b2c28747cca` |
| 6 | `theorem` | [next_order_last_basis_quadratic](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/next-order-last-basis-quadratic--de8a734c4fb3c43ea19d7b48.md) | 72 | `result-track:de8a734c4fb3c43ea19d7b484abccf79d52ab0d332ff0db596dd8dfc34bbb453` |
| 7 | `theorem` | [next_order_not_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/next-order-not-possemidef--0b5cc43b6ff92c4720b6b81e.md) | 80 | `result-track:0b5cc43b6ff92c4720b6b81eadc4cee33f8a2aa0cb3a87c3098f8e4fef22ea54` |
| 8 | `theorem` | [fixed_cutoff_counterexample](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/fixed-cutoff-counterexample--e7dfcd599b8aba0329d0de7a.md) | 88 | `result-track:e7dfcd599b8aba0329d0de7abcad69cca2b9fbabbb4c67396138d1d010d9a9c6` |
| 9 | `theorem` | [fixed_cutoff_not_sufficient](../../../../../mathematics/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean/declarations/fixed-cutoff-not-sufficient--36cea4c76f024720981af644.md) | 98 | `result-track:36cea4c76f024720981af644f2ac16afaa3580c0de18a42e32d464670f1b0147` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
