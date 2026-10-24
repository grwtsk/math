# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ZagierTwoSquares.Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcf697be91acfd09d61b5cb0e7e47c9dc301322b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcf697be91acfd09d61b5cb0e7e47c9dc301322b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zagierSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/zagierset--136a819097e9666e22cbaae7.md) | 41 | `declaration-track:136a819097e9666e22cbaae77518f266ac40739a7fdae2c54425ea61e0cd576f` |
| 2 | `lemma` | [zagierSet_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/zagierset-lower-bound--2e9481d02fde184785842266.md) | 43 | `result-track:2e9481d02fde184785842266f07228bf9790ec2d77900aeaaae7ed721e57141e` |
| 3 | `lemma` | [zagierSet_upper_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/zagierset-upper-bound--d4a464ec5fbc50ffb615933f.md) | 60 | `result-track:d4a464ec5fbc50ffb615933f090afda7c9096f1c29775073b46d562d5bb7de13` |
| 4 | `lemma` | [zagierSet_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/zagierset-subset--d5fe8c5ea6ca7e317f0f2643.md) | 66 | `result-track:d5fe8c5ea6ca7e317f0f26437640095f9ceb041657ba223d0e78d54c36dc85f4` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/instance--4bc8cbec6713506347eb95de.md) | 72 | `declaration-track:4bc8cbec6713506347eb95de7193fcc0484cafde9835e656c2d7c6652e8df555` |
| 6 | `def` | [obvInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/obvinvo--1fe5ff34d62c4df9528bad58.md) | 85 | `declaration-track:1fe5ff34d62c4df9528bad586851b39b32fc5bfceaf77f00f269a468795f9466` |
| 7 | `theorem` | [obvInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/obvinvo-sq--0e84405ccc68e66936a62dc3.md) | 89 | `result-track:0e84405ccc68e66936a62dc31f5ef4dfa9627d5eafacada3e6934495a1be50fc` |
| 8 | `theorem` | [sq_add_sq_of_nonempty_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/sq-add-sq-of-nonempty-fixedpoints--2ff4e50f577ee0289afb4bb0.md) | 93 | `result-track:2ff4e50f577ee0289afb4bb06c0db95dde398b224d0b7834c5474bea305822bd` |
| 9 | `def` | [complexInvo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/complexinvo--5587320a51b651b57b613af6.md) | 105 | `declaration-track:5587320a51b651b57b613af6534f14d6d7c64c9317b0d6eb97e69a23fbc3d9b2` |
| 10 | `theorem` | [complexInvo_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/complexinvo-sq--43275979bebf442087491138.md) | 121 | `result-track:43275979bebf44208749113869522f2e0da38e8f5819a52ae42f5eb541be2a3c` |
| 11 | `theorem` | [eq_of_mem_fixedPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/eq-of-mem-fixedpoints--b8e0db7ae7fd53e043c911a1.md) | 148 | `result-track:b8e0db7ae7fd53e043c911a1ac6e6cf12ffbcc4e804c534165b86b34d6831c63` |
| 12 | `def` | [singletonFixedPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/singletonfixedpoint--0af03082ffe45b4fbcd41949.md) | 174 | `declaration-track:0af03082ffe45b4fbcd419495fa374b365227794e2270cc28bf2280ccd170290` |
| 13 | `theorem` | [card_fixedPoints_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/card-fixedpoints-eq-one--0ab44faf4c0e038bce3b972c.md) | 179 | `result-track:0ab44faf4c0e038bce3b972cfe82a88644a6d2afb3ccedd78dad02faf6bb604d` |
| 14 | `theorem` | [Nat.Prime.sq_add_sq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant4abf02387b3b70b166323cb77cb78b26828812c96cc3956e2dfd69741536a0db.lean/declarations/nat-prime-sq-add-sq--85c29b27d3d17ef5bf8c9a13.md) | 198 | `result-track:85c29b27d3d17ef5bf8c9a13528bd626b979017e8214a6d4f2185b93db29e262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
