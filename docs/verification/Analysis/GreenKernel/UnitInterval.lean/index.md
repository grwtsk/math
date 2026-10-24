# Verification target: GRWTSK.Analysis.GreenKernel.UnitInterval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e26a1150fc87eac3fcec0a39d4ed488c5673e2e9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GreenKernel/UnitInterval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/index.md) · [Full source](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e26a1150fc87eac3fcec0a39d4ed488c5673e2e9`.

Source path: `GRWTSK/Analysis/GreenKernel/UnitInterval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GreenKernel/UnitInterval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitVolume](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/unitvolume--1d1211648ef7c5d0b92fb392.md) | 24 | `declaration-track:1d1211648ef7c5d0b92fb392c167c42ba5a5374cbd8490016e44c35e2672ac46` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/instance--53e37926d5df6f8de6e4147a.md) | 26 | `declaration-track:53e37926d5df6f8de6e4147af1b4aa6e975226cf44a1033caf09a0d5222d2b94` |
| 3 | `def` | [kernel](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/kernel--e5b8ce080cc0935a15ec1610.md) | 30 | `declaration-track:e5b8ce080cc0935a15ec16109c75cba7d495c6256ae73654c888b72e975fc58c` |
| 4 | `def` | [step](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/step--6b56d8f1e449a9bc460129a5.md) | 32 | `declaration-track:6b56d8f1e449a9bc460129a5307ad37b09ec54baebee05768a5169bb3f881c74` |
| 5 | `def` | [feature](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/feature--8f2a4c2fa534c54a7aca6ddc.md) | 34 | `declaration-track:8f2a4c2fa534c54a7aca6ddcec791f6de05242fb8521271d00775409e627aa61` |
| 6 | `theorem` | [kernel_symm](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/kernel-symm--a834e82a56c91f82b378c49b.md) | 36 | `result-track:a834e82a56c91f82b378c49b42ba70d113e7048647d42f17df21ffeda8e45efe` |
| 7 | `theorem` | [kernel_zero_left](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/kernel-zero-left--eb58837e209761df600bb766.md) | 39 | `result-track:eb58837e209761df600bb766ce267fd954389437ce97c81f2e46690614e63e7d` |
| 8 | `theorem` | [kernel_one_left](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/kernel-one-left--76b762e4ca43248e5165cb62.md) | 42 | `result-track:76b762e4ca43248e5165cb62ee4b9c0fcd63aed84ddf4f7056aef59ff7cfd01d` |
| 9 | `theorem` | [kernel_diagonal](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/kernel-diagonal--cb21915e7bf249c73b62a9a4.md) | 45 | `result-track:cb21915e7bf249c73b62a9a4df5b125aa82c3e5713f74e26e5fb6d712289a85c` |
| 10 | `theorem` | [kernel_nonneg](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/kernel-nonneg--8288b0692ace40e4b7f80648.md) | 49 | `result-track:8288b0692ace40e4b7f806484bf16a77ce8af6c3323940f2af396147805e00fa` |
| 11 | `theorem` | [step_integrable](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/step-integrable--d0b6309a78cc3cffc54aefaa.md) | 57 | `result-track:d0b6309a78cc3cffc54aefaae8addc29d433512a62884a81c95791e4e8739b52` |
| 12 | `theorem` | [step_mul](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/step-mul--4c08e14cf05809908de47a31.md) | 60 | `result-track:4c08e14cf05809908de47a31e485ad1f8a60691d614e9281cb2d51d36a605699` |
| 13 | `theorem` | [integral_step](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/integral-step--c4cb9bb436ba79e31133bd0c.md) | 64 | `result-track:c4cb9bb436ba79e31133bd0cf6fa9ce4c526cbeecba5daf42e68fed5f55063ed` |
| 14 | `theorem` | [feature_integrable](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/feature-integrable--4a1986c96ce0ab90c202f6e3.md) | 78 | `result-track:4a1986c96ce0ab90c202f6e3128ce8655f5366e8537638c42de45ec56de632a7` |
| 15 | `theorem` | [integral_feature](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/integral-feature--44888d6735f8b131101bccb0.md) | 81 | `result-track:44888d6735f8b131101bccb0a534771ea7d63303bebcc5ec7a7855c972bdd6af` |
| 16 | `theorem` | [feature_product_expansion](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/feature-product-expansion--145d19fd37df991e6c918f50.md) | 87 | `result-track:145d19fd37df991e6c918f5077a970012f8ef25602fb13ca7504d8182952bde3` |
| 17 | `theorem` | [feature_product_integrable](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/feature-product-integrable--1215b8413004b05dd111a477.md) | 95 | `result-track:1215b8413004b05dd111a47731a7c0577a2da03ba656cd9c0174686a5d3e478e` |
| 18 | `theorem` | [integral_feature_product](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/integral-feature-product--11343bc133fb1a2d587a4727.md) | 102 | `result-track:11343bc133fb1a2d587a472723d526bf67c1e26bb81174617e37ef2bc7556c32` |
| 19 | `theorem` | [finite_signed_gram](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/finite-signed-gram--717f817521bc148c4a1f21ee.md) | 130 | `result-track:717f817521bc148c4a1f21eea572060491eee186a9f1708c14429cf11368dc2e` |
| 20 | `theorem` | [finite_signed_gram_nonneg](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/declarations/finite-signed-gram-nonneg--fc426d8682ecfcd0e89468b1.md) | 157 | `result-track:fc426d8682ecfcd0e89468b1d261b3c5bd5ec7c221aa22c755f9871410f4abd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
