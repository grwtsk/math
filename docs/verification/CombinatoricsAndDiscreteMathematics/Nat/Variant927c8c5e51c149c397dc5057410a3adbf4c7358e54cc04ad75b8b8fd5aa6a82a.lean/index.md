# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9a30d36780429f125748cd65c9102ea87565474",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9a30d36780429f125748cd65c9102ea87565474`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [even_sum_iff_even_card_odd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/declarations/even-sum-iff-even-card-odd--cf8308866a4d8cea9bea1e2d.md) | 21 | `result-track:cf8308866a4d8cea9bea1e2dc59c4429d7c37aa8911dae1efc6d83d17c1ed97b` |
| 2 | `lemma` | [odd_sum_iff_odd_card_odd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/declarations/odd-sum-iff-odd-card-odd--40a3d4c3490fd4884fa6bf90.md) | 29 | `result-track:40a3d4c3490fd4884fa6bf901adbcda8c078df5eff97d731f3836cca8a506632` |
| 3 | `theorem` | [card_preimage_eq_sum_card_image_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant927c8c5e51c149c397dc5057410a3adbf4c7358e54cc04ad75b8b8fd5aa6a82a.lean/declarations/card-preimage-eq-sum-card-image-eq--44b710f5c0173d6d51481777.md) | 33 | `result-track:44b710f5c0173d6d5148177715a74fec64e75eb243f32403c81046d17053d77c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
