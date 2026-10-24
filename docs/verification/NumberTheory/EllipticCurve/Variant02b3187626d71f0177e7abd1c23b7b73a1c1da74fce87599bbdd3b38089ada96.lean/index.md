# Verification target: GRWTSK.NumberTheory.EllipticCurve.Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc76200e9ac774b83edf528a0b77fcc13d351eb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc76200e9ac774b83edf528a0b77fcc13d351eb`.

Source path: `GRWTSK/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean.json)

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
| 1 | `def` | [Point.naiveHeight](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/point-naiveheight--0ac21fc5f66e935dcc7c4650.md) | 38 | `declaration-track:0ac21fc5f66e935dcc7c465058a5800b85d0c910c60c60bd245bfbfaa9bd5f13` |
| 2 | `lemma` | [Point.naiveHeight_eq_logHeight](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/point-naiveheight-eq-logheight--55312809ae6782a4688349f0.md) | 41 | `result-track:55312809ae6782a4688349f06da03ea2b50f8ba244d7b0c195365f099154b485` |
| 3 | `lemma` | [Point.naiveHeight_eq_logHeight₁](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/point-naiveheight-eq-logheight--e01a076f69b386b55008f093.md) | 44 | `result-track:e01a076f69b386b55008f093fc249bc5a8dd94a0293a45f2a5c0fbd3c59720b6` |
| 4 | `lemma` | [abs_logHeight_sym2x_sub_le](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/abs-logheight-sym2x-sub-le--f1cd1db72762da9eca9b67fe.md) | 52 | `result-track:f1cd1db72762da9eca9b67fe24f544ace8b72f63d2aba4cc0d671d0f009049c7` |
| 5 | `theorem` | [abs_logHeight_addSubMap_sub_two_mul_logHeight_le](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/abs-logheight-addsubmap-sub-two-mul-logheight-le--5f07098589332e78af269b91.md) | 71 | `result-track:5f07098589332e78af269b91befbc5ea92839aa7459df437eec3e8f753f3bbf7` |
| 6 | `theorem` | [approx_parallelogram_law](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/approx-parallelogram-law--02146844468496414f985f64.md) | 81 | `result-track:02146844468496414f985f644c40c8f8e316d9082335066604608f45fe41144e` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/instance--898bdacc379e1476332af833.md) | 104 | `declaration-track:898bdacc379e1476332af83342e82ef8def6c30ba2dce2f13d519f23178cff21` |
| 8 | `lemma` | [finite_naiveHeight_le](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/finite-naiveheight-le--96b44fd2403030fa0ad57b6a.md) | 117 | `result-track:96b44fd2403030fa0ad57b6a392f0e5a691630f32f7891a81a4f244d2d3a20db` |
| 9 | `theorem` | [finite_torsion](../../../../mathematics/NumberTheory/EllipticCurve/Variant02b3187626d71f0177e7abd1c23b7b73a1c1da74fce87599bbdd3b38089ada96.lean/declarations/finite-torsion--7af398438b7a198508f4d7fa.md) | 124 | `result-track:7af398438b7a198508f4d7fa4a9573c97eb7d6cec16af61cb886227f00570564` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
