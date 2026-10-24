# Verification target: GRWTSK.Analysis.Rayleigh.Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e8428e2794a380cd531c738c0a289a4c971bf7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/index.md) · [Full source](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e8428e2794a380cd531c738c0a289a4c971bf7`.

Source path: `GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean.json)

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
| 1 | `abbrev` | [rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient--69ea17cf78ff43952a4b5371.md) | 64 | `declaration-track:69ea17cf78ff43952a4b5371f7ee4c48c5d8da03550cad001bb92aa08d63b3cb` |
| 2 | `theorem` | [rayleigh_smul](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleigh-smul--967b1c51651d4dbc0670bf68.md) | 66 | `result-track:967b1c51651d4dbc0670bf6898f0a8531ced5cce98b007be6bc270761bd3febb` |
| 3 | `theorem` | [rayleighQuotient_add](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-add--02a951f7032ff510f7339fc7.md) | 72 | `result-track:02a951f7032ff510f7339fc7940d3fd6e3529967fa277576414bb01ee3e1d800` |
| 4 | `theorem` | [rayleighQuotient_zero_apply](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-zero-apply--f3a9b0faed34f97308450a12.md) | 77 | `result-track:f3a9b0faed34f97308450a1204cc823b7bb9668405d603ba014241172e58ebeb` |
| 5 | `theorem` | [rayleighQuotient_apply_zero](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-apply-zero--4b02b64612d63af466595ad7.md) | 81 | `result-track:4b02b64612d63af466595ad76f6bc8f5fd6ad0322c3d51a24ac2e9b4426d3565` |
| 6 | `theorem` | [rayleighQuotient_neg_apply](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-neg-apply--26c3485aac0f8b376cef0a5c.md) | 85 | `result-track:26c3485aac0f8b376cef0a5c5516f229c02e4b1e41c693b857f0f92a48636388` |
| 7 | `theorem` | [rayleighQuotient_apply_neg](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-apply-neg--406762cae5582b8950f4a29b.md) | 89 | `result-track:406762cae5582b8950f4a29bc2ac83afb6a449a0ab9192a754861fc14754656b` |
| 8 | `theorem` | [image_rayleigh_eq_image_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/image-rayleigh-eq-image-rayleigh-sphere--a511f72da629ec1ac2cd2ded.md) | 92 | `result-track:a511f72da629ec1ac2cd2ded368faca0433a253c43a7800cc8209543eca09f96` |
| 9 | `theorem` | [iSup_rayleigh_eq_iSup_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/isup-rayleigh-eq-isup-rayleigh-sphere--96e7806c5be75b143b47b835.md) | 106 | `result-track:96e7806c5be75b143b47b835d24b036dfa4d54b09345a895438aecd40fe3222c` |
| 10 | `theorem` | [iInf_rayleigh_eq_iInf_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/iinf-rayleigh-eq-iinf-rayleigh-sphere--eead3b173744a026cee87d8f.md) | 113 | `result-track:eead3b173744a026cee87d8f80372a2a61da55c2173162af7839283b1493e4a5` |
| 11 | `theorem` | [rayleighQuotient_le_norm](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-le-norm--8b9ec896f4e7968c55dafa86.md) | 120 | `result-track:8b9ec896f4e7968c55dafa86e997655dd9bc265de9cc32fc008608d4ade0e825` |
| 12 | `theorem` | [bddAbove_rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/bddabove-rayleighquotient--e45950e5d2d488204ed60952.md) | 125 | `result-track:e45950e5d2d488204ed60952f56fd68445b70f40d20c5cfeeb91c36b939059cb` |
| 13 | `theorem` | [norm_eq_iSup_rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/norm-eq-isup-rayleighquotient--e466ddfd581798d2c09d48cd.md) | 128 | `result-track:e466ddfd581798d2c09d48cd552bcff30fbb3ee8388f1d0e2fdb405f0969f9a4` |
| 14 | `theorem` | [rayleighQuotient_le_of_mem_resolventSet](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-le-of-mem-resolventset--98c856f3554c7da05b43970f.md) | 146 | `result-track:98c856f3554c7da05b43970f1f190cd66d4be7433bb5940fa9efbfb482cb2c6f` |
| 15 | `theorem` | [rayleighQuotient_le_of_norm_mem_resolventSet](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/rayleighquotient-le-of-norm-mem-resolventset--6be6e4768e893bf4e5406607.md) | 168 | `result-track:6be6e4768e893bf4e540660712a5dcc11f3698332df2d295df163b3e3f77025b` |
| 16 | `theorem` | [abs_rayleighQuotient_le_of_norm_mem_resolventSet](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/abs-rayleighquotient-le-of-norm-mem-resolventset--b30ecb72331ecabc1dfc04f3.md) | 180 | `result-track:b30ecb72331ecabc1dfc04f389d840e3242803340374cf234ee3dcca6ef53226` |
| 17 | `theorem` | [spectralRadius_eq_nnnorm](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/spectralradius-eq-nnnorm--8306c9c92dc48ca6858002f6.md) | 190 | `result-track:8306c9c92dc48ca6858002f619320263b6e1b6f1322fbbd0868296c2e1b070ce` |
| 18 | `theorem` | [_root_.GRWTSK.Analysis.RayleighQuotient.Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/root-grwtsk-analysis-rayleighquotient-variantd1b550dadb81aab7a085d6e4282--54b3949623ebee0354bd661b.md) | 210 | `result-track:54b3949623ebee0354bd661b3b5bfc0b169987e63664a7bb969450a322f34bd9` |
| 19 | `theorem` | [linearly_dependent_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/linearly-dependent-of-islocalextron--c9918bac130a9f5b71d5cc98.md) | 221 | `result-track:c9918bac130a9f5b71d5cc982f0482de6e402c24a48a712197e89de064651b48` |
| 20 | `theorem` | [eq_smul_self_of_isLocalExtrOn_real](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/eq-smul-self-of-islocalextron-real--40b0c7f3d032324607b265b5.md) | 243 | `result-track:40b0c7f3d032324607b265b578e26e9731512c02c4b33b756ca040a746dc7c30` |
| 21 | `theorem` | [eq_smul_self_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/eq-smul-self-of-islocalextron--191afbf921ec7f0809f9b188.md) | 266 | `result-track:191afbf921ec7f0809f9b18807cf6d0f0a2a41a1328645d9408f15a746caa1da` |
| 22 | `theorem` | [hasEigenvector_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/haseigenvector-of-islocalextron--bc36d5429a2f50d91d79ea12.md) | 275 | `result-track:bc36d5429a2f50d91d79ea123da15a75c6ac2d8128fa7a82dc26c4ba7cf3640c` |
| 23 | `theorem` | [hasEigenvector_of_isMaxOn](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/haseigenvector-of-ismaxon--b904ed70e2204c587249f02e.md) | 285 | `result-track:b904ed70e2204c587249f02e8635b8345429f81d0f53a2df88d5d1b08f64353c` |
| 24 | `theorem` | [hasEigenvector_of_isMinOn](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/haseigenvector-of-isminon--4026c16f8d78a30510f237a9.md) | 304 | `result-track:4026c16f8d78a30510f237a935ec460be46cb7242c0ef8fd6eaa09962936997b` |
| 25 | `theorem` | [hasEigenvalue_iSup_of_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/haseigenvalue-isup-of-finitedimensional--33963972e91e8e71f9f69c0e.md) | 334 | `result-track:33963972e91e8e71f9f69c0e5d703d7c129df99d4324abb2c83c3879dc129302` |
| 26 | `theorem` | [hasEigenvalue_iInf_of_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/haseigenvalue-iinf-of-finitedimensional--d01699c0bbc59a8fcb185534.md) | 353 | `result-track:d01699c0bbc59a8fcb1855347567b331dae654923218d8603ed97901de65bf4d` |
| 27 | `theorem` | [subsingleton_of_no_eigenvalue_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/declarations/subsingleton-of-no-eigenvalue-finitedimensional--0ee47b20d7349efe65bc9aa3.md) | 370 | `result-track:0ee47b20d7349efe65bc9aa39c6bfd96c26a57b5367404fedf10b78b96be9e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
