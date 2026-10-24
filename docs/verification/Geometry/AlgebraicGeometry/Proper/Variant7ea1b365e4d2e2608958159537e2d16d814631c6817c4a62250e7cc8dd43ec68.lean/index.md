# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Proper.Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bff5db041c2a171f16f967af61171e0ef1b023f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bff5db041c2a171f16f967af61171e0ef1b023f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.ValuativeCriterion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lift_awayMapₐ_awayMapₐ_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/lift-awaymap-awaymap-surjective--0297545670d78d5817b98b0c.md) | 31 | `result-track:0297545670d78d5817b98b0c40b9f1b837d1fe1391bb61f6bb0b2cc3734528a2` |
| 2 | `instance` | [isSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/isseparated--843f3d48bb2320a3c3c3347a.md) | 76 | `declaration-track:843f3d48bb2320a3c3c3347a6a7055f4eb94aac6f0451b20a61385411487a18b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/instance--d97ded8c049dcf8d56350713.md) | 122 | `declaration-track:d97ded8c049dcf8d56350713254955d73fa633a5943c5f31ee8bc34a538630cd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/instance--0b9dd00418033735c18a431b.md) | 129 | `declaration-track:0b9dd00418033735c18a431b64f20a431125008295e0d6213a13e5dd6b417d59` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/instance--c7fb15909401eba5fe9c3fce.md) | 144 | `declaration-track:c7fb15909401eba5fe9c3fcefc0ff4867d1b99aa1b93db4547f76b53fa4ddebb` |
| 6 | `theorem` | [valuativeCriterion_existence_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/valuativecriterion-existence-aux--d7030235b31731b37b44b791.md) | 190 | `result-track:d7030235b31731b37b44b7918c445e99ab340acf6713529908e6442db0821374` |
| 7 | `lemma` | [valuativeCriterion_existence](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/valuativecriterion-existence--a4608703cc48277c9fd90f7b.md) | 305 | `result-track:a4608703cc48277c9fd90f7b6e46a4790a89de3792914404a3b421f750e32823` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/instance--6cf378f92a0ef222302a7a9d.md) | 352 | `declaration-track:6cf378f92a0ef222302a7a9de0bc746e13ab745689164123d5737a18536bb308` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Proper/Variant7ea1b365e4d2e2608958159537e2d16d814631c6817c4a62250e7cc8dd43ec68.lean/declarations/instance--98d0b25bc463f496f78f5b2b.md) | 358 | `declaration-track:98d0b25bc463f496f78f5b2b875851e9386173f9e3458b4bbbd002b63ad3226b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
