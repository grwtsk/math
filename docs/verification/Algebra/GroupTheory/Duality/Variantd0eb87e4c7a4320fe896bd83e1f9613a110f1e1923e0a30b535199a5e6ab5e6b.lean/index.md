# Verification target: GRWTSK.Algebra.GroupTheory.Duality.Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "139ab3c59e0ff51165164f2f1f0c8c46404e536f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `139ab3c59e0ff51165164f2f1f0c8c46404e536f`.

Source path: `GRWTSK/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FiniteAbelian.Duality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [finite](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/declarations/finite--b70a59d1fc46108ea9279fa2.md) | 26 | `declaration-track:b70a59d1fc46108ea9279fa2838927175c4cd79dcfed8294f0c79ba23f6c122d` |
| 2 | `lemma` | [exists_apply_ne_one_iff_exists_monoidHom](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/declarations/exists-apply-ne-one-iff-exists-monoidhom--081d7db3ec48ec541a9ea80d.md) | 39 | `result-track:081d7db3ec48ec541a9ea80d8ec262c9f281dd25dd4ccb405b5bb52a36b9c1ac` |
| 3 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity--ef5e434a3236ed7d3c8d9c0a.md) | 53 | `result-track:ef5e434a3236ed7d3c8d9c0ad79cbe4c47f51c53babedcf0d0f7c1db353309ff` |
| 4 | `lemma` | [mulEquiv_units](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/declarations/mulequiv-units--1e29c86b1b7b50d3a9a9e714.md) | 65 | `result-track:1e29c86b1b7b50d3a9a9e7142c380a7f1e3c8e1b47164ed6f04f1906a9abe4fb` |
| 5 | `lemma` | [card_eq_card_units_of_hasEnoughRootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/Duality/Variantd0eb87e4c7a4320fe896bd83e1f9613a110f1e1923e0a30b535199a5e6ab5e6b.lean/declarations/card-eq-card-units-of-hasenoughrootsofunity--3d1f54dd560fa082d6ddaa58.md) | 72 | `result-track:3d1f54dd560fa082d6ddaa5828e15520f2de96567ec1dfea9bf92582cd33a754` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
