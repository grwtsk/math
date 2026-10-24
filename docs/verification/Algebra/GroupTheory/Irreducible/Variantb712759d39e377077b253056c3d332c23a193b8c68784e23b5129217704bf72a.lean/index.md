# Verification target: GRWTSK.Algebra.GroupTheory.Irreducible.Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f210cc8fd07e86f4f86d714d002b31c553960d0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f210cc8fd07e86f4f86d714d002b31c553960d0`.

Source path: `GRWTSK/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [irreducible_mem_submonoidClosure_subset](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/declarations/irreducible-mem-submonoidclosure-subset--8b7d873b6ec36b7b794dab5f.md) | 38 | `result-track:8b7d873b6ec36b7b794dab5f153dc7e7e5c1f55430d825489ebe0952ff432431` |
| 2 | `lemma` | [irreducible_subset_of_submonoidClosure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/declarations/irreducible-subset-of-submonoidclosure-eq-top--c7ee04f820dad7fa04bdb391.md) | 47 | `result-track:c7ee04f820dad7fa04bdb391760201814f445560596c248635e98116eff74502` |
| 3 | `lemma` | [Submonoid.FG.finite_irreducible_mem_submonoidClosure](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/declarations/submonoid-fg-finite-irreducible-mem-submonoidclosure--9aae52d123a5e89d151d4e93.md) | 56 | `result-track:9aae52d123a5e89d151d4e93f23c3ae4d710e70f47978d580c4c7b066ddde5dd` |
| 4 | `lemma` | [finite_irreducible](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/declarations/finite-irreducible--0f454188c0422d8f253c669a.md) | 66 | `result-track:0f454188c0422d8f253c669a301fbadb37e87dbed05e1b126ea879feb5a59a71` |
| 5 | `lemma` | [Submonoid.closure_irreducible](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variantb712759d39e377077b253056c3d332c23a193b8c68784e23b5129217704bf72a.lean/declarations/submonoid-closure-irreducible--f4062d210990a294999a0506.md) | 79 | `result-track:f4062d210990a294999a05062f76d8bc15c26685219c2e4397a038f47bee8ec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
