# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullQuadraticOperator.Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e40859a6b54d37a8477e49d62b5dd0e10598b9ba",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e40859a6b54d37a8477e49d62b5dd0e10598b9ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hilbert](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/hilbert--289785bff5f0a4efdcc5b94b.md) | 39 | `declaration-track:289785bff5f0a4efdcc5b94b9f38848c0ec6b0a766f48b469bfaf5db62d734dd` |
| 2 | `def` | [sourceFourierVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/sourcefouriervector--c44e6f1d2846818038da70a3.md) | 42 | `declaration-track:c44e6f1d2846818038da70a342be507a00b1e06b2be6643c8cebc08b1244a7ef` |
| 3 | `theorem` | [source_fourier_vector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-fourier-vector-norm-sq--093694052bf06f42ae60032e.md) | 46 | `result-track:093694052bf06f42ae60032e83aa9814f55570170a02a44d8f72c21832d80e3a` |
| 4 | `theorem` | [source_fourier_vector_mem_lp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-fourier-vector-mem-lp--bde749d77cd327cd17ed04ff.md) | 53 | `result-track:bde749d77cd327cd17ed04ff7d1b1bb3f5ba168cde3cd7990e306d1a89bf4e88` |
| 5 | `def` | [sourceVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/sourcevector--25bd5e5840a57bbd94c9d596.md) | 62 | `declaration-track:25bd5e5840a57bbd94c9d596f51d2a64ef7083237f1b022d8b2d1e245a175bf3` |
| 6 | `theorem` | [source_vector_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-vector-ae-eq--5974a1f2dde3f737f3150444.md) | 66 | `result-track:5974a1f2dde3f737f31504440c0ba40016578e06ca546c3e85d94de6ef123689` |
| 7 | `theorem` | [source_vector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-vector-norm-sq--175a19aa0e1f563704d56fc6.md) | 71 | `result-track:175a19aa0e1f563704d56fc6a003166250bfd882e0c2d2e2f1e8114b20e50758` |
| 8 | `theorem` | [source_vector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-vector-norm--2d2a32dd5924c6075f62dcc1.md) | 87 | `result-track:2d2a32dd5924c6075f62dcc1a1f886cf952fa4376ad59d998252dfd0cc265889` |
| 9 | `def` | [GammaFormDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/gammaformdomain--ea64bd3c2a082b9767327abd.md) | 91 | `declaration-track:ea64bd3c2a082b9767327abdde6f05b2e75fc10601b84e2f39338fba34406386` |
| 10 | `def` | [fullQuadraticForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/fullquadraticform--4e0b680565161e3d542eb341.md) | 95 | `declaration-track:4e0b680565161e3d542eb34106bfb278d39dbe2255c7604b45219298daf476c0` |
| 11 | `def` | [fullSesquilinearForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/fullsesquilinearform--79c2fc1b948ee212367366fc.md) | 99 | `declaration-track:79c2fc1b948ee212367366fce2861b032f3974075c25bd098317b571a71526db` |
| 12 | `theorem` | [hilbert_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/hilbert-norm-sq-integrable--756ea15b915e4e1b3e6eea3f.md) | 103 | `result-track:756ea15b915e4e1b3e6eea3f9351b4fd774a167e6ca4d2ce81387b8d05ae040e` |
| 13 | `theorem` | [gamma_form_domain_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/gamma-form-domain-zero--49f14f32f1578b170a9ef2d6.md) | 109 | `result-track:49f14f32f1578b170a9ef2d6f6eb1b923232d495802afb4a94a889cb0cdcabc0` |
| 14 | `theorem` | [gamma_form_domain_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/gamma-form-domain-smul--701e33da810676f16a7203ff.md) | 113 | `result-track:701e33da810676f16a7203ff0c1957bbb78f960beb0cad04e576d0babe779fed` |
| 15 | `theorem` | [gamma_form_domain_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/gamma-form-domain-add--e33edd08d9b50fa7a3a6ffeb.md) | 121 | `result-track:e33edd08d9b50fa7a3a6ffeb75bfa296b6b40f60bdfd28e3ee9e92faf8d82b54` |
| 16 | `def` | [gammaFormSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/gammaformspace--076f80cb8d7f962532a4e242.md) | 146 | `declaration-track:076f80cb8d7f962532a4e242ea85cfccd91821e0c72456c53aa1687cafa384ec` |
| 17 | `theorem` | [cosine_multiplier_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/cosine-multiplier-abs-le--420e5d0c99358bed18146bbb.md) | 153 | `result-track:420e5d0c99358bed18146bbb665bebe6b16d6b3843e36410d88212815149f2b8` |
| 18 | `theorem` | [cosine_multiplier_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/cosine-multiplier-continuous--93d0a3fd87403049cf935ba2.md) | 161 | `result-track:93d0a3fd87403049cf935ba2a0fbbc99b233edc039f5f61fba15ae502817360f` |
| 19 | `theorem` | [spectral_multiplier_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/spectral-multiplier-continuous--c366ba8cef5b7f7d3f7d5a29.md) | 166 | `result-track:c366ba8cef5b7f7d3f7d5a29c0d9fb64f3d50a1b06ca2e8c032cb72565423080` |
| 20 | `theorem` | [full_absolute_quadratic_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-absolute-quadratic-integrable--1d19498303396e260648f183.md) | 170 | `result-track:1d19498303396e260648f183f9697d792be18790044b924a9174aafdc32ee5db` |
| 21 | `theorem` | [full_quadratic_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-quadratic-integrable--0053433fb94f75f9b0e16835.md) | 189 | `result-track:0053433fb94f75f9b0e168350c85d6f35e5786a73944ea58690d5c95ca557852` |
| 22 | `theorem` | [full_sesquilinear_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-integrable--aebffecdd61ebad669f602c0.md) | 199 | `result-track:aebffecdd61ebad669f602c0780e86439008dd0c94114b40f6ca303e49c5a18c` |
| 23 | `theorem` | [full_sesquilinear_hermitian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-hermitian--1787f36aab69b02336ad98cd.md) | 222 | `result-track:1787f36aab69b02336ad98cd56fa495324cd9ee4811c165a6731d8489f900e9b` |
| 24 | `theorem` | [full_sesquilinear_diagonal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-diagonal--5bdcd8673e80394250957543.md) | 231 | `result-track:5bdcd8673e8039425095754390d7feeb239ac7e0b07f994e5cbb12b96699652d` |
| 25 | `theorem` | [full_sesquilinear_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-add-right--06ead53f5c440b49c6a939e4.md) | 243 | `result-track:06ead53f5c440b49c6a939e48fdf9dbd13f852060f8449be0c8b9f49753c15b6` |
| 26 | `theorem` | [full_sesquilinear_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-smul-right--dbad83a01274491627d5a035.md) | 258 | `result-track:dbad83a01274491627d5a0353bdc428041f4e5b56e7840e8c45171ca937dd41b` |
| 27 | `theorem` | [full_sesquilinear_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-add-left--c8bd3e484bcc3c8167c90d72.md) | 270 | `result-track:c8bd3e484bcc3c8167c90d72d9f1b05f8d497ee41399c15a56b600aaa46ae134` |
| 28 | `theorem` | [full_sesquilinear_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/full-sesquilinear-smul-left--f97424457ae4c221c9150a66.md) | 281 | `result-track:f97424457ae4c221c9150a66edf50199bd241d5d68a1871be4c7fce2de3b9086` |
| 29 | `theorem` | [source_vector_gamma_form_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-vector-gamma-form-domain--cb968bf5e0cc86b8c3b6fc17.md) | 289 | `result-track:cb968bf5e0cc86b8c3b6fc178025c142f1d4faba29e1583eebc3d4b0b1f291ae` |
| 30 | `theorem` | [source_quadratic_eq_full_form](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/declarations/source-quadratic-eq-full-form--156c5f602e1b36290bc4fb5d.md) | 298 | `result-track:156c5f602e1b36290bc4fb5d1396645ea899e1487d07f94d015983af41d701ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
