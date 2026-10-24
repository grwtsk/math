# Verification target: GRWTSK.Algebra.QuarticGaloisMatching

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecd3ff7d95dd0aa2176eb3717d52a1970ada73ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticGaloisMatching.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticGaloisMatching.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticGaloisMatching.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecd3ff7d95dd0aa2176eb3717d52a1970ada73ff`.

Source path: `GRWTSK/Algebra/QuarticGaloisMatching.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticGaloisMatching.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticRootLocusEnumeration`](../../../mathematics/Algebra/QuarticRootLocusEnumeration.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRootPerm](../../../mathematics/Algebra/QuarticGaloisMatching.lean/declarations/actualrootperm--5ef5a427797e4d9dab178de8.md) | 28 | `declaration-track:5ef5a427797e4d9dab178de81987af82488f872b888ade49125765fc4595e231` |
| 2 | `theorem` | [actualRootPerm_spec](../../../mathematics/Algebra/QuarticGaloisMatching.lean/declarations/actualrootperm-spec--592fd36de5338388890756d3.md) | 33 | `result-track:592fd36de5338388890756d3dd2f3ba3a2c8fef4f9612c2b996c9894abc7c8c2` |
| 3 | `def` | [actualRootPermutationHom](../../../mathematics/Algebra/QuarticGaloisMatching.lean/declarations/actualrootpermutationhom--bb045f77fdc670479a0fc459.md) | 43 | `declaration-track:bb045f77fdc670479a0fc459d0bd4f17493384b4dd2a85626996c2cca37de741` |
| 4 | `def` | [actualMatchingPermutationHom](../../../mathematics/Algebra/QuarticGaloisMatching.lean/declarations/actualmatchingpermutationhom--3955d53bd4f5f7070821c2d1.md) | 64 | `declaration-track:3955d53bd4f5f7070821c2d18156c7c2ad8f6778a6a465da7e12c06caf5b144f` |
| 5 | `theorem` | [actual_matching_adjacency_automorphism](../../../mathematics/Algebra/QuarticGaloisMatching.lean/declarations/actual-matching-adjacency-automorphism--f6ce0c99fe0ff0c0b635df35.md) | 72 | `result-track:f6ce0c99fe0ff0c0b635df35b9acc9dbf8dcc86534194b5b09623ae23a31b12a` |
| 6 | `def` | [separableQuarticMatchingHom](../../../mathematics/Algebra/QuarticGaloisMatching.lean/declarations/separablequarticmatchinghom--8ec740b5ad9b5b0fbe84eaae.md) | 87 | `declaration-track:8ec740b5ad9b5b0fbe84eaae4c8b1a08dc0c9b8a1c261980dc034b053b8830c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
