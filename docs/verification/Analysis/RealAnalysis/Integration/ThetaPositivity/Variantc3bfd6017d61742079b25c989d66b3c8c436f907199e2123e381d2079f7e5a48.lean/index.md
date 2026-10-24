# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositivity.Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ce9607c563cafa832ac2d432131a3bd4e4ea72e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ce9607c563cafa832ac2d432131a3bd4e4ea72e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [shellGrowth_evenKernel_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-evenkernel-one-le--f100b7f7784a484136e8e2f4.md) | 5 | `result-track:f100b7f7784a484136e8e2f4a0f91b3805c7231c68737fa244b0e3d4a5aba7fd` |
| 2 | `lemma` | [shellGrowth_fmodif_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-fmodif-im--42ca7ea2304b36566655c788.md) | 18 | `result-track:42ca7ea2304b36566655c788a44637429ed29e55cbe63e72b80257e9bc8d6cd6` |
| 3 | `lemma` | [shellGrowth_fmodif_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-fmodif-nonneg--7862919675373ce512d03156.md) | 24 | `result-track:7862919675373ce512d031569eb934b436935aa41fae7a03b443cfe4fcb45244` |
| 4 | `lemma` | [shellGrowth_fmodif_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-fmodif-real--35b799c77def77500a37f7ce.md) | 47 | `result-track:35b799c77def77500a37f7cedb1da464fd3b83cdc57f58529fdc826e57c34eb5` |
| 5 | `lemma` | [shellGrowth_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-mellin-integrable--d9f5e2ca9d138ae8a0985267.md) | 51 | `result-track:d9f5e2ca9d138ae8a098526779ff14f1149d72bc7f5d4cf258f5d294574766ac` |
| 6 | `lemma` | [shellGrowth_lambda_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-lambda-integral--d6b193794f956f8c37427052.md) | 56 | `result-track:d6b193794f956f8c3742705204ebf34bf36de227fd65a45e8dd8182c88d05f8e` |
| 7 | `lemma` | [shellGrowth_real_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-real-integrand--f67a7f511a3893fa5b60adb4.md) | 61 | `result-track:f67a7f511a3893fa5b60adb4781be568c1f3ca95d014e5b174a19ae0e75a1da0` |
| 8 | `lemma` | [shellGrowth_real_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-real-integrable--89e9a196df6f7fe28e05855c.md) | 68 | `result-track:89e9a196df6f7fe28e05855c5dbf88ac5b8b5160ed3f8273c3bd70807a4e4543` |
| 9 | `lemma` | [shellGrowth_real_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-real-integral--da9c3542b501171cfa5319cc.md) | 77 | `result-track:da9c3542b501171cfa5319cc38c66dfe50faac71e39c1be545727410eb7c42b4` |
| 10 | `lemma` | [shellGrowth_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-strip-bound--15a70b067020c87709e0747d.md) | 91 | `result-track:15a70b067020c87709e0747d7c77edea317e7c04f2e7208e238711d2f3b21565` |
| 11 | `lemma` | [shellGrowth_integer_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-integer-endpoint-bound--8a34652d7021b2d7981b554d.md) | 118 | `result-track:8a34652d7021b2d7981b554da17d47678a65e9301d94ab5f5731399ba0e4f3d5` |
| 12 | `lemma` | [shellGrowth_sphere_of_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/declarations/shellgrowth-sphere-of-endpoint--c8564fde06832c488f1172b3.md) | 128 | `result-track:c8564fde06832c488f1172b349f94de6577e62e15146e5f9290c69b48f0b18ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
