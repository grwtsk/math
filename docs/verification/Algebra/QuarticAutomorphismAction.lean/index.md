# Verification target: GRWTSK.Algebra.QuarticAutomorphismAction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1afbb509e62b72b8e7344015f7d64c69b66f5f20",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticAutomorphismAction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1afbb509e62b72b8e7344015f7d64c69b66f5f20`.

Source path: `GRWTSK/Algebra/QuarticAutomorphismAction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticAutomorphismAction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticMatchingWeightEquiv`](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [root_enumeration_injective](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/root-enumeration-injective--bf129d8bb4d9ad961bce9716.md) | 32 | `result-track:bf129d8bb4d9ad961bce9716630f04d63764045e71a6d5f6a3b4dedb0da65c77` |
| 2 | `def` | [PreservesRootEnumeration](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/preservesrootenumeration--c68c22cb0368c9563d667162.md) | 40 | `declaration-track:c68c22cb0368c9563d6671625878b2b618fde6040df70fffadf84adbda829c1a` |
| 3 | `theorem` | [exists_root_permutation](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/exists-root-permutation--d07fb971b6309724253b2833.md) | 46 | `result-track:d07fb971b6309724253b283394e562496170f631110f8a1e908a596b6fecf6f1` |
| 4 | `theorem` | [matchingWeight_algEquiv](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/matchingweight-algequiv--f0d1d1c1f1bc89ba4346c244.md) | 56 | `result-track:f0d1d1c1f1bc89ba4346c2440ceb495f58561de5f34f302369d1f407e38852c6` |
| 5 | `theorem` | [complementaryAdjacency_algEquiv](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/complementaryadjacency-algequiv--5a21408d1a895fe1edb7d917.md) | 64 | `result-track:5a21408d1a895fe1edb7d91724da5c151c929dc7c331b5f52ffdaa7a4bef7f95` |
| 6 | `theorem` | [adjacency_automorphism_compatible](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/adjacency-automorphism-compatible--3538020f5a9c2816b191e3a0.md) | 73 | `result-track:3538020f5a9c2816b191e3a02db3d339719a399208dfb3303e3e66364aefb69e` |
| 7 | `theorem` | [eval_mapped_algEquiv](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/eval-mapped-algequiv--56a7cc927045740fa22090a4.md) | 88 | `result-track:56a7cc927045740fa22090a4f29c108c72f3a96661ea752eb1b4bfe50126b032` |
| 8 | `theorem` | [automorphism_preserves_quartic_root](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/automorphism-preserves-quartic-root--477b613db57be5ce2c694052.md) | 98 | `result-track:477b613db57be5ce2c694052f76dd15b828c20da7f6b723ab0fe03150abf6636` |
| 9 | `theorem` | [automorphism_maps_enumerated_roots](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/declarations/automorphism-maps-enumerated-roots--94e2674e1ae149c619d91b47.md) | 107 | `result-track:94e2674e1ae149c619d91b47eb33f7d37baa976451775ea80bc0c047ae91e93d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
