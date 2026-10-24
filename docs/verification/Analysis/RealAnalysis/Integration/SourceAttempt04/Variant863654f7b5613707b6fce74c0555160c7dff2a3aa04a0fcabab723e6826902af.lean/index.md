# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt04.Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f112804c637e5841986f7f581fa345824b0a19d9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f112804c637e5841986f7f581fa345824b0a19d9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/kernel--5753cff73516a44479cb94a8.md) | 21 | `declaration-track:5753cff73516a44479cb94a87fb4ce9eddfeba4a7268b40c7244c9898e805ef0` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/secondmomentintegrand--0bd6ac985dd3e11c52f19539.md) | 22 | `declaration-track:0bd6ac985dd3e11c52f1953997ad1b4693738cc38759575d367a985367f311dc` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/majorant--5d2f426642a95da6651025a2.md) | 23 | `declaration-track:5d2f426642a95da6651025a24e0b22c06040df6214b0a680210ae0c575ad0942` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/denominator-pos--cd7e0d7d8172267ee02ad3c1.md) | 25 | `result-track:cd7e0d7d8172267ee02ad3c12dd1115fcc7940bafcbef7e16a933c3605af891c` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/kernel-nonneg--25866029cf991a26e4057f74.md) | 30 | `result-track:25866029cf991a26e4057f7444d74b79ce11bf71bad57cac33b4aa7e43c2ed03` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/reciprocal-denominator-bound--835b019042d6fba1cfa27667.md) | 33 | `result-track:835b019042d6fba1cfa2766708292ff95f8f75714051b4b0cbb218ef1963684b` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/secondmoment-bound--5006c70c3f47638e9c43cd2d.md) | 45 | `result-track:5006c70c3f47638e9c43cd2d7ccdacb834e5509511d94c39b6414ce717f5f77e` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/polynomial-exp-integrable--42f396bbab2dfcf5f6f33bdb.md) | 57 | `result-track:42f396bbab2dfcf5f6f33bdb4333b177078e08e8e28f688b0c09b65a6788fa11` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt04/Variant863654f7b5613707b6fce74c0555160c7dff2a3aa04a0fcabab723e6826902af.lean/declarations/polynomial-exp-integral--ff2b7f31b948a1d583feb5a0.md) | 66 | `result-track:ff2b7f31b948a1d583feb5a09c6e60778dfe2dff26d786587b3a2f43d9eed5a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
