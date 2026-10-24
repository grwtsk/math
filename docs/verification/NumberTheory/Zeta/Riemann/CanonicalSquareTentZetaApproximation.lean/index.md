# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df9bbf890802aec9ee57c246bb45b7e4703781c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df9bbf890802aec9ee57c246bb45b7e4703781c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilApproximatePositiveLimit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalSquareTentTest](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/canonicalsquaretenttest--ba5ccd91b6e497ee043fbe87.md) | 58 | `declaration-track:ba5ccd91b6e497ee043fbe872e078338d959cbd61cfe3d1c3f487bdbee37582d` |
| 2 | `def` | [sourceBinding](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/sourcebinding--3c669aa5b0b86ab944aa424f.md) | 63 | `declaration-track:3c669aa5b0b86ab944aa424fdced6bc7bbfac5478cc618f84a585ae67e6696bf` |
| 3 | `def` | [testClassId](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/testclassid--62a88964bb6644e1ea1a4137.md) | 77 | `declaration-track:62a88964bb6644e1ea1a41373466e0f7d8fb1b1316d2804178c76efbf795872b` |
| 4 | `def` | [testStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/teststage--cc31f13a883931d559fc26af.md) | 82 | `declaration-track:cc31f13a883931d559fc26af53382b622304872a9ced3885bf9a12ef7f002187` |
| 5 | `def` | [testFunction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/testfunction--3b5dc372ee1fced8d13d1179.md) | 86 | `declaration-track:3b5dc372ee1fced8d13d1179615794abfba48dc5c80d960d19d2e5b7cc365467` |
| 6 | `def` | [zeroHeightCutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/zeroheightcutoff--3694169fd6c8b2a2b484895a.md) | 90 | `declaration-track:3694169fd6c8b2a2b484895a38c50c89380142f19f48932a72a0bd641abf5281` |
| 7 | `theorem` | [testStage_ge_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/teststage-ge-two--9fb89699c37acde29e631f03.md) | 93 | `result-track:9fb89699c37acde29e631f037b7aaad8632e281da2ce43307a84d3177baf73fa` |
| 8 | `theorem` | [zeroHeightCutoff_ge_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/zeroheightcutoff-ge-two--9d20f1e8f234014f63e7306f.md) | 98 | `result-track:9d20f1e8f234014f63e7306fd0d94fad2206fcd4fe91051a265624764a7ee16e` |
| 9 | `theorem` | [zeroHeightCutoff_tendsto_atTop](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/zeroheightcutoff-tendsto-attop--a2bffef22f6532303695765f.md) | 103 | `result-track:a2bffef22f6532303695765fd27e2a5d22a91147f184df2379669cd9f93c7984` |
| 10 | `def` | [finiteSpectralValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/finitespectralvalue--7eee3237d7f6eed84592165a.md) | 112 | `declaration-track:7eee3237d7f6eed84592165a8a9f53ca9e03a64aa9e481ef98d6ac51cdfa454a` |
| 11 | `def` | [zetaTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/zetatarget--0c787ce9f034eaaa34006db5.md) | 124 | `declaration-track:0c787ce9f034eaaa34006db558851912e5f9b4eaeaed35a9e3077e1e56d20593` |
| 12 | `def` | [finiteApproximant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/finiteapproximant--209cd523a0e886bdc6b40074.md) | 129 | `declaration-track:209cd523a0e886bdc6b40074c311a28f16ca5ce28ddaa411fc04dea22134e883` |
| 13 | `def` | [lowerDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/lowerdefect--347e3d04d29e4e4e6309d098.md) | 134 | `declaration-track:347e3d04d29e4e4e6309d0987fc09c4349efef9011b7d420908b4b0b29d4feb7` |
| 14 | `theorem` | [finiteSpectralValue_sub_target_eq_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/finitespectralvalue-sub-target-eq-residual--8c15a6fb5d76968d8712d35b.md) | 143 | `result-track:8c15a6fb5d76968d8712d35b3ab748f7144291ac6c17505f4c1cfec3ae7f2c19` |
| 15 | `theorem` | [norm_finiteSpectralValue_sub_target_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/norm-finitespectralvalue-sub-target-le--d07260496acbdbf71547fe35.md) | 154 | `result-track:d07260496acbdbf71547fe35e2f4d164df6a68e936df24acde755b0bb15e29e7` |
| 16 | `theorem` | [zetaTarget_diagonal_eq_sourceGram](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/zetatarget-diagonal-eq-sourcegram--de8f00f9004d04ca25e977d4.md) | 165 | `result-track:de8f00f9004d04ca25e977d478b74e763d6cb0bc7fe8be006171d54f517ea869` |
| 17 | `theorem` | [zetaTarget_diagonal_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/zetatarget-diagonal-nonnegative--b338eab7c2e3bad260f29622.md) | 172 | `result-track:b338eab7c2e3bad260f29622bfa8f0f765cfdd346f81d0648fbd4b96497fb354` |
| 18 | `theorem` | [abs_target_sub_finiteApproximant_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/abs-target-sub-finiteapproximant-le--0022fc643631f8260c4dfa70.md) | 179 | `result-track:0022fc643631f8260c4dfa70c238ee60d8d61f1a777dad31b6277225f6bdd62b` |
| 19 | `theorem` | [lowerDefect_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/lowerdefect-nonnegative--8488428b6f2505fa96e705bf.md) | 195 | `result-track:8488428b6f2505fa96e705bf50db4aa378db721fddb23d71ed319334ae68c9bf` |
| 20 | `theorem` | [finiteApproximant_diagonal_lower_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/finiteapproximant-diagonal-lower-bound--98691489e39dc6ea80f7c980.md) | 202 | `result-track:98691489e39dc6ea80f7c980cbf140f0e9981d43ca8b4bd66fbbe7b2cd7c89a3` |
| 21 | `theorem` | [lowerDefect_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/lowerdefect-tendsto-zero--ad93ef4468628a5bfa7792a0.md) | 212 | `result-track:ad93ef4468628a5bfa7792a02c1e1f69a9591b86508d552613035d91023dad6b` |
| 22 | `theorem` | [vanishesAtInfinity_of_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/vanishesatinfinity-of-tendsto-zero--883db9ad4b3e5c06232db424.md) | 221 | `result-track:883db9ad4b3e5c06232db4245ef3863a24608e0b7f87060708afb90b02e5f5e6` |
| 23 | `theorem` | [lowerDefect_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/lowerdefect-vanishes--83a8d8b127a83e071df3688d.md) | 233 | `result-track:83a8d8b127a83e071df3688df384ddf2eef4d9e2c37d9575e5503c3835f82348` |
| 24 | `theorem` | [diagonalComparison_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/diagonalcomparison-vanishes--d2d6662106a93b8b85cb4d18.md) | 238 | `result-track:d2d6662106a93b8b85cb4d18312eab5d975c3db6ead78f1d05925f7d06012cfb` |
| 25 | `theorem` | [comparison_vanishes](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/comparison-vanishes--44efd9ef666b2626f0d08e7d.md) | 248 | `result-track:44efd9ef666b2626f0d08e7d3325c551786cb733df7e0301ec40b841bc711d57` |
| 26 | `def` | [approximatePositiveApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/approximatepositiveapproximation--4f55dd182d5f0e5b0c6bd43d.md) | 260 | `declaration-track:4f55dd182d5f0e5b0c6bd43d81e08b657bc609c521e4bf9a56eb1566566820c5` |
| 27 | `structure` | [SourceBoundZetaApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/sourceboundzetaapproximation--159869fd0a4ac7f1065c53eb.md) | 272 | `declaration-track:159869fd0a4ac7f1065c53ebbf80bf6a91968eceafd4ab87d939c965898692dd` |
| 28 | `def` | [sourceBoundZetaApproximation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/sourceboundzetaapproximation--65876e7eb64d649b45220c54.md) | 283 | `declaration-track:65876e7eb64d649b45220c5480ce452a94854bf42ff3d643b84a4eb98a9010c1` |
| 29 | `theorem` | [offDiagonal_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean/declarations/offdiagonal-zero--d81bd50cb87311fe6152f36b.md) | 293 | `result-track:d81bd50cb87311fe6152f36bf929108432794b0de4521b1d6031f07cb2ba9893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
