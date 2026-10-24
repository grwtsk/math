# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNormFragment.Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2572d2f4de33cd92434a343b2a80c33947c1573f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2572d2f4de33cd92434a343b2a80c33947c1573f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/divisorremaindercore--2ec81a51500646038753abd3.md) | 18 | `declaration-track:2ec81a51500646038753abd3a48d5315418ad4d1a00c15b9bd45baf2f490bbab` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/divisorremaindercore-measurable--ed96593a9b7694218fc3dde2.md) | 24 | `result-track:ed96593a9b7694218fc3dde28c398dfd3560124959ed2daa7cc909a2470cbe0e` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/divisorremaindercore-sq-le--d01f45d415c99e514c2422cd.md) | 36 | `result-track:d01f45d415c99e514c2422cd83fd711b7c9047c6288d8d1f9b1ee5f0edb7b602` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/remaindermajorant-integrable--22f1ae0d21ca43c3ef94c870.md) | 65 | `result-track:22f1ae0d21ca43c3ef94c87048dced53e1758c50d94455e63372bc69eaeef87d` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/divisorremaindercore-memlp--c77c1a9bcb8e1e4084a5d6b2.md) | 72 | `result-track:c77c1a9bcb8e1e4084a5d6b2a63490565aceb830bee112c6a6f588cb5b285062` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/divisorremaindervector--601eff9fe4ca8d172628cf89.md) | 83 | `declaration-track:601eff9fe4ca8d172628cf89f6d87df3420fc2dba0f5b37f21a5efc1827ea5ca` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/divisorremaindervector-norm-le--63f714077e501af0f88e1ba6.md) | 87 | `result-track:63f714077e501af0f88e1ba6b687a0eda78ce3d8f64b16b421e56c5384ad75ef` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6835c03f117ffd6bd52b5f4dbbf1588135ecd3ffa6e3f6e8d01b6355a0fe8c75.lean/declarations/sourcemultiplier-divisorremainder-norm-le--a1eec1274b7cbbb5cffd0928.md) | 110 | `result-track:a1eec1274b7cbbb5cffd09280afe953306d4f32a3bf70bd18532a04194acdcb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
