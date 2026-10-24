# Verification target: GRWTSK.Algebra.Epi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9825f3b220365a014de9b9513c3645f00e25c223",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9825f3b220365a014de9b9513c3645f00e25c223`.

Source path: `GRWTSK/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean.json)

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
| 1 | `class` | [IsEpi](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/isepi--2303f96a878a87b8be8e212d.md) | 29 | `declaration-track:2303f96a878a87b8be8e212db9e570b90a8e2c161504acbfe8a3080898a1d611` |
| 2 | `lemma` | [isEpi_iff_forall_one_tmul_eq](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/isepi-iff-forall-one-tmul-eq--4c5d5b9a3217708b49359c55.md) | 33 | `result-track:4c5d5b9a3217708b49359c5554c337e313f18015b9a9bf182f835acca043029f` |
| 3 | `lemma` | [isEpi_of_surjective_algebraMap](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/isepi-of-surjective-algebramap--5ebf6cca56eeb44a341e49d1.md) | 52 | `result-track:5ebf6cca56eeb44a341e49d1d45188d3d842124b543ad256332643d250d21b93` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/instance--ff55569950bff77ec46807ab.md) | 61 | `declaration-track:ff55569950bff77ec46807ab5e5cfeed060103f36958e24f584fdf7567deb497` |
| 5 | `lemma` | [isEpi_iff_surjective_algebraMap_of_finite](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/isepi-iff-surjective-algebramap-of-finite--6271cde20077120656f1afee.md) | 78 | `result-track:6271cde20077120656f1afeeb000553f01f5606f52c5448a09205db5e81f35c0` |
| 6 | `lemma` | [tmul_comm](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/tmul-comm--129305729409bc167bcf4bd8.md) | 107 | `result-track:129305729409bc167bcf4bd8a249331528bfbd6c0d80c524a8a8920d7c31afa6` |
| 7 | `lemma` | [injective_lift_lsmul](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/injective-lift-lsmul--97198c974f8d852d37e854e4.md) | 121 | `result-track:97198c974f8d852d37e854e48f867889a9c6534af07ca2cb06a45fc55c181a9b` |
| 8 | `def` | [_root_.TensorProduct.lid'](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/root-tensorproduct-lid--478164fcb9ecf2baf076059d.md) | 153 | `declaration-track:478164fcb9ecf2baf076059d02203de454dd944528fc19fbbdba389cd15a4db0` |
| 9 | `lemma` | [_root_.TensorProduct.lid'_apply_tmul](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/root-tensorproduct-lid-apply-tmul--6e5ed1b55e61c81c8bc3310b.md) | 158 | `result-track:6e5ed1b55e61c81c8bc3310baf94eb0503d109846b0c80656657cd09d5d4dee8` |
| 10 | `lemma` | [_root_.TensorProduct.lid'_symm_apply](../../../../mathematics/Algebra/Epi/Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.lean/declarations/root-tensorproduct-lid-symm-apply--23149140de4652894dcc3a11.md) | 162 | `result-track:23149140de4652894dcc3a114b8daa3d805723224fcf32d9ed39d4b8751b5f9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
