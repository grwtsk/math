# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt05.Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5442fe8830c11e46e76bc93da0b90719d95c9ff6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5442fe8830c11e46e76bc93da0b90719d95c9ff6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/fractionalweight--1f511edbe6cf7c78e607e366.md) | 17 | `declaration-track:1f511edbe6cf7c78e607e36623570216f507f9d1e4250deaa3cdb3b05edf31e8` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/fractionalweight-integrable--c6095b96f85e20d68d34ac64.md) | 19 | `result-track:c6095b96f85e20d68d34ac6461fbebda4ed50511cd9572e2d0469f8f5ffb2659` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/fractionalweight-nonneg--30753c9249efe10cb4c6636b.md) | 28 | `result-track:30753c9249efe10cb4c6636b5e4774134d306400c7ba26b12ebb76663b6abf3f` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/real-centered-euler-integral--0eebd104d44753cc5b394146.md) | 32 | `result-track:0eebd104d44753cc5b394146518b4b4b3036928c4b0b58388d0fcdeb6138238f` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/riemannzeta-real-euler--9febbbce852916fc1d2bba63.md) | 47 | `result-track:9febbbce852916fc1d2bba63b4b2e4f31dbf40bd2ddb7e966c99e28603e7dae7` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/riemannzeta-ofreal-neg--af3b736c78cb801b31be4e3a.md) | 78 | `result-track:af3b736c78cb801b31be4e3a61006386beb615fe958dee19c78ec003bbf12595` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/nontrivial-zero-im-ne-zero--00f258af27a56aec8ed2302b.md) | 88 | `result-track:00f258af27a56aec8ed2302b8cbb42799c7ea2635164ec3e702f6449fee848bb` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/realgammar--433e4a74242f28a9ccad1db1.md) | 96 | `declaration-track:433e4a74242f28a9ccad1db1f352c20c100c663dbe4c7b1ac94f5c0e54b1dd69` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/gammar-ofreal--a37b9fc34a9348174c0d5264.md) | 98 | `result-track:a37b9fc34a9348174c0d5264f36b89dcb3fb5001124bf0eb0b23f8150cdd6626` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/realgammar-pos--fd1f018b3c596e08ec71376c.md) | 105 | `result-track:fd1f018b3c596e08ec71376c06d43e37b5af23770f57ec6dad57507e50f119e3` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/xi-real-euler--a240cb525b4ac6b167fec85f.md) | 108 | `result-track:a240cb525b4ac6b167fec85f9105621d4cf4a156022c1f64d09afe5a1161da37` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/xi-ofreal-re-pos--3738660f519184e4f8bbd657.md) | 122 | `result-track:3738660f519184e4f8bbd657ffed525322461b65f74a3f668d6052afe9abc242` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/coefficient-zero-exact--81d5b9e401687c12f3720185.md) | 133 | `result-track:81d5b9e401687c12f3720185df1d1e596ee589628e65c41a64e254cb698fc64c` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variant1006d7734be9f6418b12e0687d1da9854eaf7a9f3fe6c4a2cdb43ca8f091c3ad.lean/declarations/coefficient-zero-pos--7e1c0ddbcb5f4f57b8e4e931.md) | 144 | `result-track:7e1c0ddbcb5f4f57b8e4e93160eedd234fcbb3219fca020ffc058a2858500e00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
