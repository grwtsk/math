# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subperm.Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0e73511d6e12598cf02382c233b51aab9504220",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0e73511d6e12598cf02382c233b51aab9504220`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean.json)

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
| 1 | `lemma` | [subperm_iff_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/subperm-iff-count--805df268b2e75de3de096c15.md) | 37 | `result-track:805df268b2e75de3de096c15377d26c8cd9ec9b3942a2f86485e02132fdcbfb0` |
| 2 | `lemma` | [subperm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/subperm-iff--40950a3a48c2b843fcb63f51.md) | 41 | `result-track:40950a3a48c2b843fcb63f514e0d5d7e352ac35e545be081d72d96721ed1cf4e` |
| 3 | `lemma` | [subperm_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/subperm-singleton-iff--0223c9cc279377dd56a9f745.md) | 47 | `result-track:0223c9cc279377dd56a9f745ba83b6047f8acd8a84c33228fd10d48e4ab08bd1` |
| 4 | `lemma` | [subperm_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/subperm-cons-self--b0f6f96c296ae47a5b94e7ff.md) | 55 | `result-track:b0f6f96c296ae47a5b94e7ff528aeb0eac12a5bae58cdf984090b2ebc9c61883` |
| 5 | `theorem` | [Subperm.append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/subperm-append--728433c280bb3eb93cf7a62f.md) | 59 | `result-track:728433c280bb3eb93cf7a62f30e5fefa17aaaed1b6f0e22b72bd5e951851b76b` |
| 6 | `theorem` | [map_subperm_map_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/map-subperm-map-iff--f94f1260f644fb3ff7f33c4c.md) | 64 | `result-track:f94f1260f644fb3ff7f33c4cb19771f3846997e07c24bee9a37ea5fb428a7b6d` |
| 7 | `theorem` | [Nodup.subperm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant18800e4f34a39c907e724bd28eb134cdc06aa1dede35f31e4de8343190808473.lean/declarations/nodup-subperm--515e9fa97dcc728904fa52bf.md) | 80 | `result-track:515e9fa97dcc728904fa52bf45450a29e572f403d5b992d7133018e053310a82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
