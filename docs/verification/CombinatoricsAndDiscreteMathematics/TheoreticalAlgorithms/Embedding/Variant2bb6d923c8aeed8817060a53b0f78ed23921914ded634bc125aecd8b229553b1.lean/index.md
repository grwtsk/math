# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Embedding.Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ae89d3e2133190e90782b5f79ce3b09c1748ffa",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ae89d3e2133190e90782b5f79ce3b09c1748ffa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Disjoint` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/tail--d4b6f62625edf6c4bfeb8386.md) | 48 | `declaration-track:d4b6f62625edf6c4bfeb83862ccde294a686a6a39c889d83d8039fe57fc6ba2e` |
| 2 | `theorem` | [coe_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/coe-tail--13d82c7c941d2b8567ea999f.md) | 52 | `result-track:13d82c7c941d2b8567ea999f04c51e1e8584074e6b403c39c1702f924e8a0a69` |
| 3 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/cons--d1dfc13a080066c9fbe1a8dd.md) | 55 | `declaration-track:d1dfc13a080066c9fbe1a8dd15d77ed9ba7484f107c3cbc26da6386d47249716` |
| 4 | `theorem` | [coe_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/coe-cons--f0706144e8af2d7ebeb7e4b3.md) | 59 | `result-track:f0706144e8af2d7ebeb7e4b33d3df4615531d812371cf44f690ba4171aacc212` |
| 5 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/tail-cons--7f97e3b1d84e99430cab2a3c.md) | 62 | `result-track:7f97e3b1d84e99430cab2a3ca10d5951e2565b28765852e81010639dc33f2655` |
| 6 | `def` | [init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/init--01b465c8b2eeaac192599a87.md) | 66 | `declaration-track:01b465c8b2eeaac192599a87ce77f548a21f17138da4dc4433b3ea9e63907dec` |
| 7 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/snoc--46e0881f76b7da425aec5a47.md) | 70 | `declaration-track:46e0881f76b7da425aec5a47a15c282af4686d1a3f791ab95e5c949456538b9a` |
| 8 | `theorem` | [coe_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/coe-snoc--49810d699e38d3191b4f13d7.md) | 75 | `result-track:49810d699e38d3191b4f13d7dd91312ed06e24144c0e6ff4a3c4f6b99a246690` |
| 9 | `theorem` | [init_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/init-snoc--968bf1070f2f657ad8adbae3.md) | 78 | `result-track:968bf1070f2f657ad8adbae391c6393f4882aec3116fad79fdc73d40d0f5f815` |
| 10 | `theorem` | [snoc_castSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/snoc-castsucc--4a7bb745b6deba589e9f9aa0.md) | 82 | `result-track:4a7bb745b6deba589e9f9aa0f375c53ad475f30aaaf9c3fe2db5769bff2dcd41` |
| 11 | `theorem` | [snoc_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/snoc-last--e9b6fc808d22a5ed70ae15a0.md) | 86 | `result-track:e9b6fc808d22a5ed70ae15a049dc9950e52190bb5cf64d05fca3ec1495d4dde5` |
| 12 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/append--50b3428233e8d6a84c3e96ed.md) | 91 | `declaration-track:50b3428233e8d6a84c3e96edf8c45b4ea6bb5c4ac32d1af0c436cea5f3cfbadf` |
| 13 | `theorem` | [coe_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/coe-append--42eb2e17aaa37981c67bec32.md) | 97 | `result-track:42eb2e17aaa37981c67bec32fbe41a7767e13ab812cf7ca035af32796fc0ccc8` |
| 14 | `def` | [twoEmbeddingEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/twoembeddingequiv--c5fdd832dda19f3d0eade1ab.md) | 108 | `declaration-track:c5fdd832dda19f3d0eade1ab9f0d83a69c1e86574b673952ef81d37f00515402` |
| 15 | `def` | [embFinTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/embfintwo--d33a6b122d3dd66f950913af.md) | 132 | `declaration-track:d33a6b122d3dd66f950913af77763f20c78fe669b7e5ad48128678c718231b90` |
| 16 | `theorem` | [embFinTwo_apply_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/embfintwo-apply-zero--095b26da46b4261e9b473159.md) | 135 | `result-track:095b26da46b4261e9b473159f10d174eaa98e20828c378d0dc3253966dd1ed77` |
| 17 | `theorem` | [embFinTwo_apply_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Embedding/Variant2bb6d923c8aeed8817060a53b0f78ed23921914ded634bc125aecd8b229553b1.lean/declarations/embfintwo-apply-one--c61aad2c3e2ef7a25d40ac06.md) | 138 | `result-track:c61aad2c3e2ef7a25d40ac06419fa5b8f63ec50e58f42f02964faf8deb2d61b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
