# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensAbel.Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbf05db66ede98567edea937b17f1915b992e096",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbf05db66ede98567edea937b17f1915b992e096`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realMoebius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/realmoebius--32d58d9bcff24eee57ec3c9b.md) | 36 | `declaration-track:32d58d9bcff24eee57ec3c9bd3c20e4a10aecc35998eb0374d45aa9dbe6b2d54` |
| 2 | `theorem` | [realMoebius_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/realmoebius-zero--4c59148b85030cdc536f8aad.md) | 40 | `result-track:4c59148b85030cdc536f8aadd507a1bb20f2069805125e721e2c1637eecfbc33` |
| 3 | `def` | [mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mertens--3b8c45cc2c2ce26be522697b.md) | 45 | `declaration-track:3b8c45cc2c2ce26be522697b8441c10d34342cd637f84880059cf14ce6323027` |
| 4 | `def` | [mertensNat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mertensnat--5813736e02bc46a122f557b0.md) | 49 | `declaration-track:5813736e02bc46a122f557b0df8313971ad8a3fd625b6e48936f5ddfcbe1a531` |
| 5 | `theorem` | [mertens_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mertens-natcast--c4449a401f80fb837ae4bbec.md) | 53 | `result-track:c4449a401f80fb837ae4bbec197b0c03973e93a6c3839e2ec3f79f55bb9cc814` |
| 6 | `theorem` | [mobius_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mobius-abel--ec809964f21464797f3d26d8.md) | 58 | `result-track:ec809964f21464797f3d26d8dd10944646426c4a8b694762f32a3ec32f9c053e` |
| 7 | `theorem` | [mobius_abel_commuted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mobius-abel-commuted--1e097fadf67db6cc474a3e37.md) | 76 | `result-track:1e097fadf67db6cc474a3e373ee6ff73bcf0c274501f6fe139461dce22b84b1b` |
| 8 | `def` | [sourceLower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/sourcelower--2e0831b4296ea28f42ca2bfc.md) | 107 | `declaration-track:2e0831b4296ea28f42ca2bfcb66709be879b5e1b3b658d9476a05ac8d811d67a` |
| 9 | `def` | [sourceUpper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/sourceupper--4e7d46404f8714c577eae9b3.md) | 109 | `declaration-track:4e7d46404f8714c577eae9b3fb20876deb7bc58a7a4acbc167a208df7241f537` |
| 10 | `def` | [mertensKernelIntegral](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mertenskernelintegral--1ba417e6a1ceb9b23720d87a.md) | 112 | `declaration-track:1ba417e6a1ceb9b23720d87aeef8d9fa0d38b625675870185cb6132a137c8690` |
| 11 | `theorem` | [source_window_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/source-window-abel--fb92017e3fdf79e11909fe02.md) | 117 | `result-track:fb92017e3fdf79e11909fe02349d80992611f3eb0003c389159fd45b82716f86` |
| 12 | `theorem` | [source_window_abel_of_upper_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/source-window-abel-of-upper-zero--d28643c0eba071d8bc150c62.md) | 158 | `result-track:d28643c0eba071d8bc150c62c16bbb91c5095b1367a15b2ba9dcea2956a93001` |
| 13 | `def` | [SourceMobiusKernelContract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/sourcemobiuskernelcontract--da7108d3863f87cdf1f87827.md) | 180 | `declaration-track:da7108d3863f87cdf1f87827c30461493b8511f9de0d9f407141403434b30267` |
| 14 | `theorem` | [abel_identity_of_source_kernel_contract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/abel-identity-of-source-kernel-contract--81275ecc00220a6ba6f7f922.md) | 197 | `result-track:81275ecc00220a6ba6f7f92225861133fc0b49dd0baab01c322d4fa4c3b6a940` |
| 15 | `def` | [MertensAbelCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mertensabelcheckpoint--5add60fa3c09e09e48ba3df5.md) | 211 | `declaration-track:5add60fa3c09e09e48ba3df5eeb7abe2790590c55153bd35c3e1b551bff8fed7` |
| 16 | `theorem` | [mertens_abel_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/declarations/mertens-abel-checkpoint--e2461f742188ba5fe27b7f7d.md) | 221 | `result-track:e2461f742188ba5fe27b7f7dce9ad54908d7fab237324d1ae285ffe2a28e55d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
