# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PoleGreenWeakIdentity.Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8df11993623d61d84400371425eb4501fd8ee032",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8df11993623d61d84400371425eb4501fd8ee032`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleGreenKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryFluxFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/boundaryfluxfunction--a694e62149a94a73e4d0b8a9.md) | 38 | `declaration-track:a694e62149a94a73e4d0b8a9c0e99c322ef005c181c84d06da27ec41dc231176` |
| 2 | `theorem` | [has_deriv_at_iterated_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/has-deriv-at-iterated-deriv--42f8a3d86e728636fde688c0.md) | 44 | `result-track:42f8a3d86e728636fde688c0a44b3657c29cbe3e275704dcacf22c5e3eaaacc1` |
| 3 | `theorem` | [boundary_flux_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/boundary-flux-has-deriv-at--486fd837b4528dbf0d1d5367.md) | 51 | `result-track:486fd837b4528dbf0d1d5367b2af1ad69856a5db48a95e9a75c70d055d49703a` |
| 4 | `theorem` | [pole_squared_operator_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/pole-squared-operator-continuous--e93bbea8c7d005f3968658e8.md) | 74 | `result-track:e93bbea8c7d005f3968658e8bd913016abff59c7363b41aaabce11775f6cf261` |
| 5 | `theorem` | [homogeneous_branch_green_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/homogeneous-branch-green-identity--13e6590df21d51582ed3c192.md) | 81 | `result-track:13e6590df21d51582ed3c192f271c0ef6691410902418bc0c80a4a4c5979f9cb` |
| 6 | `theorem` | [boundary_flux_eq_zero_of_jets](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/boundary-flux-eq-zero-of-jets--52f53d5ed33f94d0b1c97a11.md) | 93 | `result-track:52f53d5ed33f94d0b1c97a11d7085a39aeec488e74334ab0e6cf47816bd278b7` |
| 7 | `theorem` | [pole_squared_green_weak_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/pole-squared-green-weak-identity--405ed6851d12049472cfb1b2.md) | 101 | `result-track:405ed6851d12049472cfb1b283823a5c502a89547077885dc248151b82cb8ed0` |
| 8 | `theorem` | [tsupport_iterated_deriv_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/tsupport-iterated-deriv-subset--6fde96039a94707a5ce43e75.md) | 150 | `result-track:6fde96039a94707a5ce43e75764cbbba2daf8822e1fbf837d40fac4953f286a7` |
| 9 | `theorem` | [iterated_deriv_eq_zero_of_not_mem_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/iterated-deriv-eq-zero-of-not-mem-tsupport--665566a252bdf9ae80b8b17c.md) | 159 | `result-track:665566a252bdf9ae80b8b17cb7476da389459e88d3f9d3fd5c3b3e8005ea3707` |
| 10 | `theorem` | [pole_squared_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/pole-squared-green-operator-integrable--0002c874de39b8ceb18a7a54.md) | 165 | `result-track:0002c874de39b8ceb18a7a54b568c1ecf6bbd0592398a4ab729abe4ae31685fb` |
| 11 | `theorem` | [pole_squared_green_full_weak_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/pole-squared-green-full-weak-identity--5b142f25001fab34972b6e40.md) | 182 | `result-track:5b142f25001fab34972b6e40e4b78ce980f0887fd803dda1fadd6dbd62e09d9c` |
| 12 | `theorem` | [pole_squared_operator_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/pole-squared-operator-const-sub--b669ccd4ec83ca7a8c282937.md) | 221 | `result-track:b669ccd4ec83ca7a8c2829370e784950e7e9108de1b2a2030768101309b317d9` |
| 13 | `theorem` | [pole_squared_green_convolution_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/pole-squared-green-convolution-identity--15a62c39918299a55feb035d.md) | 229 | `result-track:15a62c39918299a55feb035dec80bba3377841d6231f6446165b03602a7c63f9` |
| 14 | `theorem` | [base_correlation_has_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/base-correlation-has-compact-support--00620655e404e918126f6887.md) | 241 | `result-track:00620655e404e918126f6887876cf7ae302cd90ece16a05685281f1ac8a59218` |
| 15 | `theorem` | [green_source_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/green-source-correlation-integrable--4f63d9b4c67381d9254f9833.md) | 256 | `result-track:4f63d9b4c67381d9254f98335a5f66664a05f7a6e6ba9da010ad74ace815fa4a` |
| 16 | `theorem` | [green_source_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/green-source-correlation-integral--6048d547b8cc1212a26bf9c2.md) | 265 | `result-track:6048d547b8cc1212a26bf9c23a4642b208d7cad5074ec005176862f8dbe16f33` |
| 17 | `theorem` | [source_normalization_mul_green_correlation_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/source-normalization-mul-green-correlation-integral--607f7fa656c4ace0e280375a.md) | 273 | `result-track:607f7fa656c4ace0e280375a0a9c2bb16f1140c94127d26c29884036db26b8e3` |
| 18 | `theorem` | [green_source_correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/green-source-correlation-product-integrable--aa2f11fdfa124134bf368bde.md) | 281 | `result-track:aa2f11fdfa124134bf368bde3d4edb18ffa64cdfbb135f80720cedd0dcac1db8` |
| 19 | `theorem` | [green_source_correlation_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variant8d061fb214ff0c2d0e54266deecacadb5bf11175ccde5c99d9485b7836a123f9.lean/declarations/green-source-correlation-convolution--db05d7c8499e4e65dce5f3f1.md) | 295 | `result-track:db05d7c8499e4e65dce5f3f154ff3cc6301dc89a7e38e017ad8fbab4f17d98b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
