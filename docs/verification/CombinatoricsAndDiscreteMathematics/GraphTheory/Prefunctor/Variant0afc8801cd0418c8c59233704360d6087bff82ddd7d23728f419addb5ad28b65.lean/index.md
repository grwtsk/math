# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Prefunctor.Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc0496ac6f85e04681b189252180930fb4d7e5fc",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc0496ac6f85e04681b189252180930fb4d7e5fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Prefunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/prefunctor--05898862de7fc5291efc10d8.md) | 16 | `declaration-track:05898862de7fc5291efc10d83b6d00c8897069539a6e590fb7266f5466837370` |
| 2 | `lemma` | [mk_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/mk-obj--06ff3441d73234f987d603ef.md) | 27 | `result-track:06ff3441d73234f987d603ef175ba7db9868a4b0adeb1178f9a7792d43c2bc25` |
| 3 | `lemma` | [mk_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/mk-map--c0eb51c5c5bfc41a0dd74a14.md) | 30 | `result-track:c0eb51c5c5bfc41a0dd74a142fe564e80425d4c9f97e1aff99958081d8033a92` |
| 4 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/ext--f97a3f083d9fb7fb95784093.md) | 34 | `result-track:f97a3f083d9fb7fb95784093ba257e9649ffa9092e91f9c4f8fe4f0d11244bf5` |
| 5 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/ext--ec4af670261e03fa04d48590.md) | 48 | `result-track:ec4af670261e03fa04d485905fda899ed41b7b6ebf169ff5683eb698976e17db` |
| 6 | `def` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/id--fc98f78e1c267a3947f003fe.md) | 61 | `declaration-track:fc98f78e1c267a3947f003fe67028a7b59352d05e2ab7a40d8cf428d4869cf0a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/instance--f97f3b86ccd98abb92cb7ed7.md) | 65 | `declaration-track:f97f3b86ccd98abb92cb7ed76c9eb4eb77b12483a383604be5b8e2d1c84cfce4` |
| 8 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/comp--e308309b2db72c0073004a6c.md) | 70 | `declaration-track:e308309b2db72c0073004a6cbf0b5807a8e5e3f823f4166265a03e962430e50b` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/comp-id--4b453d2e430f0e647165d63f.md) | 76 | `result-track:4b453d2e430f0e647165d63f6afbd951fecb971cc03116e68a6ebfbffe1c75f3` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/id-comp--c5ae3cea590d3807bce1a7a8.md) | 80 | `result-track:c5ae3cea590d3807bce1a7a82caf4f0fc34e8cca82ad2890485211fc1901bdb1` |
| 11 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/comp-assoc--0115fc2bccb71230acb71f96.md) | 84 | `result-track:0115fc2bccb71230acb71f964ada114eda16d073b1969021bfa0920efbe64fec` |
| 12 | `theorem` | [congr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/congr-map--a530046b4a1bbb9ac1da6b96.md) | 98 | `result-track:a530046b4a1bbb9ac1da6b96aaa98e31d686cd31892168abb2b2a110c0588e68` |
| 13 | `theorem` | [congr_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/congr-obj--a4c6c09438a359b0ffa0a8ee.md) | 103 | `result-track:a4c6c09438a359b0ffa0a8eee523c6aee69e08fec3d7c3b672f9a2abca4a5e19` |
| 14 | `theorem` | [congr_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/congr-hom--3200b35a09f6bfb4e59d5dff.md) | 107 | `result-track:3200b35a09f6bfb4e59d5dffda92f6b3d94b383b647211f467aa1fd8c397ddc8` |
| 15 | `theorem` | [homOfEq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant0afc8801cd0418c8c59233704360d6087bff82ddd7d23728f419addb5ad28b65.lean/declarations/homofeq-map--d13402f61a549d45cc2e814d.md) | 114 | `result-track:d13402f61a549d45cc2e814d4688006fba89920b7d5fe46caf33fd2eccc61959` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
