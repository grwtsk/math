# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DampedDivisorRemainderNormFragment.Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ba7d6c1b07a917c3d25bdb4b7e8de61a1a29c7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ba7d6c1b07a917c3d25bdb4b7e8de61a1a29c7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean.json)

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
| 1 | `def` | [divisorRemainderCore](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/divisorremaindercore--97c63ceef3db717f341dab93.md) | 10 | `declaration-track:97c63ceef3db717f341dab935c3dd6844ef6744f9bcc558963a56975c193d8a4` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/divisorremaindercore-measurable--f8f1c5aeef0457c33124397c.md) | 16 | `result-track:f8f1c5aeef0457c33124397c4fffd0e5b74daf9c4b8350ac2ca482d0fa7cf078` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/divisorremaindercore-sq-le--bfd2c76f450e6b1f4b97164e.md) | 28 | `result-track:bfd2c76f450e6b1f4b97164e09afec20f3b579c09ae08777a64c5b77c0515e9a` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/remaindermajorant-integrable--0a5a914c624a911844e1d5be.md) | 57 | `result-track:0a5a914c624a911844e1d5be7502367b2a8e0c02a7133a8297b26c27ddb73b6a` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/divisorremaindercore-memlp--13d252c44975d9bbffca40b4.md) | 64 | `result-track:13d252c44975d9bbffca40b4ae893245d6588fd8a6b51a59292c7084125833f5` |
| 6 | `def` | [divisorRemainderVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/divisorremaindervector--3ebc736a82478bdd6c39e3e5.md) | 75 | `declaration-track:3ebc736a82478bdd6c39e3e5bfd120d2cbe11c27b6a9cae81217d25f0f4f7647` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/divisorremaindervector-norm-le--36719a5ff9362c611b668d32.md) | 79 | `result-track:36719a5ff9362c611b668d32441e9e83383f8feed8d12c1ef49715503f96f353` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/declarations/sourcemultiplier-divisorremainder-norm-le--f7e2dc8a6dd737c0306614a4.md) | 102 | `result-track:f7e2dc8a6dd737c0306614a487ab4fcf939fb8dcd40ff9d13e35bab41882f663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
