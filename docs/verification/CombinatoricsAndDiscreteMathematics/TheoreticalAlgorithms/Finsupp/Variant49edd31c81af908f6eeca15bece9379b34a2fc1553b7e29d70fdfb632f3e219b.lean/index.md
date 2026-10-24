# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Finsupp.Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afde5e76367b82354a004f8c04506427fc984bb2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afde5e76367b82354a004f8c04506427fc984bb2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sym2_support_eq_preimage_support_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/declarations/sym2-support-eq-preimage-support-mul--07c83bafae96c8e34a367df7.md) | 22 | `result-track:07c83bafae96c8e34a367df71eaa11cbbaa37ecbc561cc9050f94c039ee5e2fc` |
| 2 | `lemma` | [mem_sym2_support_of_mul_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/declarations/mem-sym2-support-of-mul-ne-zero--795b88684090ca04fc262be3.md) | 25 | `result-track:795b88684090ca04fc262be3326e0b16989a34cc3c9b7841297113fd3c5d0f13` |
| 3 | `def` | [sym2Mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/declarations/sym2mul--5ea1c229fccc76333f067b23.md) | 32 | `declaration-track:5ea1c229fccc76333f067b238f4d3f13b3d5a182d92ee930f284d7934b6981ca` |
| 4 | `lemma` | [support_sym2Mul_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/declarations/support-sym2mul-subset--a6f65e580e4e8a3b36605996.md) | 35 | `result-track:a6f65e580e4e8a3b366059962ea4650587105a4b074815699505a771406f4e3e` |
| 5 | `lemma` | [coe_sym2Mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/declarations/coe-sym2mul--eb93b40758a5b9b2b3d9ae4a.md) | 37 | `result-track:eb93b40758a5b9b2b3d9ae4a2d6c9a30c2155bff47d6a2bf446d5d1d7e4033e2` |
| 6 | `lemma` | [sym2Mul_apply_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finsupp/Variant49edd31c81af908f6eeca15bece9379b34a2fc1553b7e29d70fdfb632f3e219b.lean/declarations/sym2mul-apply-mk--823704acde5468158a609ff5.md) | 39 | `result-track:823704acde5468158a609ff5b2152a3a4d4a67f58b822dbfe4903e4f127ee363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
