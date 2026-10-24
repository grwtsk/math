# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FourFunctions.Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fa7c5190af09a1d1139c07c436670dc054c0f0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fa7c5190af09a1d1139c07c436670dc054c0f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sups` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Birkhoff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Booleanisation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Sublattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ineq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/ineq--811b9286449dd9fb8f9c8ce4.md) | 68 | `result-track:811b9286449dd9fb8f9c8ce4064ea64f47613ffc7130234032655c2c7b3ef9ed` |
| 2 | `def` | [collapse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/collapse--edb27d7a0cc5895e1c707540.md) | 90 | `declaration-track:edb27d7a0cc5895e1c707540909c89e5b8b3fd84ee8a20914cbfcea3ecb59cc1` |
| 3 | `lemma` | [erase_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/erase-eq-iff--894ac74321031c35c4c1bca6.md) | 93 | `result-track:894ac74321031c35c4c1bca6872c673704e108ea113eb89f41eab24ffaf06689` |
| 4 | `lemma` | [filter_collapse_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/filter-collapse-eq--b2621a95e301c228b445739e.md) | 98 | `result-track:b2621a95e301c228b445739e8cac33f71b2cacfb9d08b1ba6c9e856dec1e7bad` |
| 5 | `lemma` | [collapse_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/collapse-eq--9849c5f5ed60019726878bf0.md) | 107 | `result-track:9849c5f5ed60019726878bf0258d5c76e0469ce6feeadb9bd51abd9dd8890469` |
| 6 | `lemma` | [collapse_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/collapse-of-mem--159374ad7f284c3eb5fdf4b6.md) | 114 | `result-track:159374ad7f284c3eb5fdf4b6e8c0524eae2f9ac9185787cc8959e841c15a9374` |
| 7 | `lemma` | [le_collapse_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/le-collapse-of-mem--e97a9244a2943e4d82594a56.md) | 118 | `result-track:e97a9244a2943e4d82594a5634237c01689fb4a8c6280eecaac865fe676c98a8` |
| 8 | `lemma` | [le_collapse_of_insert_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/le-collapse-of-insert-mem--89a4dd20da6791772d4d94d5.md) | 126 | `result-track:89a4dd20da6791772d4d94d53d073c10487994d0eb6688434265126e77b8b601` |
| 9 | `lemma` | [collapse_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/collapse-nonneg--6b218a45172406102c8cc924.md) | 133 | `result-track:6b218a45172406102c8cc92491ebdfc19fda9a1e780d74a23f282fc08658225b` |
| 10 | `lemma` | [collapse_modular](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/collapse-modular--ffe7ad484e3bec8a4ba3d24f.md) | 135 | `result-track:ffe7ad484e3bec8a4ba3d24f9bb94972556f0d98c7225b94f9b55ee4f8064ac6` |
| 11 | `lemma` | [sum_collapse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/sum-collapse--9b792159857ebca92cc22236.md) | 220 | `result-track:9b792159857ebca92cc22236046b7e31276d1305b711ea37e8688b02bdbae151` |
| 12 | `lemma` | [Finset.four_functions_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/finset-four-functions-theorem--6a789dba3ee0366dd221f2a4.md) | 246 | `result-track:6a789dba3ee0366dd221f2a4716c16ad95b812a46e865f182edf4231ea2dc1aa` |
| 13 | `lemma` | [four_functions_theorem_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/four-functions-theorem-aux--cf73f1beea4ea65b9ce24a6b.md) | 265 | `result-track:cf73f1beea4ea65b9ce24a6b8ed5a7acbb909b10f81249288c36aa3e8eb0a893` |
| 14 | `lemma` | [four_functions_theorem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/four-functions-theorem--6248d179d83cf29aab1fdf32.md) | 277 | `result-track:6248d179d83cf29aab1fdf329b2f32ab1a29775352f1628a58e2b232505dfdd0` |
| 15 | `lemma` | [Finset.le_card_infs_mul_card_sups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/finset-le-card-infs-mul-card-sups--ebffbe15f08584b3ee632383.md) | 313 | `result-track:ebffbe15f08584b3ee632383e5d82e099b330b06cd639e4d59f8206d8b05e926` |
| 16 | `lemma` | [four_functions_theorem_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/four-functions-theorem-univ--c44b29ec5b96d4698156086e.md) | 321 | `result-track:c44b29ec5b96d4698156086e6d5bb191d53876adb0e19dba58027de7114e8df7` |
| 17 | `lemma` | [holley](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/holley--1bce5a127729106ac6655e58.md) | 327 | `result-track:1bce5a127729106ac6655e58bd70052c83ca1d89ce86d131bc89314bf622a212` |
| 18 | `lemma` | [fkg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/fkg--af894def8408c44136d44a00.md) | 345 | `result-track:af894def8408c44136d44a0035a5dfddb5075c2c5505c2e32600c2cd88f3b94b` |
| 19 | `lemma` | [Finset.le_card_diffs_mul_card_diffs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/finset-le-card-diffs-mul-card-diffs--8fabce9720608f1f1d8b9902.md) | 362 | `result-track:8fabce9720608f1f1d8b9902017353fb375119c1cee7479a5e75da4f522edda1` |
| 20 | `lemma` | [Finset.card_le_card_diffs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant6079c7a5be4f4ad4adfc59f903d7ca7851c69019dcb51cab7cc02eafad3a8261.lean/declarations/finset-card-le-card-diffs--4e22289c13822eb501e249aa.md) | 374 | `result-track:4e22289c13822eb501e249aa0263d226daf678081cd707c67ddce40715da45c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
